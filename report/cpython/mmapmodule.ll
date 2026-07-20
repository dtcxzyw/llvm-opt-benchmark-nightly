inline.NumInlined: 70
inline.NumDeleted: 36
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@safe_copy_to_slice:bb.a
vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %4, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %4, 24
  %n.vec = and i64 %4, 9223372036854775776        ; 5 uses
  %i.f = add i64 %2, %n.vec
  %i.g = getelementptr i8, ptr %1, i64 %2
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 %index   ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 16
  %wide.load = load <16 x i8>, ptr %i.h, align 1, !tbaa !10
  %wide.load13 = load <16 x i8>, ptr %i.i, align 1, !tbaa !10
  %i.j = getelementptr i8, ptr %0, i64 %index     ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16
  store <16 x i8> %wide.load, ptr %i.j, align 1, !tbaa !10
  store <16 x i8> %wide.load13, ptr %i.k, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %4, 9223372036854775800      ; 4 uses
  %i.m = add i64 %2, %n.vec15
  %i.n = getelementptr i8, ptr %1, i64 %2
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 %index16
  %wide.load17 = load <8 x i8>, ptr %i.o, align 1, !tbaa !10
  %i.p = getelementptr i8, ptr %0, i64 %index16
  store <8 x i8> %wide.load17, ptr %i.p, align 1, !tbaa !10
  %index.next18 = add nuw i64 %index16, 8         ; 2 uses
  %i.q = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.q, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !24

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %4, %n.vec15
  br i1 %cmp.n19, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %.0910.ph = phi i64 [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.f, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %xtraiter = and i64 %4, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.011.prol = phi i64 [ %i.v, %.lr.ph.prol ], [ %.011.ph, %.lr.ph.preheader ] ; 2 uses
  %.0910.prol = phi i64 [ %i.u, %.lr.ph.prol ], [ %.0910.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = getelementptr i8, ptr %1, i64 %.0910.prol
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %i.t = getelementptr i8, ptr %0, i64 %.011.prol
  store i8 %i.s, ptr %i.t, align 1, !tbaa !10
  %i.u = add i64 %.0910.prol, %3                  ; 2 uses
  %i.v = add nuw nsw i64 %.011.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !25

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.011.unr = phi i64 [ %.011.ph, %.lr.ph.preheader ], [ %i.v, %.lr.ph.prol ]
  %.0910.unr = phi i64 [ %.0910.ph, %.lr.ph.preheader ], [ %i.u, %.lr.ph.prol ]
  %i.w = sub nsw i64 %.011.ph, %4
  %i.x = icmp ugt i64 %i.w, -4
  br i1 %i.x, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.011 = phi i64 [ %i.ar, %.lr.ph ], [ %.011.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.0910 = phi i64 [ %i.aq, %.lr.ph ], [ %.0910.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 %.0910
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = getelementptr i8, ptr %0, i64 %.011
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !10
  %i.ab = add i64 %.0910, %3                      ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !10
  %i.ae = getelementptr i8, ptr %0, i64 %.011
  %i.af = getelementptr i8, ptr %i.ae, i64 1
  store i8 %i.ad, ptr %i.af, align 1, !tbaa !10
  %i.ag = add i64 %i.ab, %3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %1, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10
  %i.aj = getelementptr i8, ptr %0, i64 %.011
  %i.ak = getelementptr i8, ptr %i.aj, i64 2
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !10
  %i.al = add i64 %i.ag, %3                       ; 2 uses
  %i.am = getelementptr i8, ptr %1, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !10
  %i.ao = getelementptr i8, ptr %0, i64 %.011
  %i.ap = getelementptr i8, ptr %i.ao, i64 3
  store i8 %i.an, ptr %i.ap, align 1, !tbaa !10
  %i.aq = add i64 %i.al, %3
  %i.ar = add nuw nsw i64 %.011, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ar, %4
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_safe_PyBytes_Find(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @_PyBytes_Find(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #15
  store i64 %i.a, ptr %0, align 8, !tbaa !27
  ret i32 0
}

declare i64 @_PyBytes_Find(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden noundef i32 @_safe_PyBytes_ReverseFind(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @_PyBytes_ReverseFind(ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6) #15
  store i64 %i.a, ptr %0, align 8, !tbaa !27
  ret i32 0
}

declare i64 @_PyBytes_ReverseFind(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden ptr @_safe_PyBytes_FromStringAndSize(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp eq i64 %1, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.c = load i8, ptr %0, align 1, !tbaa !10
  store i8 %i.c, ptr %i.a, align 1, !tbaa !10
  %i.d = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyBytesWriter_Create(i64 noundef %1) #15 ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.e) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr readonly align 1 %0, i64 %1, i1 false)
  %i.h = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.e) #15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.2 = phi ptr [ %i.d, %bb.b ], [ %i.h, %bb.d ], [ null, %bb.c ]
  ret ptr %.2
}

declare ptr @PyBytes_FromStringAndSize(ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @PyBytesWriter_Create(i64 noundef) local_unnamed_addr #5

declare ptr @PyBytesWriter_GetData(ptr noundef) local_unnamed_addr #5

declare ptr @PyBytesWriter_Finish(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @PyInit_mmap() local_unnamed_addr #4 {
bb.a:
  %i.a = tail call ptr @PyModuleDef_Init(ptr noundef nonnull @mmapmodule) #15
  ret ptr %i.a
}

declare ptr @PyModuleDef_Init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mmap_exec(ptr noundef %0) #4 {
bb.a:
  %i.a = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.b = tail call i32 @PyModule_AddObjectRef(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef %i.a) #15
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyType_FromModuleAndSpec(ptr noundef %0, ptr noundef nonnull @mmap_object_spec, ptr noundef null) #15 ; 5 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.ar, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @PyModule_AddType(ptr noundef %0, ptr noundef nonnull %i.d) #15
  %i.g = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.g, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.h = add nsw i32 %i.g, -1                     ; 2 uses
  store i32 %i.h, ptr %i.d, align 8, !tbaa !10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.c, %bb.d, %bb.e
  %i.j = icmp slt i32 %i.f, 0
  br i1 %i.j, label %bb.ar, label %bb.f

bb.f:                                             ; preds = %Py_DECREF.exit
  %i.k = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.3, i64 noundef 4) #15
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.4, i64 noundef 1) #15
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.ar, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.5, i64 noundef 2) #15
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.ar, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.6, i64 noundef 1) #15
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.ar, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.7, i64 noundef 2) #15
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.ar, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.8, i64 noundef 2048) #15
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.ar, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.9, i64 noundef 4096) #15
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.10, i64 noundef 32) #15
  %i.z = icmp slt i32 %i.y, 0
  br i1 %i.z, label %bb.ar, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.11, i64 noundef 32) #15
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.ar, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ac = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.12, i64 noundef 32768) #15
  %i.ad = icmp slt i32 %i.ac, 0
  br i1 %i.ad, label %bb.ar, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.13, i64 noundef 131072) #15
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.ar, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ag = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.14, i64 noundef 16384) #15
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.ar, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.15, i64 noundef 64) #15
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.ar, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = tail call i64 @sysconf(i32 noundef 30) #15
  %sext = shl i64 %i.ak, 32
  %i.al = ashr exact i64 %sext, 32
  %i.am = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.16, i64 noundef %i.al) #15
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %bb.ar, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ao = tail call i64 @sysconf(i32 noundef 30) #15
  %sext46 = shl i64 %i.ao, 32
  %i.ap = ashr exact i64 %sext46, 32
  %i.aq = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.17, i64 noundef %i.ap) #15
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.ar, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.18, i64 noundef 0) #15
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.ar, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.19, i64 noundef 1) #15
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.ar, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aw = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.20, i64 noundef 2) #15
  %i.ax = icmp slt i32 %i.aw, 0
  br i1 %i.ax, label %bb.ar, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.21, i64 noundef 3) #15
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ba = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.22, i64 noundef 2) #15
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %bb.ar, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bc = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.23, i64 noundef 1) #15
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %bb.ar, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.24, i64 noundef 4) #15
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.ar, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.25, i64 noundef 0) #15
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %bb.ar, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.26, i64 noundef 1) #15
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.27, i64 noundef 2) #15
  %i.bl = icmp slt i32 %i.bk, 0
  br i1 %i.bl, label %bb.ar, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bm = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.28, i64 noundef 3) #15
  %i.bn = icmp slt i32 %i.bm, 0
  br i1 %i.bn, label %bb.ar, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bo = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.29, i64 noundef 4) #15
  %i.bp = icmp slt i32 %i.bo, 0
  br i1 %i.bp, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bq = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.30, i64 noundef 9) #15
  %i.br = icmp slt i32 %i.bq, 0
  br i1 %i.br, label %bb.ar, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bs = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.31, i64 noundef 10) #15
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %bb.ar, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bu = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.32, i64 noundef 11) #15
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.ar, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bw = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.33, i64 noundef 100) #15
  %i.bx = icmp slt i32 %i.bw, 0
  br i1 %i.bx, label %bb.ar, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.by = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.34, i64 noundef 12) #15
  %i.bz = icmp slt i32 %i.by, 0
  br i1 %i.bz, label %bb.ar, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ca = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.35, i64 noundef 13) #15
  %i.cb = icmp slt i32 %i.ca, 0
  br i1 %i.cb, label %bb.ar, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cc = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.36, i64 noundef 14) #15
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %bb.ar, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ce = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.37, i64 noundef 15) #15
  %i.cf = icmp slt i32 %i.ce, 0
  br i1 %i.cf, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cg = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.38, i64 noundef 16) #15
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ci = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.39, i64 noundef 17) #15
  %i.cj = icmp slt i32 %i.ci, 0
  br i1 %i.cj, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ck = tail call i32 @PyModule_AddIntConstant(ptr noundef %0, ptr noundef nonnull @.str.40, i64 noundef 8) #15
  %.lobit = ashr i32 %i.ck, 31
  br label %bb.ar

bb.ar:                                            ; preds = %bb.b, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %Py_DECREF.exit, %bb.a
  %.2 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.ap ], [ -1, %Py_DECREF.exit ], [ -1, %bb.f ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.i ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ], [ -1, %bb.n ], [ -1, %bb.o ], [ -1, %bb.p ], [ -1, %bb.q ], [ -1, %bb.r ], [ -1, %bb.s ], [ -1, %bb.t ], [ -1, %bb.u ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.x ], [ -1, %bb.y ], [ -1, %bb.z ], [ -1, %bb.aa ], [ -1, %bb.ab ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ai ], [ -1, %bb.aj ], [ -1, %bb.ak ], [ -1, %bb.al ], [ -1, %bb.am ], [ -1, %bb.an ], [ -1, %bb.ao ], [ %.lobit, %bb.aq ]
  ret i32 %.2
}

