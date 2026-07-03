inline.NumInlined: 188
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@PyMemoryView_FromMemory:bb.a
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !24   ; 7 uses
  %i.i = getelementptr i8, ptr %i.h, i64 7408
  %i.j = getelementptr i8, ptr %i.h, i64 7416     ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.n = load i64, ptr %i.l, align 8, !tbaa !23
  %i.o = and i64 %i.n, 3
  %i.p = or i64 %i.o, %i.m
  store i64 %i.p, ptr %i.l, align 8, !tbaa !23
  %i.q = getelementptr i8, ptr %i.a, i64 -8       ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %i.s = and i64 %i.r, 3
  %i.t = or i64 %i.s, %i.k
  store i64 %i.t, ptr %i.q, align 8, !tbaa !21
  %i.u = getelementptr i8, ptr %i.h, i64 7672
  %i.v = load i32, ptr %i.u, align 8, !tbaa !34
  %i.w = xor i32 %i.v, 1
  %i.x = sext i32 %i.w to i64
  %i.y = ptrtoint ptr %i.i to i64
  %i.z = or i64 %i.x, %i.y
  store i64 %i.z, ptr %i.f, align 8, !tbaa !23
  store i64 %i.m, ptr %i.j, align 8, !tbaa !21
  %i.aa = getelementptr i8, ptr %i.h, i64 7428    ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = add i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !26
  %i.ad = getelementptr i8, ptr %i.h, i64 7656    ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !30
  %i.af = add i64 %i.ae, 1
  store i64 %i.af, ptr %i.ad, align 8, !tbaa !30
  %i.ag = getelementptr i8, ptr %i.h, i64 7424
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !35
  %i.ai = icmp sgt i32 %i.ac, %i.ah
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr i8, ptr %i.h, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.aj) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ak = icmp ne i32 %2, 512
  %i.al = zext i1 %i.ak to i32
  %i.am = getelementptr i8, ptr %i.a, i64 32
  %i.an = tail call i32 @PyBuffer_FillInfo(ptr noundef %i.am, ptr noundef null, ptr noundef %0, i64 noundef %1, i32 noundef %i.al, i32 noundef 284) #15 ; 0 uses
  %i.ao = tail call fastcc ptr @mbuf_add_view(ptr noundef nonnull %i.a, ptr noundef null) ; 3 uses
  %i.ap = load i32, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %bb.e, label %mbuf_alloc.exit

bb.e:                                             ; preds = %bb.d
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !36
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.f, label %mbuf_alloc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #15
  br label %mbuf_alloc.exit

mbuf_alloc.exit:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.ao, %bb.d ], [ %i.ao, %bb.e ], [ %i.ao, %bb.f ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @PyBuffer_FillInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mbuf_add_view(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = getelementptr i8, ptr %0, i64 32
  %spec.select = select i1 %i.a, ptr %i.b, ptr %1 ; 8 uses
  %i.c = getelementptr i8, ptr %spec.select, i64 36 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !37   ; 5 uses
  %i.e = icmp sgt i32 %i.d, 64
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.7) #15
  br label %memory_alloc.exit

bb.c:                                             ; preds = %bb.a
  %i.g = mul i32 %i.d, 3
  %i.h = sext i32 %i.g to i64
  %i.i = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @PyMemoryView_Type, i64 noundef %i.h) #15, !inline_history !39 ; 20 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %memory_alloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.i, i64 24       ; 2 uses
  store ptr null, ptr %i.k, align 8, !tbaa !40
  %i.l = getelementptr i8, ptr %i.i, i64 32
  store i64 -1, ptr %i.l, align 8, !tbaa !43
  %i.m = getelementptr i8, ptr %i.i, i64 40       ; 2 uses
  store i32 0, ptr %i.m, align 8, !tbaa !44
  %i.n = getelementptr i8, ptr %i.i, i64 48
  store i64 0, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr i8, ptr %i.i, i64 92       ; 2 uses
  store i32 %i.d, ptr %i.o, align 4, !tbaa !46
  %i.p = getelementptr i8, ptr %i.i, i64 144      ; 3 uses
  %i.q = getelementptr i8, ptr %i.i, i64 104      ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !47
  %i.r = sext i32 %i.d to i64
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr i8, ptr %i.i, i64 112      ; 2 uses
  store ptr %i.s, ptr %i.t, align 8, !tbaa !48
  %i.u = shl i32 %i.d, 1
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [8 x i8], ptr %i.p, i64 %i.v
  %i.x = getelementptr i8, ptr %i.i, i64 120      ; 4 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !49
  %i.y = getelementptr i8, ptr %i.i, i64 136
  store ptr null, ptr %i.y, align 8, !tbaa !50
  %i.z = getelementptr i8, ptr %i.i, i64 -16      ; 2 uses
  %i.aa = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !24 ; 7 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 7408
  %i.ad = getelementptr i8, ptr %i.ab, i64 7416   ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !21 ; 2 uses
  %i.af = inttoptr i64 %i.ae to ptr               ; 2 uses
  %i.ag = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ai = and i64 %i.ah, 3
  %i.aj = or i64 %i.ai, %i.ag
  store i64 %i.aj, ptr %i.af, align 8, !tbaa !23
  %i.ak = getelementptr i8, ptr %i.i, i64 -8      ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !21
  %i.am = and i64 %i.al, 3
  %i.an = or i64 %i.am, %i.ae
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !21
  %i.ao = getelementptr i8, ptr %i.ab, i64 7672
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !34
  %i.aq = xor i32 %i.ap, 1
  %i.ar = sext i32 %i.aq to i64
  %i.as = ptrtoint ptr %i.ac to i64
  %i.at = or i64 %i.ar, %i.as
  store i64 %i.at, ptr %i.z, align 8, !tbaa !23
  store i64 %i.ag, ptr %i.ad, align 8, !tbaa !21
  %i.au = getelementptr i8, ptr %i.ab, i64 7428   ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !26
  %i.aw = add i32 %i.av, 1                        ; 2 uses
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !26
  %i.ax = getelementptr i8, ptr %i.ab, i64 7656   ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !30
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ax, align 8, !tbaa !30
  %i.ba = getelementptr i8, ptr %i.ab, i64 7424
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !35
  %i.bc = icmp sgt i32 %i.aw, %i.bb
  br i1 %i.bc, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bd = getelementptr i8, ptr %i.ab, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.bd) #15, !inline_history !39
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.be = getelementptr i8, ptr %i.i, i64 56      ; 4 uses
  %i.bf = load <2 x ptr>, ptr %spec.select, align 8, !tbaa !51
  store <2 x ptr> %i.bf, ptr %i.be, align 8, !tbaa !51
  %i.bg = getelementptr i8, ptr %spec.select, i64 16
  %i.bh = getelementptr i8, ptr %i.i, i64 72
  %i.bi = getelementptr i8, ptr %i.i, i64 80
  %i.bj = load <2 x i64>, ptr %i.bg, align 8, !tbaa !52
  store <2 x i64> %i.bj, ptr %i.bh, align 8, !tbaa !52
  %i.bk = getelementptr i8, ptr %spec.select, i64 32
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !53
  %i.bm = getelementptr i8, ptr %i.i, i64 88
  store i32 %i.bl, ptr %i.bm, align 8, !tbaa !53
  %i.bn = getelementptr i8, ptr %spec.select, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  %spec.select.i = select i1 %.not.i, ptr @.str.12, ptr %i.bo
  %i.bp = getelementptr i8, ptr %i.i, i64 96
  store ptr %spec.select.i, ptr %i.bp, align 8, !tbaa !54
  %i.bq = getelementptr i8, ptr %spec.select, i64 72
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !55
  %i.bs = getelementptr i8, ptr %i.i, i64 128
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !55
  tail call fastcc void @init_shape_strides(ptr noundef nonnull %i.be, ptr noundef nonnull %spec.select)
  %i.bt = getelementptr i8, ptr %spec.select, i64 64
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !56 ; 8 uses
  %i.bv = ptrtoaddr ptr %i.bu to i64
  %i.bw = icmp eq ptr %i.bu, null
  br i1 %i.bw, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f
  %i.bx = load i32, ptr %i.c, align 4, !tbaa !37  ; 4 uses
  %i.by = sext i32 %i.bx to i64                   ; 5 uses
  %i.bz = icmp sgt i32 %i.bx, 0
  br i1 %i.bz, label %.lr.ph.i, label %init_suboffsets.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ca = load ptr, ptr %i.x, align 8, !tbaa !56  ; 7 uses
  %min.iters.check = icmp ult i32 %i.bx, 6
  %i.cb = ptrtoaddr ptr %i.ca to i64
  %i.cc = sub i64 %i.cb, %i.bv
  %diff.check = icmp ult i64 %i.cc, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.by, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !52
  %wide.load28 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !52
  %i.cf = getelementptr [8 x i8], ptr %i.ca, i64 %index ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 16
  store <2 x i64> %wide.load, ptr %i.cf, align 8, !tbaa !52
  store <2 x i64> %wide.load28, ptr %i.cg, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ch = icmp eq i64 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.by
  br i1 %cmp.n, label %init_suboffsets.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.by, 3
  %i.ci = and i32 %i.bx, 3
  %lcmp.mod.not = icmp eq i32 %i.ci, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.cm, %scalar.ph.prol ], [ %.08.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cj = getelementptr [8 x i8], ptr %i.bu, i64 %.08.i.prol
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !52
  %i.cl = getelementptr [8 x i8], ptr %i.ca, i64 %.08.i.prol
  store i64 %i.ck, ptr %i.cl, align 8, !tbaa !52
  %i.cm = add nuw nsw i64 %.08.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %scalar.ph.preheader ], [ %i.cm, %scalar.ph.prol ]
  %i.cn = sub nsw i64 %.08.i.ph, %i.by
  %i.co = icmp ugt i64 %i.cn, -4
  br i1 %i.co, label %init_suboffsets.exit, label %scalar.ph

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.x, align 8, !tbaa !56
  br label %init_suboffsets.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08.i = phi i64 [ %i.de, %scalar.ph ], [ %.08.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cp = getelementptr [8 x i8], ptr %i.bu, i64 %.08.i
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !52
  %i.cr = getelementptr [8 x i8], ptr %i.ca, i64 %.08.i
  store i64 %i.cq, ptr %i.cr, align 8, !tbaa !52
  %i.cs = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.bu, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !52
  %i.cv = getelementptr [8 x i8], ptr %i.ca, i64 %i.cs
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !52
  %i.cw = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %i.cx = getelementptr [8 x i8], ptr %i.bu, i64 %i.cw
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !52
  %i.cz = getelementptr [8 x i8], ptr %i.ca, i64 %i.cw
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !52
  %i.da = add nuw nsw i64 %.08.i, 3               ; 2 uses
  %i.db = getelementptr [8 x i8], ptr %i.bu, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !52
  %i.dd = getelementptr [8 x i8], ptr %i.ca, i64 %i.da
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !52
  %i.de = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.de, %i.by
  br i1 %exitcond.not.i.3, label %init_suboffsets.exit, label %scalar.ph, !llvm.loop !63

init_suboffsets.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i, %bb.g
  %i.df = load i32, ptr %i.o, align 4, !tbaa !37
  switch i32 %i.df, label %bb.k [
    i32 0, label %init_flags.exit
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %init_suboffsets.exit
  %i.dg = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !52
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dj = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !52
  %i.dl = load i64, ptr %i.bi, align 8, !tbaa !66
  %i.dm = icmp eq i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.j, label %init_flags.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %init_flags.exit

bb.k:                                             ; preds = %init_suboffsets.exit
  %i.dn = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.be, i8 noundef signext 67) #15
  %.not.i22 = icmp eq i32 %i.dn, 0
  %spec.select.i23 = select i1 %.not.i22, i32 0, i32 2 ; 2 uses
  %i.do = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.be, i8 noundef signext 70) #15
  %.not15.i = icmp eq i32 %i.do, 0
  %i.dp = or disjoint i32 %spec.select.i23, 4
  %spec.select17.i = select i1 %.not15.i, i32 %spec.select.i23, i32 %i.dp
  br label %init_flags.exit

