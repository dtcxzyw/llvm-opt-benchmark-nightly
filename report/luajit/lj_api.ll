Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_api?download=true
inline.NumInlined: 66
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@lua_setfenv:bb.a
  store i64 %i.bh, ptr %i.bn, align 8, !tbaa !20
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !20
  %i.bq = and i8 %i.bp, 3
  %.not = icmp eq i8 %i.bq, 0
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = load i64, ptr %.1.i, align 8, !tbaa !20
  %i.bs = and i64 %i.br, 140737488355327
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !20
  %i.bw = and i8 %i.bv, 4
  %.not20 = icmp eq i8 %i.bw, 0
  br i1 %.not20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !24
  %i.bz = inttoptr i64 %i.by to ptr
  tail call void @lj_gc_barrierf(ptr noundef %i.bz, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bi) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %i.ca = load ptr, ptr %i.bd, align 8, !tbaa !17
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 -8
  br label %bb.s

bb.s:                                             ; preds = %index2adr.exit, %bb.r
  %storemerge = phi ptr [ %i.cb, %bb.r ], [ %i.bf, %index2adr.exit ]
  %.0 = phi i32 [ 1, %bb.r ], [ 0, %index2adr.exit ]
  store ptr %storemerge, ptr %i.bd, align 8, !tbaa !17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lua_setupvalue(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = icmp sgt i32 %1, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %index2adr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !24
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 248
  br label %index2adr.exit

bb.d:                                             ; preds = %bb.a
  %i.p = icmp sgt i32 %1, -10000
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !17
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.s
  br label %index2adr.exit

bb.f:                                             ; preds = %bb.d
  switch i32 %1, label %bb.i [
    i32 -10002, label %bb.g
    i32 -10000, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !24
  %i.w = inttoptr i64 %i.v to ptr
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 232 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.z = load i64, ptr %i.y, align 8, !tbaa !25
  %i.aa = or i64 %i.z, -1688849860263936
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !20
  br label %index2adr.exit

bb.h:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !24
  %i.ad = inttoptr i64 %i.ac to ptr
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 272
  br label %index2adr.exit

bb.i:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !18
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !20
  %i.aj = and i64 %i.ai, 140737488355327
  %i.ak = inttoptr i64 %i.aj to ptr               ; 3 uses
  %i.al = icmp eq i32 %1, -10001
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !24
  %i.ao = inttoptr i64 %i.an to ptr
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 232 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !20
  %i.as = or i64 %i.ar, -1688849860263936
  store i64 %i.as, ptr %i.ap, align 8, !tbaa !20
  br label %index2adr.exit

bb.k:                                             ; preds = %bb.i
  %i.at = sub nuw nsw i32 -10002, %1
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 11
  %i.av = load i8, ptr %i.au, align 1, !tbaa !20
  %i.aw = zext i8 %i.av to i32
  %.not.i = icmp samesign ugt i32 %i.at, %i.aw
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %i.ay = sub nsw i32 -10003, %1
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.az
  br label %index2adr.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !24
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 248
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.b, %bb.c, %bb.e, %bb.g, %bb.h, %bb.j, %bb.l, %bb.m
  %.1.i = phi ptr [ %i.h, %bb.b ], [ %i.t, %bb.e ], [ %i.x, %bb.g ], [ %i.ae, %bb.h ], [ %i.o, %bb.c ], [ %i.ap, %bb.j ], [ %i.ba, %bb.l ], [ %i.be, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.bf = add nsw i32 %2, -1
  %i.bg = call ptr @lj_debug_uvnamev(ptr noundef %.1.i, i32 noundef %i.bf, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #13 ; 2 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %index2adr.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 -8 ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !17
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !20
  store i64 %i.bl, ptr %i.bk, align 8, !tbaa !20
  %i.bm = load ptr, ptr %i.bh, align 8, !tbaa !17
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !20 ; 2 uses
  %i.bo = ashr i64 %i.bn, 47
  %i.bp = trunc nsw i64 %i.bo to i32
  %i.bq = add nsw i32 %i.bp, 13
  %i.br = icmp ult i32 %i.bq, 9
  br i1 %i.br, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bs = and i64 %i.bn, 140737488355327
  %i.bt = inttoptr i64 %i.bs to ptr               ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !20
  %i.bw = and i8 %i.bv, 3
  %.not12 = icmp eq i8 %i.bw, 0
  br i1 %.not12, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = load ptr, ptr %i.b, align 8, !tbaa !70  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !20
  %i.ca = and i8 %i.bz, 4
  %.not13 = icmp eq i8 %i.ca, 0
  br i1 %.not13, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !24
  %i.cd = inttoptr i64 %i.cc to ptr
  call void @lj_gc_barrierf(ptr noundef %i.cd, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bt) #13
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %index2adr.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %i.bg
}

; Function Attrs: nounwind uwtable
define dso_local void @lua_call(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 4 uses
  %3 = sext i32 %1 to i64
  %.neg.i = mul nsw i64 %3, -8
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 %.neg.i
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.lr.ph.i, label %api_call_base.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.012.i = phi ptr [ %i.f, %.lr.ph.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.012.i, i64 -8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20
  store i64 %i.g, ptr %.012.i, align 8, !tbaa !20
  %i.h = icmp ugt ptr %i.f, %i.c
  br i1 %i.h, label %.lr.ph.i, label %api_call_base.exit, !llvm.loop !0

api_call_base.exit:                               ; preds = %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi ptr [ %i.b, %bb.a ], [ %i.f, %.lr.ph.i ] ; 2 uses
  store i64 -1, ptr %.0.lcssa.i, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  %i.j = add nsw i32 %2, 1
  tail call void @lj_vm_call(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef %i.j) #13
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @lua_pcall(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 145 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !47
  %i.f = and i8 %i.e, -16
  %i.g = icmp eq i32 %3, 0
  br i1 %i.g, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = zext nneg i32 %3 to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8       ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 2 uses
  %i.p = icmp ult ptr %i.m, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 248
  %spec.select = select i1 %i.p, ptr %i.m, ptr %i.q
  br label %index2adr_stack.exit

bb.d:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %i.t = sext i32 %3 to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  br label %index2adr_stack.exit

index2adr_stack.exit:                             ; preds = %bb.c, %bb.d
  %i.v = phi ptr [ %i.s, %bb.d ], [ %i.o, %bb.c ]
  %.1.i = phi ptr [ %i.u, %bb.d ], [ %spec.select, %bb.c ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8, !tbaa !71
  %i.y = ptrtoint ptr %.1.i to i64
  %i.z = sub i64 %i.y, %i.x
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %index2adr_stack.exit
  %i.aa = phi ptr [ %i.v, %index2adr_stack.exit ], [ %.pre, %._crit_edge ] ; 4 uses
  %.0 = phi i64 [ %i.z, %index2adr_stack.exit ], [ 0, %._crit_edge ]
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = sext i32 %1 to i64
  %.neg.i = mul nsw i64 %4, -8
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 %.neg.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !17
  %i.ae = icmp sgt i32 %1, 0
  br i1 %i.ae, label %.lr.ph.i, label %api_call_base.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.012.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.aa, %bb.e ] ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %.012.i, i64 -8 ; 4 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20
  store i64 %i.ag, ptr %.012.i, align 8, !tbaa !20
  %i.ah = icmp ugt ptr %i.af, %i.ac
  br i1 %i.ah, label %.lr.ph.i, label %api_call_base.exit, !llvm.loop !0

api_call_base.exit:                               ; preds = %.lr.ph.i, %bb.e
  %.0.lcssa.i = phi ptr [ %i.aa, %bb.e ], [ %i.af, %.lr.ph.i ] ; 2 uses
  store i64 -1, ptr %.0.lcssa.i, align 8, !tbaa !20
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  %i.aj = add nsw i32 %2, 1
  %i.ak = tail call i32 @lj_vm_pcall(ptr noundef nonnull %0, ptr noundef nonnull %i.ai, i32 noundef %i.aj, i64 noundef %.0) #13 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %api_call_base.exit
  %i.al = load i8, ptr %i.d, align 1, !tbaa !47
  %i.am = and i8 %i.al, 15
  %i.an = or disjoint i8 %i.am, %i.f
  store i8 %i.an, ptr %i.d, align 1, !tbaa !47
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %api_call_base.exit
  ret i32 %i.ak
}

declare hidden i32 @lj_vm_pcall(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lua_cpcall(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 145 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !47
  %i.f = tail call i32 @lj_vm_cpcall(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull @cpcall) #13 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = and i8 %i.e, -16
  %i.h = load i8, ptr %i.d, align 1, !tbaa !47
  %i.i = and i8 %i.h, 15
  %i.j = or disjoint i8 %i.i, %i.g
  store i8 %i.j, ptr %i.d, align 1, !tbaa !47
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 %i.f
}

declare hidden i32 @lj_vm_cpcall(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal nonnull ptr @cpcall(ptr noundef %0, ptr noundef %1, ptr noundef %2) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20
  %i.e = and i64 %i.d, 140737488355327
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.h = load i8, ptr %i.g, align 1, !tbaa !20
  %i.i = icmp eq i8 %i.h, 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.in.in.i = select i1 %i.i, ptr %i.j, ptr %i.k
  %.in.i = load i64, ptr %.in.in.i, align 8, !tbaa !20
  %i.l = inttoptr i64 %.in.i to ptr
  %i.m = tail call ptr @lj_func_newC(ptr noundef %0, i32 noundef 0, ptr noundef %i.l) #13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !17   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store ptr %1, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = or i64 %i.r, -1266637395197952
  store i64 %i.s, ptr %i.o, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store i64 -1, ptr %i.q, align 8, !tbaa !20
  %i.u = tail call ptr @lj_lightud_intern(ptr noundef %0, ptr noundef %2) #13
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = or i64 %i.w, -562949953421312
  store i64 %i.x, ptr %i.t, align 8, !tbaa !20
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 1, ptr %i.aa, align 4, !tbaa !29
  store ptr %i.v, ptr %i.n, align 8, !tbaa !17
  ret ptr %i.t
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @luaL_callmeta(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @lua_getmetatable(ptr noundef %0, i32 noundef %1)
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %luaL_getmetafield.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, 140737488355327
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %i.i = tail call ptr @lj_str_new(ptr noundef %0, ptr noundef nonnull %2, i64 noundef %i.h) #13
  %i.j = tail call ptr @lj_tab_getstr(ptr noundef %i.g, ptr noundef %i.i) #13 ; 2 uses
  %.not15.i = icmp eq ptr %i.j, null
  br i1 %.not15.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20   ; 2 uses
  %i.l = icmp eq i64 %i.k, -1
  br i1 %i.l, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -8
  store ptr %i.n, ptr %i.b, align 8, !tbaa !17
  br label %luaL_getmetafield.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -8
  store i64 %i.k, ptr %i.p, align 8, !tbaa !20
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !17   ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 -8
  store ptr %i.r, ptr %i.b, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store i64 -1, ptr %i.q, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = zext nneg i32 %1 to i64
  %i.y = getelementptr [8 x i8], ptr %i.w, i64 %i.x
  %i.z = getelementptr i8, ptr %i.y, i64 -8       ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ab = icmp ult ptr %i.z, %i.aa
  br i1 %i.ab, label %index2adr.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !24
  %i.ae = inttoptr i64 %i.ad to ptr
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 248
  br label %index2adr.exit

bb.g:                                             ; preds = %bb.d
  %i.ag = icmp sgt i32 %1, -10000
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ai = sext i32 %1 to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ai
  br label %index2adr.exit

bb.i:                                             ; preds = %bb.g
  switch i32 %1, label %bb.l [
    i32 -10002, label %bb.j
    i32 -10000, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !24
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 232 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25
  %i.aq = or i64 %i.ap, -1688849860263936
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !20
  br label %index2adr.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !24
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 272
  br label %index2adr.exit

bb.l:                                             ; preds = %bb.i
end_hunk_0
begin_hunk_1_@luaL_callmeta:bb.a
bb.p:                                             ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !24
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 248
  br label %index2adr.exit

index2adr.exit:                                   ; preds = %bb.e, %bb.f, %bb.h, %bb.j, %bb.k, %bb.m, %bb.o, %bb.p
  %.1.i13 = phi ptr [ %i.z, %bb.e ], [ %i.aj, %bb.h ], [ %i.an, %bb.j ], [ %i.au, %bb.k ], [ %i.af, %bb.f ], [ %i.bf, %bb.m ], [ %i.bq, %bb.o ], [ %i.bu, %bb.p ]
  %i.bv = load i64, ptr %.1.i13, align 8, !tbaa !20
  store i64 %i.bv, ptr %i.s, align 8, !tbaa !20
  store ptr %i.t, ptr %i.b, align 8, !tbaa !17
  tail call void @lj_vm_call(ptr noundef nonnull %0, ptr noundef nonnull %i.s, i32 noundef 2) #13
  br label %luaL_getmetafield.exit.thread

luaL_getmetafield.exit.thread:                    ; preds = %bb.a, %.thread.i, %index2adr.exit
  %.0 = phi i32 [ 1, %index2adr.exit ], [ 0, %.thread.i ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @lua_isyieldable(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @lua_yield(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !24
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 145 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !47    ; 2 uses
  %i.j = and i8 %i.i, 16
  %.not42 = icmp eq i8 %i.j, 0
  br i1 %.not42, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !17   ; 2 uses
  %i.m = ptrtoaddr ptr %i.l to i64
  %i.n = sext i32 %1 to i64                       ; 2 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.o ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18   ; 7 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = icmp ugt ptr %i.p, %i.r
  br i1 %i.t, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.u = icmp sgt i32 %1, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.v = zext nneg i32 %1 to i64                  ; 2 uses
  %min.iters.check = icmp ult i32 %1, 14
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.w = shl nuw nsw i64 %i.n, 3
  %i.x = add i64 %i.w, %i.s
  %i.y = sub i64 %i.m, %i.x
  %diff.check = icmp ugt i64 %i.y, -32
  br i1 %diff.check, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.v, 2147483644               ; 4 uses
  %i.z = trunc nuw nsw i64 %n.vec to i32
  %i.aa = sub nsw i32 %1, %i.z
  %i.ab = shl nuw nsw i64 %n.vec, 3               ; 2 uses
  %i.ac = getelementptr i8, ptr %i.r, i64 %i.ab   ; 2 uses
  %i.ad = getelementptr i8, ptr %i.p, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.r, i64 %i.ae ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.p, i64 %i.ae ; 2 uses
  %i.af = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep48, align 8, !tbaa !20
  %wide.load49 = load <2 x i64>, ptr %i.af, align 8, !tbaa !20
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !20
  store <2 x i64> %wide.load49, ptr %i.ag, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.v
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader52

.lr.ph.preheader52:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.045.ph = phi i32 [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.aa, %middle.block ]
  %.03744.ph = phi ptr [ %i.r, %vector.memcheck ], [ %i.r, %.lr.ph.preheader ], [ %i.ac, %middle.block ]
  %.03843.ph = phi ptr [ %i.p, %vector.memcheck ], [ %i.p, %.lr.ph.preheader ], [ %i.ad, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader52, %.lr.ph
  %.045 = phi i32 [ %i.ai, %.lr.ph ], [ %.045.ph, %.lr.ph.preheader52 ] ; 2 uses
  %.03744 = phi ptr [ %i.aj, %.lr.ph ], [ %.03744.ph, %.lr.ph.preheader52 ] ; 2 uses
  %.03843 = phi ptr [ %i.ak, %.lr.ph ], [ %.03843.ph, %.lr.ph.preheader52 ] ; 2 uses
  %i.ai = add nsw i32 %.045, -1
  %i.aj = getelementptr inbounds nuw i8, ptr %.03744, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.03843, i64 8
  %i.al = load i64, ptr %.03843, align 8, !tbaa !20
  store i64 %i.al, ptr %.03744, align 8, !tbaa !20
  %i.am = icmp samesign ugt i32 %.045, 1
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %.preheader
  %.037.lcssa = phi ptr [ %i.r, %.preheader ], [ %i.ac, %middle.block ], [ %i.aj, %.lr.ph ]
  store ptr %.037.lcssa, ptr %i.k, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  store ptr null, ptr %i.a, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.an, align 1, !tbaa !16
  ret i32 -1

bb.e:                                             ; preds = %bb.b
  %i.ao = and i64 %i.c, -4
  %i.ap = inttoptr i64 %i.ao to ptr               ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !17 ; 6 uses
  %i.as = and i8 %i.i, -17
  store i8 %i.as, ptr %i.h, align 1, !tbaa !47
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !29
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !20
  store i64 ptrtoint (ptr @lj_cont_hook to i64), ptr %i.av, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !74
  %i.az = add i64 %i.ay, -4
  store i64 %i.az, ptr %i.aw, align 8, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.bb = ptrtoint ptr %0 to i64
  %i.bc = or i64 %i.bb, -985162418487296
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !18
  %i.bh = ptrtoint ptr %i.be to i64
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = add i64 %i.bh, 2
  %i.bk = sub i64 %i.bj, %i.bi
  store i64 %i.bk, ptr %i.bd, align 8, !tbaa !20
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !18
  store ptr %i.be, ptr %i.aq, align 8, !tbaa !17
  tail call void @lj_err_throw(ptr noundef nonnull %0, i32 noundef 1) #14
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @lj_err_msg(ptr noundef nonnull %0, i32 noundef 830) #14
  unreachable
}

declare hidden void @lj_cont_hook() #3

; Function Attrs: noreturn
declare hidden void @lj_err_throw(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i32 @lua_resume(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.e = load i8, ptr %i.d, align 1, !tbaa !16    ; 2 uses
  %i.f = icmp ult i8 %i.e, 2
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i8 %i.e, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 5 uses
  %2 = sext i32 %1 to i64                         ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.neg.i = mul nsw i64 %2, -8
  %i.j = getelementptr inbounds i8, ptr %i.i, i64 %.neg.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.k, ptr %i.h, align 8, !tbaa !17
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph.i, label %api_call_base.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.012.i = phi ptr [ %i.m, %.lr.ph.i ], [ %i.i, %bb.d ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.012.i, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20
  store i64 %i.n, ptr %.012.i, align 8, !tbaa !20
  %i.o = icmp ugt ptr %i.m, %i.j
  br i1 %i.o, label %.lr.ph.i, label %api_call_base.exit, !llvm.loop !0

api_call_base.exit:                               ; preds = %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %i.i, %bb.d ], [ %i.m, %.lr.ph.i ] ; 2 uses
  store i64 -1, ptr %.0.lcssa.i, align 8, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.q = sub nsw i64 0, %2
  %i.r = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.q
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %api_call_base.exit
  %i.s = phi ptr [ %i.p, %api_call_base.exit ], [ %i.r, %bb.e ]
  %i.t = tail call i32 @lj_vm_resume(ptr noundef nonnull %0, ptr noundef %i.s, i32 noundef 0, i64 noundef 0) #13
  br label %bb.i

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !18   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.v, ptr %i.w, align 8, !tbaa !17
  %i.x = tail call ptr @lj_err_str(ptr noundef nonnull %0, i32 noundef 1347) #13
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = or i64 %i.y, -703687441776640
  store i64 %i.z, ptr %i.v, align 8, !tbaa !20
  %i.aa = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ab, ptr %i.w, align 8, !tbaa !17
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !19
  %i.ae = inttoptr i64 %i.ad to ptr
  %.not = icmp ult ptr %i.ab, %i.ae
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @lj_state_growstack1(ptr noundef nonnull %0) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.0 = phi i32 [ %i.t, %bb.f ], [ 2, %bb.h ], [ 2, %bb.g ]
  ret i32 %.0
}

declare hidden i32 @lj_vm_resume(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare hidden ptr @lj_err_str(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @lua_gc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = inttoptr i64 %i.b to ptr                 ; 11 uses
  switch i32 %1, label %.loopexit [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.f
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 9, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 140737488355328, ptr %i.d, align 8, !tbaa !40
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %2, -1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = udiv i64 %i.g, 100
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.j = load i32, ptr %i.i, align 4, !tbaa !76
  %i.k = zext i32 %i.j to i64
  %i.l = mul i64 %i.h, %i.k
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi i64 [ %i.l, %bb.d ], [ %i.g, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %i.m, ptr %i.n, align 8, !tbaa !40
  br label %.loopexit

bb.f:                                             ; preds = %bb.a
  tail call void @lj_gc_fullgc(ptr noundef nonnull %0) #13
  br label %.loopexit

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !39
  %i.q = lshr i64 %i.p, 10
  %i.r = trunc i64 %i.q to i32
  br label %.loopexit

bb.h:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !39
  %i.u = trunc i64 %i.t to i32
  %i.v = and i32 %i.u, 1023
  br label %.loopexit

bb.i:                                             ; preds = %bb.a
  %i.w = sext i32 %2 to i64
  %i.x = shl nsw i64 %i.w, 10
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !39
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.x)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store i64 %spec.select, ptr %i.aa, align 8, !tbaa !40
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %i.ab = load i64, ptr %i.y, align 8, !tbaa !39
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !40
  %.not29 = icmp ult i64 %i.ab, %i.ac
  br i1 %.not29, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ad = tail call i32 @lj_gc_step(ptr noundef %0) #13
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit, label %bb.j, !llvm.loop !75

bb.l:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 108 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !76
  store i32 %2, ptr %i.af, align 4, !tbaa !76
  br label %.loopexit

bb.m:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 104 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !77
  store i32 %2, ptr %i.ah, align 8, !tbaa !77
  br label %.loopexit

bb.n:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !40
  %i.al = icmp ne i64 %i.ak, 140737488355328
  %i.am = zext i1 %i.al to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.j, %bb.k, %bb.a, %bb.n, %bb.m, %bb.l, %bb.h, %bb.g, %bb.f, %bb.e, %bb.b
  %.1 = phi i32 [ -1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.e ], [ 0, %bb.f ], [ %i.r, %bb.g ], [ %i.v, %bb.h ], [ %i.am, %bb.n ], [ %i.ag, %bb.l ], [ %i.ai, %bb.m ], [ 0, %bb.j ], [ 1, %bb.k ]
  ret i32 %.1
}

declare hidden void @lj_gc_fullgc(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @lua_getallocf(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  store ptr %i.e, ptr %1, align 8, !tbaa !78
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !50
  ret ptr %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lua_setallocf(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !24
  %i.c = inttoptr i64 %i.b to ptr                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !49
  store ptr %1, ptr %i.c, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #12

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3}
end_hunk_1