declare i32 @PyModule_AddObjectRef(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyType_FromModuleAndSpec(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @PyModule_AddType(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @PyModule_AddIntConstant(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @new_mmap_object(ptr noundef %0, ptr noundef %1, ptr noundef %2) #4 {
bb.a:
  %3 = alloca %struct.stat, align 8               ; 6 uses
  %i.a = alloca i64, align 8                      ; 9 uses
  %i.b = alloca i64, align 8                      ; 9 uses
  %i.c = alloca i32, align 4                      ; 9 uses
  %i.d = alloca i32, align 4                      ; 12 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 0, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store i32 1, ptr %i.d, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  store i32 3, ptr %i.e, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  store i32 0, ptr %i.f, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  store i32 1, ptr %i.g, align 4, !tbaa !6
  %i.h = call i32 (ptr, ptr, ptr, ptr, ...) @PyArg_ParseTupleAndKeywords(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.51, ptr noundef nonnull @new_mmap_object.keywords, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.g) #15
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %Py_DECREF.exit56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.52) #15
  br label %Py_DECREF.exit56

bb.d:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.n, ptr noundef nonnull @.str.53) #15
  br label %Py_DECREF.exit56

bb.f:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.f, align 4, !tbaa !6    ; 2 uses
  %.not44 = icmp eq i32 %i.o, 0
  br i1 %.not44, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr %i.d, align 4, !tbaa !6
  %i.q = icmp ne i32 %i.p, 1
  %i.r = load i32, ptr %i.e, align 4
  %i.s = icmp ne i32 %i.r, 3
  %or.cond = select i1 %i.q, i1 true, i1 %i.s
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  %i.u = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.t, ptr noundef nonnull @.str.54) #15
  br label %Py_DECREF.exit56

bb.i:                                             ; preds = %bb.g
  switch i32 %i.o, label %bb.o [
    i32 1, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.j:                                             ; preds = %bb.i
  store i32 1, ptr %i.d, align 4, !tbaa !6
  store i32 1, ptr %i.e, align 4, !tbaa !6
  br label %bb.p

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %i.d, align 4, !tbaa !6
  store i32 3, ptr %i.e, align 4, !tbaa !6
  br label %bb.p

bb.l:                                             ; preds = %bb.i
  store i32 2, ptr %i.d, align 4, !tbaa !6
  store i32 3, ptr %i.e, align 4, !tbaa !6
  br label %bb.p

.thread:                                          ; preds = %bb.f
  %i.v = load i32, ptr %i.e, align 4, !tbaa !6    ; 2 uses
  %i.w = and i32 %i.v, 3
  %or.cond52.not = icmp eq i32 %i.w, 3
  br i1 %or.cond52.not, label %bb.p, label %4

4:                                                ; preds = %.thread
  %5 = and i32 %i.v, 2
  %.not46 = icmp eq i32 %5, 0
  br i1 %.not46, label %bb.n, label %bb.m

bb.m:                                             ; preds = %4
  store i32 2, ptr %i.f, align 4, !tbaa !6
  br label %bb.p

bb.n:                                             ; preds = %4
  store i32 1, ptr %i.f, align 4, !tbaa !6
  br label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.x = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  %i.y = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.x, ptr noundef nonnull @.str.55) #15
  br label %Py_DECREF.exit56

bb.p:                                             ; preds = %.thread, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %6 = phi i32 [ 0, %.thread ], [ 1, %bb.n ], [ 2, %bb.m ], [ 3, %bb.l ], [ 2, %bb.k ], [ 1, %bb.j ]
  %i.z = load i32, ptr %i.c, align 4, !tbaa !6
  %i.aa = call i32 (ptr, ptr, ...) @PySys_Audit(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, i32 noundef %i.z, i64 noundef %i.i, i32 noundef %6, i64 noundef %i.l) #15
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %Py_DECREF.exit56, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = load i32, ptr %i.c, align 4, !tbaa !6
  %.not48.a = icmp eq i32 %i.ac, -1
  br i1 %.not48.a, label %.thread58, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = call ptr @PyEval_SaveThread() #15
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !6
  %i.af = call i32 @_Py_fstat_noraise(i32 noundef %i.ae, ptr noundef nonnull %3) #15
  call void @PyEval_RestoreThread(ptr noundef %i.ad) #15
  %i.ag = icmp eq i32 %i.af, 0
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ai = icmp ne i32 %i.ah, -1
  %or.cond3 = select i1 %i.ai, i1 %i.ag, i1 false
  br i1 %or.cond3, label %bb.s, label %.thread58

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !31
  %i.al = and i32 %i.ak, 61440
  %i.am = icmp eq i32 %i.al, 32768
  br i1 %i.am, label %bb.t, label %.thread58

bb.t:                                             ; preds = %bb.s
  %i.an = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !34 ; 3 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.58) #15
  br label %Py_DECREF.exit56

bb.w:                                             ; preds = %bb.u
  %i.at = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %.not49.a = icmp slt i64 %i.at, %i.aq
  br i1 %.not49.a, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.au = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.au, ptr noundef nonnull @.str.59) #15
  br label %Py_DECREF.exit56

bb.y:                                             ; preds = %bb.w
  %i.av = sub i64 %i.aq, %i.at
  store i64 %i.av, ptr %i.a, align 8, !tbaa !27
  br label %.thread58

bb.z:                                             ; preds = %bb.t
  %i.aw = load i64, ptr %i.b, align 8, !tbaa !27  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !34 ; 2 uses
  %i.az = icmp sgt i64 %i.aw, %i.ay
  %i.ba = sub i64 %i.ay, %i.aw
  %i.bb = icmp slt i64 %i.ba, %i.an
  %or.cond54 = or i1 %i.az, %i.bb
  br i1 %or.cond54, label %bb.aa, label %.thread58

bb.aa:                                            ; preds = %bb.z
  %i.bc = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.bc, ptr noundef nonnull @.str.61) #15
  br label %Py_DECREF.exit56

.thread58:                                        ; preds = %bb.q, %bb.z, %bb.y, %bb.s, %bb.r
  %i.bd = getelementptr i8, ptr %0, i64 304
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35
  %i.bf = call ptr %i.be(ptr noundef %0, i64 noundef 0) #15 ; 20 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %Py_DECREF.exit56, label %bb.ab

bb.ab:                                            ; preds = %.thread58
  %i.bh = getelementptr i8, ptr %i.bf, i64 16     ; 4 uses
  store ptr null, ptr %i.bh, align 8, !tbaa !44
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !27
  %i.bj = getelementptr i8, ptr %i.bf, i64 24
  store i64 %i.bi, ptr %i.bj, align 8, !tbaa !47
  %i.bk = getelementptr i8, ptr %i.bf, i64 32
  store i64 0, ptr %i.bk, align 8, !tbaa !48
  %i.bl = getelementptr i8, ptr %i.bf, i64 64
  store ptr null, ptr %i.bl, align 8, !tbaa !49
  %i.bm = getelementptr i8, ptr %i.bf, i64 48
  store i64 0, ptr %i.bm, align 8, !tbaa !50
  %i.bn = load i64, ptr %i.b, align 8, !tbaa !27
  %i.bo = getelementptr i8, ptr %i.bf, i64 40
  store i64 %i.bn, ptr %i.bo, align 8, !tbaa !51
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !6   ; 2 uses
  %i.bq = icmp ne i32 %i.bp, 0
  %i.br = getelementptr i8, ptr %i.bf, i64 76
  %i.bs = zext i1 %i.bq to i8
  store i8 %i.bs, ptr %i.br, align 4, !tbaa !52
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !6   ; 2 uses
  %i.bu = icmp eq i32 %i.bt, -1
  br i1 %i.bu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.bv = getelementptr i8, ptr %i.bf, i64 56
  store i32 -1, ptr %i.bv, align 8, !tbaa !53
  %i.bw = load i32, ptr %i.d, align 4, !tbaa !6
  %i.bx = or i32 %i.bw, 32
  store i32 %i.bx, ptr %i.d, align 4, !tbaa !6
  br label %bb.aj

bb.ad:                                            ; preds = %bb.ab
  %.not50.a = icmp eq i32 %i.bp, 0
  br i1 %.not50.a, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.by = call i32 @_Py_dup(i32 noundef %i.bt) #15 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.bf, i64 56
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !53
  %i.ca = icmp eq i32 %i.by, -1
  br i1 %i.ca, label %bb.af, label %bb.aj

bb.af:                                            ; preds = %bb.ae
  %i.cb = load i32, ptr %i.bf, align 8, !tbaa !10 ; 2 uses
  %.not.i55 = icmp sgt i32 %i.cb, -1
  br i1 %.not.i55, label %bb.ag, label %Py_DECREF.exit56

bb.ag:                                            ; preds = %bb.af
  %i.cc = add nsw i32 %i.cb, -1                   ; 2 uses
  store i32 %i.cc, ptr %i.bf, align 8, !tbaa !10
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %bb.ah, label %Py_DECREF.exit56

bb.ah:                                            ; preds = %bb.ag
  call void @_Py_Dealloc(ptr noundef nonnull %i.bf) #15
  br label %Py_DECREF.exit56

bb.ai:                                            ; preds = %bb.ad
  %i.ce = getelementptr i8, ptr %i.bf, i64 56
  store i32 -1, ptr %i.ce, align 8, !tbaa !53
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ae, %bb.ac
  %i.cf = load i32, ptr %i.d, align 4, !tbaa !6
  %i.cg = getelementptr i8, ptr %i.bf, i64 60     ; 2 uses
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !54
  %i.ch = call ptr @PyEval_SaveThread() #15
  %i.ci = load i64, ptr %i.a, align 8, !tbaa !27
  %i.cj = load i32, ptr %i.e, align 4, !tbaa !6
  %i.ck = load i32, ptr %i.d, align 4, !tbaa !6
  %i.cl = load i32, ptr %i.c, align 4, !tbaa !6
  %i.cm = load i64, ptr %i.b, align 8, !tbaa !27
  %i.cn = call ptr @mmap64(ptr noundef null, i64 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cl, i64 noundef %i.cm) #15
  store ptr %i.cn, ptr %i.bh, align 8, !tbaa !44
  call void @PyEval_RestoreThread(ptr noundef %i.ch) #15
  %i.co = tail call ptr @__errno_location() #16   ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !6
  %i.cq = load ptr, ptr %i.bh, align 8, !tbaa !44 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, inttoptr (i64 -1 to ptr)
  br i1 %i.cr, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  store ptr null, ptr %i.bh, align 8, !tbaa !44
  %i.cs = load i32, ptr %i.bf, align 8, !tbaa !10 ; 2 uses
  %.not.i = icmp sgt i32 %i.cs, -1
  br i1 %.not.i, label %bb.al, label %Py_DECREF.exit

bb.al:                                            ; preds = %bb.ak
  %i.ct = add nsw i32 %i.cs, -1                   ; 2 uses
  store i32 %i.ct, ptr %i.bf, align 8, !tbaa !10
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.am, label %Py_DECREF.exit

bb.am:                                            ; preds = %bb.al
  call void @_Py_Dealloc(ptr noundef nonnull %i.bf) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.ak, %bb.al, %bb.am
  store i32 %i.cp, ptr %i.co, align 4, !tbaa !6
  %i.cv = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.cw = call ptr @PyErr_SetFromErrno(ptr noundef %i.cv) #15 ; 0 uses
  br label %Py_DECREF.exit56

