inline.NumInlined: 188
inline.NumDeleted: 69
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@PyMemoryView_FromMemory:bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.d = getelementptr i8, ptr %i.a, i64 24
  store i64 0, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr i8, ptr %i.a, i64 40
  store ptr null, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr i8, ptr %i.a, i64 -16      ; 2 uses
  %i.g = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
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
  %2 = sext i32 %i.bx to i64                      ; 5 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i, label %init_suboffsets.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.bz = load ptr, ptr %i.x, align 8, !tbaa !56  ; 7 uses
  %min.iters.check = icmp ult i32 %i.bx, 8
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = sub i64 %i.bv, %i.ca
  %diff.check = icmp ugt i64 %i.cb, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %2, 2147483644                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bu, i64 %index ; 2 uses
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  %wide.load = load <2 x i64>, ptr %i.cc, align 8, !tbaa !52
  %wide.load28 = load <2 x i64>, ptr %i.cd, align 8, !tbaa !52
  %i.ce = getelementptr [8 x i8], ptr %i.bz, i64 %index ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 16
  store <2 x i64> %wide.load, ptr %i.ce, align 8, !tbaa !52
  store <2 x i64> %wide.load28, ptr %i.cf, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cg = icmp eq i64 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !57

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %2
  br i1 %cmp.n, label %init_suboffsets.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %2, 3
  %3 = and i32 %i.bx, 3
  %lcmp.mod.not = icmp eq i32 %3, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.ck, %scalar.ph.prol ], [ %.08.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ch = getelementptr [8 x i8], ptr %i.bu, i64 %.08.i.prol
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !52
  %i.cj = getelementptr [8 x i8], ptr %i.bz, i64 %.08.i.prol
  store i64 %i.ci, ptr %i.cj, align 8, !tbaa !52
  %i.ck = add nuw nsw i64 %.08.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !61

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %i.cl = sub nsw i64 %.08.i.ph, %2
  %i.cm = icmp ugt i64 %i.cl, -4
  br i1 %i.cm, label %init_suboffsets.exit, label %scalar.ph

bb.g:                                             ; preds = %bb.f
  store ptr null, ptr %i.x, align 8, !tbaa !56
  br label %init_suboffsets.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08.i = phi i64 [ %i.dc, %scalar.ph ], [ %.08.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.cn = getelementptr [8 x i8], ptr %i.bu, i64 %.08.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !52
  %i.cp = getelementptr [8 x i8], ptr %i.bz, i64 %.08.i
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !52
  %i.cq = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %i.cr = getelementptr [8 x i8], ptr %i.bu, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !52
  %i.ct = getelementptr [8 x i8], ptr %i.bz, i64 %i.cq
  store i64 %i.cs, ptr %i.ct, align 8, !tbaa !52
  %i.cu = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %i.cv = getelementptr [8 x i8], ptr %i.bu, i64 %i.cu
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !52
  %i.cx = getelementptr [8 x i8], ptr %i.bz, i64 %i.cu
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !52
  %i.cy = add nuw nsw i64 %.08.i, 3               ; 2 uses
  %i.cz = getelementptr [8 x i8], ptr %i.bu, i64 %i.cy
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !52
  %i.db = getelementptr [8 x i8], ptr %i.bz, i64 %i.cy
  store i64 %i.da, ptr %i.db, align 8, !tbaa !52
  %i.dc = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.dc, %2
  br i1 %exitcond.not.i.3, label %init_suboffsets.exit, label %scalar.ph, !llvm.loop !63

init_suboffsets.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i, %bb.g
  %i.dd = load i32, ptr %i.o, align 4, !tbaa !37
  switch i32 %i.dd, label %bb.k [
    i32 0, label %init_flags.exit
    i32 1, label %bb.h
  ]

bb.h:                                             ; preds = %init_suboffsets.exit
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !64
  %i.df = load i64, ptr %i.de, align 8, !tbaa !52
  %i.dg = icmp eq i64 %i.df, 1
  br i1 %i.dg, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !52
  %i.dj = load i64, ptr %i.bi, align 8, !tbaa !66
  %i.dk = icmp eq i64 %i.di, %i.dj
  br i1 %i.dk, label %bb.j, label %init_flags.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %init_flags.exit

bb.k:                                             ; preds = %init_suboffsets.exit
  %i.dl = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.be, i8 noundef signext 67) #15
  %.not.i22 = icmp eq i32 %i.dl, 0
  %spec.select.i23 = select i1 %.not.i22, i32 0, i32 2 ; 2 uses
  %i.dm = tail call i32 @PyBuffer_IsContiguous(ptr noundef nonnull %i.be, i8 noundef signext 70) #15
  %.not15.i = icmp eq i32 %i.dm, 0
  %i.dn = or disjoint i32 %spec.select.i23, 4
  %spec.select17.i = select i1 %.not15.i, i32 %spec.select.i23, i32 %i.dn
  br label %init_flags.exit

init_flags.exit:                                  ; preds = %init_suboffsets.exit, %bb.i, %bb.j, %bb.k
  %.1.i = phi i32 [ 14, %init_suboffsets.exit ], [ %spec.select17.i, %bb.k ], [ 0, %bb.i ], [ 6, %bb.j ] ; 2 uses
  %i.do = load ptr, ptr %i.x, align 8, !tbaa !56
  %.not16.i = icmp eq ptr %i.do, null
  %i.dp = and i32 %.1.i, -23
  %i.dq = or disjoint i32 %i.dp, 16
  %.2.i = select i1 %.not16.i, i32 %.1.i, i32 %i.dq
  store i32 %.2.i, ptr %i.m, align 8, !tbaa !44
  %i.dr = load i32, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ds = icmp ugt i32 %i.dr, -1073741825
  br i1 %i.ds, label %_Py_NewRef.exit, label %bb.l

bb.l:                                             ; preds = %init_flags.exit
  %i.dt = add nuw i32 %i.dr, 1
  store i32 %i.dt, ptr %0, align 8, !tbaa !36
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %init_flags.exit, %bb.l
  store ptr %0, ptr %i.k, align 8, !tbaa !40
  %i.du = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !33
  %i.dw = add i64 %i.dv, 1
  store i64 %i.dw, ptr %i.du, align 8, !tbaa !33
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
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !30
  %i.aj = getelementptr i8, ptr %i.k, i64 7424
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !35
  %i.al = icmp sgt i32 %i.af, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = getelementptr i8, ptr %i.k, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.am) #15
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.an = getelementptr i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.an, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false), !tbaa.struct !68
  store ptr null, ptr %i.h, align 8, !tbaa !32
  %i.ao = tail call fastcc ptr @mbuf_add_view(ptr noundef nonnull %i.d, ptr noundef null) ; 3 uses
  %i.ap = load i32, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.ap, -1
  br i1 %.not.i, label %bb.g, label %mbuf_alloc.exit

