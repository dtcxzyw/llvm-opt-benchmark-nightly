Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/unicodeobject?download=true
inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 53
begin_hunk_0_@PyUnicode_AsWideChar:bb.a
  %i.cb = getelementptr i8, ptr %1, i64 %i.ca
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph34
  %index37 = phi i64 [ 0, %vector.ph34 ], [ %index.next42, %vector.body36 ] ; 3 uses
  %i.cc = shl i64 %index37, 1
  %next.gep38 = getelementptr i8, ptr %.0.i34.i, i64 %i.cc ; 2 uses
  %i.cd = shl i64 %index37, 2
  %next.gep39 = getelementptr i8, ptr %1, i64 %i.cd ; 2 uses
  %i.ce = getelementptr i8, ptr %next.gep38, i64 8
  %wide.load40 = load <4 x i16>, ptr %next.gep38, align 2, !tbaa !240
  %wide.load41 = load <4 x i16>, ptr %i.ce, align 2, !tbaa !240
  %i.cf = zext <4 x i16> %wide.load40 to <4 x i32>
  %i.cg = zext <4 x i16> %wide.load41 to <4 x i32>
  %i.ch = getelementptr i8, ptr %next.gep39, i64 16
  store <4 x i32> %i.cf, ptr %next.gep39, align 4, !tbaa !43
  store <4 x i32> %i.cg, ptr %i.ch, align 4, !tbaa !43
  %index.next42 = add nuw i64 %index37, 8         ; 2 uses
  %i.ci = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.ci, label %middle.block43, label %vector.body36, !llvm.loop !458

middle.block43:                                   ; preds = %vector.body36
  %cmp.n44 = icmp eq i64 %.013, %n.vec35
  br i1 %cmp.n44, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i.preheader48

.lr.ph46.i.preheader48:                           ; preds = %.lr.ph46.i.preheader, %middle.block43
  %.045.i.ph = phi ptr [ %.0.i34.i, %.lr.ph46.i.preheader ], [ %i.by, %middle.block43 ]
  %.144.i.ph = phi i64 [ %.013, %.lr.ph46.i.preheader ], [ %i.bz, %middle.block43 ]
  %.11943.i.ph = phi ptr [ %1, %.lr.ph46.i.preheader ], [ %i.cb, %middle.block43 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader48, %.lr.ph46.i
  %.045.i = phi ptr [ %i.cm, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader48 ] ; 2 uses
  %.144.i = phi i64 [ %i.cj, %.lr.ph46.i ], [ %.144.i.ph, %.lr.ph46.i.preheader48 ]
  %.11943.i = phi ptr [ %i.cn, %.lr.ph46.i ], [ %.11943.i.ph, %.lr.ph46.i.preheader48 ] ; 2 uses
  %i.cj = add i64 %.144.i, -1                     ; 2 uses
  %i.ck = load i16, ptr %.045.i, align 2, !tbaa !240
  %i.cl = zext i16 %i.ck to i32
  store i32 %i.cl, ptr %.11943.i, align 4, !tbaa !43
  %i.cm = getelementptr i8, ptr %.045.i, i64 2
  %i.cn = getelementptr i8, ptr %.11943.i, i64 4
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i, !llvm.loop !459

unicode_copy_as_widechar.exit:                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph46.i, %middle.block, %middle.block43, %_PyUnicode_DATA.exit36.i, %_PyUnicode_DATA.exit28.i, %_PyUnicode_DATA.exit.i, %bb.f, %bb.d, %bb.b
  %.014 = phi i64 [ -1, %bb.b ], [ %i.h, %bb.f ], [ -1, %bb.d ], [ %.0, %_PyUnicode_DATA.exit.i ], [ %.0, %_PyUnicode_DATA.exit28.i ], [ %.0, %middle.block43 ], [ %.0, %_PyUnicode_DATA.exit36.i ], [ %.0, %middle.block ], [ %.0, %.lr.ph46.i ], [ %.0, %.lr.ph.i ], [ %.0, %.lr.ph.i.prol.loopexit ]
  ret i64 %.014
}

declare i32 @PyErr_BadArgument() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_AsWideCharString(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_PyErr_BadInternalCall(ptr noundef nonnull @.str.8, i32 noundef 3281) #33
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !229
  %i.c = getelementptr i8, ptr %.val, i64 168
  %.val22 = load i64, ptr %i.c, align 8, !tbaa !234
  %i.d = and i64 %.val22, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @PyErr_BadArgument() #33   ; 0 uses
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 16
  %.val23 = load i64, ptr %i.f, align 8, !tbaa !239 ; 4 uses
  %i.g = add i64 %.val23, 1                       ; 16 uses
  %i.h = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.h, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = shl nuw nsw i64 %i.g, 2                  ; 2 uses
  %i.j = tail call ptr @PyMem_Malloc(i64 noundef %i.i) #33 ; 15 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.e, %bb.f
  %i.l = tail call ptr @PyErr_NoMemory() #33      ; 0 uses
  br label %bb.t

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load i32, ptr %i.m, align 8              ; 5 uses
  %i.o = lshr i32 %i.n, 2
  %i.p = and i32 %i.o, 7
  %i.q = and i32 %i.n, 32
  %.not.i30.i = icmp eq i32 %i.q, 0               ; 3 uses
  switch i32 %i.p, label %bb.n [
    i32 4, label %bb.h
    i32 1, label %bb.k
  ]

bb.h:                                             ; preds = %bb.g
  br i1 %.not.i30.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = and i32 %i.n, 64
  %.not.i.i.i = icmp eq i32 %i.r, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %0, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.j:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %0, i64 56
  %.val4.i.i = load ptr, ptr %i.s, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.j, %bb.i
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.i ], [ %.val4.i.i, %bb.j ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 1 %.0.i.i, i64 %i.i, i1 false)
  br label %unicode_copy_as_widechar.exit

bb.k:                                             ; preds = %bb.g
  br i1 %.not.i30.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = and i32 %i.n, 64
  %.not.i.i23.i = icmp eq i32 %i.t, 0
  %.0.v.i.i24.i = select i1 %.not.i.i23.i, i64 56, i64 40
  %.0.i.i25.i = getelementptr i8, ptr %0, i64 %.0.v.i.i24.i
  br label %_PyUnicode_DATA.exit28.i

bb.m:                                             ; preds = %bb.k
  %i.u = getelementptr i8, ptr %0, i64 56
  %.val4.i27.i = load ptr, ptr %i.u, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit28.i