bb.an:                                            ; preds = %bb.aj
  %i.cx = load i32, ptr %i.cg, align 4, !tbaa !54
  %i.cy = and i32 %i.cx, 32
  %.not51 = icmp eq i32 %i.cy, 0
  br i1 %.not51, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !27
  call fastcc void @_PyAnnotateMemoryMap(ptr noundef %i.cq, i64 noundef %i.cz, ptr noundef nonnull @.str.62)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.da = load i32, ptr %i.f, align 4, !tbaa !6
  %i.db = getelementptr i8, ptr %i.bf, i64 72
  store i32 %i.da, ptr %i.db, align 8, !tbaa !55
  br label %Py_DECREF.exit56

Py_DECREF.exit56:                                 ; preds = %bb.ah, %bb.ag, %bb.af, %Py_DECREF.exit, %bb.ap, %.thread58, %bb.p, %bb.a, %bb.aa, %bb.x, %bb.v, %bb.o, %bb.h, %bb.e, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ %i.u, %bb.h ], [ %i.y, %bb.o ], [ null, %bb.a ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.aa ], [ null, %bb.p ], [ null, %.thread58 ], [ %i.bf, %bb.ap ], [ null, %Py_DECREF.exit ], [ null, %bb.af ], [ null, %bb.ag ], [ null, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal void @mmap_object_dealloc(ptr noundef %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !tbaa !56  ; 4 uses
  tail call void @PyObject_GC_UnTrack(ptr noundef %0) #15
  %i.b = tail call ptr @PyEval_SaveThread() #15
  %i.c = getelementptr i8, ptr %0, i64 56
  %i.d = load i32, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @close(i32 noundef %i.d) #15 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %0, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !47
  %i.k = tail call i32 @munmap(ptr noundef nonnull %i.h, i64 noundef %i.j) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @PyEval_RestoreThread(ptr noundef %i.b) #15
  %i.l = getelementptr i8, ptr %0, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !49
  %.not15 = icmp eq ptr %i.m, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @PyObject_ClearWeakRefs(ptr noundef nonnull %0) #15
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr i8, ptr %.val, i64 320
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !57
  tail call void %i.o(ptr noundef nonnull %0) #15
  %i.p = load i32, ptr %.val, align 8, !tbaa !10  ; 2 uses
  %.not.i = icmp sgt i32 %i.p, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.q = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.q, ptr %.val, align 8, !tbaa !10
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %.val) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap__repr__method(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %switch.lookup

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val11.i = load ptr, ptr %i.d, align 8, !tbaa !56
  %i.e = getelementptr i8, ptr %.val11.i, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.63, ptr noundef %i.f) #15
  br label %mmap__repr__method_lock_held.exit

switch.lookup:                                    ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 72
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55
  %i.j = zext nneg i32 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.mmap__repr__method, i64 %i.j
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.k = getelementptr i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr i8, ptr %.val.i, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr i8, ptr %0, i64 40
  %i.s = load i64, ptr %i.r, align 8, !tbaa !51
  %i.t = tail call ptr (ptr, ...) @PyUnicode_FromFormat(ptr noundef nonnull @.str.64, ptr noundef %i.m, ptr noundef nonnull %switch.load, i64 noundef %i.o, i64 noundef %i.q, i64 noundef %i.s) #15
  br label %mmap__repr__method_lock_held.exit

mmap__repr__method_lock_held.exit:                ; preds = %bb.b, %switch.lookup
  %.010.i = phi ptr [ %i.g, %bb.b ], [ %i.t, %switch.lookup ]
  ret ptr %.010.i
}

declare ptr @PyObject_GenericGetAttr(ptr noundef, ptr noundef) #5

declare i32 @_PyObject_VisitType(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: nounwind uwtable
define internal i64 @mmap_length(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.86) #15
  br label %mmap_length_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !47
  br label %mmap_length_lock_held.exit

mmap_length_lock_held.exit:                       ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ -1, %bb.b ], [ %i.f, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_item(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.86) #15
  br label %mmap_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %1, 0
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %.not.i = icmp slt i64 %1, %i.h
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.117) #15
  br label %mmap_item_lock_held.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.j = getelementptr i8, ptr %i.c, i64 %1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  store i8 %i.k, ptr %i.a, align 1, !tbaa !10
  %i.l = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %mmap_item_lock_held.exit

mmap_item_lock_held.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ %i.l, %bb.f ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @mmap_ass_item(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, ptr noundef %2) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.86) #15
  br label %mmap_ass_item_lock_held.exit

bb.c:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 0
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !47
  %.not.i = icmp slt i64 %1, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.h, ptr noundef nonnull @.str.117) #15
  br label %mmap_ass_item_lock_held.exit

bb.f:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %2, null
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.j = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.118) #15
  br label %mmap_ass_item_lock_held.exit

bb.h:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %2, i64 8
  %.val17.i = load ptr, ptr %i.k, align 8, !tbaa !56
  %i.l = getelementptr i8, ptr %.val17.i, i64 168
  %.val18.i = load i64, ptr %i.l, align 8, !tbaa !59
  %i.m = and i64 %.val18.i, 134217728
  %.not15.i = icmp eq i64 %i.m, 0
  br i1 %.not15.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.n = tail call i64 @PyBytes_Size(ptr noundef nonnull %2) #15
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.p = load ptr, ptr @PyExc_IndexError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.p, ptr noundef nonnull @.str.119) #15
  br label %mmap_ass_item_lock_held.exit

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %0, i64 72
  %.val.i = load i32, ptr %i.q, align 8, !tbaa !55
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %is_writable.exit.thread.i, label %is_writable.exit.i

is_writable.exit.thread.i:                        ; preds = %bb.k
  %i.r = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.s = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.r, ptr noundef nonnull @.str.93) #15 ; 0 uses
  br label %mmap_ass_item_lock_held.exit

is_writable.exit.i:                               ; preds = %bb.k
  %i.t = tail call ptr @PyBytes_AsString(ptr noundef nonnull %2) #15
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.v = getelementptr i8, ptr %i.u, i64 %1
  %i.w = load i8, ptr %i.t, align 1, !tbaa !10
  store i8 %i.w, ptr %i.v, align 1, !tbaa !10
  br label %mmap_ass_item_lock_held.exit

end_hunk_0
begin_hunk_1_@mmap_mmap_close:bb.a
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.85) #15
  br label %mmap_mmap_close_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !53   ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  store i32 -1, ptr %i.e, align 8, !tbaa !53
  store ptr null, ptr %i.g, align 8, !tbaa !44
  %i.i = tail call ptr @PyEval_SaveThread() #15
  %i.j = icmp sgt i32 %i.f, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i32 @close(i32 noundef %i.f) #15 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !47
  %i.n = tail call i32 @munmap(ptr noundef nonnull %i.h, i64 noundef %i.m) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @PyEval_RestoreThread(ptr noundef %i.i) #15
  br label %mmap_mmap_close_impl.exit

mmap_mmap_close_impl.exit:                        ; preds = %bb.b, %bb.g
  %.0.i = phi ptr [ null, %bb.b ], [ @_Py_NoneStruct, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_mmap_find(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.66, i64 noundef %2, i64 noundef 1, i64 noundef 3) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !29
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 0) #15
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %2, 2
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.012 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ], [ %i.j, %bb.f ]
  %i.k = call fastcc ptr @mmap_gfind_lock_held(ptr noundef readonly %0, ptr noundef nonnull readonly %3, ptr noundef %.012, ptr noundef %.0, i32 noundef 0)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.g
  %.013 = phi ptr [ null, %bb.c ], [ %i.k, %bb.g ], [ null, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @PyBuffer_Release(ptr noundef nonnull %3) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_mmap_rfind(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %3 = alloca %struct.Py_buffer, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.67, i64 noundef %2, i64 noundef 1, i64 noundef 3) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !29
  %i.d = call i32 @PyObject_GetBuffer(ptr noundef %i.c, ptr noundef nonnull %3, i32 noundef 0) #15
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.e = icmp slt i64 %2, 2
  br i1 %i.e, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.h = icmp eq i64 %2, 2
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.f
  %.012 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ %i.g, %bb.e ], [ %i.g, %bb.f ]
  %.0 = phi ptr [ @_Py_NoneStruct, %bb.d ], [ @_Py_NoneStruct, %bb.e ], [ %i.j, %bb.f ]
  %i.k = call fastcc ptr @mmap_gfind_lock_held(ptr noundef readonly %0, ptr noundef nonnull readonly %3, ptr noundef %.012, ptr noundef %.0, i32 noundef 1)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.b, %bb.g
  %.013 = phi ptr [ null, %bb.c ], [ %i.k, %bb.g ], [ null, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !76
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @PyBuffer_Release(ptr noundef nonnull %3) #15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap_flush(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #4 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr i8, ptr %3, i64 16
  %.val = load i64, ptr %i.b, align 8, !tbaa !77
  %i.c = add i64 %.val, %2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i64 %2, 3
  %i.e = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.e, %i.d
  br i1 %or.cond5, label %.thread76, label %bb.c

bb.c:                                             ; preds = %bb.b, %.thread
  %i.f = phi i64 [ %i.c, %.thread ], [ %2, %bb.b ]
  %i.g = call ptr @_PyArg_UnpackKeywords(ptr noundef %1, i64 noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull @mmap_mmap_flush._parser, i32 noundef 0, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #15 ; 2 uses
  %.not61 = icmp eq ptr %i.g, null
  br i1 %.not61, label %mmap_mmap_flush_impl.exit, label %.thread76

.thread76:                                        ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %1, %bb.b ]   ; 3 uses
  %i.i = phi i64 [ %i.f, %bb.c ], [ %2, %bb.b ]   ; 3 uses
  %i.j = icmp slt i64 %2, 1
  br i1 %i.j, label %.thread89, label %bb.d

bb.d:                                             ; preds = %.thread76
  %i.k = add i64 %i.i, -1
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.m = call ptr @_PyNumber_Index(ptr noundef %i.l) #15 ; 5 uses
  %.not62 = icmp eq ptr %i.m, null
  br i1 %.not62, label %Py_DECREF.exit72.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.m) #15 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8, !tbaa !10   ; 2 uses
  %.not.i71 = icmp sgt i32 %i.o, -1
  br i1 %.not.i71, label %bb.f, label %Py_DECREF.exit72

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.m, align 8, !tbaa !10
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %Py_DECREF.exit72

bb.g:                                             ; preds = %bb.f
  call void @_Py_Dealloc(ptr noundef nonnull %i.m) #15
  br label %Py_DECREF.exit72

Py_DECREF.exit72:                                 ; preds = %bb.g, %bb.f, %bb.e
  %i.r = icmp eq i64 %i.n, -1
  br i1 %i.r, label %Py_DECREF.exit72.thread, label %bb.h

Py_DECREF.exit72.thread:                          ; preds = %bb.d, %Py_DECREF.exit72
  %i.s = call ptr @PyErr_Occurred() #15
  %.not63 = icmp eq ptr %i.s, null
  br i1 %.not63, label %bb.h, label %mmap_mmap_flush_impl.exit