bb.g:                                             ; preds = %bb.f
  %i.aq = add nsw i32 %i.ap, -1                   ; 2 uses
  store i32 %i.aq, ptr %i.d, align 8, !tbaa !36
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %mbuf_alloc.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %mbuf_alloc.exit
end_hunk_0
begin_hunk_1_@PyMemoryView_GetContiguous:bb.a
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
  %min.iters.check = icmp ult i32 %i.az, 8
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = ptrtoaddr ptr %i.bc to i64
  %i.bh = sub i64 %i.bg, %i.bf
  %diff.check = icmp ugt i64 %i.bh, -32
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
  %3 = sext i32 %i.eb to i64                      ; 2 uses
  %i.ed = getelementptr i8, ptr %i.aq, i64 104
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !64 ; 5 uses
  %i.ef = add nsw i64 %3, -1                      ; 2 uses
  %4 = add nsw i64 %3, -2
  %xtraiter49 = and i64 %i.ef, 3                  ; 3 uses
  %i.eg = icmp ult i64 %4, 3
  br i1 %i.eg, label %.epil.preheader, label %.lr.ph.i49.i.new

.lr.ph.i49.i.new:                                 ; preds = %.lr.ph.i49.i
  %unroll_iter = and i64 %i.ef, -4
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i49.i.new
  %i.eh = phi i64 [ %i.ce, %.lr.ph.i49.i.new ], [ %i.fd, %bb.w ]
  %.010.i.i = phi i64 [ 1, %.lr.ph.i49.i.new ], [ %i.ff, %bb.w ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i49.i.new ], [ %niter.next.3, %bb.w ]
  %i.ei = getelementptr [8 x i8], ptr %i.ee, i64 %.010.i.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 -8
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !52
  %i.el = mul i64 %i.ek, %i.eh                    ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.ch, i64 %.010.i.i
  store i64 %i.el, ptr %i.em, align 8, !tbaa !52
  %i.en = add nuw nsw i64 %.010.i.i, 1            ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.ee, i64 %i.en
  %i.ep = getelementptr i8, ptr %i.eo, i64 -8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !52
  %i.er = mul i64 %i.eq, %i.el                    ; 2 uses
  %i.es = getelementptr [8 x i8], ptr %i.ch, i64 %i.en
  store i64 %i.er, ptr %i.es, align 8, !tbaa !52
  %i.et = add nuw nsw i64 %.010.i.i, 2            ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.ee, i64 %i.et
  %i.ev = getelementptr i8, ptr %i.eu, i64 -8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !52
  %i.ex = mul i64 %i.ew, %i.er                    ; 2 uses
  %i.ey = getelementptr [8 x i8], ptr %i.ch, i64 %i.et
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !52
  %i.ez = add nuw nsw i64 %.010.i.i, 3            ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.ee, i64 %i.ez
  %i.fb = getelementptr i8, ptr %i.fa, i64 -8
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !52
  %i.fd = mul i64 %i.fc, %i.ex                    ; 3 uses
  %i.fe = getelementptr [8 x i8], ptr %i.ch, i64 %i.ez
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !52
  %i.ff = add nuw nsw i64 %.010.i.i, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %init_strides_from_shape.exit.i.loopexit48.unr-lcssa, label %bb.w, !llvm.loop !85

init_strides_from_shape.exit.i.loopexit48.unr-lcssa: ; preds = %bb.w
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %init_strides_from_shape.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %init_strides_from_shape.exit.i.loopexit48.unr-lcssa, %.lr.ph.i49.i
  %.epil.init = phi i64 [ %i.ce, %.lr.ph.i49.i ], [ %i.fd, %init_strides_from_shape.exit.i.loopexit48.unr-lcssa ]
  %.010.i.i.epil.init = phi i64 [ 1, %.lr.ph.i49.i ], [ %i.ff, %init_strides_from_shape.exit.i.loopexit48.unr-lcssa ]
  %lcmp.mod51 = icmp ne i64 %xtraiter49, 0
  tail call void @llvm.assume(i1 %lcmp.mod51)
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.epil.preheader
  %i.fg = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.fk, %bb.x ]
  %.010.i.i.epil = phi i64 [ %.010.i.i.epil.init, %.epil.preheader ], [ %i.fm, %bb.x ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.x ]
  %i.fh = getelementptr [8 x i8], ptr %i.ee, i64 %.010.i.i.epil
  %i.fi = getelementptr i8, ptr %i.fh, i64 -8
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !52
  %i.fk = mul i64 %i.fj, %i.fg                    ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %i.ch, i64 %.010.i.i.epil
  store i64 %i.fk, ptr %i.fl, align 8, !tbaa !52
  %i.fm = add nuw nsw i64 %.010.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter49
  br i1 %epil.iter.cmp.not, label %init_strides_from_shape.exit.i, label %bb.x, !llvm.loop !86

init_strides_from_shape.exit.i:                   ; preds = %init_strides_from_shape.exit.i.loopexit48.unr-lcssa, %bb.x, %.prol.loopexit, %.lr.ph.i.i.new, %bb.v, %bb.u
  %i.fn = phi i32 [ %i.cj, %.prol.loopexit ], [ %i.cj, %bb.u ], [ %i.eb, %bb.v ], [ %i.cj, %.lr.ph.i.i.new ], [ %i.eb, %bb.x ], [ %i.eb, %init_strides_from_shape.exit.i.loopexit48.unr-lcssa ]
  %i.fo = getelementptr i8, ptr %i.aq, i64 120    ; 2 uses
  store ptr null, ptr %i.fo, align 8, !tbaa !56
  switch i32 %i.fn, label %init_flags.exit.i [
    i32 0, label %init_flags.exit.thread.i
    i32 1, label %bb.y
  ]