init_flags.exit:                                  ; preds = %init_suboffsets.exit, %bb.i, %bb.j, %bb.k
  %.1.i = phi i32 [ 14, %init_suboffsets.exit ], [ %spec.select17.i, %bb.k ], [ 0, %bb.i ], [ 6, %bb.j ] ; 2 uses
  %i.dq = load ptr, ptr %i.x, align 8, !tbaa !56
  %.not16.i = icmp eq ptr %i.dq, null
  %i.dr = and i32 %.1.i, -23
  %i.ds = or disjoint i32 %i.dr, 16
  %.2.i = select i1 %.not16.i, i32 %.1.i, i32 %i.ds
  store i32 %.2.i, ptr %i.m, align 8, !tbaa !44
  %i.dt = load i32, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.du = icmp ugt i32 %i.dt, -1073741825
  br i1 %i.du, label %_Py_NewRef.exit, label %bb.l

bb.l:                                             ; preds = %init_flags.exit
  %i.dv = add nuw i32 %i.dt, 1
  store i32 %i.dv, ptr %0, align 8, !tbaa !36
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %init_flags.exit, %bb.l
  store ptr %0, ptr %i.k, align 8, !tbaa !40
  %i.dw = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !33
  %i.dy = add i64 %i.dx, 1
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !33
  br label %memory_alloc.exit

memory_alloc.exit:                                ; preds = %bb.c, %_Py_NewRef.exit, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.i, %_Py_NewRef.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMemoryView_FromBuffer(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !67
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.1) #15
  br label %mbuf_alloc.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @_PyObject_GC_New(ptr noundef nonnull @_PyManagedBuffer_Type) #15 ; 11 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %mbuf_alloc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.d, i64 16
  store i32 0, ptr %i.f, align 8, !tbaa !11
  %i.g = getelementptr i8, ptr %i.d, i64 24
  store i64 0, ptr %i.g, align 8, !tbaa !33
  %i.h = getelementptr i8, ptr %i.d, i64 40       ; 2 uses
  store ptr null, ptr %i.h, align 8, !tbaa !32
  %i.i = getelementptr i8, ptr %i.d, i64 -16      ; 2 uses
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !24   ; 7 uses
  %i.l = getelementptr i8, ptr %i.k, i64 7408
  %i.m = getelementptr i8, ptr %i.k, i64 7416     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !23
  %i.r = and i64 %i.q, 3
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.o, align 8, !tbaa !23
  %i.t = getelementptr i8, ptr %i.d, i64 -8       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !21
  %i.v = and i64 %i.u, 3
  %i.w = or i64 %i.v, %i.n
  store i64 %i.w, ptr %i.t, align 8, !tbaa !21
  %i.x = getelementptr i8, ptr %i.k, i64 7672
  %i.y = load i32, ptr %i.x, align 8, !tbaa !34
  %i.z = xor i32 %i.y, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = or i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !23
  store i64 %i.p, ptr %i.m, align 8, !tbaa !21
  %i.ad = getelementptr i8, ptr %i.k, i64 7428    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !26
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !26
  %i.ag = getelementptr i8, ptr %i.k, i64 7656    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !30