bb.h:                                             ; preds = %Py_DECREF.exit72.thread, %Py_DECREF.exit72
  %.049.ph = phi i64 [ %i.n, %Py_DECREF.exit72 ], [ -1, %Py_DECREF.exit72.thread ] ; 3 uses
  %i.t = icmp eq i64 %2, 1
  br i1 %i.t, label %.thread89, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = add i64 %i.i, -2                         ; 2 uses
  %i.v = getelementptr i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = call ptr @_PyNumber_Index(ptr noundef %i.w) #15 ; 5 uses
  %.not64 = icmp eq ptr %i.x, null
  br i1 %.not64, label %Py_DECREF.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.x) #15 ; 2 uses
  %i.z = load i32, ptr %i.x, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i, label %bb.k, label %Py_DECREF.exit

bb.k:                                             ; preds = %bb.j
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !10
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %Py_DECREF.exit

bb.l:                                             ; preds = %bb.k
  call void @_Py_Dealloc(ptr noundef nonnull %i.x) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.l, %bb.k, %bb.j
  %i.ac = icmp eq i64 %i.y, -1
  br i1 %i.ac, label %Py_DECREF.exit.thread, label %.thread89

Py_DECREF.exit.thread:                            ; preds = %bb.i, %Py_DECREF.exit
  %i.ad = call ptr @PyErr_Occurred() #15
  %.not65 = icmp eq ptr %i.ad, null
  br i1 %.not65, label %.thread89, label %mmap_mmap_flush_impl.exit

.thread89:                                        ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit, %bb.h, %.thread76
  %.051 = phi i64 [ %i.i, %.thread76 ], [ %i.k, %bb.h ], [ %i.u, %Py_DECREF.exit ], [ %i.u, %Py_DECREF.exit.thread ]
  %.150 = phi i64 [ 0, %.thread76 ], [ %.049.ph, %bb.h ], [ %.049.ph, %Py_DECREF.exit ], [ %.049.ph, %Py_DECREF.exit.thread ] ; 4 uses
  %.148 = phi i64 [ -1, %.thread76 ], [ -1, %bb.h ], [ %i.y, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 2 uses
  %.not66 = icmp eq i64 %.051, 0
  br i1 %.not66, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.thread89
  %i.ae = getelementptr i8, ptr %i.h, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29
  %i.ag = call i32 @PyLong_AsInt(ptr noundef %i.af) #15 ; 2 uses
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = call ptr @PyErr_Occurred() #15
  %.not67 = icmp eq ptr %i.ai, null
  br i1 %.not67, label %bb.o, label %mmap_mmap_flush_impl.exit

bb.o:                                             ; preds = %bb.m, %bb.n, %.thread89
  %.046 = phi i32 [ -1, %bb.n ], [ %i.ag, %bb.m ], [ 0, %.thread89 ] ; 2 uses
  %i.aj = getelementptr i8, ptr %0, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !44 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_flush_impl.exit

bb.q:                                             ; preds = %bb.o
  %i.an = icmp eq i64 %.148, -1
  br i1 %i.an, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr i8, ptr %0, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !47
  %i.aq = sub i64 %i.ap, %.150
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i = phi i64 [ %i.aq, %bb.r ], [ %.148, %bb.q ] ; 3 uses
  %i.ar = or i64 %.0.i, %.150
  %or.cond.not.i = icmp sgt i64 %i.ar, -1
  br i1 %or.cond.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.as = getelementptr i8, ptr %0, i64 24
  %i.at = load i64, ptr %i.as, align 8, !tbaa !47
  %i.au = sub i64 %i.at, %.150
  %i.av = icmp slt i64 %i.au, %.0.i
  br i1 %i.av, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.aw = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.aw, ptr noundef nonnull @.str.88) #15
  br label %mmap_mmap_flush_impl.exit

bb.v:                                             ; preds = %bb.t
  %i.ax = getelementptr i8, ptr %0, i64 72
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !55
  switch i32 %i.ay, label %bb.w [
    i32 1, label %mmap_mmap_flush_impl.exit
    i32 3, label %mmap_mmap_flush_impl.exit
  ]

bb.w:                                             ; preds = %bb.v
  %i.az = icmp eq i32 %.046, 0
  %spec.store.select.i = select i1 %i.az, i32 4, i32 %.046
  %i.ba = getelementptr i8, ptr %i.ak, i64 %.150
  %i.bb = call i32 @msync(ptr noundef %i.ba, i64 noundef %.0.i, i32 noundef %spec.store.select.i) #15
  %i.bc = icmp eq i32 %i.bb, -1
  br i1 %i.bc, label %bb.x, label %mmap_mmap_flush_impl.exit

bb.x:                                             ; preds = %bb.w
  %i.bd = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.be = call ptr @PyErr_SetFromErrno(ptr noundef %i.bd) #15 ; 0 uses
  br label %mmap_mmap_flush_impl.exit

mmap_mmap_flush_impl.exit:                        ; preds = %bb.x, %bb.w, %bb.v, %bb.v, %bb.u, %bb.p, %Py_DECREF.exit.thread, %Py_DECREF.exit72.thread, %bb.c, %bb.n
  %.052 = phi ptr [ null, %bb.n ], [ null, %Py_DECREF.exit.thread ], [ null, %Py_DECREF.exit72.thread ], [ null, %bb.c ], [ null, %bb.p ], [ null, %bb.u ], [ @_Py_NoneStruct, %bb.v ], [ null, %bb.x ], [ @_Py_NoneStruct, %bb.v ], [ @_Py_NoneStruct, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret ptr %.052
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap_madvise(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.69, i64 noundef %2, i64 noundef 1, i64 noundef 3) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %mmap_mmap_madvise_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !29
  %i.d = tail call i32 @PyLong_AsInt(ptr noundef %i.c) #15 ; 2 uses
  %i.e = icmp eq i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyErr_Occurred() #15
  %.not28 = icmp eq ptr %i.f, null
  br i1 %.not28, label %bb.e, label %mmap_mmap_madvise_impl.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = icmp slt i64 %2, 2
  br i1 %i.g, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = tail call ptr @_PyNumber_Index(ptr noundef %i.i) #15 ; 5 uses
  %.not29 = icmp eq ptr %i.j, null
  br i1 %.not29, label %Py_DECREF.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.j) #15 ; 2 uses
  %i.l = load i32, ptr %i.j, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.j, align 8, !tbaa !10
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.j) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.i, %bb.h, %bb.g
  %i.o = icmp eq i64 %i.k, -1
  br i1 %i.o, label %Py_DECREF.exit.thread, label %bb.j

Py_DECREF.exit.thread:                            ; preds = %bb.f, %Py_DECREF.exit
  %i.p = tail call ptr @PyErr_Occurred() #15
  %.not30 = icmp eq ptr %i.p, null
  br i1 %.not30, label %bb.j, label %mmap_mmap_madvise_impl.exit

bb.j:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.024.ph = phi i64 [ %i.k, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 2 uses
  %i.q = icmp eq i64 %2, 2
  br i1 %i.q, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.e, %bb.k
  %.1 = phi i64 [ 0, %bb.e ], [ %.024.ph, %bb.j ], [ %.024.ph, %bb.k ] ; 6 uses
  %.023 = phi ptr [ @_Py_NoneStruct, %bb.e ], [ @_Py_NoneStruct, %bb.j ], [ %i.s, %bb.k ] ; 2 uses
  %i.t = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !44
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.w = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.w, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_madvise_impl.exit

bb.n:                                             ; preds = %bb.l
  %i.x = icmp eq ptr %.023, @_Py_NoneStruct
  br i1 %i.x, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.y = getelementptr i8, ptr %0, i64 24
  %i.z = load i64, ptr %i.y, align 8, !tbaa !47
  br label %bb.t

bb.p:                                             ; preds = %bb.n
  %i.aa = tail call ptr @_PyNumber_Index(ptr noundef %.023) #15 ; 5 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %_As_Py_ssize_t.exit.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.aa) #15 ; 2 uses
  %i.ac = load i32, ptr %i.aa, align 8, !tbaa !10 ; 2 uses
  %.not.i.i.i = icmp sgt i32 %i.ac, -1
  br i1 %.not.i.i.i, label %bb.r, label %_As_Py_ssize_t.exit.i

bb.r:                                             ; preds = %bb.q
  %i.ad = add nsw i32 %i.ac, -1                   ; 2 uses
  store i32 %i.ad, ptr %i.aa, align 8, !tbaa !10
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.s, label %_As_Py_ssize_t.exit.i

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aa) #15
  br label %_As_Py_ssize_t.exit.i

_As_Py_ssize_t.exit.i:                            ; preds = %bb.s, %bb.r, %bb.q
  %i.af = icmp eq i64 %i.ab, -1
  br i1 %i.af, label %_As_Py_ssize_t.exit.thread.i, label %bb.t

_As_Py_ssize_t.exit.thread.i:                     ; preds = %_As_Py_ssize_t.exit.i, %bb.p
  %i.ag = tail call ptr @PyErr_Occurred() #15
  %.not.i32 = icmp eq ptr %i.ag, null
  br i1 %.not.i32, label %bb.t, label %mmap_mmap_madvise_impl.exit

bb.t:                                             ; preds = %_As_Py_ssize_t.exit.thread.i, %_As_Py_ssize_t.exit.i, %bb.o
  %.0.i = phi i64 [ %i.z, %bb.o ], [ -1, %_As_Py_ssize_t.exit.thread.i ], [ %i.ab, %_As_Py_ssize_t.exit.i ] ; 4 uses
  %i.ah = icmp slt i64 %.1, 0
  br i1 %i.ah, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ai = getelementptr i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !47 ; 3 uses
  %.not28.i = icmp slt i64 %.1, %i.aj
  br i1 %.not28.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ak = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ak, ptr noundef nonnull @.str.89) #15
  br label %mmap_mmap_madvise_impl.exit

bb.w:                                             ; preds = %bb.u
  %i.al = icmp slt i64 %.0.i, 0
  br i1 %i.al, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.am, ptr noundef nonnull @.str.90) #15
  br label %mmap_mmap_madvise_impl.exit

bb.y:                                             ; preds = %bb.w
  %i.an = sub nuw nsw i64 9223372036854775807, %.1
  %i.ao = icmp samesign ult i64 %i.an, %.0.i
  br i1 %i.ao, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ap = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ap, ptr noundef nonnull @.str.91) #15
  br label %mmap_mmap_madvise_impl.exit

bb.aa:                                            ; preds = %bb.y
  %i.aq = load ptr, ptr %i.t, align 8, !tbaa !44  ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_madvise_impl.exit

