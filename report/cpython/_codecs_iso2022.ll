Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_codecs_iso2022?download=true
inline.NumInlined: 21
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@iso2022_decode:bb.a
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !95
  %i.ft = tail call i32 %i.fs(ptr noundef %1, ptr noundef nonnull %i.j) #16 ; 9 uses
  %i.fu = icmp eq i32 %i.ft, 65535
  br i1 %i.fu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fv = load i8, ptr %i.fn, align 2, !tbaa !42
  %i.fw = zext i8 %i.fv to i64
  br label %.thread159

bb.bp:                                            ; preds = %bb.bn
  %i.fx = icmp ult i32 %i.ft, 65536
  br i1 %i.fx, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.fy = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ft) #16
  %i.fz = icmp slt i32 %i.fy, 0
  br i1 %i.fz, label %.thread159, label %bb.cd

bb.br:                                            ; preds = %bb.bp
  %i.ga = icmp ult i32 %i.ft, 196608
  br i1 %i.ga, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.gb = tail call i32 @_PyUnicodeWriter_WriteChar(ptr noundef %4, i32 noundef %i.ft) #16
  %i.gc = icmp slt i32 %i.gb, 0
  br i1 %i.gc, label %.thread159, label %bb.cd

bb.bt:                                            ; preds = %bb.br
  %i.gd = lshr i32 %i.ft, 16                      ; 4 uses
  %i.ge = and i32 %i.ft, 65535                    ; 2 uses
  %i.gf = tail call i32 @llvm.umax.i32(i32 %i.gd, i32 %i.ge) ; 2 uses
  %i.gg = load i32, ptr %i.e, align 4, !tbaa !97
  %.not127 = icmp ugt i32 %i.gf, %i.gg
  br i1 %.not127, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gh = load i64, ptr %i.f, align 8, !tbaa !98
  %i.gi = load i64, ptr %i.g, align 8, !tbaa !99  ; 2 uses
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = icmp sgt i64 %i.gj, 1
  br i1 %i.gk, label %.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bt, %bb.bu
  %i.gl = tail call i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef nonnull %4, i64 noundef 2, i32 noundef %i.gf) #16
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %.thread159, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.bv
  %.pre = load i64, ptr %i.g, align 8, !tbaa !99
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.bu
  %i.gn = phi i64 [ %.pre, %..thread_crit_edge ], [ %i.gi, %bb.bu ] ; 5 uses
  %i.go = load i32, ptr %i.h, align 8, !tbaa !100
  %i.gp = load ptr, ptr %i.i, align 8, !tbaa !101 ; 5 uses
  switch i32 %i.go, label %bb.by [
    i32 1, label %bb.bw
    i32 2, label %bb.bx
  ]

bb.bw:                                            ; preds = %.thread
  %i.gq = trunc i32 %i.gd to i8
  %i.gr = getelementptr i8, ptr %i.gp, i64 %i.gn
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !28
  %.pre237 = load ptr, ptr %i.i, align 8, !tbaa !101
  %.pre238 = load i64, ptr %i.g, align 8, !tbaa !99
  br label %PyUnicode_WRITE.exit

bb.bx:                                            ; preds = %.thread
  %i.gs = trunc nuw i32 %i.gd to i16
  %i.gt = getelementptr [2 x i8], ptr %i.gp, i64 %i.gn
  store i16 %i.gs, ptr %i.gt, align 2, !tbaa !41
  br label %PyUnicode_WRITE.exit

bb.by:                                            ; preds = %.thread
  %i.gu = getelementptr [4 x i8], ptr %i.gp, i64 %i.gn
  store i32 %i.gd, ptr %i.gu, align 4, !tbaa !9
  br label %PyUnicode_WRITE.exit

PyUnicode_WRITE.exit:                             ; preds = %bb.bw, %bb.bx, %bb.by
  %i.gv = phi i64 [ %.pre238, %bb.bw ], [ %i.gn, %bb.bx ], [ %i.gn, %bb.by ] ; 3 uses
  %i.gw = phi ptr [ %.pre237, %bb.bw ], [ %i.gp, %bb.bx ], [ %i.gp, %bb.by ] ; 3 uses
  %i.gx = load i32, ptr %i.h, align 8, !tbaa !100
  %i.gy = add i64 %i.gv, 1                        ; 3 uses
  switch i32 %i.gx, label %bb.cb [
    i32 1, label %bb.bz
    i32 2, label %bb.ca
  ]

bb.bz:                                            ; preds = %PyUnicode_WRITE.exit
  %i.gz = trunc i32 %i.ft to i8
  %i.ha = getelementptr i8, ptr %i.gw, i64 %i.gy
  store i8 %i.gz, ptr %i.ha, align 1, !tbaa !28
  %.pre239 = load i64, ptr %i.g, align 8, !tbaa !99
  br label %bb.cc

bb.ca:                                            ; preds = %PyUnicode_WRITE.exit
  %i.hb = trunc i32 %i.ft to i16
  %i.hc = getelementptr [2 x i8], ptr %i.gw, i64 %i.gy
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !41
  br label %bb.cc

bb.cb:                                            ; preds = %PyUnicode_WRITE.exit
  %i.hd = getelementptr [4 x i8], ptr %i.gw, i64 %i.gy
  store i32 %i.ge, ptr %i.hd, align 4, !tbaa !9
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca, %bb.bz
  %i.he = phi i64 [ %i.gv, %bb.cb ], [ %i.gv, %bb.ca ], [ %.pre239, %bb.bz ]
  %i.hf = add i64 %i.he, 2
  store i64 %i.hf, ptr %i.g, align 8, !tbaa !99
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.bq, %bb.bs
  %i.hg = load i8, ptr %i.fn, align 2, !tbaa !42
  %i.hh = load ptr, ptr %2, align 8, !tbaa !30
  %i.hi = zext i8 %i.hg to i64                    ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hh, i64 %i.hi
  store ptr %i.hj, ptr %2, align 8, !tbaa !30
  %i.hk = sub nsw i64 %.0142168, %i.hi
  br label %bb.ce

bb.ce:                                            ; preds = %bb.az, %bb.bb, %bb.bd, %bb.bi, %bb.cd, %bb.ax, %iso2022processesc.exit.thread150, %iso2022processg2.exit, %bb.e, %bb.d
  %.2144 = phi i64 [ %i.eq, %bb.bb ], [ %i.ew, %bb.bd ], [ %i.bw, %iso2022processesc.exit.thread150 ], [ %i.ej, %bb.az ], [ %i.t, %bb.e ], [ %i.t, %bb.d ], [ %i.ff, %bb.bi ], [ %i.hk, %bb.cd ], [ %i.dv, %iso2022processg2.exit ], [ %i.ec, %bb.ax ] ; 2 uses
  %.3111 = phi ptr [ %.0108169, %bb.bb ], [ %.0108169, %bb.bd ], [ %.0108169, %iso2022processesc.exit.thread150 ], [ %.0108169, %bb.az ], [ %.0108169, %bb.e ], [ %.0108169, %bb.d ], [ %.0108169, %bb.bi ], [ %.1105, %bb.cd ], [ %.0108169, %iso2022processg2.exit ], [ %.0108169, %bb.ax ]
  %i.hl = icmp sgt i64 %.2144, 0
  br i1 %i.hl, label %bb.b, label %.thread159

.thread159.loopexit254:                           ; preds = %bb.n
  br label %.thread159