end_hunk_0
begin_hunk_1_@PyMemoryView_FromObjectAndFlags:bb.a
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 56
  %i.n = tail call fastcc ptr @mbuf_add_view(ptr noundef nonnull %i.f, ptr noundef %i.m)
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.a
  %i.o = tail call i32 @PyObject_CheckBuffer(ptr noundef nonnull %0) #15
  %.not16 = icmp eq i32 %i.o, 0
  br i1 %.not16, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call fastcc ptr @_PyManagedBuffer_FromObject(ptr noundef nonnull %0, i32 noundef %1) ; 5 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = tail call fastcc ptr @mbuf_add_view(ptr noundef nonnull %i.p, ptr noundef null) ; 3 uses
  %i.s = load i32, ptr %i.p, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.s, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  store i32 %i.t, ptr %i.p, align 8, !tbaa !36
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.h
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  %.val = load ptr, ptr %i.a, align 8, !tbaa !71
  %i.w = getelementptr i8, ptr %.val, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72
  %i.y = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.10, ptr noundef %i.x) #15 ; 0 uses
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.d, %bb.f, %bb.g, %bb.m
  %.2 = phi ptr [ null, %bb.m ], [ %i.n, %bb.g ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ %i.r, %bb.j ], [ %i.r, %bb.k ], [ %i.r, %bb.l ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyMemoryView_GetContiguous(ptr noundef %0, i32 noundef %1, i8 noundef signext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @PyMemoryView_FromObjectAndFlags(ptr noundef %0, i32 noundef 284), !inline_history !78 ; 17 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit20, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.a, i64 56       ; 3 uses
  %i.d = icmp eq i32 %1, 512
  br i1 %i.d, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.a, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.2) #15
  %i.h = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i19 = icmp sgt i32 %i.h, -1
  br i1 %.not.i19, label %bb.e, label %Py_DECREF.exit20

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.a, align 8, !tbaa !36
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %Py_DECREF.exit20.sink.split, label %Py_DECREF.exit20

bb.f:                                             ; preds = %bb.c
  %i.k = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.c, i8 noundef signext %2) #15
  %.not16 = icmp eq i32 %i.k, 0
  br i1 %.not16, label %bb.g, label %Py_DECREF.exit20

.thread:                                          ; preds = %bb.b
  %i.l = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.c, i8 noundef signext %2) #15
  %.not1623 = icmp eq i32 %i.l, 0
  br i1 %.not1623, label %bb.i, label %Py_DECREF.exit20

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.3) #15
  %i.n = load i32, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %.not.i17 = icmp sgt i32 %i.n, -1
  br i1 %.not.i17, label %bb.h, label %Py_DECREF.exit20

bb.h:                                             ; preds = %bb.g
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.a, align 8, !tbaa !36
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %Py_DECREF.exit20.sink.split, label %Py_DECREF.exit20

bb.i:                                             ; preds = %.thread
  %i.q = getelementptr i8, ptr %i.a, i64 72
  %i.r = load i64, ptr %i.q, align 8, !tbaa !79
  %i.s = tail call ptr @PyBytes_FromStringAndSize(ptr noundef null, i64 noundef %i.r) #15 ; 5 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %memory_from_contiguous_copy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call fastcc ptr @_PyManagedBuffer_FromObject(ptr noundef nonnull %i.s, i32 noundef 284) ; 10 uses
  %i.v = load i32, ptr %i.s, align 8, !tbaa !36   ; 2 uses
  %.not.i42.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i42.i, label %bb.k, label %Py_DECREF.exit43.i

bb.k:                                             ; preds = %bb.j
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.s, align 8, !tbaa !36
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %Py_DECREF.exit43.i

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.s) #15
  br label %Py_DECREF.exit43.i

Py_DECREF.exit43.i:                               ; preds = %bb.l, %bb.k, %bb.j
  %i.y = icmp eq ptr %i.u, null
  br i1 %i.y, label %memory_from_contiguous_copy.exit, label %bb.m

bb.m:                                             ; preds = %Py_DECREF.exit43.i
  %i.z = getelementptr i8, ptr %i.a, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !54  ; 3 uses
  %.not.i47.i = icmp eq ptr %i.aa, null
  br i1 %.not.i47.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.aa) #16
  %i.ac = add i64 %i.ab, 1
  %i.ad = tail call ptr @PyMem_Malloc(i64 noundef %i.ac) #15 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.o, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.n
  %i.af = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.ad, ptr noundef nonnull readonly dereferenceable(1) %i.aa) #15 ; 0 uses
  %i.ag = getelementptr i8, ptr %i.u, i64 72
  store ptr %i.ad, ptr %i.ag, align 8, !tbaa !31
  %i.ah = getelementptr i8, ptr %i.u, i64 16      ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !11
  %i.aj = or i32 %i.ai, 2
  store i32 %i.aj, ptr %i.ah, align 8, !tbaa !11
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ak = tail call ptr @PyErr_NoMemory() #15     ; 0 uses
  %i.al = load i32, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not.i40.i = icmp sgt i32 %i.al, -1
  br i1 %.not.i40.i, label %bb.p, label %memory_from_contiguous_copy.exit

bb.p:                                             ; preds = %bb.o
  %i.am = add nsw i32 %i.al, -1                   ; 2 uses
  store i32 %i.am, ptr %i.u, align 8, !tbaa !36
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %Py_DECREF.exit41.sink.split.i, label %memory_from_contiguous_copy.exit

bb.q:                                             ; preds = %.thread.i.i, %bb.m
  %i.ao = getelementptr i8, ptr %i.a, i64 92      ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !37
  %i.aq = tail call fastcc ptr @mbuf_add_incomplete_view(ptr noundef nonnull %i.u, ptr noundef null, i32 noundef %i.ap) ; 16 uses
  %i.ar = load i32, ptr %i.u, align 8, !tbaa !36  ; 2 uses
  %.not.i38.i = icmp sgt i32 %i.ar, -1
  br i1 %.not.i38.i, label %bb.r, label %Py_DECREF.exit39.i

bb.r:                                             ; preds = %bb.q
  %i.as = add nsw i32 %i.ar, -1                   ; 2 uses
  store i32 %i.as, ptr %i.u, align 8, !tbaa !36
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.s, label %Py_DECREF.exit39.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #15
  br label %Py_DECREF.exit39.i

Py_DECREF.exit39.i:                               ; preds = %bb.s, %bb.r, %bb.q
  %i.au = icmp eq ptr %i.aq, null
  br i1 %i.au, label %memory_from_contiguous_copy.exit, label %bb.t