_PyUnicode_DATA.exit28.i:                         ; preds = %bb.m, %bb.l
  %.0.i26.i = phi ptr [ %.0.i.i25.i, %bb.l ], [ %.val4.i27.i, %bb.m ] ; 6 uses
  %.not2038.i = icmp eq i64 %i.g, 0
  br i1 %.not2038.i, label %unicode_copy_as_widechar.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %_PyUnicode_DATA.exit28.i
  %min.iters.check = icmp ult i64 %i.g, 16
  br i1 %min.iters.check, label %.lr.ph.i.preheader54, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.v = shl i64 %.val23, 2
  %i.w = getelementptr i8, ptr %i.j, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = getelementptr i8, ptr %.0.i26.i, i64 %i.g
  %bound0 = icmp ult ptr %i.j, %i.y
  %bound1 = icmp ult ptr %.0.i26.i, %i.x
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.preheader54, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, 2305843009213693944      ; 4 uses
  %i.z = getelementptr i8, ptr %.0.i26.i, i64 %n.vec
  %i.aa = and i64 %i.g, 7
  %i.ab = shl nuw nsw i64 %n.vec, 2
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.i26.i, i64 %index ; 2 uses
  %i.ad = shl i64 %index, 2
  %next.gep33 = getelementptr i8, ptr %i.j, i64 %i.ad ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep, align 1, !tbaa !237, !alias.scope !470
  %wide.load34 = load <4 x i8>, ptr %i.ae, align 1, !tbaa !237, !alias.scope !470
  %i.af = zext <4 x i8> %wide.load to <4 x i32>
  %i.ag = zext <4 x i8> %wide.load34 to <4 x i32>
  %i.ah = getelementptr i8, ptr %next.gep33, i64 16
  store <4 x i32> %i.af, ptr %next.gep33, align 4, !tbaa !43, !alias.scope !471, !noalias !470
  store <4 x i32> %i.ag, ptr %i.ah, align 4, !tbaa !43, !alias.scope !471, !noalias !470
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %unicode_copy_as_widechar.exit, label %.lr.ph.i.preheader54

.lr.ph.i.preheader54:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.01641.i.ph = phi ptr [ %.0.i26.i, %vector.memcheck ], [ %.0.i26.i, %.lr.ph.i.preheader ], [ %i.z, %middle.block ] ; 2 uses
  %.01740.i.ph = phi i64 [ %i.g, %vector.memcheck ], [ %i.g, %.lr.ph.i.preheader ], [ %i.aa, %middle.block ] ; 4 uses
  %.01839.i.ph = phi ptr [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.i.preheader ], [ %i.ac, %middle.block ] ; 2 uses
  %i.aj = add nsw i64 %.01740.i.ph, -1
  %xtraiter = and i64 %.01740.i.ph, 7             ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader54, %.lr.ph.i.prol
  %.01641.i.prol = phi ptr [ %i.an, %.lr.ph.i.prol ], [ %.01641.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %.01740.i.prol = phi i64 [ %i.ak, %.lr.ph.i.prol ], [ %.01740.i.ph, %.lr.ph.i.preheader54 ]
  %.01839.i.prol = phi ptr [ %i.ao, %.lr.ph.i.prol ], [ %.01839.i.ph, %.lr.ph.i.preheader54 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader54 ]
  %i.ak = add nsw i64 %.01740.i.prol, -1          ; 2 uses
  %i.al = load i8, ptr %.01641.i.prol, align 1, !tbaa !237
  %i.am = zext i8 %i.al to i32
  store i32 %i.am, ptr %.01839.i.prol, align 4, !tbaa !43
  %i.an = getelementptr i8, ptr %.01641.i.prol, i64 1 ; 2 uses
  %i.ao = getelementptr i8, ptr %.01839.i.prol, i64 4 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !466

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader54
  %.01641.i.unr = phi ptr [ %.01641.i.ph, %.lr.ph.i.preheader54 ], [ %i.an, %.lr.ph.i.prol ]
  %.01740.i.unr = phi i64 [ %.01740.i.ph, %.lr.ph.i.preheader54 ], [ %i.ak, %.lr.ph.i.prol ]
  %.01839.i.unr = phi ptr [ %.01839.i.ph, %.lr.ph.i.preheader54 ], [ %i.ao, %.lr.ph.i.prol ]
  %i.ap = icmp ult i64 %i.aj, 7
  br i1 %i.ap, label %unicode_copy_as_widechar.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.01641.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %.01641.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.01740.i = phi i64 [ %i.bs, %.lr.ph.i ], [ %.01740.i.unr, %.lr.ph.i.prol.loopexit ]
  %.01839.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %.01839.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.aq = load i8, ptr %.01641.i, align 1, !tbaa !237
  %i.ar = zext i8 %i.aq to i32
  store i32 %i.ar, ptr %.01839.i, align 4, !tbaa !43
  %i.as = getelementptr i8, ptr %.01641.i, i64 1
  %i.at = getelementptr i8, ptr %.01839.i, i64 4
  %i.au = load i8, ptr %i.as, align 1, !tbaa !237
  %i.av = zext i8 %i.au to i32
  store i32 %i.av, ptr %i.at, align 4, !tbaa !43
  %i.aw = getelementptr i8, ptr %.01641.i, i64 2
  %i.ax = getelementptr i8, ptr %.01839.i, i64 8
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !237
  %i.az = zext i8 %i.ay to i32
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !43
  %i.ba = getelementptr i8, ptr %.01641.i, i64 3
  %i.bb = getelementptr i8, ptr %.01839.i, i64 12
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !237
  %i.bd = zext i8 %i.bc to i32
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !43
  %i.be = getelementptr i8, ptr %.01641.i, i64 4
  %i.bf = getelementptr i8, ptr %.01839.i, i64 16
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !237
  %i.bh = zext i8 %i.bg to i32
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !43
  %i.bi = getelementptr i8, ptr %.01641.i, i64 5
  %i.bj = getelementptr i8, ptr %.01839.i, i64 20
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !237
  %i.bl = zext i8 %i.bk to i32
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !43
  %i.bm = getelementptr i8, ptr %.01641.i, i64 6
  %i.bn = getelementptr i8, ptr %.01839.i, i64 24
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !237
  %i.bp = zext i8 %i.bo to i32
  store i32 %i.bp, ptr %i.bn, align 4, !tbaa !43
  %i.bq = getelementptr i8, ptr %.01641.i, i64 7
  %i.br = getelementptr i8, ptr %.01839.i, i64 28
  %i.bs = add nsw i64 %.01740.i, -8               ; 2 uses
  %i.bt = load i8, ptr %i.bq, align 1, !tbaa !237
  %i.bu = zext i8 %i.bt to i32
  store i32 %i.bu, ptr %i.br, align 4, !tbaa !43
  %i.bv = getelementptr i8, ptr %.01641.i, i64 8
  %i.bw = getelementptr i8, ptr %.01839.i, i64 32
  %.not20.i.7 = icmp eq i64 %i.bs, 0
  br i1 %.not20.i.7, label %unicode_copy_as_widechar.exit, label %.lr.ph.i, !llvm.loop !467

bb.n:                                             ; preds = %bb.g
  br i1 %.not.i30.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = and i32 %i.n, 64
  %.not.i.i31.i = icmp eq i32 %i.bx, 0
  %.0.v.i.i32.i = select i1 %.not.i.i31.i, i64 56, i64 40
  %.0.i.i33.i = getelementptr i8, ptr %0, i64 %.0.v.i.i32.i
  br label %_PyUnicode_DATA.exit36.i

bb.p:                                             ; preds = %bb.n
  %i.by = getelementptr i8, ptr %0, i64 56
  %.val4.i35.i = load ptr, ptr %i.by, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit36.i

_PyUnicode_DATA.exit36.i:                         ; preds = %bb.p, %bb.o
  %.0.i34.i = phi ptr [ %.0.i.i33.i, %bb.o ], [ %.val4.i35.i, %bb.p ] ; 3 uses
  %.not42.i = icmp eq i64 %i.g, 0
  br i1 %.not42.i, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i.preheader

.lr.ph46.i.preheader:                             ; preds = %_PyUnicode_DATA.exit36.i
  %min.iters.check38 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check38, label %.lr.ph46.i.preheader53, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph46.i.preheader
  %n.vec40 = and i64 %i.g, 2305843009213693944    ; 4 uses
  %i.bz = shl nuw nsw i64 %n.vec40, 1
  %i.ca = getelementptr i8, ptr %.0.i34.i, i64 %i.bz
  %i.cb = and i64 %i.g, 7
  %i.cc = shl nuw nsw i64 %n.vec40, 2
  %i.cd = getelementptr i8, ptr %i.j, i64 %i.cc
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next47, %vector.body41 ] ; 3 uses
  %i.ce = shl i64 %index42, 1
  %next.gep43 = getelementptr i8, ptr %.0.i34.i, i64 %i.ce ; 2 uses
  %i.cf = shl i64 %index42, 2
  %next.gep44 = getelementptr i8, ptr %i.j, i64 %i.cf ; 2 uses
  %i.cg = getelementptr i8, ptr %next.gep43, i64 8
  %wide.load45 = load <4 x i16>, ptr %next.gep43, align 2, !tbaa !240
  %wide.load46 = load <4 x i16>, ptr %i.cg, align 2, !tbaa !240
  %i.ch = zext <4 x i16> %wide.load45 to <4 x i32>
  %i.ci = zext <4 x i16> %wide.load46 to <4 x i32>
  %i.cj = getelementptr i8, ptr %next.gep44, i64 16
  store <4 x i32> %i.ch, ptr %next.gep44, align 4, !tbaa !43
  store <4 x i32> %i.ci, ptr %i.cj, align 4, !tbaa !43
  %index.next47 = add nuw i64 %index42, 8         ; 2 uses
  %i.ck = icmp eq i64 %index.next47, %n.vec40
  br i1 %i.ck, label %middle.block48, label %vector.body41, !llvm.loop !468