bb.ac:                                            ; preds = %bb.aa
  %i.at = add nuw i64 %.0.i, %.1
  %i.au = icmp sgt i64 %i.at, %i.aj
  %i.av = sub nsw i64 %i.aj, %.1
  %spec.select.i = select i1 %i.au, i64 %i.av, i64 %.0.i
  %i.aw = getelementptr i8, ptr %i.aq, i64 %.1
  %i.ax = tail call i32 @madvise(ptr noundef %i.aw, i64 noundef %spec.select.i, i32 noundef %i.d) #15
  %.not29.i = icmp eq i32 %i.ax, 0
  br i1 %.not29.i, label %mmap_mmap_madvise_impl.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ay = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.az = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ay) #15 ; 0 uses
  br label %mmap_mmap_madvise_impl.exit

mmap_mmap_madvise_impl.exit:                      ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.z, %bb.x, %bb.v, %_As_Py_ssize_t.exit.thread.i, %bb.m, %Py_DECREF.exit.thread, %bb.b, %bb.d
  %.025 = phi ptr [ null, %bb.d ], [ null, %Py_DECREF.exit.thread ], [ null, %bb.b ], [ null, %bb.m ], [ null, %bb.v ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ab ], [ null, %bb.ad ], [ null, %_As_Py_ssize_t.exit.thread.i ], [ @_Py_NoneStruct, %bb.ac ]
  ret ptr %.025
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap_move(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.70, i64 noundef %2, i64 noundef 3, i64 noundef 3) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %mmap_mmap_move_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = load ptr, ptr %1, align 8, !tbaa !29
  %i.c = tail call ptr @_PyNumber_Index(ptr noundef %i.b) #15 ; 5 uses
  %.not41 = icmp eq ptr %i.c, null
  br i1 %.not41, label %Py_DECREF.exit55.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.c) #15 ; 2 uses
  %i.e = load i32, ptr %i.c, align 8, !tbaa !10   ; 2 uses
  %.not.i54 = icmp sgt i32 %i.e, -1
  br i1 %.not.i54, label %bb.e, label %Py_DECREF.exit55

bb.e:                                             ; preds = %bb.d
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr %i.c, align 8, !tbaa !10
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.f, label %Py_DECREF.exit55

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #15
  br label %Py_DECREF.exit55

Py_DECREF.exit55:                                 ; preds = %bb.f, %bb.e, %bb.d
  %i.h = icmp eq i64 %i.d, -1
  br i1 %i.h, label %Py_DECREF.exit55.thread, label %bb.g

Py_DECREF.exit55.thread:                          ; preds = %bb.c, %Py_DECREF.exit55
  %i.i = tail call ptr @PyErr_Occurred() #15
  %.not42 = icmp eq ptr %i.i, null
  br i1 %.not42, label %bb.g, label %mmap_mmap_move_impl.exit

bb.g:                                             ; preds = %Py_DECREF.exit55.thread, %Py_DECREF.exit55
  %.03559.ph = phi i64 [ %i.d, %Py_DECREF.exit55 ], [ -1, %Py_DECREF.exit55.thread ] ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.l = tail call ptr @_PyNumber_Index(ptr noundef %i.k) #15 ; 5 uses
  %.not43 = icmp eq ptr %i.l, null
  br i1 %.not43, label %Py_DECREF.exit53.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.l) #15 ; 2 uses
  %i.n = load i32, ptr %i.l, align 8, !tbaa !10   ; 2 uses
  %.not.i52 = icmp sgt i32 %i.n, -1
  br i1 %.not.i52, label %bb.i, label %Py_DECREF.exit53

bb.i:                                             ; preds = %bb.h
  %i.o = add nsw i32 %i.n, -1                     ; 2 uses
  store i32 %i.o, ptr %i.l, align 8, !tbaa !10
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.j, label %Py_DECREF.exit53

bb.j:                                             ; preds = %bb.i
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.l) #15
  br label %Py_DECREF.exit53

Py_DECREF.exit53:                                 ; preds = %bb.j, %bb.i, %bb.h
  %i.q = icmp eq i64 %i.m, -1
  br i1 %i.q, label %Py_DECREF.exit53.thread, label %bb.k

Py_DECREF.exit53.thread:                          ; preds = %bb.g, %Py_DECREF.exit53
  %i.r = tail call ptr @PyErr_Occurred() #15
  %.not44 = icmp eq ptr %i.r, null
  br i1 %.not44, label %bb.k, label %mmap_mmap_move_impl.exit

bb.k:                                             ; preds = %Py_DECREF.exit53.thread, %Py_DECREF.exit53
  %.03266.ph = phi i64 [ %i.m, %Py_DECREF.exit53 ], [ -1, %Py_DECREF.exit53.thread ] ; 3 uses
  %i.s = getelementptr i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.u = tail call ptr @_PyNumber_Index(ptr noundef %i.t) #15 ; 5 uses
  %.not45 = icmp eq ptr %i.u, null
  br i1 %.not45, label %Py_DECREF.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.u) #15 ; 2 uses
  %i.w = load i32, ptr %i.u, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.m, label %Py_DECREF.exit

bb.m:                                             ; preds = %bb.l
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.u, align 8, !tbaa !10
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.n, label %Py_DECREF.exit

bb.n:                                             ; preds = %bb.m
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.n, %bb.m, %bb.l
  %i.z = icmp eq i64 %i.v, -1
  br i1 %i.z, label %Py_DECREF.exit.thread, label %bb.o

Py_DECREF.exit.thread:                            ; preds = %bb.k, %Py_DECREF.exit
  %i.aa = tail call ptr @PyErr_Occurred() #15
  %.not46 = icmp eq ptr %i.aa, null
  br i1 %.not46, label %bb.o, label %mmap_mmap_move_impl.exit

bb.o:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.03075.ph = phi i64 [ %i.v, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 4 uses
  %i.ab = getelementptr i8, ptr %0, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !44 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_move_impl.exit

bb.q:                                             ; preds = %bb.o
  %i.af = getelementptr i8, ptr %0, i64 72
  %.val.i = load i32, ptr %i.af, align 8, !tbaa !55
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %is_writable.exit.thread.i, label %is_writable.exit.i

is_writable.exit.thread.i:                        ; preds = %bb.q
  %i.ag = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.ah = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ag, ptr noundef nonnull @.str.93) #15 ; 0 uses
  br label %mmap_mmap_move_impl.exit

is_writable.exit.i:                               ; preds = %bb.q
  %i.ai = or i64 %.03266.ph, %.03559.ph
  %i.aj = or i64 %i.ai, %.03075.ph
  %or.cond3.not.i = icmp sgt i64 %i.aj, -1
  br i1 %or.cond3.not.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %is_writable.exit.i
  %i.ak = getelementptr i8, ptr %0, i64 24
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !47 ; 2 uses
  %i.am = sub i64 %i.al, %.03559.ph
  %i.an = icmp slt i64 %i.am, %.03075.ph
  %i.ao = sub i64 %i.al, %.03266.ph
  %i.ap = icmp slt i64 %i.ao, %.03075.ph
  %or.cond.i = or i1 %i.an, %i.ap
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %i.ac, i64 %.03559.ph
  %i.ar = getelementptr i8, ptr %i.ac, i64 %.03266.ph
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.aq, ptr readonly align 1 %i.ar, i64 %.03075.ph, i1 false)
  br label %mmap_mmap_move_impl.exit

bb.t:                                             ; preds = %bb.r, %is_writable.exit.i
  %i.as = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.as, ptr noundef nonnull @.str.92) #15
  br label %mmap_mmap_move_impl.exit

mmap_mmap_move_impl.exit:                         ; preds = %bb.t, %bb.s, %is_writable.exit.thread.i, %bb.p, %Py_DECREF.exit.thread, %Py_DECREF.exit53.thread, %Py_DECREF.exit55.thread, %bb.b
  %.031 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %Py_DECREF.exit53.thread ], [ null, %Py_DECREF.exit55.thread ], [ null, %bb.b ], [ null, %bb.p ], [ null, %bb.t ], [ null, %is_writable.exit.thread.i ], [ @_Py_NoneStruct, %bb.s ]
  ret ptr %.031
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_mmap_read(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i64 9223372036854775807, ptr %i.b, align 8, !tbaa !27
  %or.cond = icmp ult i64 %2, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.71, i64 noundef %2, i64 noundef 0, i64 noundef 1) #15
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %mmap_mmap_read_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = icmp slt i64 %2, 1
  br i1 %i.d, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !29
  %i.f = call i32 @_Py_convert_optional_to_ssize_t(ptr noundef %i.e, ptr noundef nonnull %i.b) #15
  %.not7 = icmp eq i32 %i.f, 0
  br i1 %.not7, label %mmap_mmap_read_impl.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !44   ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_read_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.k = load i64, ptr %i.b, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48   ; 3 uses
  %i.n = getelementptr i8, ptr %0, i64 24
  %i.o = load i64, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = icmp slt i64 %i.m, %i.o
  %i.q = sub i64 %i.o, %i.m
  %spec.select.i = select i1 %i.p, i64 %i.q, i64 0 ; 2 uses
  %i.r = icmp slt i64 %i.k, 0
  %i.s = call i64 @llvm.smin.i64(i64 %i.k, i64 %spec.select.i)
  %.016.i = select i1 %i.r, i64 %spec.select.i, i64 %i.s ; 4 uses
  %i.t = getelementptr i8, ptr %i.h, i64 %i.m     ; 2 uses
  %i.u = icmp eq i64 %.016.i, 1
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.v = load i8, ptr %i.t, align 1, !tbaa !10
  store i8 %i.v, ptr %i.a, align 1, !tbaa !10
  %i.w = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_safe_PyBytes_FromStringAndSize.exit.i

bb.i:                                             ; preds = %bb.g
  %i.x = call ptr @PyBytesWriter_Create(i64 noundef %.016.i) #15 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %mmap_mmap_read_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.x) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr readonly align 1 %i.t, i64 %.016.i, i1 false)
  %i.aa = call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.x) #15
  br label %_safe_PyBytes_FromStringAndSize.exit.i

_safe_PyBytes_FromStringAndSize.exit.i:           ; preds = %bb.j, %bb.h
  %.2.i.i = phi ptr [ %i.w, %bb.h ], [ %i.aa, %bb.j ] ; 2 uses
  %.not.i = icmp eq ptr %.2.i.i, null
  br i1 %.not.i, label %mmap_mmap_read_impl.exit, label %bb.k

bb.k:                                             ; preds = %_safe_PyBytes_FromStringAndSize.exit.i
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !48
  %i.ac = add i64 %i.ab, %.016.i
  store i64 %i.ac, ptr %i.l, align 8, !tbaa !48
  br label %mmap_mmap_read_impl.exit