.thread159:                                       ; preds = %bb.ce, %bb.aw, %bb.c, %bb.bf, %bb.bc, %bb.bh, %.loopexit, %bb.bq, %bb.g, %bb.ad, %bb.bs, %bb.t, %bb.v, %bb.ab, %bb.r, %bb.s, %bb.y, %bb.x, %bb.w, %bb.av, %bb.ag, %bb.af, %bb.ai, %bb.al, %bb.ap, %bb.ar, %bb.as, %bb.at, %bb.aq, %bb.au, %bb.ae, %bb.bv, %switch.lookup, %bb.m, %bb.n, %.thread159.loopexit254, %bb.a, %bb.bo
  %.5 = phi i64 [ -2, %switch.lookup ], [ 0, %bb.a ], [ %i.fw, %bb.bo ], [ %i.aq, %bb.n ], [ 1, %bb.m ], [ -4, %bb.ag ], [ 3, %bb.af ], [ -4, %bb.ai ], [ -4, %bb.al ], [ -4, %bb.ap ], [ -4, %bb.ar ], [ -4, %bb.as ], [ -4, %bb.at ], [ 3, %bb.aq ], [ 3, %bb.au ], [ 4, %bb.t ], [ 6, %bb.v ], [ %i.aq, %bb.ab ], [ 3, %bb.r ], [ 4, %bb.s ], [ 6, %bb.y ], [ 6, %bb.x ], [ -3, %bb.ae ], [ -4, %bb.av ], [ -4, %bb.aw ], [ -4, %bb.c ], [ 0, %bb.ce ], [ 1, %bb.bf ], [ -4, %bb.bc ], [ -4, %bb.bh ], [ -2, %.loopexit ], [ 6, %bb.w ], [ -4, %bb.bq ], [ -2, %bb.g ], [ -4, %bb.bs ], [ -2, %bb.ad ], [ -4, %bb.bv ], [ 1, %.thread159.loopexit254 ]
  ret i64 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal noundef i32 @iso2022_decode_init(ptr nofree noundef writeonly captures(none) initializes((0, 3), (4, 5)) %0, ptr nofree readnone captures(none) %1) #6 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  store i8 0, ptr %i.a, align 1, !tbaa !28
  store i8 66, ptr %0, align 1, !tbaa !28
  %i.b = getelementptr i8, ptr %0, i64 1
  store i8 66, ptr %i.b, align 1, !tbaa !28
  %i.c = getelementptr i8, ptr %0, i64 2
  store i8 66, ptr %i.c, align 1, !tbaa !28
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef i64 @iso2022_decode_reset(ptr nofree noundef captures(none) initializes((0, 1)) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  store i8 66, ptr %0, align 1, !tbaa !28
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 1, !tbaa !28
  ret i64 0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @ksx1001_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, ptr noundef %i.c, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, ptr noundef null, ptr noundef %i.e)
  %.not3 = icmp ne i32 %i.f, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @ksx1001_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = load i8, ptr %1, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28    ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !46    ; 2 uses
  %.not18 = icmp ult i8 %i.j, %i.l
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %.not19 = icmp ugt i8 %i.j, %i.n
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = sub nuw i8 %i.j, %i.l
  %3 = zext i8 %2 to i64
  %i.o = getelementptr [2 x i8], ptr %i.h, i64 %3
  %i.p = load i16, ptr %i.o, align 2, !tbaa !41   ; 2 uses
  %.not20 = icmp eq i16 %i.p, -2
  %narrow = select i1 %.not20, i16 -1, i16 %i.p
  %spec.select = zext i16 %narrow to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %spec.select, %bb.d ], [ 65535, %bb.c ], [ 65535, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i16 -1, -32768) i16 @ksx1001_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 3 uses
  %i.b = icmp ult i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.g = lshr i32 %i.a, 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.a, 255                        ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !50
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %.not21 = icmp samesign ult i32 %i.k, %i.n
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.i, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !51
  %i.q = zext i8 %i.p to i32
  %.not22 = icmp samesign ugt i32 %i.k, %i.q
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i32 %i.k, %i.n
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [2 x i8], ptr %i.j, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !41   ; 2 uses
  %.not24 = icmp sgt i16 %i.u, -1
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i16 [ -1, %bb.f ], [ %i.u, %bb.e ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @importmap(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @PyImport_ImportModule(ptr noundef %0) #16 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %Py_DECREF.exit23, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @PyObject_GetAttrString(ptr noundef nonnull %i.a, ptr noundef %1) #16 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @PyCapsule_IsValid(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10) #16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !22
  tail call void @PyErr_SetString(ptr noundef %i.f, ptr noundef nonnull @.str.23) #16
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @PyCapsule_GetPointer(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.10) #16 ; 2 uses
  %.not20 = icmp eq ptr %2, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !104
  store ptr %i.i, ptr %2, align 8, !tbaa !31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !105
  store ptr %i.k, ptr %3, align 8, !tbaa !31
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.l = load i32, ptr %i.c, align 8, !tbaa !28   ; 2 uses
  %.not.i24 = icmp sgt i32 %i.l, -1
  br i1 %.not.i24, label %bb.j, label %Py_DECREF.exit25

bb.j:                                             ; preds = %bb.i
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.c, align 8, !tbaa !28
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.k, label %Py_DECREF.exit25

bb.k:                                             ; preds = %bb.j
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.c) #16
  br label %Py_DECREF.exit25

Py_DECREF.exit25:                                 ; preds = %bb.i, %bb.j, %bb.k
  %i.o = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i22 = icmp sgt i32 %i.o, -1
  br i1 %.not.i22, label %bb.l, label %Py_DECREF.exit23

bb.l:                                             ; preds = %Py_DECREF.exit25
  %i.p = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.p, ptr %i.a, align 8, !tbaa !28
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

bb.m:                                             ; preds = %bb.b, %bb.d
  %i.r = load i32, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %.not.i = icmp sgt i32 %i.r, -1
  br i1 %.not.i, label %bb.n, label %Py_DECREF.exit23

bb.n:                                             ; preds = %bb.m
  %i.s = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.s, ptr %i.a, align 8, !tbaa !28
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %Py_DECREF.exit23.sink.split, label %Py_DECREF.exit23

Py_DECREF.exit23.sink.split:                      ; preds = %bb.n, %bb.l
  %.0.ph = phi i32 [ 0, %bb.l ], [ -1, %bb.n ]
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.a) #16
  br label %Py_DECREF.exit23

Py_DECREF.exit23:                                 ; preds = %Py_DECREF.exit23.sink.split, %bb.n, %bb.m, %bb.l, %Py_DECREF.exit25, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.n ], [ 0, %Py_DECREF.exit25 ], [ 0, %bb.l ], [ -1, %bb.m ], [ %.0.ph, %Py_DECREF.exit23.sink.split ]
  ret i32 %.0
}

declare ptr @PyImport_ImportModule(ptr noundef) local_unnamed_addr #1