bb.t:                                             ; preds = %Py_DECREF.exit39.i
  %i.av = getelementptr i8, ptr %i.aq, i64 56     ; 3 uses
  %i.aw = getelementptr i8, ptr %i.a, i64 80
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !66 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aq, i64 80     ; 3 uses
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !66
  %i.az = load i32, ptr %i.ao, align 4, !tbaa !37 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.bb = getelementptr i8, ptr %i.a, i64 104
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !64 ; 7 uses
  %i.bd = getelementptr i8, ptr %i.aq, i64 104
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !64 ; 7 uses
  %wide.trip.count.i = zext nneg i32 %i.az to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.az, 6
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = ptrtoaddr ptr %i.bc to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %diff.check = icmp ult i64 %i.bh, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bi = getelementptr [8 x i8], ptr %i.bc, i64 %index ; 2 uses
  %i.bj = getelementptr i8, ptr %i.bi, i64 16
  %wide.load = load <2 x i64>, ptr %i.bi, align 8, !tbaa !52
  %wide.load45 = load <2 x i64>, ptr %i.bj, align 8, !tbaa !52
  %i.bk = getelementptr [8 x i8], ptr %i.be, i64 %index ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bk, i64 16
  store <2 x i64> %wide.load, ptr %i.bk, align 8, !tbaa !52
  store <2 x i64> %wide.load45, ptr %i.bl, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.bn = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv.i.prol
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !52
  %i.bp = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i.prol
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !52
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !81

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph.prol ]
  %i.bq = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.br = icmp ugt i64 %i.bq, -4
  br i1 %i.br, label %._crit_edge.i.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ %indvars.iv.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.i
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !52
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !52
  %i.bx = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.next.i
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !52
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.by = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.1
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !52
  %i.ca = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.1
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !52
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.bc, i64 %indvars.iv.next.i.2
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !52
  %i.cd = getelementptr [8 x i8], ptr %i.be, i64 %indvars.iv.next.i.2
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !52
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i.loopexit, label %scalar.ph, !llvm.loop !82

._crit_edge.i.loopexit:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.pre = load i64, ptr %i.ay, align 8, !tbaa !66
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.t
  %i.ce = phi i64 [ %.pre, %._crit_edge.i.loopexit ], [ %i.ax, %bb.t ] ; 4 uses
  %i.cf = and i8 %2, -3
  %or.cond.i = icmp eq i8 %i.cf, 65
  %i.cg = getelementptr i8, ptr %i.aq, i64 112
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !65 ; 14 uses
  br i1 %or.cond.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i
  %i.ci = getelementptr i8, ptr %i.aq, i64 92
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !37 ; 5 uses
  %i.ck = add i32 %i.cj, -1
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr [8 x i8], ptr %i.ch, i64 %i.cl
  store i64 %i.ce, ptr %i.cm, align 8, !tbaa !52
  %i.cn = add i32 %i.cj, -2                       ; 3 uses
  %i.co = icmp sgt i32 %i.cn, -1
  br i1 %i.co, label %.lr.ph.i.i, label %init_strides_from_shape.exit.i