middle.block48:                                   ; preds = %vector.body41
  %cmp.n49 = icmp eq i64 %i.g, %n.vec40
  br i1 %cmp.n49, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i.preheader53

.lr.ph46.i.preheader53:                           ; preds = %.lr.ph46.i.preheader, %middle.block48
  %.045.i.ph = phi ptr [ %.0.i34.i, %.lr.ph46.i.preheader ], [ %i.ca, %middle.block48 ]
  %.144.i.ph = phi i64 [ %i.g, %.lr.ph46.i.preheader ], [ %i.cb, %middle.block48 ]
  %.11943.i.ph = phi ptr [ %i.j, %.lr.ph46.i.preheader ], [ %i.cd, %middle.block48 ]
  br label %.lr.ph46.i

.lr.ph46.i:                                       ; preds = %.lr.ph46.i.preheader53, %.lr.ph46.i
  %.045.i = phi ptr [ %i.co, %.lr.ph46.i ], [ %.045.i.ph, %.lr.ph46.i.preheader53 ] ; 2 uses
  %.144.i = phi i64 [ %i.cl, %.lr.ph46.i ], [ %.144.i.ph, %.lr.ph46.i.preheader53 ]
  %.11943.i = phi ptr [ %i.cp, %.lr.ph46.i ], [ %.11943.i.ph, %.lr.ph46.i.preheader53 ] ; 2 uses
  %i.cl = add nsw i64 %.144.i, -1                 ; 2 uses
  %i.cm = load i16, ptr %.045.i, align 2, !tbaa !240
  %i.cn = zext i16 %i.cm to i32
  store i32 %i.cn, ptr %.11943.i, align 4, !tbaa !43
  %i.co = getelementptr i8, ptr %.045.i, i64 2
  %i.cp = getelementptr i8, ptr %.11943.i, i64 4
  %.not.i = icmp eq i64 %i.cl, 0
  br i1 %.not.i, label %unicode_copy_as_widechar.exit, label %.lr.ph46.i, !llvm.loop !469

unicode_copy_as_widechar.exit:                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.lr.ph46.i, %middle.block, %middle.block48, %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit28.i, %_PyUnicode_DATA.exit36.i
  %.not20 = icmp eq ptr %1, null
  br i1 %.not20, label %bb.r, label %bb.q

bb.q:                                             ; preds = %unicode_copy_as_widechar.exit
  store i64 %.val23, ptr %1, align 8, !tbaa !226
  br label %bb.t