bb.y:                                             ; preds = %init_strides_from_shape.exit.i
  %i.fp = getelementptr i8, ptr %i.aq, i64 104
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !64
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !52
  %i.fs = icmp eq i64 %i.fr, 1
  br i1 %i.fs, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ft = load i64, ptr %i.ch, align 8, !tbaa !52
  %i.fu = load i64, ptr %i.ay, align 8, !tbaa !66
  %i.fv = icmp eq i64 %i.ft, %i.fu
  br i1 %i.fv, label %bb.aa, label %init_flags.exit.thread.i

bb.aa:                                            ; preds = %bb.z, %bb.y
  br label %init_flags.exit.thread.i

init_flags.exit.i:                                ; preds = %init_strides_from_shape.exit.i
  %i.fw = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.av, i8 noundef signext 67) #15
  %.not.i51.i = icmp eq i32 %i.fw, 0
  %spec.select.i.i = select i1 %.not.i51.i, i32 0, i32 2 ; 2 uses
  %i.fx = tail call i32 @PyBuffer_IsContiguous(ptr noundef %i.av, i8 noundef signext 70) #15
  %.not15.i.i = icmp eq i32 %i.fx, 0
  %i.fy = or disjoint i32 %spec.select.i.i, 4
  %spec.select17.i.i = select i1 %.not15.i.i, i32 %spec.select.i.i, i32 %i.fy
  %.pre.i = load ptr, ptr %i.fo, align 8, !tbaa !56
  %.pre.fr.i = freeze ptr %.pre.i
  %i.fz = icmp eq ptr %.pre.fr.i, null
  %spec.select.i = select i1 %i.fz, i32 %spec.select17.i.i, i32 16
  br label %init_flags.exit.thread.i

init_flags.exit.thread.i:                         ; preds = %init_flags.exit.i, %bb.aa, %bb.z, %init_strides_from_shape.exit.i
  %i.ga = phi i32 [ %spec.select.i, %init_flags.exit.i ], [ 14, %init_strides_from_shape.exit.i ], [ 6, %bb.aa ], [ 0, %bb.z ]
  %i.gb = getelementptr i8, ptr %i.aq, i64 40
  store i32 %i.ga, ptr %i.gb, align 8, !tbaa !44
  %i.gc = tail call fastcc i32 @copy_buffer(ptr noundef %i.av, ptr noundef nonnull readonly %i.c)
  %i.gd = icmp slt i32 %i.gc, 0
  br i1 %i.gd, label %bb.ab, label %memory_from_contiguous_copy.exit

bb.ab:                                            ; preds = %init_flags.exit.thread.i
  %i.ge = load i32, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.ge, -1
  br i1 %.not.i.i, label %bb.ac, label %memory_from_contiguous_copy.exit

bb.ac:                                            ; preds = %bb.ab
  %i.gf = add nsw i32 %i.ge, -1                   ; 2 uses
  store i32 %i.gf, ptr %i.aq, align 8, !tbaa !36
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %Py_DECREF.exit41.sink.split.i, label %memory_from_contiguous_copy.exit

Py_DECREF.exit41.sink.split.i:                    ; preds = %bb.ac, %bb.p
  %.sink.i = phi ptr [ %i.u, %bb.p ], [ %i.aq, %bb.ac ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %.sink.i) #15
  br label %memory_from_contiguous_copy.exit

memory_from_contiguous_copy.exit:                 ; preds = %bb.i, %Py_DECREF.exit43.i, %bb.o, %bb.p, %Py_DECREF.exit39.i, %init_flags.exit.thread.i, %bb.ab, %bb.ac, %Py_DECREF.exit41.sink.split.i
  %.034.i = phi ptr [ null, %Py_DECREF.exit39.i ], [ null, %bb.i ], [ %i.aq, %init_flags.exit.thread.i ], [ null, %Py_DECREF.exit43.i ], [ null, %bb.ac ], [ null, %bb.o ], [ null, %bb.p ], [ null, %bb.ab ], [ null, %Py_DECREF.exit41.sink.split.i ] ; 3 uses
  %i.gh = load i32, ptr %i.a, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp sgt i32 %i.gh, -1
  br i1 %.not.i, label %bb.ad, label %Py_DECREF.exit20