declare ptr @PyObject_GetAttrString(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @PyCapsule_IsValid(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @_PyUnicodeWriter_WriteChar(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @_PyUnicodeWriter_PrepareInternal(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @jisx0208_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %i.c, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 48
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef %i.e)
  %.not3 = icmp ne i32 %i.f, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @jisx0208_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  %i.b = icmp eq i8 %i.a, 33
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = icmp eq i8 %i.d, 64
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32
  %i.h = getelementptr i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = zext i8 %i.a to i64
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28    ; 3 uses
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46    ; 2 uses
  %.not20 = icmp ult i8 %i.n, %i.p
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.k, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !47
  %.not21 = icmp ugt i8 %i.n, %i.r
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = sub nuw i8 %i.n, %i.p
  %3 = zext i8 %2 to i64
  %i.s = getelementptr [2 x i8], ptr %i.l, i64 %3
  %i.t = load i16, ptr %i.s, align 2, !tbaa !41   ; 2 uses
  %.not22 = icmp eq i16 %i.t, -2
  %narrow = select i1 %.not22, i16 -1, i16 %i.t
  %spec.select = zext i16 %narrow to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 65340, %bb.b ], [ 65535, %bb.c ], [ %spec.select, %bb.f ], [ 65535, %bb.e ], [ 65535, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i16 -1, -32768) i16 @jisx0208_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 4 uses
  %i.b = icmp ult i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %i.a, 65340
  br i1 %i.c, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32
  %i.f = getelementptr i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = lshr i32 %i.a, 8
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr [16 x i8], ptr %i.g, i64 %i.i ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = and i32 %i.a, 255                        ; 3 uses
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !50
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %.not22 = icmp samesign ult i32 %i.l, %i.o
  br i1 %.not22, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.j, i64 9
  %i.q = load i8, ptr %i.p, align 1, !tbaa !51
  %i.r = zext i8 %i.q to i32
  %.not23 = icmp samesign ugt i32 %i.l, %i.r
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sub nuw nsw i32 %i.l, %i.o
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr [2 x i8], ptr %i.k, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !41   ; 2 uses
  %.not25 = icmp sgt i16 %i.v, -1
  br i1 %.not25, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.b, %bb.g
  %.0 = phi i16 [ 8512, %bb.b ], [ -1, %bb.g ], [ %i.v, %bb.f ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 65536) i32 @jisx0201_r_decoder(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28      ; 6 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp ult i8 %i.a, 92
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i8 %i.a, 92
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp ult i8 %i.a, 126
  br i1 %i.e, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %switch.selectcmp = icmp eq i8 %i.a, 127
  %switch.select = select i1 %switch.selectcmp, i32 127, i32 65535
  %switch.selectcmp10 = icmp eq i8 %i.a, 126
  %switch.select11 = select i1 %switch.selectcmp10, i32 8254, i32 %switch.select
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.08 = phi i32 [ %i.b, %bb.c ], [ %switch.select11, %bb.d ], [ %i.b, %bb.a ], [ 165, %bb.b ]
  ret i32 %.08
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i16 -1, 128) i16 @jisx0201_r_encoder(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #10 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9
  %.fr = freeze i32 %i.a                          ; 5 uses
  %i.b = icmp ugt i32 %.fr, 127
  br i1 %i.b, label %bb.c, label %switch.early.test

switch.early.test:                                ; preds = %bb.a
  switch i32 %.fr, label %bb.b [
    i32 126, label %bb.c
    i32 92, label %bb.c
  ]

bb.b:                                             ; preds = %switch.early.test
  %i.c = trunc nuw nsw i32 %.fr to i16
  br label %bb.d

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %bb.a
  %switch.selectcmp = icmp eq i32 %.fr, 8254
  %switch.select = select i1 %switch.selectcmp, i16 126, i16 -1
  %switch.selectcmp12 = icmp eq i32 %.fr, 165
  %switch.select13 = select i1 %switch.selectcmp12, i16 92, i16 %switch.select
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.07 = phi i16 [ %switch.select13, %bb.c ], [ %i.c, %bb.b ]
  ret i16 %.07
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @jisx0212_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %i.c, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 56
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef %i.e)
  %.not3 = icmp ne i32 %i.f, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @jisx0212_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106
  %i.e = load i8, ptr %1, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28    ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !46    ; 2 uses
  %.not18 = icmp ult i8 %i.j, %i.l
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %.not19 = icmp ugt i8 %i.j, %i.n
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = sub nuw i8 %i.j, %i.l
  %3 = zext i8 %2 to i64
  %i.o = getelementptr [2 x i8], ptr %i.h, i64 %3
  %i.p = load i16, ptr %i.o, align 2, !tbaa !41   ; 2 uses
  %.not20 = icmp eq i16 %i.p, -2
  %narrow = select i1 %.not20, i16 -1, i16 %i.p
  %spec.select = zext i16 %narrow to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %spec.select, %bb.d ], [ 65535, %bb.c ], [ 65535, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i16 -1, -32768) i16 @jisx0212_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 3 uses
  %i.b = icmp ult i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !53
  %i.g = lshr i32 %i.a, 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.a, 255                        ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !50
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %.not21 = icmp samesign ult i32 %i.k, %i.n
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.i, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !51
  %i.q = zext i8 %i.p to i32
  %.not22 = icmp samesign ugt i32 %i.k, %i.q
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i32 %i.k, %i.n
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [2 x i8], ptr %i.j, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !41   ; 2 uses
  %i.v = and i16 %i.u, 32767
  %or.cond.inv = icmp slt i16 %i.u, -1
  %spec.select = select i1 %or.cond.inv, i16 %i.v, i16 -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i16 [ -1, %bb.a ], [ -1, %bb.b ], [ -1, %bb.c ], [ -1, %bb.d ], [ %spec.select, %bb.e ]
  ret i16 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @gb2312_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 112
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.35, ptr noundef %i.c, ptr noundef null)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 120
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.36, ptr noundef null, ptr noundef %i.e)
  %.not3 = icmp ne i32 %i.f, 0
  %spec.select = sext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 65536) i32 @gb2312_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = getelementptr i8, ptr %i.b, i64 120
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !107
  %i.e = load i8, ptr %1, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28    ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !46    ; 2 uses
  %.not18 = icmp ult i8 %i.j, %i.l
  br i1 %.not18, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %.not19 = icmp ugt i8 %i.j, %i.n
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = sub nuw i8 %i.j, %i.l
  %3 = zext i8 %2 to i64
  %i.o = getelementptr [2 x i8], ptr %i.h, i64 %3
  %i.p = load i16, ptr %i.o, align 2, !tbaa !41   ; 2 uses
  %.not20 = icmp eq i16 %i.p, -2
  %narrow = select i1 %.not20, i16 -1, i16 %i.p
  %spec.select = zext i16 %narrow to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ 65535, %bb.a ], [ %spec.select, %bb.d ], [ 65535, %bb.c ], [ 65535, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext range(i16 -1, -32768) i16 @gb2312_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #9 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 3 uses
  %i.b = icmp ult i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = getelementptr i8, ptr %i.d, i64 112
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !108
  %i.g = lshr i32 %i.a, 8
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr [16 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49   ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.a, 255                        ; 3 uses
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !50
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %.not21 = icmp samesign ult i32 %i.k, %i.n
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.i, i64 9
  %i.p = load i8, ptr %i.o, align 1, !tbaa !51
  %i.q = zext i8 %i.p to i32
  %.not22 = icmp samesign ugt i32 %i.k, %i.q
  br i1 %.not22, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = sub nuw nsw i32 %i.k, %i.n
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr [2 x i8], ptr %i.j, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !41   ; 2 uses
  %.not24 = icmp sgt i16 %i.u, -1
  br i1 %.not24, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.a
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i16 [ -1, %bb.f ], [ %i.u, %bb.e ]
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @dummy_decoder(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1) #11 {
bb.a:
  ret i32 65535
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef zeroext i16 @dummy_encoder(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2) #11 {
bb.a:
  ret i16 -1
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @jisx0213_init(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 8 uses
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %i.d = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, ptr noundef %i.c, ptr noundef null)
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %jisx0208_init.exit, label %jisx0208_init.exit.thread

jisx0208_init.exit:                               ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 48
  %i.f = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.28, ptr noundef null, ptr noundef %i.e)
  %.not3.i.not = icmp eq i32 %i.f, 0
  br i1 %.not3.i.not, label %bb.b, label %jisx0208_init.exit.thread

bb.b:                                             ; preds = %jisx0208_init.exit
  %i.g = getelementptr i8, ptr %i.b, i64 64
  %i.h = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.39, ptr noundef %i.g, ptr noundef null)
  %.not8 = icmp eq i32 %i.h, 0
  br i1 %.not8, label %bb.c, label %jisx0208_init.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.b, i64 72
  %i.j = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef %i.i)
  %.not9 = icmp eq i32 %i.j, 0
  br i1 %.not9, label %bb.d, label %jisx0208_init.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.b, i64 80
  %i.l = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.41, ptr noundef null, ptr noundef %i.k)
  %.not10 = icmp eq i32 %i.l, 0
  br i1 %.not10, label %bb.e, label %jisx0208_init.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.b, i64 88
  %i.n = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.42, ptr noundef %i.m, ptr noundef null)
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %bb.f, label %jisx0208_init.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr i8, ptr %i.b, i64 96
  %i.p = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.43, ptr noundef null, ptr noundef %i.o)
  %.not12 = icmp eq i32 %i.p, 0
  br i1 %.not12, label %bb.g, label %jisx0208_init.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr i8, ptr %i.b, i64 104
  %i.r = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.44, ptr noundef null, ptr noundef %i.q)
  %.not13 = icmp eq i32 %i.r, 0
  br i1 %.not13, label %bb.h, label %jisx0208_init.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.s = tail call fastcc i32 @importmap(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.45, ptr noundef nonnull @jisx0213_pair_encmap, ptr noundef nonnull @jisx0213_pair_decmap)
  %.not14 = icmp ne i32 %i.s, 0
  %spec.select = sext i1 %.not14 to i32
  br label %jisx0208_init.exit.thread