bb.r:                                             ; preds = %unicode_copy_as_widechar.exit
  %i.cq = tail call i64 @wcslen(ptr noundef nonnull %i.j) #34
  %.not21 = icmp eq i64 %i.cq, %.val23
  br i1 %.not21, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @PyMem_Free(ptr noundef nonnull %i.j) #33
  %i.cr = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.cr, ptr noundef nonnull @.str.37) #33
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.r, %bb.s, %.thread, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %.thread ], [ null, %bb.d ], [ null, %bb.s ], [ %i.j, %bb.r ], [ %i.j, %bb.q ]
  ret ptr %.0
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 131073) i32 @_PyUnicode_WideCharString_Converter(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !258
  tail call void @PyMem_Free(ptr noundef %i.b) #33
  store ptr null, ptr %1, align 8, !tbaa !258
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.c, align 8, !tbaa !229 ; 2 uses
  %i.d = getelementptr i8, ptr %.val10, i64 168
  %.val11 = load i64, ptr %i.d, align 8, !tbaa !234
  %i.e = and i64 %.val11, 268435456
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store ptr %i.f, ptr %1, align 8, !tbaa !258
  %i.g = icmp eq ptr %i.f, null
  %. = select i1 %i.g, i32 0, i32 131072
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !227
  %i.i = getelementptr i8, ptr %.val10, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !261
  %i.k = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.h, ptr noundef nonnull @.str.38, ptr noundef %i.j) #33 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ %., %bb.d ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 131073) i32 @_PyUnicode_WideCharString_Opt_Converter(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !258
  tail call void @PyMem_Free(ptr noundef %i.b) #33
  store ptr null, ptr %1, align 8, !tbaa !258
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, @_Py_NoneStruct
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %1, align 8, !tbaa !258
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val12 = load ptr, ptr %i.d, align 8, !tbaa !229 ; 2 uses
  %i.e = getelementptr i8, ptr %.val12, i64 168
  %.val13 = load i64, ptr %i.e, align 8, !tbaa !234
  %i.f = and i64 %.val13, 268435456
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @PyUnicode_AsWideCharString(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  store ptr %i.g, ptr %1, align 8, !tbaa !258
  %i.h = icmp eq ptr %i.g, null
  %. = select i1 %i.h, i32 0, i32 131072
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !227
  %i.j = getelementptr i8, ptr %.val12, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !261
  %i.l = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.i, ptr noundef nonnull @.str.39, ptr noundef %i.k) #33 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ %., %bb.f ], [ 0, %bb.g ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @PyUnicode_FromOrdinal(i32 noundef %0) local_unnamed_addr #1 {
bb.a:
  %or.cond = icmp ugt i32 %0, 1114111
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !227
  tail call void @PyErr_SetString(ptr noundef %i.a, ptr noundef nonnull @.str.40) #33
  br label %unicode_char.exit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 256
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = zext nneg i32 %0 to i64                  ; 2 uses
  %i.d = getelementptr [48 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 105088), i64 %i.c
  %i.e = getelementptr [64 x i8], ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 111232), i64 %i.c
  %i.f = getelementptr i8, ptr %i.e, i64 -8192
  %.not.i = icmp samesign ult i32 %0, 128
  %i.g = select i1 %.not.i, ptr %i.d, ptr %i.f
  br label %unicode_char.exit

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @PyUnicode_New(i64 noundef 1, i32 noundef %0), !inline_history !8 ; 8 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %unicode_char.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr i8, ptr %i.h, i64 32
  %i.k = load i32, ptr %i.j, align 8              ; 5 uses
  %i.l = and i32 %i.k, 28
  %i.m = icmp eq i32 %i.l, 8
  br i1 %i.m, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = trunc i32 %0 to i16
  %i.o = and i32 %i.k, 32
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = and i32 %i.k, 64
  %.not.i.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr i8, ptr %i.h, i64 56
  %.val4.i.i = load ptr, ptr %i.q, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.i, %bb.h
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.h ], [ %.val4.i.i, %bb.i ]
  store i16 %i.n, ptr %.0.i.i, align 2, !tbaa !240
  br label %unicode_char.exit

bb.j:                                             ; preds = %bb.f
  %i.r = and i32 %i.k, 32
  %.not.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not.i13.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.s = and i32 %i.k, 64
  %.not.i.i14.i = icmp eq i32 %i.s, 0
  %.0.v.i.i15.i = select i1 %.not.i.i14.i, i64 56, i64 40
  %.0.i.i16.i = getelementptr i8, ptr %i.h, i64 %.0.v.i.i15.i
  br label %_PyUnicode_DATA.exit19.i

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr i8, ptr %i.h, i64 56
  %.val4.i18.i = load ptr, ptr %i.t, align 8, !tbaa !237
  br label %_PyUnicode_DATA.exit19.i

_PyUnicode_DATA.exit19.i:                         ; preds = %bb.l, %bb.k
  %.0.i17.i = phi ptr [ %.0.i.i16.i, %bb.k ], [ %.val4.i18.i, %bb.l ]
end_hunk_0
begin_hunk_1_@_PyUnicode_EncodeUTF32:bb.a

.lr.ph59.i.prol.loopexit:                         ; preds = %.lr.ph59.i.prol, %.lr.ph59.i.preheader
  %.258.i.unr = phi ptr [ %.0.i, %.lr.ph59.i.preheader ], [ %i.dv, %.lr.ph59.i.prol ]
  %.24657.i.unr = phi ptr [ %.0211, %.lr.ph59.i.preheader ], [ %i.dw, %.lr.ph59.i.prol ]
  %.lcssa539.unr = phi ptr [ poison, %.lr.ph59.i.preheader ], [ %i.dv, %.lr.ph59.i.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph59.i.preheader ], [ %i.dw, %.lr.ph59.i.prol ]
  %i.dx = icmp ult i64 %i.db, 4
  br i1 %i.dx, label %.preheader.loopexit.i, label %.lr.ph59.i

.preheader.loopexit.i:                            ; preds = %.lr.ph59.i, %.lr.ph59.i.prol.loopexit
  %.lcssa539 = phi ptr [ %.lcssa539.unr, %.lr.ph59.i.prol.loopexit ], [ %i.gb, %.lr.ph59.i ] ; 2 uses
  %.lcssa = phi ptr [ %.lcssa.unr, %.lr.ph59.i.prol.loopexit ], [ %i.gc, %.lr.ph59.i ]
  %.pre.i = ptrtoaddr ptr %.lcssa539 to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.n
  %.2.lcssa73.pre-phi.i = phi i64 [ %.pre.i, %.preheader.loopexit.i ], [ %i.ad, %bb.n ] ; 2 uses
  %.246.lcssa.i = phi ptr [ %.lcssa, %.preheader.loopexit.i ], [ %.0211, %bb.n ] ; 6 uses
  %.2.lcssa.i = phi ptr [ %.lcssa539, %.preheader.loopexit.i ], [ %.0.i, %bb.n ] ; 7 uses
  %i.dy = icmp ult ptr %.2.lcssa.i, %i.ae
  br i1 %i.dy, label %.lr.ph64.preheader.i, label %ucs1lib_utf32_encode.exit

.lr.ph64.preheader.i:                             ; preds = %.preheader.i
  %i.dz = add i64 %.val122, %i.ad                 ; 2 uses
  %i.ea = sub i64 %i.dz, %.2.lcssa73.pre-phi.i    ; 4 uses
  %scevgep74.i = getelementptr i8, ptr %.2.lcssa.i, i64 %i.ea ; 2 uses
  %min.iters.check521 = icmp ult i64 %i.ea, 16
  br i1 %min.iters.check521, label %.lr.ph64.i.preheader, label %vector.memcheck522