bb.ad:                                            ; preds = %memory_from_contiguous_copy.exit
  %i.gi = add nsw i32 %i.gh, -1                   ; 2 uses
  store i32 %i.gi, ptr %i.a, align 8, !tbaa !36
  %i.gj = icmp eq i32 %i.gi, 0
  br i1 %i.gj, label %Py_DECREF.exit20.sink.split, label %Py_DECREF.exit20

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
  %4 = sext i32 %i.ao to i64                      ; 5 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph.i, label %init_suboffsets.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.aq = load ptr, ptr %i.r, align 8, !tbaa !56  ; 7 uses
  %min.iters.check = icmp ult i32 %i.ao, 8
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = sub i64 %i.am, %i.ar
  %diff.check = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %4, 2147483644                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.at = getelementptr [8 x i8], ptr %i.al, i64 %index ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  %wide.load = load <2 x i64>, ptr %i.at, align 8, !tbaa !52
  %wide.load37 = load <2 x i64>, ptr %i.au, align 8, !tbaa !52
  %i.av = getelementptr [8 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  store <2 x i64> %wide.load, ptr %i.av, align 8, !tbaa !52
  store <2 x i64> %wide.load37, ptr %i.aw, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %init_suboffsets.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.08.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %4, 3
  %5 = and i32 %i.ao, 3
  %lcmp.mod.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.08.i.prol = phi i64 [ %i.bb, %scalar.ph.prol ], [ %.08.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ay = getelementptr [8 x i8], ptr %i.al, i64 %.08.i.prol
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !52
  %i.ba = getelementptr [8 x i8], ptr %i.aq, i64 %.08.i.prol
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !52
  %i.bb = add nuw nsw i64 %.08.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !92

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.08.i.unr = phi i64 [ %.08.i.ph, %scalar.ph.preheader ], [ %i.bb, %scalar.ph.prol ]
  %i.bc = sub nsw i64 %.08.i.ph, %4
  %i.bd = icmp ugt i64 %i.bc, -4
  br i1 %i.bd, label %init_suboffsets.exit, label %scalar.ph

bb.h:                                             ; preds = %bb.g
  store ptr null, ptr %i.r, align 8, !tbaa !56
  br label %init_suboffsets.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.08.i = phi i64 [ %i.bt, %scalar.ph ], [ %.08.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.be = getelementptr [8 x i8], ptr %i.al, i64 %.08.i
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr [8 x i8], ptr %i.aq, i64 %.08.i
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !52
  %i.bh = add nuw nsw i64 %.08.i, 1               ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %i.al, i64 %i.bh
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !52
  %i.bk = getelementptr [8 x i8], ptr %i.aq, i64 %i.bh
  store i64 %i.bj, ptr %i.bk, align 8, !tbaa !52
  %i.bl = add nuw nsw i64 %.08.i, 2               ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.al, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !52
  %i.bo = getelementptr [8 x i8], ptr %i.aq, i64 %i.bl
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !52
  %i.bp = add nuw nsw i64 %.08.i, 3               ; 2 uses
  %i.bq = getelementptr [8 x i8], ptr %i.al, i64 %i.bp
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !52
  %i.bs = getelementptr [8 x i8], ptr %i.aq, i64 %i.bp
  store i64 %i.br, ptr %i.bs, align 8, !tbaa !52
  %i.bt = add nuw nsw i64 %.08.i, 4               ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.bt, %4
  br i1 %exitcond.not.i.3, label %init_suboffsets.exit, label %scalar.ph, !llvm.loop !93

init_suboffsets.exit:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader.i, %bb.h
  %i.bu = tail call fastcc i32 @buffer_to_contiguous(ptr noundef %0, ptr noundef nonnull %i.l, i8 noundef signext %3)
  tail call void @PyMem_Free(ptr noundef nonnull %i.l) #15
  br label %bb.i

bb.i:                                             ; preds = %init_suboffsets.exit, %bb.f, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ -1, %bb.f ], [ %i.bu, %init_suboffsets.exit ]
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
  %min.iters.check = icmp ult i32 %i.b, 8
  %i.i = ptrtoaddr ptr %i.h to i64
  %i.j = ptrtoaddr ptr %i.f to i64
  %i.k = sub i64 %i.j, %i.i
  %diff.check = icmp ugt i64 %i.k, -32
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
end_hunk_1
begin_hunk_2_@init_shape_strides:bb.a
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
  %xtraiter68 = and i64 %i.dg, 3                  ; 2 uses
  %lcmp.mod69.not = icmp eq i64 %xtraiter68, 0
  br i1 %lcmp.mod69.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.dk, %.prol.preheader ], [ %load_initial, %.lr.ph.i ]
  %.011.i.prol = phi i64 [ %i.dm, %.prol.preheader ], [ %i.db, %.lr.ph.i ] ; 3 uses
  %prol.iter70 = phi i64 [ %prol.iter70.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.dh = getelementptr [8 x i8], ptr %i.dd, i64 %.011.i.prol
  %i.di = getelementptr i8, ptr %i.dh, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !52
  %i.dk = mul i64 %i.dj, %store_forwarded.prol    ; 3 uses
  %i.dl = getelementptr [8 x i8], ptr %i.ct, i64 %.011.i.prol
  store i64 %i.dk, ptr %i.dl, align 8, !tbaa !52
  %i.dm = add nsw i64 %.011.i.prol, -1            ; 2 uses
  %prol.iter70.next = add i64 %prol.iter70, 1     ; 2 uses
  %prol.iter70.cmp.not = icmp eq i64 %prol.iter70.next, %xtraiter68
  br i1 %prol.iter70.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !100

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

init_strides_from_shape.exit:                     ; preds = %scalar.ph48.prol.loopexit, %scalar.ph48, %.prol.loopexit, %.lr.ph.i.new, %middle.block57, %._crit_edge.thread, %bb.g, %bb.f, %bb.b
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

.lr.ph.i:                                         ; preds = %bb.d
  %i.s = zext nneg i32 %i.q to i64                ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !64   ; 5 uses
  %i.v = shl nuw nsw i64 %i.s, 3
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.w, i64 8
  %load_initial = load i64, ptr %scevgep, align 8 ; 2 uses
  %i.x = add nuw nsw i64 %i.s, 1
  %xtraiter22 = and i64 %i.x, 3                   ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i, %.prol.preheader
  %store_forwarded.prol = phi i64 [ %i.ab, %.prol.preheader ], [ %load_initial, %.lr.ph.i ]
  %.011.i.prol = phi i64 [ %i.ad, %.prol.preheader ], [ %i.s, %.lr.ph.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i ]
  %i.y = getelementptr [8 x i8], ptr %i.u, i64 %.011.i.prol
  %i.z = getelementptr i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !52
  %i.ab = mul i64 %i.aa, %store_forwarded.prol    ; 3 uses
  %i.ac = getelementptr [8 x i8], ptr %i.e, i64 %.011.i.prol
  store i64 %i.ab, ptr %i.ac, align 8, !tbaa !52
  %i.ad = add nsw i64 %.011.i.prol, -1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter22
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !101

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i
  %store_forwarded.unr = phi i64 [ %load_initial, %.lr.ph.i ], [ %i.ab, %.prol.preheader ]
  %.011.i.unr = phi i64 [ %i.s, %.lr.ph.i ], [ %i.ad, %.prol.preheader ]
  %i.ae = icmp ult i32 %i.q, 3
  br i1 %i.ae, label %init_strides_from_shape.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %store_forwarded = phi i64 [ %i.ba, %.lr.ph.i.new ], [ %store_forwarded.unr, %.prol.loopexit ]
  %.011.i = phi i64 [ %i.bc, %.lr.ph.i.new ], [ %.011.i.unr, %.prol.loopexit ] ; 6 uses
  %i.af = getelementptr [8 x i8], ptr %i.u, i64 %.011.i
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !52
  %i.ai = mul i64 %i.ah, %store_forwarded         ; 2 uses
  %i.aj = getelementptr [8 x i8], ptr %i.e, i64 %.011.i
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !52
  %i.ak = add nsw i64 %.011.i, -1                 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.u, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !tbaa !52
  %i.ao = mul i64 %i.an, %i.ai                    ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.e, i64 %i.ak
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !52
  %i.aq = add nsw i64 %.011.i, -2                 ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %i.u, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load i64, ptr %i.as, align 8, !tbaa !52
  %i.au = mul i64 %i.at, %i.ao                    ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %i.e, i64 %i.aq
  store i64 %i.au, ptr %i.av, align 8, !tbaa !52
  %i.aw = add nsw i64 %.011.i, -3                 ; 3 uses
  %i.ax = getelementptr [8 x i8], ptr %i.u, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !52
  %i.ba = mul i64 %i.az, %i.au                    ; 2 uses
  %i.bb = getelementptr [8 x i8], ptr %i.e, i64 %i.aw
  store i64 %i.ba, ptr %i.bb, align 8, !tbaa !52
  %i.bc = add nsw i64 %.011.i, -4
  %.not.i.3 = icmp eq i64 %i.aw, 0
  br i1 %.not.i.3, label %init_strides_from_shape.exit, label %.lr.ph.i.new, !llvm.loop !84

bb.e:                                             ; preds = %bb.c
  store i64 %i.k, ptr %i.e, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 1
  br i1 %i.bf, label %.lr.ph.i13, label %init_strides_from_shape.exit

.lr.ph.i13:                                       ; preds = %bb.e
  %4 = sext i32 %i.be to i64                      ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !64 ; 5 uses
  %i.bi = add nsw i64 %4, -1                      ; 2 uses
  %5 = add nsw i64 %4, -2
  %xtraiter = and i64 %i.bi, 3                    ; 3 uses
  %i.bj = icmp ult i64 %5, 3
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph.i13.new

.lr.ph.i13.new:                                   ; preds = %.lr.ph.i13
  %unroll_iter = and i64 %i.bi, -4
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i13.new
  %i.bk = phi i64 [ %i.k, %.lr.ph.i13.new ], [ %i.cg, %bb.f ]
  %.010.i = phi i64 [ 1, %.lr.ph.i13.new ], [ %i.ci, %bb.f ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i13.new ], [ %niter.next.3, %bb.f ]
  %i.bl = getelementptr [8 x i8], ptr %i.bh, i64 %.010.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 -8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !52
  %i.bo = mul i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.e, i64 %.010.i
  store i64 %i.bo, ptr %i.bp, align 8, !tbaa !52
  %i.bq = add nuw nsw i64 %.010.i, 1              ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bh, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !52
  %i.bu = mul i64 %i.bt, %i.bo                    ; 2 uses
  %i.bv = getelementptr [8 x i8], ptr %i.e, i64 %i.bq
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !52
  %i.bw = add nuw nsw i64 %.010.i, 2              ; 2 uses
  %i.bx = getelementptr [8 x i8], ptr %i.bh, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !52
  %i.ca = mul i64 %i.bz, %i.bu                    ; 2 uses
  %i.cb = getelementptr [8 x i8], ptr %i.e, i64 %i.bw
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !52
  %i.cc = add nuw nsw i64 %.010.i, 3              ; 2 uses
  %i.cd = getelementptr [8 x i8], ptr %i.bh, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !52
  %i.cg = mul i64 %i.cf, %i.ca                    ; 3 uses
  %i.ch = getelementptr [8 x i8], ptr %i.e, i64 %i.cc
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !52
  %i.ci = add nuw nsw i64 %.010.i, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %init_strides_from_shape.exit.loopexit20.unr-lcssa, label %bb.f, !llvm.loop !85

init_strides_from_shape.exit.loopexit20.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %init_strides_from_shape.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %init_strides_from_shape.exit.loopexit20.unr-lcssa, %.lr.ph.i13
  %.epil.init = phi i64 [ %i.k, %.lr.ph.i13 ], [ %i.cg, %init_strides_from_shape.exit.loopexit20.unr-lcssa ]
  %.010.i.epil.init = phi i64 [ 1, %.lr.ph.i13 ], [ %i.ci, %init_strides_from_shape.exit.loopexit20.unr-lcssa ]
  %lcmp.mod21 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod21)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader
  %i.cj = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.cn, %bb.g ]
  %.010.i.epil = phi i64 [ %.010.i.epil.init, %.epil.preheader ], [ %i.cp, %bb.g ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.g ]
  %i.ck = getelementptr [8 x i8], ptr %i.bh, i64 %.010.i.epil
  %i.cl = getelementptr i8, ptr %i.ck, i64 -8
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !52
  %i.cn = mul i64 %i.cm, %i.cj                    ; 2 uses
  %i.co = getelementptr [8 x i8], ptr %i.e, i64 %.010.i.epil
  store i64 %i.cn, ptr %i.co, align 8, !tbaa !52
  %i.cp = add nuw nsw i64 %.010.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %init_strides_from_shape.exit, label %bb.g, !llvm.loop !102