mmap_mmap_read_impl.exit:                         ; preds = %bb.k, %_safe_PyBytes_FromStringAndSize.exit.i, %bb.i, %bb.f, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.f ], [ %.2.i.i, %bb.k ], [ null, %_safe_PyBytes_FromStringAndSize.exit.i ], [ null, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_mmap_read_byte(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_read_byte_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !48   ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !47
  %.not.i = icmp slt i64 %i.f, %i.h
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.i, ptr noundef nonnull @.str.94) #15
  br label %mmap_mmap_read_byte_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.j = getelementptr i8, ptr %i.b, i64 %i.f
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = add nsw i64 %i.f, 1
  store i64 %i.l, ptr %i.e, align 8, !tbaa !48
  %i.m = zext i8 %i.k to i64
  %i.n = tail call ptr @PyLong_FromLong(i64 noundef %i.m) #15
  br label %mmap_mmap_read_byte_impl.exit

mmap_mmap_read_byte_impl.exit:                    ; preds = %bb.b, %bb.d, %bb.e
  %.1.i = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.n, %bb.e ]
  ret ptr %.1.i
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_mmap_readline(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !44   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_readline_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48   ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !47   ; 3 uses
  %.not.i = icmp slt i64 %i.g, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @Py_GetConstant(i32 noundef 8) #15
  br label %mmap_mmap_readline_impl.exit

bb.e:                                             ; preds = %bb.c
  %i.k = sub i64 %i.i, %i.g
  %i.l = getelementptr i8, ptr %i.c, i64 %i.g     ; 4 uses
  %i.m = tail call ptr @memchr(ptr noundef %i.l, i32 noundef 10, i64 noundef %i.k) #14 ; 2 uses
  %.not22.i = icmp eq ptr %i.m, null
  %i.n = getelementptr i8, ptr %i.c, i64 %i.i
  %i.o = getelementptr i8, ptr %i.m, i64 1
  %storemerge.i = select i1 %.not22.i, ptr %i.n, ptr %i.o
  %i.p = ptrtoint ptr %storemerge.i to i64
  %i.q = ptrtoint ptr %i.l to i64
  %i.r = sub i64 %i.p, %i.q                       ; 4 uses
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.t = load i8, ptr %i.l, align 1, !tbaa !10
  store i8 %i.t, ptr %i.a, align 1, !tbaa !10
  %i.u = call ptr @PyBytes_FromStringAndSize(ptr noundef nonnull %i.a, i64 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %_safe_PyBytes_FromStringAndSize.exit.i

bb.g:                                             ; preds = %bb.e
  %i.v = tail call ptr @PyBytesWriter_Create(i64 noundef %i.r) #15 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %mmap_mmap_readline_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.v) #15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr readonly align 1 %i.l, i64 %i.r, i1 false)
  %i.y = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.v) #15
  br label %_safe_PyBytes_FromStringAndSize.exit.i

_safe_PyBytes_FromStringAndSize.exit.i:           ; preds = %bb.h, %bb.f
  %.2.i.i = phi ptr [ %i.u, %bb.f ], [ %i.y, %bb.h ] ; 2 uses
  %.not23.i = icmp eq ptr %.2.i.i, null
  br i1 %.not23.i, label %mmap_mmap_readline_impl.exit, label %bb.i

bb.i:                                             ; preds = %_safe_PyBytes_FromStringAndSize.exit.i
  %i.z = load i64, ptr %i.f, align 8, !tbaa !48
  %i.aa = add i64 %i.z, %i.r
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !48
  br label %mmap_mmap_readline_impl.exit

mmap_mmap_readline_impl.exit:                     ; preds = %bb.b, %bb.d, %bb.g, %_safe_PyBytes_FromStringAndSize.exit.i, %bb.i
  %.0.i = phi ptr [ null, %bb.b ], [ %i.j, %bb.d ], [ %.2.i.i, %bb.i ], [ null, %_safe_PyBytes_FromStringAndSize.exit.i ], [ null, %bb.g ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap_resize(ptr nofree noundef captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call ptr @_PyNumber_Index(ptr noundef %1) #15 ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %Py_DECREF.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.a) #15 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.c, -1
  br i1 %.not.i, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.c, -1                     ; 2 uses
  store i32 %i.d, ptr %i.a, align 8, !tbaa !10
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.d, %bb.c, %bb.b
  %i.f = icmp eq i64 %i.b, -1
  br i1 %i.f, label %Py_DECREF.exit.thread, label %bb.e

Py_DECREF.exit.thread:                            ; preds = %bb.a, %Py_DECREF.exit
  %i.g = tail call ptr @PyErr_Occurred() #15
  %.not15 = icmp eq ptr %i.g, null
  br i1 %.not15, label %bb.e, label %mmap_mmap_resize_impl.exit

bb.e:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.01118.ph = phi i64 [ %i.b, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 6 uses
  %i.h = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.k, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_resize_impl.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 48
  %i.m = load i64, ptr %i.l, align 8, !tbaa !50
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.o = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.o, ptr noundef nonnull @.str.97) #15
  br label %mmap_mmap_resize_impl.exit

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %0, i64 76
  %i.q = load i8, ptr %i.p, align 4, !tbaa !52, !range !78, !noundef !79
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.s, ptr noundef nonnull @.str.98) #15
  br label %mmap_mmap_resize_impl.exit

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !55
  switch i32 %i.u, label %bb.l [
    i32 2, label %is_resizeable.exit.i
    i32 0, label %is_resizeable.exit.i
  ]

bb.l:                                             ; preds = %bb.k
  %i.v = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.w = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.v, ptr noundef nonnull @.str.99) #15 ; 0 uses
  br label %mmap_mmap_resize_impl.exit

is_resizeable.exit.i:                             ; preds = %bb.k, %bb.k
  %i.x = icmp slt i64 %.01118.ph, 0
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %is_resizeable.exit.i
  %i.y = sub nuw nsw i64 9223372036854775807, %.01118.ph
  %i.z = getelementptr i8, ptr %0, i64 40
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !51  ; 2 uses
  %i.ab = icmp slt i64 %i.y, %i.aa
  br i1 %i.ab, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %is_resizeable.exit.i
  %i.ac = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ac, ptr noundef nonnull @.str.95) #15
  br label %mmap_mmap_resize_impl.exit

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = icmp eq i32 %i.ae, -1
  br i1 %i.af, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr i8, ptr %0, i64 60
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !54
  %i.ai = and i32 %i.ah, 2
  %.not24.i = icmp eq i32 %i.ai, 0
  br i1 %.not24.i, label %bb.q, label %.thread.i

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr i8, ptr %0, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !47
  %i.al = icmp sgt i64 %.01118.ph, %i.ak
  br i1 %i.al, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.am = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  %i.an = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.am, ptr noundef nonnull @.str.96) #15 ; 0 uses
  br label %mmap_mmap_resize_impl.exit

bb.s:                                             ; preds = %bb.o
  %i.ao = add i64 %i.aa, %.01118.ph
  %i.ap = tail call i32 @ftruncate64(i32 noundef %i.ae, i64 noundef %i.ao) #15
  %i.aq = icmp eq i32 %i.ap, -1
  br i1 %i.aq, label %bb.t, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.s
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !44
  br label %.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ar = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.as = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ar) #15 ; 0 uses
  br label %mmap_mmap_resize_impl.exit

.thread.i:                                        ; preds = %..thread_crit_edge.i, %bb.q, %bb.p
  %i.at = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %i.i, %bb.p ], [ %i.i, %bb.q ]
  %i.au = getelementptr i8, ptr %0, i64 24        ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !47
  %i.aw = tail call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef %i.at, i64 noundef %i.av, i64 noundef %.01118.ph, i32 noundef 1) #15 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, inttoptr (i64 -1 to ptr)
  br i1 %i.ax, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.thread.i
  %i.ay = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.az = tail call ptr @PyErr_SetFromErrno(ptr noundef %i.ay) #15 ; 0 uses
  br label %mmap_mmap_resize_impl.exit

bb.v:                                             ; preds = %.thread.i
  store ptr %i.aw, ptr %i.h, align 8, !tbaa !44
  store i64 %.01118.ph, ptr %i.au, align 8, !tbaa !47
  br label %mmap_mmap_resize_impl.exit

mmap_mmap_resize_impl.exit:                       ; preds = %bb.v, %bb.u, %bb.t, %bb.r, %bb.n, %bb.l, %bb.j, %bb.h, %bb.f, %Py_DECREF.exit.thread
  %.013 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.f ], [ null, %bb.n ], [ null, %bb.r ], [ null, %bb.t ], [ null, %bb.u ], [ @_Py_NoneStruct, %bb.v ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.l ]
  ret ptr %.013
}

; Function Attrs: nounwind uwtable
define internal ptr @mmap_mmap_seek(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %i.a = add i64 %2, -1
  %or.cond = icmp ult i64 %i.a, 2
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.75, i64 noundef %2, i64 noundef 1, i64 noundef 2) #15
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %mmap_mmap_seek_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %1, align 8, !tbaa !29
  %i.d = tail call ptr @_PyNumber_Index(ptr noundef %i.c) #15 ; 5 uses
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %Py_DECREF.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.d) #15 ; 2 uses
  %i.f = load i32, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp sgt i32 %i.f, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.d, align 8, !tbaa !10
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.d) #15
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d
  %i.i = icmp eq i64 %i.e, -1
  br i1 %i.i, label %Py_DECREF.exit.thread, label %bb.g

Py_DECREF.exit.thread:                            ; preds = %bb.c, %Py_DECREF.exit
  %i.j = tail call ptr @PyErr_Occurred() #15
  %.not26 = icmp eq ptr %i.j, null
  br i1 %.not26, label %bb.g, label %mmap_mmap_seek_impl.exit

bb.g:                                             ; preds = %Py_DECREF.exit.thread, %Py_DECREF.exit
  %.01930.ph = phi i64 [ %i.e, %Py_DECREF.exit ], [ -1, %Py_DECREF.exit.thread ] ; 5 uses
  %i.k = icmp slt i64 %2, 2
  br i1 %i.k, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !29
  %i.n = tail call i32 @PyLong_AsInt(ptr noundef %i.m) #15 ; 2 uses
  %i.o = icmp eq i32 %i.n, -1
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @PyErr_Occurred() #15
  %.not27 = icmp eq ptr %i.p, null
  br i1 %.not27, label %bb.j, label %mmap_mmap_seek_impl.exit

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.020 = phi i32 [ 0, %bb.g ], [ -1, %bb.i ], [ %i.n, %bb.h ]
  %i.q = getelementptr i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !44
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_seek_impl.exit

bb.l:                                             ; preds = %bb.j
  switch i32 %.020, label %bb.q [
    i32 0, label %bb.r
    i32 1, label %bb.m
    i32 2, label %bb.o
  ]

bb.m:                                             ; preds = %bb.l
  %i.u = getelementptr i8, ptr %0, i64 32
  %i.v = load i64, ptr %i.u, align 8, !tbaa !48   ; 2 uses
  %i.w = sub i64 9223372036854775807, %i.v
  %i.x = icmp slt i64 %i.w, %.01930.ph
  br i1 %i.x, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.y = add i64 %i.v, %.01930.ph
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  %i.z = getelementptr i8, ptr %0, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !47  ; 2 uses
  %i.ab = sub i64 9223372036854775807, %i.aa
  %i.ac = icmp slt i64 %i.ab, %.01930.ph
  br i1 %i.ac, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = add i64 %i.aa, %.01930.ph
  br label %bb.r

bb.q:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.100) #15
  br label %mmap_mmap_seek_impl.exit