vector.memcheck522:                               ; preds = %.lr.ph64.preheader.i
  %i.eb = sub i64 %i.dz, %.2.lcssa73.pre-phi.i
  %i.ec = shl i64 %i.eb, 2
  %i.ed = getelementptr i8, ptr %.246.lcssa.i, i64 %i.ec
  %bound0523 = icmp ult ptr %.246.lcssa.i, %scevgep74.i
  %bound1524 = icmp ult ptr %.2.lcssa.i, %i.ed
  %found.conflict525 = and i1 %bound0523, %bound1524
  br i1 %found.conflict525, label %.lr.ph64.i.preheader, label %vector.ph526

vector.ph526:                                     ; preds = %vector.memcheck522
  %n.vec527 = and i64 %i.ea, -8                   ; 4 uses
  %i.ee = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec527
  %i.ef = shl i64 %n.vec527, 2
  %i.eg = getelementptr i8, ptr %.246.lcssa.i, i64 %i.ef
  br label %vector.body528

vector.body528:                                   ; preds = %vector.body528, %vector.ph526
  %index529 = phi i64 [ 0, %vector.ph526 ], [ %index.next534, %vector.body528 ] ; 3 uses
  %next.gep530 = getelementptr i8, ptr %.2.lcssa.i, i64 %index529 ; 2 uses
  %i.eh = shl i64 %index529, 2
  %next.gep531 = getelementptr i8, ptr %.246.lcssa.i, i64 %i.eh ; 2 uses
  %i.ei = getelementptr i8, ptr %next.gep530, i64 4
  %wide.load532 = load <4 x i8>, ptr %next.gep530, align 1, !tbaa !237, !alias.scope !554
  %wide.load533 = load <4 x i8>, ptr %i.ei, align 1, !tbaa !237, !alias.scope !554
  %i.ej = zext <4 x i8> %wide.load532 to <4 x i32>
  %i.ek = zext <4 x i8> %wide.load533 to <4 x i32>
  %i.el = shl nuw <4 x i32> %i.ej, splat (i32 24)
  %i.em = shl nuw <4 x i32> %i.ek, splat (i32 24)
  %i.en = getelementptr i8, ptr %next.gep531, i64 16
  store <4 x i32> %i.el, ptr %next.gep531, align 4, !tbaa !43, !alias.scope !555, !noalias !554
  store <4 x i32> %i.em, ptr %i.en, align 4, !tbaa !43, !alias.scope !555, !noalias !554
  %index.next534 = add nuw i64 %index529, 8       ; 2 uses
  %i.eo = icmp eq i64 %index.next534, %n.vec527
  br i1 %i.eo, label %middle.block535, label %vector.body528, !llvm.loop !530

middle.block535:                                  ; preds = %vector.body528
  %cmp.n536 = icmp eq i64 %i.ea, %n.vec527
  br i1 %cmp.n536, label %ucs1lib_utf32_encode.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %vector.memcheck522, %.lr.ph64.preheader.i, %middle.block535
  %.363.i.ph = phi ptr [ %.2.lcssa.i, %vector.memcheck522 ], [ %.2.lcssa.i, %.lr.ph64.preheader.i ], [ %i.ee, %middle.block535 ]
  %.34762.i.ph = phi ptr [ %.246.lcssa.i, %vector.memcheck522 ], [ %.246.lcssa.i, %.lr.ph64.preheader.i ], [ %i.eg, %middle.block535 ]
  br label %.lr.ph64.i

.lr.ph59.i:                                       ; preds = %.lr.ph59.i.prol.loopexit, %.lr.ph59.i
  %.258.i = phi ptr [ %i.gb, %.lr.ph59.i ], [ %.258.i.unr, %.lr.ph59.i.prol.loopexit ] ; 9 uses
  %.24657.i = phi ptr [ %i.gc, %.lr.ph59.i ], [ %.24657.i.unr, %.lr.ph59.i.prol.loopexit ] ; 9 uses
  %i.ep = load i8, ptr %.258.i, align 1, !tbaa !237
  %i.eq = zext i8 %i.ep to i32
  %i.er = shl nuw i32 %i.eq, 24
  store i32 %i.er, ptr %.24657.i, align 4, !tbaa !43
  %i.es = getelementptr i8, ptr %.258.i, i64 1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !237
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw i32 %i.eu, 24
  %i.ew = getelementptr i8, ptr %.24657.i, i64 4
  store i32 %i.ev, ptr %i.ew, align 4, !tbaa !43
  %i.ex = getelementptr i8, ptr %.258.i, i64 2
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !237
  %i.ez = zext i8 %i.ey to i32
  %i.fa = shl nuw i32 %i.ez, 24
  %i.fb = getelementptr i8, ptr %.24657.i, i64 8
  store i32 %i.fa, ptr %i.fb, align 4, !tbaa !43
  %i.fc = getelementptr i8, ptr %.258.i, i64 3
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !237
  %i.fe = zext i8 %i.fd to i32
  %i.ff = shl nuw i32 %i.fe, 24
  %i.fg = getelementptr i8, ptr %.24657.i, i64 12
  store i32 %i.ff, ptr %i.fg, align 4, !tbaa !43
  %i.fh = getelementptr i8, ptr %.258.i, i64 4
  %i.fi = getelementptr i8, ptr %.24657.i, i64 16
  %i.fj = load i8, ptr %i.fh, align 1, !tbaa !237
  %i.fk = zext i8 %i.fj to i32
  %i.fl = shl nuw i32 %i.fk, 24
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !43
  %i.fm = getelementptr i8, ptr %.258.i, i64 5
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !237
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw i32 %i.fo, 24
  %i.fq = getelementptr i8, ptr %.24657.i, i64 20
  store i32 %i.fp, ptr %i.fq, align 4, !tbaa !43
  %i.fr = getelementptr i8, ptr %.258.i, i64 6
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !237
  %i.ft = zext i8 %i.fs to i32
  %i.fu = shl nuw i32 %i.ft, 24
  %i.fv = getelementptr i8, ptr %.24657.i, i64 24
  store i32 %i.fu, ptr %i.fv, align 4, !tbaa !43
  %i.fw = getelementptr i8, ptr %.258.i, i64 7
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !237
  %i.fy = zext i8 %i.fx to i32
  %i.fz = shl nuw i32 %i.fy, 24
  %i.ga = getelementptr i8, ptr %.24657.i, i64 28
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !43
  %i.gb = getelementptr i8, ptr %.258.i, i64 8    ; 3 uses
  %i.gc = getelementptr i8, ptr %.24657.i, i64 32 ; 2 uses
  %i.gd = icmp ult ptr %i.gb, %i.ag
  br i1 %i.gd, label %.lr.ph59.i, label %.preheader.loopexit.i, !llvm.loop !531

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i
  %.363.i = phi ptr [ %i.ge, %.lr.ph64.i ], [ %.363.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %.34762.i = phi ptr [ %i.gi, %.lr.ph64.i ], [ %.34762.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %i.ge = getelementptr i8, ptr %.363.i, i64 1    ; 2 uses
  %i.gf = load i8, ptr %.363.i, align 1, !tbaa !237
  %i.gg = zext i8 %i.gf to i32
  %i.gh = shl nuw i32 %i.gg, 24
  %i.gi = getelementptr i8, ptr %.34762.i, i64 4
  store i32 %i.gh, ptr %.34762.i, align 4, !tbaa !43
  %exitcond75.not.i = icmp eq ptr %i.ge, %scevgep74.i
  br i1 %exitcond75.not.i, label %ucs1lib_utf32_encode.exit, label %.lr.ph64.i, !llvm.loop !532

bb.o:                                             ; preds = %bb.g
  %i.gj = tail call ptr @PyBytesWriter_Create(i64 noundef %i.x) #33 ; 6 uses
  %i.gk = icmp eq ptr %i.gj, null
  br i1 %i.gk, label %ucs1lib_utf32_encode.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.gl = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.gj) #33 ; 3 uses
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  store i32 65279, ptr %i.gl, align 4, !tbaa !43
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0207 = phi ptr [ %i.gm, %bb.q ], [ %i.gl, %bb.p ] ; 2 uses
  %i.gn = icmp eq i64 %.val122, 0
  br i1 %i.gn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.go = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.gj) #33
  br label %ucs1lib_utf32_encode.exit