init_strides_from_shape.exit:                     ; preds = %init_strides_from_shape.exit.loopexit20.unr-lcssa, %bb.g, %.prol.loopexit, %.lr.ph.i.new, %bb.e, %bb.d
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 64
  store ptr null, ptr %i.cq, align 8, !tbaa !56
  %i.cr = call fastcc i32 @copy_buffer(ptr noundef nonnull %3, ptr noundef nonnull %1)
  tail call void @PyMem_Free(ptr noundef nonnull %i.e) #15
  br label %bb.h

bb.h:                                             ; preds = %init_strides_from_shape.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ %i.cr, %init_strides_from_shape.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.0
}

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @memoryiter_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -16        ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 -8         ; 3 uses
  %.val.i = load i64, ptr %i.b, align 8, !tbaa !21
  %i.c = and i64 %.val.i, -4                      ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %.val12.i = load i64, ptr %i.a, align 8, !tbaa !23
  %i.e = and i64 %.val12.i, -4                    ; 2 uses
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load i64, ptr %i.d, align 8, !tbaa !23
  %i.h = and i64 %i.g, 3
  %i.i = or disjoint i64 %i.h, %i.e
  store i64 %i.i, ptr %i.d, align 8, !tbaa !23
  %i.j = getelementptr i8, ptr %i.f, i64 8        ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !21
  %i.l = and i64 %i.k, 3
  %i.m = or disjoint i64 %i.l, %i.c
  store i64 %i.m, ptr %i.j, align 8, !tbaa !21
  store i64 0, ptr %i.a, align 8, !tbaa !23
  %i.n = load i64, ptr %i.b, align 8, !tbaa !21
  %i.o = and i64 %i.n, 1
  store i64 %i.o, ptr %i.b, align 8, !tbaa !21
  %i.p = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 7428     ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26   ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.b, label %_PyObject_GC_UNTRACK.exit

bb.b:                                             ; preds = %bb.a
  %i.u = add nsw i32 %i.s, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !26
  br label %_PyObject_GC_UNTRACK.exit

_PyObject_GC_UNTRACK.exit:                        ; preds = %bb.a, %bb.b
  %i.v = getelementptr i8, ptr %i.q, i64 7656     ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !30
  %i.x = add i64 %i.w, -1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !30
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !103  ; 4 uses
  %.not.i = icmp eq ptr %i.z, null
  br i1 %.not.i, label %Py_XDECREF.exit, label %bb.c