.lr.ph.i.i:                                       ; preds = %bb.u
  %i.cp = zext nneg i32 %i.cn to i64              ; 4 uses
  %i.cq = getelementptr i8, ptr %i.aq, i64 104
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !64 ; 5 uses
  %i.cs = shl nuw nsw i64 %i.cp, 3
  %i.ct = getelementptr i8, ptr %i.ch, i64 %i.cs
  %scevgep = getelementptr i8, ptr %i.ct, i64 8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.cu = add nuw nsw i64 %i.cp, 1
  %xtraiter52 = and i64 %i.cu, 3                  ; 2 uses
  %lcmp.mod53.not = icmp eq i64 %xtraiter52, 0
  br i1 %lcmp.mod53.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i.i, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.cy, %.prol.preheader ], [ %load_initial, %.lr.ph.i.i ]
  %.011.i.i.prol = phi i64 [ %i.da, %.prol.preheader ], [ %i.cp, %.lr.ph.i.i ] ; 3 uses
  %prol.iter54 = phi i64 [ %prol.iter54.next, %.prol.preheader ], [ 0, %.lr.ph.i.i ]
  %i.cv = getelementptr [8 x i8], ptr %i.cr, i64 %.011.i.i.prol
  %i.cw = getelementptr i8, ptr %i.cv, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !52
  %i.cy = mul i64 %i.cx, %store_forwarded.prol    ; 3 uses
  %i.cz = getelementptr [8 x i8], ptr %i.ch, i64 %.011.i.i.prol
  store i64 %i.cy, ptr %i.cz, align 8, !tbaa !52
  %i.da = add nsw i64 %.011.i.i.prol, -1          ; 2 uses
  %prol.iter54.next = add i64 %prol.iter54, 1     ; 2 uses
  %prol.iter54.cmp.not = icmp eq i64 %prol.iter54.next, %xtraiter52
  br i1 %prol.iter54.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !83

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i.i
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph.i.i ], [ %i.cy, %.prol.preheader ]
  %.011.i.i.unr = phi i64 [ %i.cp, %.lr.ph.i.i ], [ %i.da, %.prol.preheader ]
  %i.db = icmp ult i32 %i.cn, 3
  br i1 %i.db, label %init_strides_from_shape.exit.i, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %store_forwarded = phi i64 [ %i.dx, %.lr.ph.i.i.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %.011.i.i = phi i64 [ %i.dz, %.lr.ph.i.i.new ], [ %.011.i.i.unr, %.prol.loopexit ] ; 6 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cr, i64 %.011.i.i
  %i.dd = getelementptr i8, ptr %i.dc, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !52
  %i.df = mul i64 %i.de, %store_forwarded         ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.ch, i64 %.011.i.i
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !52
  %i.dh = add nsw i64 %.011.i.i, -1               ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.cr, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.di, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !52
  %i.dl = mul i64 %i.dk, %i.df                    ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %i.ch, i64 %i.dh
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !52
  %i.dn = add nsw i64 %.011.i.i, -2               ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.cr, i64 %i.dn
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !52
  %i.dr = mul i64 %i.dq, %i.dl                    ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.ch, i64 %i.dn
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !52
  %i.dt = add nsw i64 %.011.i.i, -3               ; 3 uses
  %i.du = getelementptr [8 x i8], ptr %i.cr, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !52
  %i.dx = mul i64 %i.dw, %i.dr                    ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.ch, i64 %i.dt
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !52
  %i.dz = add nsw i64 %.011.i.i, -4
  %.not.i48.i.3 = icmp eq i64 %i.dt, 0
  br i1 %.not.i48.i.3, label %init_strides_from_shape.exit.i, label %.lr.ph.i.i.new, !llvm.loop !84

bb.v:                                             ; preds = %._crit_edge.i
  store i64 %i.ce, ptr %i.ch, align 8, !tbaa !52
  %i.ea = getelementptr i8, ptr %i.aq, i64 92
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !37 ; 5 uses
  %i.ec = icmp sgt i32 %i.eb, 1
  br i1 %i.ec, label %.lr.ph.i49.i, label %init_strides_from_shape.exit.i

.lr.ph.i49.i:                                     ; preds = %bb.v
  %i.ed = sext i32 %i.eb to i64                   ; 2 uses
  %i.ee = getelementptr i8, ptr %i.aq, i64 104
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !64 ; 5 uses
  %i.eg = add nsw i64 %i.ed, -1                   ; 2 uses
  %i.eh = add nsw i64 %i.ed, -2
  %xtraiter49 = and i64 %i.eg, 3                  ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 3
  br i1 %i.ei, label %.epil.preheader, label %.lr.ph.i49.i.new

.lr.ph.i49.i.new:                                 ; preds = %.lr.ph.i49.i
  %unroll_iter = and i64 %i.eg, -4
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i49.i.new
  %i.ej = phi i64 [ %i.ce, %.lr.ph.i49.i.new ], [ %i.ff, %bb.w ]
  %.010.i.i = phi i64 [ 1, %.lr.ph.i49.i.new ], [ %i.fh, %bb.w ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i49.i.new ], [ %niter.next.3, %bb.w ]
  %i.ek = getelementptr [8 x i8], ptr %i.ef, i64 %.010.i.i
  %i.el = getelementptr i8, ptr %i.ek, i64 -8
  %i.em = load i64, ptr %i.el, align 8, !tbaa !52
  %i.en = mul i64 %i.em, %i.ej                    ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.ch, i64 %.010.i.i
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !52
  %i.ep = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %i.eq = getelementptr [8 x i8], ptr %i.ef, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !52
end_hunk_1
begin_hunk_2_@PyMemoryView_GetContiguous:bb.a

init_strides_from_shape.exit.i.loopexit48.unr-lcssa: ; preds = %bb.w
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %init_strides_from_shape.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %init_strides_from_shape.exit.i.loopexit48.unr-lcssa, %.lr.ph.i49.i
  %.epil.init = phi i64 [ %i.ce, %.lr.ph.i49.i ], [ %i.ff, %init_strides_from_shape.exit.i.loopexit48.unr-lcssa ]
  %.010.i.i.epil.init = phi i64 [ 1, %.lr.ph.i49.i ], [ %i.fh, %init_strides_from_shape.exit.i.loopexit48.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter49, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %i.fi = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.fm, %bb.x ]
  %.010.i.i.epil = phi i64 [ %.010.i.i.epil.init, %.epil.preheader ], [ %i.fo, %bb.x ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.fj = getelementptr [8 x i8], ptr %i.ef, i64 %.010.i.i.epil
  %i.fk = getelementptr i8, ptr %i.fj, i64 -8
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !52
  %i.fm = mul i64 %i.fl, %i.fi                    ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %i.ch, i64 %.010.i.i.epil
  store i64 %i.fm, ptr %i.fn, align 8, !tbaa !52
  %i.fo = add nuw nsw i64 %.010.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter49
  br i1 %epil.iter.cmp.not, label %init_strides_from_shape.exit.i, label %bb.x, !llvm.loop !86

init_strides_from_shape.exit.i:                   ; preds = %init_strides_from_shape.exit.i.loopexit48.unr-lcssa, %bb.x, %.prol.loopexit, %.lr.ph.i.i.new, %bb.v, %bb.u
  %i.fp = phi i32 [ %i.cj, %.prol.loopexit ], [ %i.cj, %bb.u ], [ %i.eb, %bb.v ], [ %i.cj, %.lr.ph.i.i.new ], [ %i.eb, %bb.x ], [ %i.eb, %init_strides_from_shape.exit.i.loopexit48.unr-lcssa ]
  %i.fq = getelementptr i8, ptr %i.aq, i64 120    ; 2 uses
  store ptr null, ptr %i.fq, align 8, !tbaa !56
  switch i32 %i.fp, label %init_flags.exit.i [
    i32 0, label %init_flags.exit.thread.i
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %init_strides_from_shape.exit.i
  %i.fr = getelementptr i8, ptr %i.aq, i64 104
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !64
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !52
  %i.fu = icmp eq i64 %i.ft, 1
  br i1 %i.fu, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fv = load i64, ptr %i.ch, align 8, !tbaa !52
  %i.fw = load i64, ptr %i.ay, align 8, !tbaa !66
  %i.fx = icmp eq i64 %i.fv, %i.fw
  br i1 %i.fx, label %bb.aa, label %init_flags.exit.thread.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %init_flags.exit.thread.i

init_flags.exit.i:                                ; preds = %init_strides_from_shape.exit.i
  %i.fy = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.av, i8 noundef signext 67) #15
  %.not.i51.i = icmp eq i32 %i.fy, 0
  %spec.select.i.i = select i1 %.not.i51.i, i32 0, i32 2 ; 2 uses
  %i.fz = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.av, i8 noundef signext 70) #15
  %.not15.i.i = icmp eq i32 %i.fz, 0
  %i.ga = or disjoint i32 %spec.select.i.i, 4
  %spec.select17.i.i = select i1 %.not15.i.i, i32 %spec.select.i.i, i32 %i.ga
  %.pre.i = load ptr, ptr %i.fq, align 8, !tbaa !56
  %.pre.fr.i = freeze ptr %.pre.i
  %i.gb = icmp eq ptr %.pre.fr.i, null
  %spec.select.i = select i1 %i.gb, i32 %spec.select17.i.i, i32 16
  br label %init_flags.exit.thread.i

init_flags.exit.thread.i:                         ; preds = %init_flags.exit.i, %bb.aa, %bb.z, %init_strides_from_shape.exit.i
  %i.gc = phi i32 [ %spec.select.i, %init_flags.exit.i ], [ 14, %init_strides_from_shape.exit.i ], [ 6, %bb.aa ], [ 0, %bb.z ]
  %i.gd = getelementptr i8, ptr %i.aq, i64 40
  store i32 %i.gc, ptr %i.gd, align 8, !tbaa !44
  %i.ge = tail call fastcc i32 @copy_buffer(ptr noundef %i.av, ptr noundef nonnull readonly %i.c)
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %bb.ab, label %memory_from_contiguous_copy.exit

bb.ab:                                            ; preds = %init_flags.exit.thread.i
  %i.gg = load i32, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.gg, -1
  br i1 %.not.i.i, label %bb.ac, label %memory_from_contiguous_copy.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gh = add nsw i32 %i.gg, -1                   ; 2 uses
  store i32 %i.gh, ptr %i.aq, align 8, !tbaa !36
  %i.gi = icmp eq i32 %i.gh, 0
  br i1 %i.gi, label %Py_DECREF.exit41.sink.split.i, label %memory_from_contiguous_copy.exit

Py_DECREF.exit41.sink.split.i:                    ; preds = %bb.ac, %bb.p
  %.sink.i = phi ptr [ %i.u, %bb.p ], [ %i.aq, %bb.ac ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #15
  br label %memory_from_contiguous_copy.exit

memory_from_contiguous_copy.exit:                 ; preds = %bb.i, %Py_DECREF.exit43.i, %bb.o, %bb.p, %Py_DECREF.exit39.i, %init_flags.exit.thread.i, %bb.ab, %bb.ac, %Py_DECREF.exit41.sink.split.i
  %.034.i = phi ptr [ null, %Py_DECREF.exit39.i ], [ null, %bb.i ], [ %i.aq, %init_flags.exit.thread.i ], [ null, %Py_DECREF.exit43.i ], [ null, %bb.ac ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.ab ], [ null, %Py_DECREF.exit41.sink.split.i ] ; 3 uses
  %i.gj = load i32, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.gj, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit20

bb.ad:                                            ; preds = %memory_from_contiguous_copy.exit
  %i.gk = add nsw i32 %i.gj, -1                   ; 2 uses
  store i32 %i.gk, ptr %i.a, align 8, !tbaa !36
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %Py_DECREF.exit20.sink.split, label %Py_DECREF.exit20

Py_DECREF.exit20.sink.split:                      ; preds = %bb.ad, %bb.h, %bb.e
  %.0.ph = phi ptr [ null, %bb.h ], [ null, %bb.e ], [ %.034.i, %bb.ad ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #15
  br label %Py_DECREF.exit20

Py_DECREF.exit20:                                 ; preds = %Py_DECREF.exit20.sink.split, %bb.ad, %memory_from_contiguous_copy.exit, %bb.h, %bb.g, %.thread, %bb.e, %bb.d, %bb.f, %bb.a
  %.0 = phi ptr [ %.034.i, %memory_from_contiguous_copy.exit ], [ %i.a, %bb.f ], [ null, %bb.a ], [ %i.a, %.thread ], [ null, %bb.d ], [ null, %bb.e ], [ %.034.i, %bb.ad ], [ null, %bb.g ], [ null, %bb.h ], [ %.0.ph, %Py_DECREF.exit20.sink.split ]
  ret ptr %.0
}

declare i32 @PyBuffer_IsContiguous(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @PyBuffer_ToContiguous(ptr noundef %0, ptr noundef %1, i64 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79
  %.not = icmp eq i64 %2, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.c, ptr noundef nonnull @.str.4) #15
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %1, i8 noundef signext %3) #15
  %.not33 = icmp eq i32 %i.d, 0
  br i1 %.not33, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !67
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.e, i64 %2, i1 false)
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %1, i64 36         ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !37
  %i.h = mul i32 %i.g, 3
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = add nsw i64 %i.j, 88
  %i.l = tail call ptr @PyMem_Malloc(i64 noundef %i.k) #15 ; 13 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.l, i64 80       ; 3 uses
  %i.p = getelementptr i8, ptr %i.l, i64 48
  store ptr %i.o, ptr %i.p, align 8, !tbaa !87
  %i.q = getelementptr i8, ptr %i.l, i64 56
  %i.r = getelementptr i8, ptr %i.l, i64 64       ; 3 uses
  %i.s = load <2 x ptr>, ptr %1, align 8, !tbaa !51
  store <2 x ptr> %i.s, ptr %i.l, align 8, !tbaa !51
  %i.t = getelementptr i8, ptr %i.l, i64 16
  %i.u = load <2 x i64>, ptr %i.a, align 8, !tbaa !52
  store <2 x i64> %i.u, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr i8, ptr %1, i64 32
  %i.w = getelementptr i8, ptr %i.l, i64 32
  %i.x = load i32, ptr %i.f, align 4, !tbaa !37   ; 2 uses
  %i.y = load <2 x i32>, ptr %i.v, align 8, !tbaa !7
  %i.z = sext i32 %i.x to i64
  %i.aa = getelementptr [8 x i8], ptr %i.o, i64 %i.z
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !89
  %i.ab = shl i32 %i.x, 1
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr [8 x i8], ptr %i.o, i64 %i.ac
  store ptr %i.ad, ptr %i.r, align 8, !tbaa !90
  store <2 x i32> %i.y, ptr %i.w, align 8, !tbaa !7
  %i.ae = getelementptr i8, ptr %1, i64 40
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !54 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  %spec.select.i = select i1 %.not.i, ptr @.str.12, ptr %i.af
  %i.ag = getelementptr i8, ptr %i.l, i64 40
  store ptr %spec.select.i, ptr %i.ag, align 8, !tbaa !54
  %i.ah = getelementptr i8, ptr %1, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !55
  %i.aj = getelementptr i8, ptr %i.l, i64 72
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !55
  tail call fastcc void @init_shape_strides(ptr noundef nonnull %i.l, ptr noundef nonnull %1)
  %i.ak = getelementptr i8, ptr %1, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !56 ; 8 uses
  %i.am = ptrtoaddr ptr %i.al to i64
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !37  ; 4 uses
  %i.ap = sext i32 %i.ao to i64                   ; 5 uses
  %i.aq = icmp sgt i32 %i.ao, 0
  br i1 %i.aq, label %.lr.ph.i, label %init_suboffsets.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !56  ; 7 uses
  %min.iters.check = icmp ult i32 %i.ao, 6
  %i.as = ptrtoaddr ptr %i.ar to i64
  %i.at = sub i64 %i.as, %i.am
  %diff.check = icmp ult i64 %i.at, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.ap, 2147483644              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 16
  %wide.load = load <2 x i64>, ptr %i.au, align 8, !tbaa !52
  %wide.load37 = load <2 x i64>, ptr %i.av, align 8, !tbaa !52
  %i.aw = getelementptr [8 x i8], ptr %i.ar, i64 %index ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  store <2 x i64> %wide.load, ptr %i.aw, align 8, !tbaa !52
  store <2 x i64> %wide.load37, ptr %i.ax, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  br i1 %cmp.n, label %init_suboffsets.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.ap, 3
  %i.az = and i32 %i.ao, 3
  %lcmp.mod.not = icmp eq i32 %i.az, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.bd, %scalar.ph.prol ], [ %.08.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ba = getelementptr [8 x i8], ptr %i.al, i64 %.08.i.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !52
  %i.bc = getelementptr [8 x i8], ptr %i.ar, i64 %.08.i.prol
  store i64 %i.bb, ptr %i.bc, align 8, !tbaa !52
  %i.bd = add nuw nsw i64 %.08.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %scalar.ph.preheader ], [ %i.bd, %scalar.ph.prol ]
  %i.be = sub nsw i64 %.08.i.ph, %i.ap
  %i.bf = icmp ugt i64 %i.be, -4
  br i1 %i.bf, label %init_suboffsets.exit, label %scalar.ph

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.r, align 8, !tbaa !56
  br label %init_suboffsets.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08.i = phi i64 [ %i.bv, %scalar.ph ], [ %.08.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr [8 x i8], ptr %i.al, i64 %.08.i
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52
  %i.bi = getelementptr [8 x i8], ptr %i.ar, i64 %.08.i
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !52
  %i.bj = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %i.bk = getelementptr [8 x i8], ptr %i.al, i64 %i.bj
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !52
  %i.bm = getelementptr [8 x i8], ptr %i.ar, i64 %i.bj
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !52
  %i.bn = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %i.al, i64 %i.bn
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !52
  %i.bq = getelementptr [8 x i8], ptr %i.ar, i64 %i.bn
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !52
  %i.br = add nuw nsw i64 %.08.i, 3               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %i.al, i64 %i.br
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !52
  %i.bu = getelementptr [8 x i8], ptr %i.ar, i64 %i.br
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !52
  %i.bv = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bv, %i.ap
  br i1 %exitcond.not.i.3, label %init_suboffsets.exit, label %scalar.ph, !llvm.loop !93

init_suboffsets.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i, %bb.h
  %i.bw = tail call fastcc i32 @buffer_to_contiguous(ptr noundef %0, ptr noundef nonnull %i.l, i8 noundef signext %3)
  tail call void @PyMem_Free(ptr noundef nonnull %i.l) #15
  br label %bb.i

bb.i:                                             ; preds = %init_suboffsets.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ -1, %bb.f ], [ %i.bw, %init_suboffsets.exit ]
  ret i32 %.0
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #1