bb.t:                                             ; preds = %bb.r
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.72, ptr @.str.76
  %switch.selectcmp113 = icmp eq i32 %2, -1
  %switch.select114 = select i1 %switch.selectcmp113, ptr @.str.71, ptr %switch.select ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8, !tbaa !227
  %i.gp = icmp sgt i64 %.val122, 0
  br i1 %i.gp, label %.lr.ph, label %Py_XDECREF.exit190

.lr.ph:                                           ; preds = %bb.t
  %i.gq = icmp eq i32 %i.k, 2
  %i.gr = getelementptr [4 x i8], ptr %.0.i, i64 %.val122 ; 5 uses
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = getelementptr [2 x i8], ptr %.0.i, i64 %.val122 ; 5 uses
  %i.gu = ptrtoint ptr %i.gt to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %raise_encode_exception.exit
  %.077271 = phi i64 [ 0, %.lr.ph ], [ %i.ll, %raise_encode_exception.exit ] ; 4 uses
  %.1208270 = phi ptr [ %.0207, %.lr.ph ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.gv = sub i64 %.val122, %.077271              ; 11 uses
  %i.gw = and i64 %i.gv, -4                       ; 2 uses
  br i1 %i.gq, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.gx = getelementptr [2 x i8], ptr %.0.i, i64 %.077271 ; 6 uses
  %i.gy = getelementptr [2 x i8], ptr %i.gx, i64 %i.gw ; 3 uses
  %i.gz = icmp ult ptr %i.gx, %i.gy               ; 2 uses
  br i1 %i.v, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.gz, label %.lr.ph.i127, label %._crit_edge.i

.lr.ph.i127:                                      ; preds = %bb.w, %bb.x
  %.065107.i = phi ptr [ %i.hi, %bb.x ], [ %.1208270, %bb.w ] ; 6 uses
  %.070106.i = phi ptr [ %i.hh, %bb.x ], [ %i.gx, %bb.w ] ; 6 uses
  %3 = load i16, ptr %.070106.i, align 2, !tbaa !240
  %4 = zext i16 %3 to i32                         ; 2 uses
  %5 = xor i32 %4, 55296
  %6 = getelementptr i8, ptr %.070106.i, i64 2
  %7 = load i16, ptr %6, align 2, !tbaa !240      ; 2 uses
  %8 = xor i16 %7, -10240
  %9 = zext i16 %8 to i32
  %10 = and i32 %5, %9
  %11 = getelementptr i8, ptr %.070106.i, i64 4
  %12 = load i16, ptr %11, align 2, !tbaa !240    ; 2 uses
  %13 = xor i16 %12, -10240
  %14 = zext i16 %13 to i32
  %15 = and i32 %10, %14
  %16 = getelementptr i8, ptr %.070106.i, i64 6
  %17 = load i16, ptr %16, align 2, !tbaa !240    ; 2 uses
  %18 = xor i16 %17, -10240
  %19 = zext i16 %18 to i32
  %20 = and i32 %15, %19
  %i.ha = icmp samesign ult i32 %20, 2048
  br i1 %i.ha, label %._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i127
  store i32 %4, ptr %.065107.i, align 4, !tbaa !43
  %i.hb = zext i16 %7 to i32
  %i.hc = getelementptr i8, ptr %.065107.i, i64 4
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !43
  %i.hd = zext i16 %12 to i32
  %i.he = getelementptr i8, ptr %.065107.i, i64 8
  store i32 %i.hd, ptr %i.he, align 4, !tbaa !43
  %i.hf = zext i16 %17 to i32
  %i.hg = getelementptr i8, ptr %.065107.i, i64 12
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !43
  %i.hh = getelementptr i8, ptr %.070106.i, i64 8 ; 3 uses
  %i.hi = getelementptr i8, ptr %.065107.i, i64 16 ; 2 uses
  %i.hj = icmp ult ptr %i.hh, %i.gy
  br i1 %i.hj, label %.lr.ph.i127, label %._crit_edge.i, !llvm.loop !533

._crit_edge.i:                                    ; preds = %bb.x, %.lr.ph.i127, %bb.w
  %.070.lcssa.i = phi ptr [ %i.gx, %bb.w ], [ %i.hh, %bb.x ], [ %.070106.i, %.lr.ph.i127 ] ; 2 uses
  %.065.lcssa.i = phi ptr [ %.1208270, %bb.w ], [ %i.hi, %bb.x ], [ %.065107.i, %.lr.ph.i127 ] ; 2 uses
  %i.hk = icmp ult ptr %.070.lcssa.i, %i.gt
  br i1 %i.hk, label %.lr.ph115.i, label %ucs2lib_utf32_encode.exit

.lr.ph115.i:                                      ; preds = %._crit_edge.i, %bb.y
  %.166113.i = phi ptr [ %i.hp, %bb.y ], [ %.065.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.171112.i = phi ptr [ %i.hl, %bb.y ], [ %.070.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.hl = getelementptr i8, ptr %.171112.i, i64 2 ; 3 uses
  %i.hm = load i16, ptr %.171112.i, align 2, !tbaa !240
  %i.hn = zext i16 %i.hm to i32                   ; 2 uses
  %i.ho = and i32 %i.hn, 63488
  %.not99.i = icmp eq i32 %i.ho, 55296
  br i1 %.not99.i, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph115.i
  %i.hp = getelementptr i8, ptr %.166113.i, i64 4 ; 2 uses
  store i32 %i.hn, ptr %.166113.i, align 4, !tbaa !43
  %i.hq = icmp ult ptr %i.hl, %i.gt
  br i1 %i.hq, label %.lr.ph115.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !534

bb.z:                                             ; preds = %bb.v
  br i1 %i.gz, label %.lr.ph120.i, label %._crit_edge121.i

.lr.ph120.i:                                      ; preds = %bb.z, %bb.aa
  %.4118.i = phi ptr [ %i.id, %bb.aa ], [ %.1208270, %bb.z ] ; 6 uses
  %.373117.i = phi ptr [ %i.ic, %bb.aa ], [ %i.gx, %bb.z ] ; 3 uses
  %i.hr = load <4 x i16>, ptr %.373117.i, align 2, !tbaa !240 ; 5 uses
  %i.hs = xor <4 x i16> %i.hr, splat (i16 -10240)
  %i.ht = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.hs)
  %i.hu = icmp ult i16 %i.ht, 2048
  br i1 %i.hu, label %._crit_edge121.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph120.i
  %i.hv = extractelement <4 x i16> %i.hr, i64 0
  %trunc.i.i = zext i16 %i.hv to i32
  %rev.i.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i.i)
  store i32 %rev.i.i, ptr %.4118.i, align 4, !tbaa !43
  %i.hw = extractelement <4 x i16> %i.hr, i64 1
  %trunc.i80.i = zext i16 %i.hw to i32
  %rev.i81.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i80.i)
  %i.hx = getelementptr i8, ptr %.4118.i, i64 4
  store i32 %rev.i81.i, ptr %i.hx, align 4, !tbaa !43
  %i.hy = extractelement <4 x i16> %i.hr, i64 2
  %trunc.i82.i = zext i16 %i.hy to i32
  %rev.i83.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i82.i)
  %i.hz = getelementptr i8, ptr %.4118.i, i64 8
  store i32 %rev.i83.i, ptr %i.hz, align 4, !tbaa !43
  %i.ia = extractelement <4 x i16> %i.hr, i64 3
  %trunc.i84.i = zext i16 %i.ia to i32
  %rev.i85.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i84.i)
  %i.ib = getelementptr i8, ptr %.4118.i, i64 12
  store i32 %rev.i85.i, ptr %i.ib, align 4, !tbaa !43
  %i.ic = getelementptr i8, ptr %.373117.i, i64 8 ; 3 uses
  %i.id = getelementptr i8, ptr %.4118.i, i64 16  ; 2 uses
  %i.ie = icmp ult ptr %i.ic, %i.gy
  br i1 %i.ie, label %.lr.ph120.i, label %._crit_edge121.i, !llvm.loop !535