bb.c:                                             ; preds = %_PyObject_GC_UNTRACK.exit
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %.not.i.i = icmp sgt i32 %i.aa, -1
  br i1 %.not.i.i, label %bb.d, label %Py_XDECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.ab = add nsw i32 %i.aa, -1                   ; 2 uses
  store i32 %i.ab, ptr %i.z, align 8, !tbaa !36
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.z) #15
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %_PyObject_GC_UNTRACK.exit, %bb.c, %bb.d, %bb.e
  tail call void @PyObject_GC_Del(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @memoryiter_traverse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 %1(ptr noundef nonnull %i.b, ptr noundef %2) #15 ; 2 uses
  %.not10 = icmp eq i32 %i.c, 0
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ 0, %bb.c ], [ %i.c, %bb.b ]
  ret i32 %.1
}

declare ptr @PyObject_SelfIter(ptr noundef) #1

; Function Attrs: nounwind uwtable
define internal ptr @memoryiter_next(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103  ; 10 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !105  ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load i64, ptr %i.f, align 8, !tbaa !106
  %i.h = icmp slt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !44
  %i.k = and i32 %i.j, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.b, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !11
end_hunk_2
begin_hunk_3_@ptr_from_index:bb.a
  %.not.i = icmp slt i64 %spec.select.i, %i.c
  %or.cond.i = select i1 %i.f, i1 %.not.i, i1 false
  br i1 %or.cond.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !38
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.g, ptr noundef nonnull @.str.20, i32 noundef 1) #15 ; 0 uses
  br label %lookup_dimension.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8, !tbaa !67
  %i.j = getelementptr i8, ptr %0, i64 56
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !65
  %i.l = load i64, ptr %i.k, align 8, !tbaa !52
  %i.m = mul i64 %i.l, %spec.select.i
  %i.n = getelementptr i8, ptr %i.i, i64 %i.m     ; 3 uses
  %i.o = getelementptr i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !56   ; 2 uses
  %.not25.i = icmp eq ptr %i.p, null
  br i1 %.not25.i, label %lookup_dimension.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load i64, ptr %i.p, align 8, !tbaa !52   ; 2 uses
  %i.r = icmp sgt i64 %i.q, -1
  br i1 %i.r, label %bb.e, label %lookup_dimension.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !69
  %i.t = getelementptr i8, ptr %i.s, i64 %i.q
  br label %lookup_dimension.exit

lookup_dimension.exit:                            ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %.0.i = phi ptr [ null, %bb.b ], [ %i.t, %bb.e ], [ %i.n, %bb.d ], [ %i.n, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @memory_subscript(ptr nofree noundef captures(address_is_null, ret: address, provenance) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = and i32 %i.c, 1
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %i.h = load i32, ptr %i.g, align 8, !tbaa !11
  %i.i = and i32 %i.h, 1
  %.not38 = icmp eq i32 %i.i, 0
  br i1 %.not38, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.8) #15
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %0, i64 92
  %i.l = load i32, ptr %i.k, align 4, !tbaa !37
  %i.m = icmp eq i32 %i.l, 0
  %i.n = getelementptr i8, ptr %1, i64 8
  %.val46 = load ptr, ptr %i.n, align 8, !tbaa !71 ; 4 uses
  br i1 %i.m, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val46, i64 168
  %.val49 = load i64, ptr %i.o, align 8, !tbaa !120
  %i.p = and i64 %.val49, 67108864
  %.not45 = icmp eq i64 %i.p, 0
  br i1 %.not45, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %1, i64 16
  %.val = load i64, ptr %i.q, align 8, !tbaa !115
  %i.r = icmp eq i64 %.val, 0
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %0, i64 96
  %.val48 = load ptr, ptr %i.s, align 8, !tbaa !54 ; 3 uses
  %i.t = load i8, ptr %.val48, align 1, !tbaa !36
  %i.u = icmp eq i8 %i.t, 64
  %.idx.i = zext i1 %i.u to i64
  %i.v = getelementptr i8, ptr %.val48, i64 %.idx.i ; 3 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !36
  %.not.i51 = icmp eq i8 %i.w, 0
  br i1 %.not.i51, label %adjust_fmt.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.v, i64 1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !36
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %adjust_fmt.exit, label %adjust_fmt.exit.thread

adjust_fmt.exit.thread:                           ; preds = %bb.g, %bb.h
  %i.aa = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !38
  %i.ab = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.aa, ptr noundef nonnull @.str.19, ptr noundef nonnull %.val48) #15 ; 0 uses
  br label %_Py_NewRef.exit

adjust_fmt.exit:                                  ; preds = %bb.h
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !67
  %i.ad = tail call fastcc ptr @unpack_single(ptr noundef nonnull %0, ptr noundef %i.ac, ptr noundef nonnull %i.v)
  br label %_Py_NewRef.exit

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.ae = icmp eq ptr %1, @_Py_EllipsisObject
  br i1 %i.ae, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.af = load i32, ptr %0, align 8, !tbaa !36    ; 2 uses
  %i.ag = icmp ugt i32 %i.af, -1073741825
  br i1 %i.ag, label %_Py_NewRef.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = add nuw i32 %i.af, 1
  store i32 %i.ah, ptr %0, align 8, !tbaa !36
  br label %_Py_NewRef.exit

bb.l:                                             ; preds = %bb.i
  %i.ai = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.ai, ptr noundef nonnull @.str.17) #15
  br label %_Py_NewRef.exit

bb.m:                                             ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %.val46, i64 96
  %.val50.val = load ptr, ptr %i.aj, align 8, !tbaa !121 ; 2 uses
  %.not.i52 = icmp eq ptr %.val50.val, null
  br i1 %.not.i52, label %_PyIndex_Check.exit.thread, label %_PyIndex_Check.exit

_PyIndex_Check.exit:                              ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %.val50.val, i64 264
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !122
  %.not60 = icmp eq ptr %i.al, null
  br i1 %.not60, label %_PyIndex_Check.exit.thread, label %bb.n

bb.n:                                             ; preds = %_PyIndex_Check.exit
  %i.am = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !38
  %i.an = tail call i64 @PyNumber_AsSsize_t(ptr noundef nonnull %1, ptr noundef %i.am) #15 ; 2 uses
  %i.ao = icmp eq i64 %i.an, -1
  br i1 %i.ao, label %bb.o, label %.split