bb.r:                                             ; preds = %bb.p, %bb.n, %bb.l
  %.0.i = phi i64 [ %i.ad, %bb.p ], [ %i.y, %bb.n ], [ %.01930.ph, %bb.l ] ; 4 uses
  %i.af = getelementptr i8, ptr %0, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !47
  %i.ah = icmp sgt i64 %.0.i, %i.ag
  %i.ai = icmp slt i64 %.0.i, 0
  %or.cond.i = or i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = getelementptr i8, ptr %0, i64 32
  store i64 %.0.i, ptr %i.aj, align 8, !tbaa !48
  %i.ak = tail call ptr @PyLong_FromSsize_t(i64 noundef %.0.i) #15
  br label %mmap_mmap_seek_impl.exit

bb.t:                                             ; preds = %bb.r, %bb.o, %bb.m
  %i.al = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.al, ptr noundef nonnull @.str.101) #15
  br label %mmap_mmap_seek_impl.exit

mmap_mmap_seek_impl.exit:                         ; preds = %bb.t, %bb.s, %bb.q, %bb.k, %Py_DECREF.exit.thread, %bb.b, %bb.i
  %.022 = phi ptr [ null, %Py_DECREF.exit.thread ], [ null, %bb.i ], [ null, %bb.b ], [ null, %bb.k ], [ null, %bb.q ], [ null, %bb.t ], [ %i.ak, %bb.s ]
  ret ptr %.022
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef nonnull ptr @mmap_mmap_seekable(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #9 {
bb.a:
  ret ptr @_Py_TrueStruct
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap_set_name(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 4 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !56
  %i.d = getelementptr i8, ptr %.val, i64 168
  %.val10 = load i64, ptr %i.d, align 8, !tbaa !59
  %i.e = and i64 %.val10, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyArg_BadArgument(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103, ptr noundef nonnull %1) #15
  br label %mmap_mmap_set_name_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.f = call ptr @PyUnicode_AsUTF8AndSize(ptr noundef nonnull %1, ptr noundef nonnull %i.b) #15 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %mmap_mmap_set_name_impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #14 ; 2 uses
  %i.i = load i64, ptr %i.b, align 8, !tbaa !27
  %.not9 = icmp eq i64 %i.h, %i.i
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.j, ptr noundef nonnull @.str.104) #15
  br label %mmap_mmap_set_name_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.k = add i64 %i.h, -67
  %i.l = icmp ult i64 %i.k, -80
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.m, ptr noundef nonnull @.str.106) #15
  br label %mmap_mmap_set_name_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %0, i64 60
  %i.o = load i32, ptr %i.n, align 4, !tbaa !54
  %i.p = and i32 %i.o, 32
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.107, ptr noundef nonnull @.str.105, ptr noundef nonnull %i.f) #15 ; 0 uses
  %i.r = getelementptr i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !44
  %i.t = getelementptr i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !tbaa !47
  %i.v = call ptr @_Py_GetConfig() #15
  %i.w = getelementptr i8, ptr %i.v, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !70
  %.not.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i, label %_PyAnnotateMemoryMap.exit.thread.i, label %_PyAnnotateMemoryMap.exit.i

_PyAnnotateMemoryMap.exit.i:                      ; preds = %bb.i
  %i.y = ptrtoint ptr %i.s to i64
  %i.z = call i32 (i32, ...) @prctl(i32 noundef 1398164801, i32 noundef 0, i64 noundef %i.y, i64 noundef %i.u, ptr noundef nonnull %i.a) #15
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %_PyAnnotateMemoryMap.exit.thread.i

bb.j:                                             ; preds = %_PyAnnotateMemoryMap.exit.i
  %i.ab = load ptr, ptr @PyExc_OSError, align 8, !tbaa !29
  %i.ac = call ptr @PyErr_SetFromErrno(ptr noundef %i.ab) #15 ; 0 uses
  br label %_PyAnnotateMemoryMap.exit.thread.i

_PyAnnotateMemoryMap.exit.thread.i:               ; preds = %bb.j, %_PyAnnotateMemoryMap.exit.i, %bb.i
  %.0.i = phi ptr [ null, %bb.j ], [ @_Py_NoneStruct, %_PyAnnotateMemoryMap.exit.i ], [ @_Py_NoneStruct, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %mmap_mmap_set_name_impl.exit

bb.k:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  call void @PyErr_SetString(ptr noundef %i.ad, ptr noundef nonnull @.str.108) #15
  br label %mmap_mmap_set_name_impl.exit

mmap_mmap_set_name_impl.exit:                     ; preds = %bb.k, %_PyAnnotateMemoryMap.exit.thread.i, %bb.g, %bb.c, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.b ], [ null, %bb.g ], [ %.0.i, %_PyAnnotateMemoryMap.exit.thread.i ], [ null, %bb.k ]
end_hunk_1
begin_hunk_2_@mmap_mmap_write_byte
define internal noundef ptr @mmap_mmap_write_byte(ptr nofree noundef captures(none) %0, ptr noundef %1) #4 {
bb.a:
  %i.a = tail call i64 @PyLong_AsLong(ptr noundef %1) #15 ; 4 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyErr_Occurred() #15
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %mmap_mmap_write_byte_impl.exit

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.b, %bb.c
  %i.e = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.111) #15
  br label %mmap_mmap_write_byte_impl.exit

bb.d:                                             ; preds = %bb.c
  %i.f = icmp samesign ugt i64 %i.a, 255
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr @PyExc_OverflowError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.g, ptr noundef nonnull @.str.112) #15
  br label %mmap_mmap_write_byte_impl.exit

bb.f:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %i.a to i8
  %i.i = getelementptr i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.l, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap_write_byte_impl.exit

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 72
  %.val.i = load i32, ptr %i.m, align 8, !tbaa !55
  %.not.i.i = icmp eq i32 %.val.i, 1
  br i1 %.not.i.i, label %is_writable.exit.thread.i, label %is_writable.exit.i

is_writable.exit.thread.i:                        ; preds = %bb.h
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !29
  %i.o = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.n, ptr noundef nonnull @.str.93) #15 ; 0 uses
  br label %mmap_mmap_write_byte_impl.exit

is_writable.exit.i:                               ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !48   ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 24
  %i.s = load i64, ptr %i.r, align 8, !tbaa !47
  %.not11.i = icmp slt i64 %i.q, %i.s
  br i1 %.not11.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %is_writable.exit.i
  %i.t = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.t, ptr noundef nonnull @.str.113) #15
  br label %mmap_mmap_write_byte_impl.exit

bb.j:                                             ; preds = %is_writable.exit.i
  %i.u = getelementptr i8, ptr %i.j, i64 %i.q
  store i8 %i.h, ptr %i.u, align 1, !tbaa !10
  %i.v = load i64, ptr %i.p, align 8, !tbaa !48
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.p, align 8, !tbaa !48
  br label %mmap_mmap_write_byte_impl.exit

mmap_mmap_write_byte_impl.exit:                   ; preds = %bb.b, %bb.e, %.thread, %bb.j, %bb.i, %is_writable.exit.thread.i, %bb.g
  %.011 = phi ptr [ @_Py_NoneStruct, %bb.j ], [ null, %bb.g ], [ null, %is_writable.exit.thread.i ], [ null, %bb.i ], [ null, %.thread ], [ null, %bb.e ], [ null, %bb.b ]
  ret ptr %.011
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap___enter__(ptr nofree noundef captures(ret: address, provenance) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.d, ptr noundef nonnull @.str.86) #15
  br label %mmap_mmap___enter___impl.exit

bb.c:                                             ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %mmap_mmap___enter___impl.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %0, align 8, !tbaa !10
  br label %mmap_mmap___enter___impl.exit

mmap_mmap___enter___impl.exit:                    ; preds = %bb.b, %bb.c, %bb.d
  %.0.i = phi ptr [ null, %bb.b ], [ %0, %bb.c ], [ %0, %bb.d ]
  ret ptr %.0.i
}

; Function Attrs: nounwind uwtable
define internal noundef ptr @mmap_mmap___exit__(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #4 {
bb.a:
  %or.cond = icmp eq i64 %2, 3
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @_PyArg_CheckPositional(ptr noundef nonnull @.str.83, i64 noundef %2, i64 noundef 3, i64 noundef 3) #15
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %mmap_mmap___exit___impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.b = getelementptr i8, ptr %0, i64 48
  %i.c = load i64, ptr %i.b, align 8, !tbaa !50
  %i.d = icmp sgt i64 %i.c, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @PyExc_BufferError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.e, ptr noundef nonnull @.str.85) #15
  br label %mmap_mmap___exit___impl.exit

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !53   ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44   ; 2 uses
  store i32 -1, ptr %i.f, align 8, !tbaa !53
  store ptr null, ptr %i.h, align 8, !tbaa !44
  %i.j = tail call ptr @PyEval_SaveThread() #15
  %i.k = icmp sgt i32 %i.g, -1
  br i1 %i.k, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = tail call i32 @close(i32 noundef %i.g) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !47
  %i.o = tail call i32 @munmap(ptr noundef nonnull %i.i, i64 noundef %i.n) #15 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void @PyEval_RestoreThread(ptr noundef %i.j) #15
  br label %mmap_mmap___exit___impl.exit

mmap_mmap___exit___impl.exit:                     ; preds = %bb.i, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ @_Py_NoneStruct, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @_PyArg_CheckPositional(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @PyObject_GetBuffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @PyBuffer_Release(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mmap_gfind_lock_held(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47   ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.86) #15
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !48
  %.not = icmp eq ptr %2, @_Py_NoneStruct
  br i1 %.not, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @_PyNumber_Index(ptr noundef %2) #15 ; 5 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %_As_Py_ssize_t.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.i) #15 ; 2 uses
  %i.k = load i32, ptr %i.i, align 8, !tbaa !10   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i.i, label %bb.f, label %_As_Py_ssize_t.exit

bb.f:                                             ; preds = %bb.e
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.i, align 8, !tbaa !10
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %_As_Py_ssize_t.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.i) #15
  br label %_As_Py_ssize_t.exit

_As_Py_ssize_t.exit:                              ; preds = %bb.e, %bb.f, %bb.g
  %i.n = icmp eq i64 %i.j, -1
  br i1 %i.n, label %_As_Py_ssize_t.exit.thread, label %bb.h

_As_Py_ssize_t.exit.thread:                       ; preds = %bb.d, %_As_Py_ssize_t.exit
  %i.o = tail call ptr @PyErr_Occurred() #15
  %.not57 = icmp eq ptr %i.o, null
  br i1 %.not57, label %bb.h, label %bb.x

bb.h:                                             ; preds = %_As_Py_ssize_t.exit.thread, %_As_Py_ssize_t.exit
  %.0.i68 = phi i64 [ -1, %_As_Py_ssize_t.exit.thread ], [ %i.j, %_As_Py_ssize_t.exit ] ; 3 uses
  %.not58 = icmp eq ptr %3, @_Py_NoneStruct
  br i1 %.not58, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = tail call ptr @_PyNumber_Index(ptr noundef %3) #15 ; 5 uses
  %.not.i62 = icmp eq ptr %i.p, null
  br i1 %.not.i62, label %_As_Py_ssize_t.exit65.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = tail call i64 @PyLong_AsSsize_t(ptr noundef nonnull %i.p) #15 ; 2 uses
  %i.r = load i32, ptr %i.p, align 8, !tbaa !10   ; 2 uses
  %.not.i.i63 = icmp sgt i32 %i.r, -1
  br i1 %.not.i.i63, label %bb.k, label %_As_Py_ssize_t.exit65

bb.k:                                             ; preds = %bb.j
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.p, align 8, !tbaa !10
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.l, label %_As_Py_ssize_t.exit65

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.p) #15
  br label %_As_Py_ssize_t.exit65