jisx0208_init.exit.thread:                        ; preds = %bb.a, %bb.h, %jisx0208_init.exit, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.0 = phi i32 [ -1, %jisx0208_init.exit ], [ %spec.select, %bb.h ], [ -1, %bb.g ], [ -1, %bb.f ], [ -1, %bb.e ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @jisx0213_2004_1_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  %i.b = icmp eq i8 %i.a, 33
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !28
  %i.e = icmp eq i8 %i.d, 64
  br i1 %i.e, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !32   ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !52
  %i.j = zext i8 %i.a to i64                      ; 4 uses
  %i.k = getelementptr [16 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28    ; 3 uses
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %i.p = load i8, ptr %i.o, align 8, !tbaa !46    ; 2 uses
  %.not68 = icmp ult i8 %i.n, %i.p
  br i1 %.not68, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.k, i64 9
  %i.r = load i8, ptr %i.q, align 1, !tbaa !47
  %.not69 = icmp ugt i8 %i.n, %i.r
  br i1 %.not69, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %2 = sub nuw i8 %i.n, %i.p
  %3 = zext i8 %2 to i64
  %i.s = getelementptr [2 x i8], ptr %i.l, i64 %3
  %i.t = load i16, ptr %i.s, align 2, !tbaa !41   ; 2 uses
  %i.u = zext i16 %i.t to i32
  %.not70 = icmp eq i16 %i.t, -2
  br i1 %.not70, label %bb.g, label %bb.t

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %i.v = getelementptr i8, ptr %i.g, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !54
  %i.x = getelementptr [16 x i8], ptr %i.w, i64 %i.j ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !45   ; 2 uses
  %.not71 = icmp eq ptr %i.y, null
  br i1 %.not71, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !28   ; 3 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !46  ; 2 uses
  %.not72 = icmp ult i8 %i.aa, %i.ac
  br i1 %.not72, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr i8, ptr %i.x, i64 9
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !47
  %.not73 = icmp ugt i8 %i.aa, %i.ae
  br i1 %.not73, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %4 = sub nuw i8 %i.aa, %i.ac
  %5 = zext i8 %4 to i64
  %i.af = getelementptr [2 x i8], ptr %i.y, i64 %5
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !41 ; 2 uses
  %i.ah = zext i16 %i.ag to i32
  %.not74 = icmp eq i16 %i.ag, -2
  br i1 %.not74, label %bb.k, label %bb.t

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %i.ai = getelementptr i8, ptr %i.g, i64 96
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !55
  %i.ak = getelementptr [16 x i8], ptr %i.aj, i64 %i.j ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 2 uses
  %.not75 = icmp eq ptr %i.al, null
  br i1 %.not75, label %bb.p, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = getelementptr i8, ptr %1, i64 1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !28  ; 3 uses
  %i.ao = getelementptr i8, ptr %i.ak, i64 8
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !46  ; 2 uses
  %.not76 = icmp ult i8 %i.an, %i.ap
  br i1 %.not76, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.ak, i64 9
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !47
  %.not77 = icmp ugt i8 %i.an, %i.ar
  br i1 %.not77, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %6 = sub nuw i8 %i.an, %i.ap
  %7 = zext i8 %6 to i64
  %i.as = getelementptr [2 x i8], ptr %i.al, i64 %7
  %i.at = load i16, ptr %i.as, align 2, !tbaa !41 ; 2 uses
  %.not78 = icmp eq i16 %i.at, -2
  br i1 %.not78, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = zext i16 %i.at to i32
  %i.av = or disjoint i32 %i.au, 131072
  br label %bb.t

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.aw = load ptr, ptr @jisx0213_pair_decmap, align 8, !tbaa !57
  %i.ax = getelementptr [16 x i8], ptr %i.aw, i64 %i.j ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !60 ; 2 uses
  %.not79 = icmp eq ptr %i.ay, null
  br i1 %.not79, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %1, i64 1
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !28  ; 3 uses
  %i.bb = getelementptr i8, ptr %i.ax, i64 8
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !61  ; 2 uses
  %.not80 = icmp ult i8 %i.ba, %i.bc
  br i1 %.not80, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = getelementptr i8, ptr %i.ax, i64 9
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %.not81 = icmp ugt i8 %i.ba, %i.be
  br i1 %.not81, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %8 = sub nuw i8 %i.ba, %i.bc
  %9 = zext i8 %8 to i64
  %i.bf = getelementptr [4 x i8], ptr %i.ay, i64 %9
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !9  ; 2 uses
  %.not82 = icmp eq i32 %i.bg, 65534
  %spec.select = select i1 %.not82, i32 65535, i32 %i.bg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.j, %bb.o, %bb.f, %bb.p, %bb.q, %bb.r, %bb.b
  %.051 = phi i32 [ 65340, %bb.b ], [ 65535, %bb.p ], [ %spec.select, %bb.s ], [ 65535, %bb.r ], [ 65535, %bb.q ], [ %i.u, %bb.f ], [ %i.ah, %bb.j ], [ %i.av, %bb.o ]
  ret i32 %.051
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @jisx0213_2004_1_encoder_paironly(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #12 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !40
  %i.b = tail call fastcc zeroext i16 @jisx0213_encoder(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef null) ; 2 uses
  switch i64 %i.a, label %bb.d [
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %i.b, -2
  %. = select i1 %i.c, i16 -2, i16 -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !40
  %.not = icmp eq i64 %i.d, 2
  %.8 = select i1 %.not, i16 %i.b, i16 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i16 [ %.8, %bb.c ], [ %., %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @jisx0213_2004_1_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #12 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @jisx0213_encoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 3 uses
  %or.cond = icmp ugt i16 %i.a, -3
  %. = tail call i16 @llvm.smax.i16(i16 %i.a, i16 -1)
  %.0 = select i1 %or.cond, i16 %i.a, i16 %.
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 196608) i32 @jisx0213_2004_2_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !63
  %i.e = load i8, ptr %1, align 1, !tbaa !28
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = getelementptr [16 x i8], ptr %i.d, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28    ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !46    ; 2 uses
  %.not37 = icmp ult i8 %i.j, %i.l
  br i1 %.not37, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %.not38 = icmp ugt i8 %i.j, %i.n
  br i1 %.not38, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = sub nuw i8 %i.j, %i.l
  %3 = zext i8 %2 to i64
  %i.o = getelementptr [2 x i8], ptr %i.h, i64 %3
  %i.p = load i16, ptr %i.o, align 2, !tbaa !41   ; 2 uses
  %i.q = zext i16 %i.p to i32
  %.not39 = icmp eq i16 %i.p, -2
  br i1 %.not39, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %i.b, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr [16 x i8], ptr %i.s, i64 %i.f ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %.not40 = icmp eq ptr %i.u, null
  br i1 %.not40, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !28    ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !46    ; 2 uses
  %.not41 = icmp ult i8 %i.w, %i.y
  br i1 %.not41, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %.not42 = icmp ugt i8 %i.w, %i.aa
  br i1 %.not42, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = sub nuw i8 %i.w, %i.y
  %5 = zext i8 %4 to i64
  %i.ab = getelementptr [2 x i8], ptr %i.u, i64 %5
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !41 ; 2 uses
  %.not43 = icmp eq i16 %i.ac, -2
  br i1 %.not43, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = zext i16 %i.ac to i32
  %i.ae = or disjoint i32 %i.ad, 131072
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.028 = phi i32 [ 65535, %bb.e ], [ 65535, %bb.h ], [ 65535, %bb.g ], [ 65535, %bb.f ], [ %i.q, %bb.d ], [ %i.ae, %bb.i ]
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @jisx0213_2004_2_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #12 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @jisx0213_encoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null) ; 4 uses
  %i.b = and i16 %i.a, 32767
  %i.c = icmp slt i16 %i.a, -2
  %i.d = icmp sgt i16 %i.a, -1
  %i.e = select i1 %i.c, i16 %i.b, i16 %i.a
  %.0 = select i1 %i.d, i16 -1, i16 %i.e
  ret i16 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc zeroext i16 @jisx0213_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readnone captures(address) %3) unnamed_addr #13 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !40
  switch i64 %i.a, label %bb.ae [
    i64 1, label %bb.b
    i64 2, label %bb.s
    i64 -1, label %.find_pairencmap.exit.thread_crit_edge
  ]

.find_pairencmap.exit.thread_crit_edge:           ; preds = %bb.a
  %.pre = load i32, ptr %1, align 4, !tbaa !9
  %.pre116 = load ptr, ptr @jisx0213_pair_encmap, align 8, !tbaa !111
  br label %find_pairencmap.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 4, !tbaa !9      ; 9 uses
  %i.c = icmp ugt i32 %i.b, 65535
  br i1 %i.c, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %.mask = and i32 %i.b, -65536
  %i.d = icmp eq i32 %.mask, 131072
  br i1 %i.d, label %bb.d, label %find_pairencmap.exit110.thread

bb.d:                                             ; preds = %bb.c
  %i.e = icmp eq ptr %3, inttoptr (i64 2000 to ptr)
  %i.f = icmp eq i32 %i.b, 134047
  %or.cond = and i1 %i.e, %i.f
  br i1 %or.cond, label %bb.ae, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !32
  %i.i = getelementptr i8, ptr %i.h, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112
  %i.k = lshr i32 %i.b, 8
  %i.l = and i32 %i.k, 255
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr [16 x i8], ptr %i.j, i64 %i.m ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !49   ; 2 uses
  %.not94 = icmp eq ptr %i.o, null
  br i1 %.not94, label %find_pairencmap.exit110.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = and i32 %i.b, 255                        ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 8
  %i.r = load i8, ptr %i.q, align 8, !tbaa !50
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %.not95 = icmp samesign ult i32 %i.p, %i.s
  br i1 %.not95, label %find_pairencmap.exit110.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %i.n, i64 9
  %i.u = load i8, ptr %i.t, align 1, !tbaa !51
  %i.v = zext i8 %i.u to i32
  %.not96 = icmp samesign ugt i32 %i.p, %i.v
  br i1 %.not96, label %find_pairencmap.exit110.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = sub nuw nsw i32 %i.p, %i.s
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr [2 x i8], ptr %i.o, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2, !tbaa !41   ; 2 uses
  %.not97 = icmp eq i16 %i.z, -1
  br i1 %.not97, label %find_pairencmap.exit110.thread, label %bb.ae

bb.i:                                             ; preds = %bb.b
  %i.aa = icmp eq ptr %3, inttoptr (i64 2000 to ptr)
  br i1 %i.aa, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %trunc = trunc nuw i32 %i.b to i16
  switch i16 %trunc, label %.critedge [
    i16 -25828, label %bb.ae
    i16 20465, label %bb.ae
    i16 21085, label %bb.ae
    i16 21534, label %bb.ae
    i16 22099, label %bb.ae
    i16 23032, label %bb.ae
    i16 23643, label %bb.ae
    i16 24183, label %bb.ae
    i16 30246, label %bb.ae
    i16 32363, label %bb.ae
    i16 -25827, label %bb.r
  ]

.critedge:                                        ; preds = %bb.j, %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 72
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !113
  %i.af = lshr i32 %i.b, 8
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %i.ah = getelementptr [16 x i8], ptr %i.ae, i64 %i.ag ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !49 ; 2 uses
  %.not85 = icmp eq ptr %i.ai, null
  br i1 %.not85, label %bb.n, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.aj = and i32 %i.b, 255                       ; 3 uses
  %i.ak = getelementptr i8, ptr %i.ah, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !50
  %i.am = zext i8 %i.al to i32                    ; 2 uses
  %.not86 = icmp samesign ult i32 %i.aj, %i.am
  br i1 %.not86, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = getelementptr i8, ptr %i.ah, i64 9
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !51
  %i.ap = zext i8 %i.ao to i32
  %.not87 = icmp samesign ugt i32 %i.aj, %i.ap
  br i1 %.not87, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = sub nuw nsw i32 %i.aj, %i.am
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = getelementptr [2 x i8], ptr %i.ai, i64 %i.ar
  %i.at = load i16, ptr %i.as, align 2, !tbaa !41 ; 3 uses
  switch i16 %i.at, label %bb.r [
    i16 -1, label %bb.n
    i16 -2, label %bb.ae
  ]

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %.critedge
  %i.au = getelementptr i8, ptr %i.ac, i64 40
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !53
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %i.ag ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !49 ; 2 uses
  %.not89 = icmp eq ptr %i.ax, null
  br i1 %.not89, label %bb.ae, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = and i32 %i.b, 255                       ; 3 uses
  %i.az = getelementptr i8, ptr %i.aw, i64 8
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !50
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %.not90 = icmp samesign ult i32 %i.ay, %i.bb
  br i1 %.not90, label %bb.ae, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr i8, ptr %i.aw, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !51
  %i.be = zext i8 %i.bd to i32
  %.not91 = icmp samesign ugt i32 %i.ay, %i.be
  br i1 %.not91, label %bb.ae, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bf = sub nuw nsw i32 %i.ay, %i.bb
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr [2 x i8], ptr %i.ax, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !41 ; 2 uses
  %.not93 = icmp sgt i16 %i.bi, -1
  br i1 %.not93, label %bb.r, label %bb.ae

bb.r:                                             ; preds = %bb.j, %bb.q, %bb.m
  %.0 = phi i16 [ %i.bi, %bb.q ], [ %i.at, %bb.m ], [ -709, %bb.j ]
  br label %bb.ae

bb.s:                                             ; preds = %bb.a
  %i.bj = getelementptr i8, ptr %1, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !9  ; 2 uses
  %.not = icmp eq i32 %i.bk, 0
  %.pre115 = load i32, ptr %1, align 4, !tbaa !9  ; 4 uses
  %.pre117 = load ptr, ptr @jisx0213_pair_encmap, align 8, !tbaa !111 ; 5 uses
  br i1 %.not, label %find_pairencmap.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = shl i32 %.pre115, 16
  %i.bm = and i32 %i.bk, 65535
  %i.bn = or disjoint i32 %i.bl, %i.bm            ; 3 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.x, %bb.t
  %.035.i = phi i32 [ 46, %bb.t ], [ %.1.i, %bb.x ] ; 3 uses
  %.02534.i = phi i32 [ 0, %bb.t ], [ %.126.i, %bb.x ] ; 2 uses
  %.02733.i = phi i32 [ 23, %bb.t ], [ %i.bu, %bb.x ] ; 6 uses
  %i.bo = sext i32 %.02733.i to i64
  %i.bp = getelementptr [8 x i8], ptr %.pre117, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !115 ; 2 uses
  %i.br = icmp ult i32 %i.bn, %i.bq
  br i1 %i.br, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not32.i = icmp eq i32 %.035.i, %.02733.i
  br i1 %.not32.i, label %bb.y, label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bs = icmp ule i32 %i.bn, %i.bq
  %.not31.i = icmp eq i32 %.02534.i, %.02733.i
  %or.cond.i = or i1 %.not31.i, %i.bs
  br i1 %or.cond.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.126.i = phi i32 [ %.02534.i, %bb.v ], [ %.02733.i, %bb.w ] ; 3 uses
  %.1.i = phi i32 [ %.02733.i, %bb.v ], [ %.035.i, %bb.w ] ; 3 uses
  %i.bt = add i32 %.1.i, %.126.i
  %i.bu = ashr i32 %i.bt, 1                       ; 2 uses
  %.not.i = icmp eq i32 %.126.i, %.1.i
  br i1 %.not.i, label %bb.y, label %bb.u, !llvm.loop !109

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.027.lcssa.i = phi i32 [ %.035.i, %bb.v ], [ %.02733.i, %bb.w ], [ %i.bu, %bb.x ]
  %i.bv = sext i32 %.027.lcssa.i to i64
  %i.bw = getelementptr [8 x i8], ptr %.pre117, i64 %i.bv ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !115
  %i.by = icmp eq i32 %i.bn, %i.bx
  br i1 %i.by, label %find_pairencmap.exit, label %find_pairencmap.exit.thread

find_pairencmap.exit:                             ; preds = %bb.y
  %i.bz = getelementptr i8, ptr %i.bw, i64 4
  %i.ca = load i16, ptr %i.bz, align 4, !tbaa !116 ; 2 uses
  %.not84 = icmp eq i16 %i.ca, -3
  br i1 %.not84, label %find_pairencmap.exit.thread, label %bb.ae

find_pairencmap.exit.thread:                      ; preds = %.find_pairencmap.exit.thread_crit_edge, %bb.y, %bb.s, %find_pairencmap.exit
  %i.cb = phi ptr [ %.pre116, %.find_pairencmap.exit.thread_crit_edge ], [ %.pre117, %bb.y ], [ %.pre117, %bb.s ], [ %.pre117, %find_pairencmap.exit ] ; 2 uses
  %i.cc = phi i32 [ %.pre, %.find_pairencmap.exit.thread_crit_edge ], [ %.pre115, %bb.y ], [ %.pre115, %bb.s ], [ %.pre115, %find_pairencmap.exit ]
  store i64 1, ptr %2, align 8, !tbaa !40
  %i.cd = shl i32 %i.cc, 16                       ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ac, %find_pairencmap.exit.thread
  %.035.i99 = phi i32 [ 46, %find_pairencmap.exit.thread ], [ %.1.i105, %bb.ac ] ; 3 uses
  %.02534.i100 = phi i32 [ 0, %find_pairencmap.exit.thread ], [ %.126.i104, %bb.ac ] ; 2 uses
  %.02733.i101 = phi i32 [ 23, %find_pairencmap.exit.thread ], [ %i.ck, %bb.ac ] ; 6 uses
  %i.ce = sext i32 %.02733.i101 to i64
  %i.cf = getelementptr [8 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !115 ; 2 uses
  %i.ch = icmp ult i32 %i.cd, %i.cg
  br i1 %i.ch, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.not32.i109 = icmp eq i32 %.035.i99, %.02733.i101
  br i1 %.not32.i109, label %bb.ad, label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ci = icmp ule i32 %i.cd, %i.cg
  %.not31.i102 = icmp eq i32 %.02534.i100, %.02733.i101
  %or.cond.i103 = or i1 %.not31.i102, %i.ci
  br i1 %or.cond.i103, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.126.i104 = phi i32 [ %.02534.i100, %bb.aa ], [ %.02733.i101, %bb.ab ] ; 3 uses
  %.1.i105 = phi i32 [ %.02733.i101, %bb.aa ], [ %.035.i99, %bb.ab ] ; 3 uses
  %i.cj = add i32 %.1.i105, %.126.i104
  %i.ck = ashr i32 %i.cj, 1                       ; 2 uses
  %.not.i106 = icmp eq i32 %.126.i104, %.1.i105
  br i1 %.not.i106, label %bb.ad, label %bb.z, !llvm.loop !109

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %.027.lcssa.i107 = phi i32 [ %.035.i99, %bb.aa ], [ %.02733.i101, %bb.ab ], [ %i.ck, %bb.ac ]
  %i.cl = sext i32 %.027.lcssa.i107 to i64
  %i.cm = getelementptr [8 x i8], ptr %i.cb, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !115
  %i.co = icmp eq i32 %i.cd, %i.cn
  br i1 %i.co, label %find_pairencmap.exit110, label %find_pairencmap.exit110.thread

find_pairencmap.exit110:                          ; preds = %bb.ad
  %i.cp = getelementptr i8, ptr %i.cm, i64 4
  %i.cq = load i16, ptr %i.cp, align 4, !tbaa !116
  %.fr = freeze i16 %i.cq                         ; 2 uses
  %i.cr = icmp eq i16 %.fr, -3
  br i1 %i.cr, label %find_pairencmap.exit110.thread, label %bb.ae

find_pairencmap.exit110.thread:                   ; preds = %bb.c, %bb.e, %bb.f, %bb.g, %bb.h, %bb.ad, %find_pairencmap.exit110
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %bb.j, %find_pairencmap.exit110.thread, %find_pairencmap.exit110, %bb.a, %find_pairencmap.exit, %bb.n, %bb.o, %bb.p, %bb.q, %bb.m, %bb.h, %bb.d, %bb.r
  %.070 = phi i16 [ -1, %bb.o ], [ %i.ca, %find_pairencmap.exit ], [ -1, %bb.d ], [ %.fr, %find_pairencmap.exit110 ], [ %i.z, %bb.h ], [ %.0, %bb.r ], [ -1, %bb.j ], [ %i.at, %bb.m ], [ -1, %bb.a ], [ -1, %bb.n ], [ -1, %bb.p ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.j ], [ -1, %bb.q ], [ -1, %find_pairencmap.exit110.thread ]
  ret i16 %.070
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @jisx0213_2000_1_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  switch i8 %i.a, label %.thread117 [
    i8 46, label %bb.b
    i8 47, label %bb.c
    i8 79, label %bb.d
    i8 116, label %bb.e
    i8 126, label %bb.f
    i8 33, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28
  %i.d = icmp eq i8 %i.c, 33
  br i1 %i.d, label %bb.x, label %.thread117

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !28
  %i.g = icmp eq i8 %i.f, 126
  br i1 %i.g, label %bb.x, label %.thread117

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !28
  switch i8 %i.i, label %.thread117 [
    i8 84, label %bb.x
    i8 126, label %bb.x
  ]

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %1, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !28
  %i.l = icmp eq i8 %i.k, 39
  br i1 %i.l, label %bb.x, label %.thread117

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %1, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !28
  %.off = add i8 %i.n, -122
  %switch = icmp ult i8 %.off, 5
  br i1 %switch, label %bb.x, label %.thread117

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr i8, ptr %1, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !28
  %i.q = icmp eq i8 %i.p, 64
  br i1 %i.q, label %bb.x, label %.thread117

.thread117:                                       ; preds = %bb.f, %bb.d, %bb.a, %bb.b, %bb.c, %bb.e, %bb.g
  %i.r = getelementptr i8, ptr %0, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !32   ; 3 uses
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = zext i8 %i.a to i64                      ; 4 uses
  %i.w = getelementptr [16 x i8], ptr %i.u, i64 %i.v ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.x, null
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.thread117
  %i.y = getelementptr i8, ptr %1, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28    ; 3 uses
  %i.aa = getelementptr i8, ptr %i.w, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !46  ; 2 uses
  %.not88 = icmp ult i8 %i.z, %i.ab
  br i1 %.not88, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr i8, ptr %i.w, i64 9
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !47
  %.not89 = icmp ugt i8 %i.z, %i.ad
  br i1 %.not89, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %2 = sub nuw i8 %i.z, %i.ab
  %3 = zext i8 %2 to i64
  %i.ae = getelementptr [2 x i8], ptr %i.x, i64 %3
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !41 ; 2 uses
  %i.ag = zext i16 %i.af to i32
  %.not90 = icmp eq i16 %i.af, -2
  br i1 %.not90, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %.thread117
  %i.ah = getelementptr i8, ptr %i.s, i64 72
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !54
  %i.aj = getelementptr [16 x i8], ptr %i.ai, i64 %i.v ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !45 ; 2 uses
  %.not91 = icmp eq ptr %i.ak, null
  br i1 %.not91, label %bb.o, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %1, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !28  ; 3 uses
  %i.an = getelementptr i8, ptr %i.aj, i64 8
  %i.ao = load i8, ptr %i.an, align 8, !tbaa !46  ; 2 uses
  %.not92 = icmp ult i8 %i.am, %i.ao
  br i1 %.not92, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %i.aj, i64 9
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !47
  %.not93 = icmp ugt i8 %i.am, %i.aq
  br i1 %.not93, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %4 = sub nuw i8 %i.am, %i.ao
  %5 = zext i8 %4 to i64
  %i.ar = getelementptr [2 x i8], ptr %i.ak, i64 %5
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !41 ; 2 uses
  %i.at = zext i16 %i.as to i32
  %.not94 = icmp eq i16 %i.as, -2
  br i1 %.not94, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.au = getelementptr i8, ptr %i.s, i64 96
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !55
  %i.aw = getelementptr [16 x i8], ptr %i.av, i64 %i.v ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !45 ; 2 uses
  %.not95 = icmp eq ptr %i.ax, null
  br i1 %.not95, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %1, i64 1
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !28  ; 3 uses
  %i.ba = getelementptr i8, ptr %i.aw, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !46  ; 2 uses
  %.not96 = icmp ult i8 %i.az, %i.bb
  br i1 %.not96, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr i8, ptr %i.aw, i64 9
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !47
  %.not97 = icmp ugt i8 %i.az, %i.bd
  br i1 %.not97, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %6 = sub nuw i8 %i.az, %i.bb
  %7 = zext i8 %6 to i64
  %i.be = getelementptr [2 x i8], ptr %i.ax, i64 %7
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !41 ; 2 uses
  %.not98 = icmp eq i16 %i.bf, -2
  br i1 %.not98, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bg = zext i16 %i.bf to i32
  %i.bh = or disjoint i32 %i.bg, 131072
  br label %bb.x

bb.t:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o
  %i.bi = load ptr, ptr @jisx0213_pair_decmap, align 8, !tbaa !57
  %i.bj = getelementptr [16 x i8], ptr %i.bi, i64 %i.v ; 3 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !60 ; 2 uses
  %.not99 = icmp eq ptr %i.bk, null
  br i1 %.not99, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %1, i64 1
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !28  ; 3 uses
  %i.bn = getelementptr i8, ptr %i.bj, i64 8
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !61  ; 2 uses
  %.not100 = icmp ult i8 %i.bm, %i.bo
  br i1 %.not100, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = getelementptr i8, ptr %i.bj, i64 9
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !62
  %.not101 = icmp ugt i8 %i.bm, %i.bq
  br i1 %.not101, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %8 = sub nuw i8 %i.bm, %i.bo
  %9 = zext i8 %8 to i64
  %i.br = getelementptr [4 x i8], ptr %i.bk, i64 %9
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !9  ; 2 uses
  %.not102 = icmp eq i32 %i.bs, 65534
  %spec.select = select i1 %.not102, i32 65535, i32 %i.bs
  br label %bb.x

bb.x:                                             ; preds = %bb.f, %bb.d, %bb.d, %bb.w, %bb.j, %bb.s, %bb.n, %bb.t, %bb.u, %bb.v, %bb.g, %bb.b, %bb.c, %bb.e
  %.071 = phi i32 [ 65340, %bb.g ], [ 65535, %bb.b ], [ 65535, %bb.t ], [ %i.bh, %bb.s ], [ %i.at, %bb.n ], [ %i.ag, %bb.j ], [ 65535, %bb.u ], [ 65535, %bb.f ], [ 65535, %bb.e ], [ 65535, %bb.d ], [ 65535, %bb.d ], [ 65535, %bb.c ], [ %spec.select, %bb.w ], [ 65535, %bb.v ]
  ret i32 %.071
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @jisx0213_2000_1_encoder_paironly(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #12 {
bb.a:
  %i.a = load i64, ptr %2, align 8, !tbaa !40
  %i.b = tail call fastcc zeroext i16 @jisx0213_encoder(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef nonnull inttoptr (i64 2000 to ptr)) ; 2 uses
  switch i64 %i.a, label %bb.d [
    i64 1, label %bb.b
    i64 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i16 %i.b, -2
  %. = select i1 %i.c, i16 -2, i16 -1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load i64, ptr %2, align 8, !tbaa !40
  %.not = icmp eq i64 %i.d, 2
  %.8 = select i1 %.not, i16 %i.b, i16 -1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.0 = phi i16 [ %.8, %bb.c ], [ %., %bb.b ], [ -1, %bb.a ]
  ret i16 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @jisx0213_2000_1_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #12 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @jisx0213_encoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull inttoptr (i64 2000 to ptr)) ; 3 uses
  %or.cond = icmp ugt i16 %i.a, -3
  %. = tail call i16 @llvm.smax.i16(i16 %i.a, i16 -1)
  %.0 = select i1 %or.cond, i16 %i.a, i16 %.
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 196608) i32 @jisx0213_2000_2_decoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #9 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28
  %i.b = getelementptr i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = zext i8 %i.a to i64                      ; 2 uses
  %i.g = getelementptr [16 x i8], ptr %i.e, i64 %i.f ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !28    ; 3 uses
  %i.k = getelementptr i8, ptr %i.g, i64 8
  %i.l = load i8, ptr %i.k, align 8, !tbaa !46    ; 2 uses
  %.not39 = icmp ult i8 %i.j, %i.l
  br i1 %.not39, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.g, i64 9
  %i.n = load i8, ptr %i.m, align 1, !tbaa !47
  %.not40 = icmp ugt i8 %i.j, %i.n
  br i1 %.not40, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %2 = sub nuw i8 %i.j, %i.l
  %3 = zext i8 %2 to i64
  %i.o = getelementptr [2 x i8], ptr %i.h, i64 %3
  %i.p = load i16, ptr %i.o, align 2, !tbaa !41   ; 2 uses
  %i.q = zext i16 %i.p to i32
  %.not41 = icmp eq i16 %i.p, -2
  br i1 %.not41, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.r = getelementptr i8, ptr %i.c, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64
  %i.t = getelementptr [16 x i8], ptr %i.s, i64 %i.f ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !45   ; 2 uses
  %.not42 = icmp eq ptr %i.u, null
  br i1 %.not42, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 1
  %i.w = load i8, ptr %i.v, align 1, !tbaa !28    ; 3 uses
  %i.x = getelementptr i8, ptr %i.t, i64 8
  %i.y = load i8, ptr %i.x, align 8, !tbaa !46    ; 2 uses
  %.not43 = icmp ult i8 %i.w, %i.y
  br i1 %.not43, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr i8, ptr %i.t, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !47
  %.not44 = icmp ugt i8 %i.w, %i.aa
  br i1 %.not44, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %4 = sub nuw i8 %i.w, %i.y
  %5 = zext i8 %4 to i64
  %i.ab = getelementptr [2 x i8], ptr %i.u, i64 %5
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !41 ; 2 uses
  %.not45 = icmp eq i16 %i.ac, -2
  br i1 %.not45, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = zext i16 %i.ac to i32
  %i.ae = or disjoint i32 %i.ad, 131072
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.030 = phi i32 [ 65535, %bb.e ], [ 65535, %bb.h ], [ 65535, %bb.g ], [ 65535, %bb.f ], [ %i.q, %bb.d ], [ %i.ae, %bb.i ]
  ret i32 %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal zeroext i16 @jisx0213_2000_2_encoder(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) %2) #12 {
bb.a:
  %i.a = tail call fastcc zeroext i16 @jisx0213_encoder(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull inttoptr (i64 2000 to ptr)) ; 4 uses
  %i.b = and i16 %i.a, 32767
  %i.c = icmp slt i16 %i.a, -2
  %i.d = icmp sgt i16 %i.a, -1
  %i.e = select i1 %i.c, i16 %i.b, i16 %i.a
  %.0 = select i1 %i.d, i16 -1, i16 %i.e
  ret i16 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 65377, 65536) i32 @jisx0201_k_decoder(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) #10 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !28      ; 2 uses
  %i.b = xor i8 %i.a, -128
  %i.c = zext i8 %i.b to i32
  %i.d = add i8 %i.a, -33
  %or.cond = icmp ult i8 %i.d, 63
  %i.e = add nuw nsw i32 %i.c, 65216
  %.0 = select i1 %or.cond, i32 %i.e, i32 65535
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal zeroext range(i16 -1, 96) i16 @jisx0201_k_encoder(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) #10 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !9      ; 2 uses
  %i.b = add i32 %i.a, -65377
  %or.cond = icmp ult i32 %i.b, 63
  %i.c = trunc nuw i32 %i.a to i16
  %i.d = add i16 %i.c, 192
  %.0 = select i1 %or.cond, i16 %i.d, i16 -1
  ret i16 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smax.i16(i16, i16) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"p1 _ZTS8dbcs_map", !10, i64 0}
!12 = !{!"p1 _ZTS16_multibyte_codec", !10, i64 0}
!13 = !{!"p1 _ZTS10unim_index", !10, i64 0}
!14 = !{!"p1 _ZTS10dbcs_index", !10, i64 0}
!15 = !{!"_cjk_mod_state", !8, i64 0, !8, i64 4, !11, i64 8, !12, i64 16, !13, i64 24, !14, i64 32, !13, i64 40, !14, i64 48, !14, i64 56, !13, i64 64, !14, i64 72, !14, i64 80, !13, i64 88, !14, i64 96, !14, i64 104, !13, i64 112, !14, i64 120}
!16 = !{!15, !11, i64 8}
!17 = !{!15, !12, i64 16}
!18 = !{!"long", !7, i64 0}
!19 = !{!"p1 omnipotent char", !10, i64 0}
!20 = !{!"p1 _ZTS7_object", !10, i64 0}
!21 = !{!"short", !7, i64 0}
!22 = !{!20, !20, i64 0}
!23 = !{!15, !8, i64 4}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"p1 _ZTS14_cjk_mod_state", !10, i64 0}
!26 = !{!"_multibyte_codec", !19, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !25, i64 72}
!27 = !{!"", !12, i64 0, !20, i64 8}
!28 = !{!7, !7, i64 0}
!29 = !{!27, !20, i64 8}
!30 = !{!19, !19, i64 0}
!31 = !{!10, !10, i64 0}
!32 = !{!26, !25, i64 72}
!33 = !{!"dbcs_map", !19, i64 0, !13, i64 8, !14, i64 16}
!34 = !{!26, !10, i64 8}
!35 = !{!"p1 _ZTS19iso2022_designation", !10, i64 0}
!36 = !{!"iso2022_config", !8, i64 0, !35, i64 8}
!37 = !{!36, !35, i64 8}
!38 = !{!"iso2022_designation", !7, i64 0, !7, i64 1, !7, i64 2, !10, i64 8, !10, i64 16, !10, i64 24}
!39 = !{!38, !7, i64 0}
!40 = !{!18, !18, i64 0}
!41 = !{!21, !21, i64 0}
!42 = !{!38, !7, i64 2}
!43 = !{!"p1 short", !10, i64 0}
!44 = !{!"dbcs_index", !43, i64 0, !7, i64 8, !7, i64 9}
!45 = !{!44, !43, i64 0}
!46 = !{!44, !7, i64 8}
!47 = !{!44, !7, i64 9}
!48 = !{!"unim_index", !43, i64 0, !7, i64 8, !7, i64 9}
!49 = !{!48, !43, i64 0}
!50 = !{!48, !7, i64 8}
!51 = !{!48, !7, i64 9}
!52 = !{!15, !14, i64 48}
!53 = !{!15, !13, i64 40}
!54 = !{!15, !14, i64 72}
!55 = !{!15, !14, i64 96}
!56 = !{!"p1 _ZTS14widedbcs_index", !10, i64 0}
!57 = !{!56, !56, i64 0}
!58 = !{!"p1 int", !10, i64 0}
!59 = !{!"widedbcs_index", !58, i64 0, !7, i64 8, !7, i64 9}
!60 = !{!59, !58, i64 0}
!61 = !{!59, !7, i64 8}
!62 = !{!59, !7, i64 9}
!63 = !{!15, !14, i64 80}
!64 = !{!15, !14, i64 104}
!65 = distinct !{!65, !24}
!66 = !{!"p1 _ZTS11_typeobject", !10, i64 0}
!67 = !{!"_object", !7, i64 0, !66, i64 8}
!68 = !{!67, !66, i64 8}
!69 = !{!"PyVarObject", !67, i64 0, !18, i64 16}
!70 = !{!"p1 _ZTS11PyMethodDef", !10, i64 0}
!71 = !{!"p1 _ZTS11PyMemberDef", !10, i64 0}
!72 = !{!"p1 _ZTS11PyGetSetDef", !10, i64 0}
!73 = !{!"_typeobject", !69, i64 0, !19, i64 24, !18, i64 32, !18, i64 40, !10, i64 48, !18, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !10, i64 160, !18, i64 168, !19, i64 176, !10, i64 184, !10, i64 192, !10, i64 200, !18, i64 208, !10, i64 216, !10, i64 224, !70, i64 232, !71, i64 240, !72, i64 248, !66, i64 256, !20, i64 264, !10, i64 272, !10, i64 280, !18, i64 288, !10, i64 296, !10, i64 304, !10, i64 312, !10, i64 320, !10, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !10, i64 360, !20, i64 368, !10, i64 376, !8, i64 384, !10, i64 392, !10, i64 400, !7, i64 408, !21, i64 410}
!74 = !{!73, !18, i64 168}
!75 = !{!26, !19, i64 0}
!76 = !{!27, !12, i64 0}
!77 = distinct !{!77, !24}
!78 = distinct !{!78, !82}
!79 = distinct !{!79, !24}
!80 = !{!15, !8, i64 0}
!81 = !{!25, !25, i64 0}
!82 = !{!"llvm.loop.unroll.disable"}
!83 = !{!33, !19, i64 0}
!84 = distinct !{!84, !24}
!85 = !{!38, !10, i64 8}
!86 = distinct !{!86, !24}
!87 = distinct !{!87, !24}
!88 = !{!38, !10, i64 24}
!89 = !{!38, !7, i64 1}
!90 = distinct !{!90, !24}
!91 = distinct !{!91, !24}
!92 = distinct !{!92, !24}
!93 = distinct !{!93, !24}
!94 = !{!36, !8, i64 0}
!95 = !{!38, !10, i64 16}
!96 = !{!"", !20, i64 0, !10, i64 8, !8, i64 16, !8, i64 20, !18, i64 24, !18, i64 32, !18, i64 40, !8, i64 48, !7, i64 52, !7, i64 53}
!97 = !{!96, !8, i64 20}
!98 = !{!96, !18, i64 24}
!99 = !{!96, !18, i64 32}
!100 = !{!96, !8, i64 16}
!101 = !{!96, !10, i64 8}
!102 = !{!15, !14, i64 32}
!103 = !{!15, !13, i64 24}
!104 = !{!33, !13, i64 8}
!105 = !{!33, !14, i64 16}
!106 = !{!15, !14, i64 56}
!107 = !{!15, !14, i64 120}
!108 = !{!15, !13, i64 112}
!109 = distinct !{!109, !24}
!110 = !{!"p1 _ZTS14pair_encodemap", !10, i64 0}
!111 = !{!110, !110, i64 0}
!112 = !{!15, !13, i64 88}
!113 = !{!15, !13, i64 64}
!114 = !{!"pair_encodemap", !8, i64 0, !21, i64 4}
!115 = !{!114, !8, i64 0}
!116 = !{!114, !21, i64 4}
end_hunk_0