.split:                                           ; preds = %bb.n
  %i.ap = tail call ptr @memory_item(ptr noundef nonnull %0, i64 noundef %i.an)
  br label %_Py_NewRef.exit

bb.o:                                             ; preds = %bb.n
  %i.aq = tail call ptr @PyErr_Occurred() #15
  %.not44 = icmp eq ptr %i.aq, null
  br i1 %.not44, label %.split34, label %_Py_NewRef.exit

.split34:                                         ; preds = %bb.o
  %i.ar = tail call ptr @memory_item(ptr noundef nonnull %0, i64 noundef -1)
  br label %_Py_NewRef.exit

_PyIndex_Check.exit.thread:                       ; preds = %bb.m, %_PyIndex_Check.exit
  %.not61 = icmp eq ptr %.val46, @PySlice_Type
  br i1 %.not61, label %bb.p, label %bb.z

bb.p:                                             ; preds = %_PyIndex_Check.exit.thread
  %i.as = and i32 %i.c, 32
  %.not43 = icmp eq i32 %i.as, 0
  br i1 %.not43, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.at, ptr noundef nonnull @.str.9) #15
  br label %_Py_NewRef.exit

bb.r:                                             ; preds = %bb.p
  %i.au = tail call fastcc ptr @mbuf_add_view(ptr noundef nonnull %i.f, ptr noundef %i.a) ; 11 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_Py_NewRef.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr i8, ptr %i.au, i64 56
  %i.ax = tail call fastcc i32 @init_slice(ptr noundef %i.aw, ptr noundef nonnull %1)
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.az = load i32, ptr %i.au, align 8, !tbaa !36 ; 2 uses
  %.not.i = icmp sgt i32 %i.az, -1
  br i1 %.not.i, label %bb.u, label %_Py_NewRef.exit

bb.u:                                             ; preds = %bb.t
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.ba, ptr %i.au, align 8, !tbaa !36
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.v, label %_Py_NewRef.exit

bb.v:                                             ; preds = %bb.u
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.au) #15
  br label %_Py_NewRef.exit

bb.w:                                             ; preds = %bb.s
  %i.bc = getelementptr i8, ptr %i.au, i64 92
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !37 ; 5 uses
  %2 = sext i32 %i.bd to i64                      ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.i, label %init_len.exit

.lr.ph.i:                                         ; preds = %bb.w
  %i.bf = getelementptr i8, ptr %i.au, i64 104
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !64 ; 9 uses
  %xtraiter = and i64 %2, 7
  %i.bh = icmp ult i32 %i.bd, 8
  br i1 %i.bh, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %2, 2147483640
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i.new
  %.011.i = phi i64 [ 1, %.lr.ph.i.new ], [ %i.cm, %bb.x ]
  %.0910.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.cn, %bb.x ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.7, %bb.x ]
  %i.bi = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !52
  %i.bk = mul i64 %i.bj, %.011.i
  %i.bl = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !52
  %i.bo = mul i64 %i.bn, %i.bk
  %i.bp = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !52
  %i.bs = mul i64 %i.br, %i.bo
  %i.bt = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 24
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !52
  %i.bw = mul i64 %i.bv, %i.bs
  %i.bx = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.by = getelementptr i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !52
  %i.ca = mul i64 %i.bz, %i.bw
  %i.cb = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 40
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !52
  %i.ce = mul i64 %i.cd, %i.ca
  %i.cf = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !52
  %i.ci = mul i64 %i.ch, %i.ce
  %i.cj = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !52
  %i.cm = mul i64 %i.cl, %i.ci                    ; 3 uses
  %i.cn = add nuw nsw i64 %.0910.i, 8             ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %init_len.exit.loopexit.unr-lcssa, label %bb.x, !llvm.loop !124

init_len.exit.loopexit.unr-lcssa:                 ; preds = %bb.x
  %3 = and i32 %i.bd, 7
  %lcmp.mod.not = icmp eq i32 %3, 0
  br i1 %lcmp.mod.not, label %init_len.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %init_len.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.011.i.epil.init = phi i64 [ 1, %.lr.ph.i ], [ %i.cm, %init_len.exit.loopexit.unr-lcssa ]
  %.0910.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.cn, %init_len.exit.loopexit.unr-lcssa ]
  %4 = and i32 %i.bd, 7
  %lcmp.mod67 = icmp ne i32 %4, 0
  tail call void @llvm.assume(i1 %lcmp.mod67)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader
  %.011.i.epil = phi i64 [ %.011.i.epil.init, %.epil.preheader ], [ %i.cq, %bb.y ]
  %.0910.i.epil = phi i64 [ %.0910.i.epil.init, %.epil.preheader ], [ %i.cr, %bb.y ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.y ]
  %i.co = getelementptr [8 x i8], ptr %i.bg, i64 %.0910.i.epil
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !52
  %i.cq = mul i64 %i.cp, %.011.i.epil             ; 2 uses
  %i.cr = add nuw nsw i64 %.0910.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %init_len.exit, label %bb.y, !llvm.loop !125

init_len.exit:                                    ; preds = %init_len.exit.loopexit.unr-lcssa, %bb.y, %bb.w
  %.0.lcssa.i = phi i64 [ 1, %bb.w ], [ %i.cm, %init_len.exit.loopexit.unr-lcssa ], [ %i.cq, %bb.y ]
  %i.cs = getelementptr i8, ptr %i.au, i64 80
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !66
  %i.cu = mul i64 %i.ct, %.0.lcssa.i
  %i.cv = getelementptr i8, ptr %i.au, i64 72
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !79
  tail call fastcc void @init_flags(ptr noundef %i.au)
  br label %_Py_NewRef.exit

bb.z:                                             ; preds = %_PyIndex_Check.exit.thread
  %i.cw = getelementptr i8, ptr %.val46, i64 168
  %.val13.i = load i64, ptr %i.cw, align 8, !tbaa !120
  %i.cx = and i64 %.val13.i, 67108864
  %.not.i53 = icmp eq i64 %i.cx, 0
  br i1 %.not.i53, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cy = getelementptr i8, ptr %1, i64 16
  %.val.i = load i64, ptr %i.cy, align 8, !tbaa !115 ; 2 uses
  %i.cz = getelementptr i8, ptr %1, i64 32
  %i.da = icmp sgt i64 %.val.i, 0
  br i1 %i.da, label %.lr.ph.i54, label %is_multiindex.exit