_As_Py_ssize_t.exit65:                            ; preds = %bb.j, %bb.k, %bb.l
  %i.u = icmp eq i64 %i.q, -1
  br i1 %i.u, label %_As_Py_ssize_t.exit65.thread, label %bb.m

_As_Py_ssize_t.exit65.thread:                     ; preds = %bb.i, %_As_Py_ssize_t.exit65
  %i.v = tail call ptr @PyErr_Occurred() #15
  %.not59 = icmp eq ptr %i.v, null
  br i1 %.not59, label %bb.m, label %bb.x

bb.m:                                             ; preds = %bb.h, %_As_Py_ssize_t.exit65.thread, %_As_Py_ssize_t.exit65, %bb.c
  %.045 = phi i64 [ %.0.i68, %_As_Py_ssize_t.exit65.thread ], [ %.0.i68, %_As_Py_ssize_t.exit65 ], [ %.0.i68, %bb.h ], [ %i.h, %bb.c ] ; 3 uses
  %.044 = phi i64 [ -1, %_As_Py_ssize_t.exit65.thread ], [ %i.q, %_As_Py_ssize_t.exit65 ], [ %i.b, %bb.h ], [ %i.b, %bb.c ] ; 3 uses
  %i.w = icmp slt i64 %.045, 0
  %.pre = load i64, ptr %i.a, align 8, !tbaa !47  ; 4 uses
  br i1 %i.w, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %i.x = add i64 %.pre, %.045                     ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n
  %.14672 = phi i64 [ %i.x, %bb.n ], [ %.045, %bb.m ]
  %spec.select = tail call i64 @llvm.smin.i64(i64 %.14672, i64 %.pre)
  br label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  %.247 = phi i64 [ %spec.select, %.thread ], [ 0, %bb.n ] ; 5 uses
  %i.z = icmp slt i64 %.044, 0
  br i1 %i.z, label %bb.p, label %.thread73

bb.p:                                             ; preds = %bb.o
  %i.aa = add i64 %.pre, %.044                    ; 2 uses
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %bb.q, label %.thread73

.thread73:                                        ; preds = %bb.o, %bb.p
  %.175 = phi i64 [ %i.aa, %bb.p ], [ %.044, %bb.o ]
  %spec.select61 = tail call i64 @llvm.smin.i64(i64 %.175, i64 %.pre)
  br label %bb.q

bb.q:                                             ; preds = %.thread73, %bb.p
  %.2 = phi i64 [ %spec.select61, %.thread73 ], [ 0, %bb.p ] ; 2 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !44  ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !29
  tail call void @PyErr_SetString(ptr noundef %i.ae, ptr noundef nonnull @.str.86) #15
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.af = icmp slt i64 %.2, %.247
  br i1 %i.af, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ag = tail call ptr @PyLong_FromSsize_t(i64 noundef -1) #15
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %.not60 = icmp eq i32 %4, 0
  %i.ah = getelementptr i8, ptr %i.ac, i64 %.247  ; 2 uses
  %i.ai = sub i64 %.2, %.247                      ; 2 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !67    ; 2 uses
  %i.ak = getelementptr i8, ptr %1, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !64 ; 2 uses
  br i1 %.not60, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = tail call i64 @_PyBytes_ReverseFind(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef %i.aj, i64 noundef %i.al, i64 noundef %.247) #15
  %i.an = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.am) #15
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ao = tail call i64 @_PyBytes_Find(ptr noundef %i.ah, i64 noundef %i.ai, ptr noundef %i.aj, i64 noundef %i.al, i64 noundef %.247) #15
  %i.ap = tail call ptr @PyLong_FromSsize_t(i64 noundef %i.ao) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.v, %bb.w, %bb.t, %_As_Py_ssize_t.exit65.thread, %_As_Py_ssize_t.exit.thread, %bb.b
  %.149 = phi ptr [ null, %bb.b ], [ null, %_As_Py_ssize_t.exit65.thread ], [ null, %_As_Py_ssize_t.exit.thread ], [ null, %bb.r ], [ %i.ag, %bb.t ], [ %i.ap, %bb.w ], [ %i.an, %bb.v ]
  ret ptr %.149
}

declare ptr @PyErr_Occurred() local_unnamed_addr #5

declare ptr @PyLong_FromSsize_t(i64 noundef) local_unnamed_addr #5

declare ptr @_PyNumber_Index(ptr noundef) local_unnamed_addr #5

declare i64 @PyLong_AsSsize_t(ptr noundef) local_unnamed_addr #5

declare ptr @_PyArg_UnpackKeywords(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @PyLong_AsInt(ptr noundef) local_unnamed_addr #5

declare i32 @msync(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @_Py_convert_optional_to_ssize_t(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyLong_FromLong(i64 noundef) local_unnamed_addr #5

declare ptr @Py_GetConstant(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #6

declare void @_PyArg_BadArgument(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyUnicode_AsUTF8AndSize(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #11

declare i32 @_Py_fstat(i32 noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyLong_FromSize_t(i64 noundef) local_unnamed_addr #5

declare i64 @PyLong_AsLong(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal ptr @mmap_closed_get(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #4 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq ptr %i.b, null
  %i.d = zext i1 %i.c to i64
  %i.e = tail call ptr @PyBool_FromLong(i64 noundef %i.d) #15
  ret ptr %i.e
}

declare ptr @PyBool_FromLong(i64 noundef) local_unnamed_addr #5

declare i64 @PyBytes_Size(ptr noundef) local_unnamed_addr #5

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #5

declare i32 @PyIndex_Check(ptr noundef) local_unnamed_addr #5

declare i64 @PyNumber_AsSsize_t(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @PySlice_Unpack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @PySlice_AdjustIndices(i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #5

declare ptr @PyErr_NoMemory() local_unnamed_addr #5

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #5

declare i32 @PyBuffer_FillInfo(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = distinct !{!14, !15, !16, !17}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"branch_weights", i32 8, i32 24}
!19 = distinct !{!19, !15, !16, !17}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.unroll.disable"}
!22 = distinct !{!22, !15, !16}
!23 = distinct !{!23, !15, !16, !17}
!24 = distinct !{!24, !15, !16, !17}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !15, !16}
!27 = !{!28, !28, i64 0}
!28 = !{!"long", !8, i64 0}
!29 = !{!30, !30, i64 0}
!30 = !{!"p1 _ZTS7_object", !13, i64 0}
!31 = !{!32, !7, i64 24}
!32 = !{!"stat", !28, i64 0, !28, i64 8, !28, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !33, i64 72, !33, i64 88, !33, i64 104, !8, i64 120}
!33 = !{!"timespec", !28, i64 0, !28, i64 8}
!34 = !{!32, !28, i64 48}
!35 = !{!36, !13, i64 304}
!36 = !{!"_typeobject", !37, i64 0, !12, i64 24, !28, i64 32, !28, i64 40, !13, i64 48, !28, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !28, i64 168, !12, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !28, i64 208, !13, i64 216, !13, i64 224, !40, i64 232, !41, i64 240, !42, i64 248, !39, i64 256, !30, i64 264, !13, i64 272, !13, i64 280, !28, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !30, i64 336, !30, i64 344, !30, i64 352, !13, i64 360, !30, i64 368, !13, i64 376, !7, i64 384, !13, i64 392, !13, i64 400, !8, i64 408, !43, i64 410}
!37 = !{!"PyVarObject", !38, i64 0, !28, i64 16}
!38 = !{!"_object", !8, i64 0, !39, i64 8}
!39 = !{!"p1 _ZTS11_typeobject", !13, i64 0}
!40 = !{!"p1 _ZTS11PyMethodDef", !13, i64 0}
!41 = !{!"p1 _ZTS11PyMemberDef", !13, i64 0}
!42 = !{!"p1 _ZTS11PyGetSetDef", !13, i64 0}
!43 = !{!"short", !8, i64 0}
!44 = !{!45, !12, i64 16}
!45 = !{!"", !38, i64 0, !12, i64 16, !28, i64 24, !28, i64 32, !28, i64 40, !28, i64 48, !7, i64 56, !7, i64 60, !30, i64 64, !7, i64 72, !46, i64 76}
!46 = !{!"_Bool", !8, i64 0}
!47 = !{!45, !28, i64 24}
!48 = !{!45, !28, i64 32}
!49 = !{!45, !30, i64 64}
!50 = !{!45, !28, i64 48}
!51 = !{!45, !28, i64 40}
!52 = !{!45, !46, i64 76}
!53 = !{!45, !7, i64 56}
!54 = !{!45, !7, i64 60}
!55 = !{!45, !7, i64 72}
!56 = !{!38, !39, i64 8}
!57 = !{!36, !13, i64 320}
!58 = !{!36, !12, i64 24}
!59 = !{!36, !28, i64 168}
!60 = distinct !{!60, !15, !16, !17}
!61 = distinct !{!61, !15, !16, !17}
!62 = distinct !{!62, !21}
!63 = distinct !{!63, !15, !16}
!64 = !{!65, !28, i64 16}
!65 = !{!"", !13, i64 0, !30, i64 8, !28, i64 16, !28, i64 24, !7, i64 32, !7, i64 36, !12, i64 40, !66, i64 48, !66, i64 56, !66, i64 64, !13, i64 72}
!66 = !{!"p1 long", !13, i64 0}
!67 = !{!65, !13, i64 0}
!68 = distinct !{!68, !15, !16}
!69 = distinct !{!69, !21}
!70 = !{!71, !7, i64 12}
!71 = !{!"PyConfig", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !28, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !72, i64 64, !7, i64 72, !7, i64 76, !72, i64 80, !72, i64 88, !72, i64 96, !7, i64 104, !73, i64 112, !73, i64 128, !73, i64 144, !73, i64 160, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !72, i64 232, !72, i64 240, !72, i64 248, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !72, i64 288, !72, i64 296, !72, i64 304, !72, i64 312, !7, i64 320, !73, i64 328, !72, i64 344, !72, i64 352, !72, i64 360, !72, i64 368, !72, i64 376, !72, i64 384, !72, i64 392, !7, i64 400, !72, i64 408, !72, i64 416, !72, i64 424, !72, i64 432, !7, i64 440, !7, i64 444, !7, i64 448}
!72 = !{!"p1 int", !13, i64 0}
end_hunk_2