._crit_edge121.i:                                 ; preds = %bb.aa, %.lr.ph120.i, %bb.z
  %.373.lcssa.i = phi ptr [ %i.gx, %bb.z ], [ %i.ic, %bb.aa ], [ %.373117.i, %.lr.ph120.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.1208270, %bb.z ], [ %i.id, %bb.aa ], [ %.4118.i, %.lr.ph120.i ] ; 2 uses
  %i.if = icmp ult ptr %.373.lcssa.i, %i.gt
  br i1 %i.if, label %.lr.ph130.i, label %ucs2lib_utf32_encode.exit

.lr.ph130.i:                                      ; preds = %._crit_edge121.i, %bb.ab
  %.5128.i = phi ptr [ %i.ik, %bb.ab ], [ %.4.lcssa.i, %._crit_edge121.i ] ; 3 uses
  %.474127.i = phi ptr [ %i.ig, %bb.ab ], [ %.373.lcssa.i, %._crit_edge121.i ] ; 2 uses
  %i.ig = getelementptr i8, ptr %.474127.i, i64 2 ; 3 uses
  %i.ih = load i16, ptr %.474127.i, align 2, !tbaa !240
  %i.ii = zext i16 %i.ih to i32                   ; 2 uses
  %i.ij = and i32 %i.ii, 63488
  %.not100.i = icmp eq i32 %i.ij, 55296
  br i1 %.not100.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph130.i
  %rev.i87.i = call noundef i32 @llvm.bswap.i32(i32 %i.ii)
  %i.ik = getelementptr i8, ptr %.5128.i, i64 4   ; 2 uses
  store i32 %rev.i87.i, ptr %.5128.i, align 4, !tbaa !43
  %i.il = icmp ult ptr %i.ig, %i.gt
  br i1 %i.il, label %.lr.ph130.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !536

.loopexit.i:                                      ; preds = %.lr.ph115.i, %.lr.ph130.i
  %.676.i = phi ptr [ %i.ig, %.lr.ph130.i ], [ %i.hl, %.lr.ph115.i ]
  %.9.i = phi ptr [ %.5128.i, %.lr.ph130.i ], [ %.166113.i, %.lr.ph115.i ]
  %i.im = ptrtoint ptr %.676.i to i64
  %i.in = sub i64 %i.gu, %i.im
  %i.io = ashr exact i64 %i.in, 1
  %.neg.i = xor i64 %i.io, -1
  %i.ip = add i64 %i.gv, %.neg.i
  br label %ucs2lib_utf32_encode.exit

bb.ac:                                            ; preds = %bb.u
  %i.iq = getelementptr [4 x i8], ptr %.0.i, i64 %.077271 ; 6 uses
  %i.ir = getelementptr [4 x i8], ptr %i.iq, i64 %i.gw ; 3 uses
  %i.is = icmp ult ptr %i.iq, %i.ir               ; 2 uses
  br i1 %i.v, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.is, label %.lr.ph.i138, label %._crit_edge.i129