bb.ab:                                            ; preds = %_PyIndex_Check.exit.i
  %i.db = add nuw nsw i64 %.01017.i, 1            ; 2 uses
  %exitcond.not.i55 = icmp eq i64 %i.db, %.val.i
  br i1 %exitcond.not.i55, label %is_multiindex.exit, label %.lr.ph.i54, !llvm.loop !126

.lr.ph.i54:                                       ; preds = %bb.aa, %bb.ab
  %.01017.i = phi i64 [ %i.db, %bb.ab ], [ 0, %bb.aa ] ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.cz, i64 %.01017.i
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !38
  %i.de = getelementptr i8, ptr %i.dd, i64 8
  %.val14.i = load ptr, ptr %i.de, align 8, !tbaa !71
  %i.df = getelementptr i8, ptr %.val14.i, i64 96
  %.val14.val.i = load ptr, ptr %i.df, align 8, !tbaa !121 ; 2 uses
  %.not.i.i = icmp eq ptr %.val14.val.i, null
  br i1 %.not.i.i, label %.loopexit, label %_PyIndex_Check.exit.i

_PyIndex_Check.exit.i:                            ; preds = %.lr.ph.i54
  %i.dg = getelementptr i8, ptr %.val14.val.i, i64 264
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !122
  %.not16.i = icmp eq ptr %i.dh, null
  br i1 %.not16.i, label %.loopexit, label %bb.ab

is_multiindex.exit:                               ; preds = %bb.ab, %bb.aa
  %i.di = tail call fastcc ptr @memory_item_multi(ptr noundef %0, ptr noundef nonnull %1)
  br label %_Py_NewRef.exit

.loopexit:                                        ; preds = %_PyIndex_Check.exit.i, %.lr.ph.i54, %bb.z
  %i.dj = tail call fastcc i32 @is_multislice(ptr noundef nonnull %1)
  %.not42 = icmp eq i32 %i.dj, 0
  br i1 %.not42, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.loopexit
  %i.dk = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.dk, ptr noundef nonnull @.str.21) #15
  br label %_Py_NewRef.exit

bb.ad:                                            ; preds = %.loopexit
  %i.dl = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.dl, ptr noundef nonnull @.str.22) #15
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.v, %bb.u, %bb.t, %bb.k, %bb.j, %adjust_fmt.exit.thread, %init_len.exit, %bb.r, %bb.o, %.split34, %.split, %adjust_fmt.exit, %bb.ad, %bb.ac, %is_multiindex.exit, %bb.q, %bb.l, %bb.c
  %.3 = phi ptr [ null, %bb.c ], [ null, %bb.ad ], [ null, %adjust_fmt.exit.thread ], [ null, %bb.l ], [ null, %bb.v ], [ null, %bb.q ], [ %i.ar, %.split34 ], [ %i.di, %is_multiindex.exit ], [ null, %bb.ac ], [ %i.ad, %adjust_fmt.exit ], [ null, %bb.o ], [ %i.ap, %.split ], [ %i.au, %init_len.exit ], [ %0, %bb.k ], [ null, %bb.r ], [ %0, %bb.j ], [ null, %bb.t ], [ null, %bb.u ]
  ret ptr %.3
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @memory_ass_sub(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 5 uses
  %4 = alloca %struct.Py_buffer, align 8          ; 10 uses
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 56         ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %i.c = getelementptr i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !44
  %i.e = and i32 %i.d, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !11
  %i.j = and i32 %i.i, 1
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.8) #15
  br label %bb.aj

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 96
  %.val73 = load ptr, ptr %i.l, align 8, !tbaa !54 ; 3 uses
  %i.m = load i8, ptr %.val73, align 1, !tbaa !36
  %i.n = icmp eq i8 %i.m, 64
  %.idx.i = zext i1 %i.n to i64
  %i.o = getelementptr i8, ptr %.val73, i64 %.idx.i ; 5 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !36
  %.not.i = icmp eq i8 %i.p, 0
  br i1 %.not.i, label %adjust_fmt.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.o, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !36
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %adjust_fmt.exit, label %adjust_fmt.exit.thread

adjust_fmt.exit.thread:                           ; preds = %bb.d, %bb.e
  %i.t = load ptr, ptr @PyExc_NotImplementedError, align 8, !tbaa !38
  %i.u = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.19, ptr noundef nonnull %.val73) #15 ; 0 uses
  br label %bb.aj

adjust_fmt.exit:                                  ; preds = %bb.e
  %i.v = getelementptr i8, ptr %0, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !53
  %.not60 = icmp eq i32 %i.w, 0
  br i1 %.not60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %adjust_fmt.exit
  %i.x = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.x, ptr noundef nonnull @.str.25) #15
  br label %bb.aj

bb.g:                                             ; preds = %adjust_fmt.exit
  %i.y = icmp eq ptr %2, null
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.z, ptr noundef nonnull @.str.26) #15
  br label %bb.aj

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr i8, ptr %0, i64 92
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !37 ; 4 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp eq ptr %1, @_Py_EllipsisObject
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %1, i64 8
  %.val70 = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.af = getelementptr i8, ptr %.val70, i64 168
  %.val74 = load i64, ptr %i.af, align 8, !tbaa !120
  %i.ag = and i64 %.val74, 67108864
  %.not68 = icmp eq i64 %i.ag, 0
  br i1 %.not68, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr i8, ptr %1, i64 16
  %.val69 = load i64, ptr %i.ah, align 8, !tbaa !115
  %i.ai = icmp eq i64 %.val69, 0
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.j
  %i.aj = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.ak = tail call fastcc i32 @pack_single(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef %2, ptr noundef %i.o)
  br label %bb.aj

bb.n:                                             ; preds = %bb.l, %bb.k
  %i.al = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !38
  tail call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.17) #15
  br label %bb.aj

bb.o:                                             ; preds = %bb.i
  %i.am = getelementptr i8, ptr %1, i64 8
  %.val75 = load ptr, ptr %i.am, align 8, !tbaa !71 ; 2 uses
  %i.an = getelementptr i8, ptr %.val75, i64 96
  %.val75.val = load ptr, ptr %i.an, align 8, !tbaa !121 ; 2 uses
  %.not.i76 = icmp eq ptr %.val75.val, null
  br i1 %.not.i76, label %_PyIndex_Check.exit.thread, label %_PyIndex_Check.exit

_PyIndex_Check.exit:                              ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %.val75.val, i64 264
end_hunk_3