declare ptr @PyErr_NoMemory() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_shape_strides(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 7 uses
  switch i32 %i.b, label %.preheader34 [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

.preheader34:                                     ; preds = %bb.a
  %i.c = sext i32 %i.b to i64                     ; 10 uses
  %i.d = icmp sgt i32 %i.b, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.preheader34
  %i.e = getelementptr i8, ptr %1, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !64   ; 7 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 7 uses
  %min.iters.check = icmp ult i32 %i.b, 6
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = ptrtoaddr ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  %diff.check = icmp ult i64 %i.k, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.c, 2147483644               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.l = getelementptr [8 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !52
  %wide.load45 = load <2 x i64>, ptr %i.m, align 8, !tbaa !52
  %i.n = getelementptr [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store <2 x i64> %wide.load, ptr %i.n, align 8, !tbaa !52
  store <2 x i64> %wide.load45, ptr %i.o, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.c
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.035.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.c, 3
  %i.q = and i32 %i.b, 3
  %lcmp.mod.not = icmp eq i32 %i.q, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.035.prol = phi i64 [ %i.u, %scalar.ph.prol ], [ %.035.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.r = getelementptr [8 x i8], ptr %i.f, i64 %.035.prol
  %i.s = load i64, ptr %i.r, align 8, !tbaa !52
  %i.t = getelementptr [8 x i8], ptr %i.h, i64 %.035.prol
  store i64 %i.s, ptr %i.t, align 8, !tbaa !52
  %i.u = add nuw nsw i64 %.035.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !95

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.035.unr = phi i64 [ %.035.ph, %scalar.ph.preheader ], [ %i.u, %scalar.ph.prol ]
  %i.v = sub nsw i64 %.035.ph, %i.c
  %i.w = icmp ugt i64 %i.v, -4
  br i1 %i.w, label %._crit_edge, label %scalar.ph

bb.b:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  br label %init_strides_from_shape.exit

bb.c:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %1, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !64   ; 2 uses
  %.not31 = icmp eq ptr %i.z, null
  br i1 %.not31, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ab = getelementptr i8, ptr %1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !79
  %i.ad = getelementptr i8, ptr %1, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.af = sdiv i64 %i.ac, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ag = phi i64 [ %i.aa, %bb.d ], [ %i.af, %bb.e ]
  %i.ah = getelementptr i8, ptr %0, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !64
  store i64 %i.ag, ptr %i.ai, align 8, !tbaa !52
  %i.aj = getelementptr i8, ptr %1, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65 ; 2 uses
  %.not32 = icmp eq ptr %i.ak, null
  %i.al = getelementptr i8, ptr %1, i64 24
  %.in = select i1 %.not32, ptr %i.al, ptr %i.ak
  %i.am = load i64, ptr %.in, align 8, !tbaa !52
  %i.an = getelementptr i8, ptr %0, i64 56
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !65
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !52
  br label %init_strides_from_shape.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.035 = phi i64 [ %i.be, %scalar.ph ], [ %.035.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr [8 x i8], ptr %i.f, i64 %.035
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !52
  %i.ar = getelementptr [8 x i8], ptr %i.h, i64 %.035
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !52
  %i.as = add nuw nsw i64 %.035, 1                ; 2 uses
  %i.at = getelementptr [8 x i8], ptr %i.f, i64 %i.as
  %i.au = load i64, ptr %i.at, align 8, !tbaa !52
  %i.av = getelementptr [8 x i8], ptr %i.h, i64 %i.as
  store i64 %i.au, ptr %i.av, align 8, !tbaa !52
  %i.aw = add nuw nsw i64 %.035, 2                ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.f, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !52
  %i.az = getelementptr [8 x i8], ptr %i.h, i64 %i.aw
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !52
  %i.ba = add nuw nsw i64 %.035, 3                ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !52
  %i.bd = getelementptr [8 x i8], ptr %i.h, i64 %i.ba
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !52
  %i.be = add nuw nsw i64 %.035, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.be, %i.c
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !96

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.bf = getelementptr i8, ptr %1, i64 56
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !65 ; 8 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %bb.g, label %.lr.ph37

._crit_edge.thread:                               ; preds = %.preheader34
  %i.bh = getelementptr i8, ptr %1, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !65
  %.not42 = icmp eq ptr %i.bi, null
  br i1 %.not42, label %bb.g, label %init_strides_from_shape.exit

.lr.ph37:                                         ; preds = %._crit_edge
  %i.bj = ptrtoaddr ptr %i.bg to i64
  %i.bk = getelementptr i8, ptr %0, i64 56
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !65 ; 7 uses
  %min.iters.check49 = icmp ult i32 %i.b, 6
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = sub i64 %i.bm, %i.bj
  %diff.check47 = icmp ult i64 %i.bn, 32
  %or.cond64 = select i1 %min.iters.check49, i1 true, i1 %diff.check47
  br i1 %or.cond64, label %scalar.ph48.preheader, label %vector.ph50

vector.ph50:                                      ; preds = %.lr.ph37
  %n.vec52 = and i64 %i.c, 2147483644             ; 3 uses
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph50
  %index54 = phi i64 [ 0, %vector.ph50 ], [ %index.next57, %vector.body53 ] ; 3 uses
  %i.bo = getelementptr [8 x i8], ptr %i.bg, i64 %index54 ; 2 uses
  %i.bp = getelementptr i8, ptr %i.bo, i64 16
  %wide.load55 = load <2 x i64>, ptr %i.bo, align 8, !tbaa !52
  %wide.load56 = load <2 x i64>, ptr %i.bp, align 8, !tbaa !52
  %i.bq = getelementptr [8 x i8], ptr %i.bl, i64 %index54 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  store <2 x i64> %wide.load55, ptr %i.bq, align 8, !tbaa !52
  store <2 x i64> %wide.load56, ptr %i.br, align 8, !tbaa !52
  %index.next57 = add nuw i64 %index54, 4         ; 2 uses
  %i.bs = icmp eq i64 %index.next57, %n.vec52
  br i1 %i.bs, label %middle.block58, label %vector.body53, !llvm.loop !97

middle.block58:                                   ; preds = %vector.body53
  %cmp.n59 = icmp eq i64 %n.vec52, %i.c
  br i1 %cmp.n59, label %init_strides_from_shape.exit, label %scalar.ph48.preheader

scalar.ph48.preheader:                            ; preds = %.lr.ph37, %middle.block58
  %.136.ph = phi i64 [ 0, %.lr.ph37 ], [ %n.vec52, %middle.block58 ] ; 3 uses
  %xtraiter66 = and i64 %i.c, 3
  %i.bt = and i32 %i.b, 3
  %lcmp.mod67.not = icmp eq i32 %i.bt, 0
  br i1 %lcmp.mod67.not, label %scalar.ph48.prol.loopexit, label %scalar.ph48.prol

scalar.ph48.prol:                                 ; preds = %scalar.ph48.preheader, %scalar.ph48.prol
  %.136.prol = phi i64 [ %i.bx, %scalar.ph48.prol ], [ %.136.ph, %scalar.ph48.preheader ] ; 3 uses
  %prol.iter68 = phi i64 [ %prol.iter68.next, %scalar.ph48.prol ], [ 0, %scalar.ph48.preheader ]
  %i.bu = getelementptr [8 x i8], ptr %i.bg, i64 %.136.prol
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !52
  %i.bw = getelementptr [8 x i8], ptr %i.bl, i64 %.136.prol
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !52
  %i.bx = add nuw nsw i64 %.136.prol, 1           ; 2 uses
  %prol.iter68.next = add i64 %prol.iter68, 1     ; 2 uses
  %prol.iter68.cmp.not = icmp eq i64 %prol.iter68.next, %xtraiter66
  br i1 %prol.iter68.cmp.not, label %scalar.ph48.prol.loopexit, label %scalar.ph48.prol, !llvm.loop !98

scalar.ph48.prol.loopexit:                        ; preds = %scalar.ph48.prol, %scalar.ph48.preheader
  %.136.unr = phi i64 [ %.136.ph, %scalar.ph48.preheader ], [ %i.bx, %scalar.ph48.prol ]
  %i.by = sub nsw i64 %.136.ph, %i.c
  %i.bz = icmp ugt i64 %i.by, -4
  br i1 %i.bz, label %init_strides_from_shape.exit, label %scalar.ph48

scalar.ph48:                                      ; preds = %scalar.ph48.prol.loopexit, %scalar.ph48
  %.136 = phi i64 [ %i.cp, %scalar.ph48 ], [ %.136.unr, %scalar.ph48.prol.loopexit ] ; 6 uses
  %i.ca = getelementptr [8 x i8], ptr %i.bg, i64 %.136
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !52
  %i.cc = getelementptr [8 x i8], ptr %i.bl, i64 %.136
  store i64 %i.cb, ptr %i.cc, align 8, !tbaa !52
  %i.cd = add nuw nsw i64 %.136, 1                ; 2 uses
  %i.ce = getelementptr [8 x i8], ptr %i.bg, i64 %i.cd
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !52
  %i.cg = getelementptr [8 x i8], ptr %i.bl, i64 %i.cd
  store i64 %i.cf, ptr %i.cg, align 8, !tbaa !52
  %i.ch = add nuw nsw i64 %.136, 2                ; 2 uses
  %i.ci = getelementptr [8 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !52
  %i.ck = getelementptr [8 x i8], ptr %i.bl, i64 %i.ch
  store i64 %i.cj, ptr %i.ck, align 8, !tbaa !52
  %i.cl = add nuw nsw i64 %.136, 3                ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.bg, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !52
  %i.co = getelementptr [8 x i8], ptr %i.bl, i64 %i.cl
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !52
  %i.cp = add nuw nsw i64 %.136, 4                ; 2 uses
  %exitcond39.not.3 = icmp eq i64 %i.cp, %i.c
  br i1 %exitcond39.not.3, label %init_strides_from_shape.exit, label %scalar.ph48, !llvm.loop !99

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.cq = getelementptr i8, ptr %0, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !66
  %i.cs = getelementptr i8, ptr %0, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !65 ; 7 uses
  %i.cu = getelementptr i8, ptr %0, i64 36
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !37 ; 2 uses
  %i.cw = add i32 %i.cv, -1
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [8 x i8], ptr %i.ct, i64 %i.cx
  store i64 %i.cr, ptr %i.cy, align 8, !tbaa !52
  %i.cz = add i32 %i.cv, -2                       ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1
  br i1 %i.da, label %.lr.ph.i, label %init_strides_from_shape.exit

.lr.ph.i:                                         ; preds = %bb.g
  %i.db = zext nneg i32 %i.cz to i64              ; 4 uses
  %i.dc = getelementptr i8, ptr %0, i64 48
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !64 ; 5 uses
  %i.de = shl nuw nsw i64 %i.db, 3
  %i.df = getelementptr i8, ptr %i.ct, i64 %i.de
  %scevgep = getelementptr i8, ptr %i.df, i64 8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.dg = add nuw nsw i64 %i.db, 1
  %xtraiter69 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod70.not = icmp eq i64 %xtraiter69, 0
  br i1 %lcmp.mod70.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.dk, %.prol.preheader ], [ %load_initial, %.lr.ph.i ]
  %.011.i.prol = phi i64 [ %i.dm, %.prol.preheader ], [ %i.db, %.lr.ph.i ] ; 3 uses
  %prol.iter71 = phi i64 [ %prol.iter71.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %.011.i.prol
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !52
  %i.dk = mul i64 %i.dj, %store_forwarded.prol    ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.ct, i64 %.011.i.prol
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !52
  %i.dm = add nsw i64 %.011.i.prol, -1            ; 2 uses
  %prol.iter71.next = add i64 %prol.iter71, 1     ; 2 uses
  %prol.iter71.cmp.not = icmp eq i64 %prol.iter71.next, %xtraiter69
  br i1 %prol.iter71.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !100

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph.i ], [ %i.dk, %.prol.preheader ]
  %.011.i.unr = phi i64 [ %i.db, %.lr.ph.i ], [ %i.dm, %.prol.preheader ]
  %i.dn = icmp ult i32 %i.cz, 3
  br i1 %i.dn, label %init_strides_from_shape.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %store_forwarded = phi i64 [ %i.ej, %.lr.ph.i.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %.011.i = phi i64 [ %i.el, %.lr.ph.i.new ], [ %.011.i.unr, %.prol.loopexit ] ; 6 uses
  %i.do = getelementptr [8 x i8], ptr %i.dd, i64 %.011.i
  %i.dp = getelementptr i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !52
  %i.dr = mul i64 %i.dq, %store_forwarded         ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.ct, i64 %.011.i
  store i64 %i.dr, ptr %i.ds, align 8, !tbaa !52
  %i.dt = add nsw i64 %.011.i, -1                 ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.dd, i64 %i.dt
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !52
  %i.dx = mul i64 %i.dw, %i.dr                    ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.ct, i64 %i.dt
  store i64 %i.dx, ptr %i.dy, align 8, !tbaa !52
  %i.dz = add nsw i64 %.011.i, -2                 ; 2 uses
  %i.ea = getelementptr [8 x i8], ptr %i.dd, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 8
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !52
  %i.ed = mul i64 %i.ec, %i.dx                    ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.ct, i64 %i.dz
  store i64 %i.ed, ptr %i.ee, align 8, !tbaa !52
  %i.ef = add nsw i64 %.011.i, -3                 ; 3 uses
  %i.eg = getelementptr [8 x i8], ptr %i.dd, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !52
  %i.ej = mul i64 %i.ei, %i.ed                    ; 2 uses
  %i.ek = getelementptr [8 x i8], ptr %i.ct, i64 %i.ef
  store i64 %i.ej, ptr %i.ek, align 8, !tbaa !52
  %i.el = add nsw i64 %.011.i, -4
  %.not.i.3 = icmp eq i64 %i.ef, 0
  br i1 %.not.i.3, label %init_strides_from_shape.exit, label %.lr.ph.i.new, !llvm.loop !84

init_strides_from_shape.exit:                     ; preds = %scalar.ph48.prol.loopexit, %scalar.ph48, %.prol.loopexit, %.lr.ph.i.new, %middle.block58, %._crit_edge.thread, %bb.g, %bb.f, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @buffer_to_contiguous(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i8 noundef signext %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.a = getelementptr i8, ptr %1, i64 36
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call ptr @PyMem_Malloc(i64 noundef %i.d) #15 ; 16 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @PyErr_NoMemory() #15      ; 0 uses
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false), !tbaa.struct !68
  store ptr %0, ptr %3, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr %i.e, ptr %i.h, align 8, !tbaa !65
  %i.i = and i8 %2, -3
  %or.cond = icmp eq i8 %i.i, 65
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !66   ; 4 uses
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.m = load i32, ptr %i.l, align 4, !tbaa !37   ; 2 uses
  %i.n = add i32 %i.m, -1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr [8 x i8], ptr %i.e, i64 %i.o
  store i64 %i.k, ptr %i.p, align 8, !tbaa !52
  %i.q = add i32 %i.m, -2                         ; 3 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %.lr.ph.i, label %init_strides_from_shape.exit
end_hunk_2