.lr.ph.i138:                                      ; preds = %bb.ad, %bb.ae
  %.06599.i = phi ptr [ %i.jj, %bb.ae ], [ %.1208270, %bb.ad ] ; 6 uses
  %.07098.i = phi ptr [ %i.ji, %bb.ae ], [ %i.iq, %bb.ad ] ; 7 uses
  %i.it = load <4 x i32>, ptr %.07098.i, align 4, !tbaa !43
  %i.iu = and <4 x i32> %i.it, <i32 63488, i32 -1, i32 -1, i32 -1>
  %i.iv = xor <4 x i32> %i.iu, splat (i32 55296)
  %i.iw = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.iv)
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %._crit_edge.i129, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i138
  %i.iy = load i32, ptr %.07098.i, align 4, !tbaa !43
  %i.iz = getelementptr i8, ptr %.07098.i, i64 12
  %i.ja = getelementptr i8, ptr %.07098.i, i64 8
  %i.jb = getelementptr i8, ptr %.07098.i, i64 4
  store i32 %i.iy, ptr %.06599.i, align 4, !tbaa !43
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !43
  %i.jd = getelementptr i8, ptr %.06599.i, i64 4
  store i32 %i.jc, ptr %i.jd, align 4, !tbaa !43
  %i.je = load i32, ptr %i.ja, align 4, !tbaa !43
  %i.jf = getelementptr i8, ptr %.06599.i, i64 8
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !43
  %i.jg = load i32, ptr %i.iz, align 4, !tbaa !43
  %i.jh = getelementptr i8, ptr %.06599.i, i64 12
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !43
  %i.ji = getelementptr i8, ptr %.07098.i, i64 16 ; 3 uses
  %i.jj = getelementptr i8, ptr %.06599.i, i64 16 ; 2 uses
  %i.jk = icmp ult ptr %i.ji, %i.ir
  br i1 %i.jk, label %.lr.ph.i138, label %._crit_edge.i129, !llvm.loop !537

._crit_edge.i129:                                 ; preds = %bb.ae, %.lr.ph.i138, %bb.ad
  %.070.lcssa.i130 = phi ptr [ %i.iq, %bb.ad ], [ %i.ji, %bb.ae ], [ %.07098.i, %.lr.ph.i138 ] ; 2 uses
  %.065.lcssa.i131 = phi ptr [ %.1208270, %bb.ad ], [ %i.jj, %bb.ae ], [ %.06599.i, %.lr.ph.i138 ] ; 2 uses
  %i.jl = icmp ult ptr %.070.lcssa.i130, %i.gr
  br i1 %i.jl, label %.lr.ph107.i, label %ucs2lib_utf32_encode.exit

.lr.ph107.i:                                      ; preds = %._crit_edge.i129, %bb.af
  %.166105.i = phi ptr [ %i.jp, %bb.af ], [ %.065.lcssa.i131, %._crit_edge.i129 ] ; 3 uses
  %.171104.i = phi ptr [ %i.jm, %bb.af ], [ %.070.lcssa.i130, %._crit_edge.i129 ] ; 2 uses
  %i.jm = getelementptr i8, ptr %.171104.i, i64 4 ; 3 uses
  %i.jn = load i32, ptr %.171104.i, align 4, !tbaa !43 ; 2 uses
  %i.jo = and i32 %i.jn, -2048
  %.not91.i = icmp eq i32 %i.jo, 55296
  br i1 %.not91.i, label %.loopexit.i134, label %bb.af

bb.af:                                            ; preds = %.lr.ph107.i
  %i.jp = getelementptr i8, ptr %.166105.i, i64 4 ; 2 uses
  store i32 %i.jn, ptr %.166105.i, align 4, !tbaa !43
  %i.jq = icmp ult ptr %i.jm, %i.gr
  br i1 %i.jq, label %.lr.ph107.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !538

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.is, label %.lr.ph112.i, label %._crit_edge113.i

.lr.ph112.i:                                      ; preds = %bb.ag, %bb.ah
  %.4110.i = phi ptr [ %i.kl, %bb.ah ], [ %.1208270, %bb.ag ] ; 6 uses
  %.373109.i = phi ptr [ %i.kk, %bb.ah ], [ %i.iq, %bb.ag ] ; 7 uses
  %i.jr = load <4 x i32>, ptr %.373109.i, align 4, !tbaa !43
  %i.js = and <4 x i32> %i.jr, <i32 63488, i32 -1, i32 -1, i32 -1>
  %i.jt = xor <4 x i32> %i.js, splat (i32 55296)
  %i.ju = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.jt)
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %._crit_edge113.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph112.i
  %i.jw = load i32, ptr %.373109.i, align 4, !tbaa !43
  %i.jx = getelementptr i8, ptr %.373109.i, i64 12
  %i.jy = getelementptr i8, ptr %.373109.i, i64 8
  %i.jz = getelementptr i8, ptr %.373109.i, i64 4
  %i.ka = call noundef i32 @llvm.bswap.i32(i32 %i.jw)
  store i32 %i.ka, ptr %.4110.i, align 4, !tbaa !43
  %i.kb = load i32, ptr %i.jz, align 4, !tbaa !43
  %i.kc = call noundef i32 @llvm.bswap.i32(i32 %i.kb)
  %i.kd = getelementptr i8, ptr %.4110.i, i64 4
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !43
  %i.ke = load i32, ptr %i.jy, align 4, !tbaa !43
  %i.kf = call noundef i32 @llvm.bswap.i32(i32 %i.ke)
  %i.kg = getelementptr i8, ptr %.4110.i, i64 8
  store i32 %i.kf, ptr %i.kg, align 4, !tbaa !43
  %i.kh = load i32, ptr %i.jx, align 4, !tbaa !43
  %i.ki = call noundef i32 @llvm.bswap.i32(i32 %i.kh)
  %i.kj = getelementptr i8, ptr %.4110.i, i64 12
  store i32 %i.ki, ptr %i.kj, align 4, !tbaa !43
  %i.kk = getelementptr i8, ptr %.373109.i, i64 16 ; 3 uses
  %i.kl = getelementptr i8, ptr %.4110.i, i64 16  ; 2 uses
  %i.km = icmp ult ptr %i.kk, %i.ir
  br i1 %i.km, label %.lr.ph112.i, label %._crit_edge113.i, !llvm.loop !539

._crit_edge113.i:                                 ; preds = %bb.ah, %.lr.ph112.i, %bb.ag
  %.373.lcssa.i139 = phi ptr [ %i.iq, %bb.ag ], [ %i.kk, %bb.ah ], [ %.373109.i, %.lr.ph112.i ] ; 2 uses
  %.4.lcssa.i140 = phi ptr [ %.1208270, %bb.ag ], [ %i.kl, %bb.ah ], [ %.4110.i, %.lr.ph112.i ] ; 2 uses
  %i.kn = icmp ult ptr %.373.lcssa.i139, %i.gr
end_hunk_1
