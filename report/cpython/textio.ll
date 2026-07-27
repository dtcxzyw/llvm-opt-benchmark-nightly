inline.NumInlined: 326
inline.NumDeleted: 79
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_PyIncrementalNewlineDecoder_decode:bb.a
  %i.gv = add i64 %.us-phi356, 2                  ; 3 uses
  switch i32 %i.cq, label %PyUnicode_READ.exit269 [
    i32 1, label %PyUnicode_READ.exit269.thread
    i32 2, label %PyUnicode_READ.exit269.thread294
  ]

PyUnicode_READ.exit269.thread:                    ; preds = %bb.bj
  %i.gw = getelementptr i8, ptr %.0.i261, i64 %.us-phi358
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !19
  %i.gy = icmp eq i8 %i.gx, 10                    ; 2 uses
  %.6151288.v = select i1 %i.gy, i32 4, i32 1
  %.6151288 = or i32 %.6151288.v, %.5150
  %.2137289 = select i1 %i.gy, i64 %i.gv, i64 %.us-phi358
  %i.gz = getelementptr i8, ptr %i.fe, i64 %.us-phi357
  store i8 10, ptr %i.gz, align 1, !tbaa !19
  br label %PyUnicode_WRITE.exit270

PyUnicode_READ.exit269.thread294:                 ; preds = %bb.bj
  %i.ha = getelementptr [2 x i8], ptr %.0.i261, i64 %.us-phi358
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !34
  %i.hc = icmp eq i16 %i.hb, 10                   ; 2 uses
  %.6151296.v = select i1 %i.hc, i32 4, i32 1
  %.6151296 = or i32 %.6151296.v, %.5150
  %.2137297 = select i1 %i.hc, i64 %i.gv, i64 %.us-phi358
  %i.hd = getelementptr [2 x i8], ptr %i.fe, i64 %.us-phi357
  store i16 10, ptr %i.hd, align 2, !tbaa !34
  br label %PyUnicode_WRITE.exit270

PyUnicode_READ.exit269:                           ; preds = %bb.bj
  %i.he = getelementptr [4 x i8], ptr %.0.i261, i64 %.us-phi358
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !7
  %i.hg = icmp eq i32 %i.hf, 10                   ; 2 uses
  %.6151.v = select i1 %i.hg, i32 4, i32 1
  %.6151 = or i32 %.6151.v, %.5150
  %.2137 = select i1 %i.hg, i64 %i.gv, i64 %.us-phi358
  %i.hh = getelementptr [4 x i8], ptr %i.fe, i64 %.us-phi357
  store i32 10, ptr %i.hh, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit270

bb.bk:                                            ; preds = %.split355.us
  %i.hi = icmp sgt i64 %.us-phi358, %.4177.val
  br i1 %i.hi, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  switch i32 %i.cq, label %bb.bo [
    i32 1, label %bb.bm
    i32 2, label %bb.bn
  ]

bb.bm:                                            ; preds = %bb.bl
  %i.hj = trunc nuw nsw i32 %.us-phi to i8
  %i.hk = getelementptr i8, ptr %i.fe, i64 %.us-phi357
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !19
  br label %PyUnicode_WRITE.exit270

bb.bn:                                            ; preds = %bb.bl
  %i.hl = getelementptr [2 x i8], ptr %i.fe, i64 %.us-phi357
  store i16 %trunc, ptr %i.hl, align 2, !tbaa !34
  br label %PyUnicode_WRITE.exit270

bb.bo:                                            ; preds = %bb.bl
  %i.hm = getelementptr [4 x i8], ptr %i.fe, i64 %.us-phi357
  store i32 %.us-phi, ptr %i.hm, align 4, !tbaa !7
  br label %PyUnicode_WRITE.exit270

PyUnicode_WRITE.exit270:                          ; preds = %bb.bo, %bb.bn, %bb.bm, %PyUnicode_READ.exit269, %PyUnicode_READ.exit269.thread294, %PyUnicode_READ.exit269.thread, %PyUnicode_WRITE.exit267
  %.7 = phi i32 [ %i.gu, %PyUnicode_WRITE.exit267 ], [ %.5150, %bb.bo ], [ %.6151, %PyUnicode_READ.exit269 ], [ %.6151288, %PyUnicode_READ.exit269.thread ], [ %.6151296, %PyUnicode_READ.exit269.thread294 ], [ %.5150, %bb.bm ], [ %.5150, %bb.bn ]
  %.3138 = phi i64 [ %.us-phi358, %PyUnicode_WRITE.exit267 ], [ %.us-phi358, %bb.bo ], [ %.2137, %PyUnicode_READ.exit269 ], [ %.2137289, %PyUnicode_READ.exit269.thread ], [ %.2137297, %PyUnicode_READ.exit269.thread294 ], [ %.us-phi358, %bb.bm ], [ %.us-phi358, %bb.bn ]
  %.2134 = add i64 %.us-phi357, 1
  br label %.preheader327

bb.bp:                                            ; preds = %bb.bk
  %i.hn = load i32, ptr %.4177, align 8, !tbaa !19 ; 2 uses
  %.not.i213 = icmp sgt i32 %i.hn, -1
  br i1 %.not.i213, label %bb.bq, label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.ho = add nsw i32 %i.hn, -1                   ; 2 uses
  store i32 %i.ho, ptr %.4177, align 8, !tbaa !19
  %i.hp = icmp eq i32 %i.ho, 0
  br i1 %i.hp, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  tail call void @_Py_Dealloc(ptr noundef nonnull %.4177) #10
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bp
  %i.hq = tail call ptr @PyUnicode_FromKindAndData(i32 noundef %i.cq, ptr noundef nonnull %i.fe, i64 noundef %.us-phi357) #10 ; 2 uses
  tail call void @PyMem_Free(ptr noundef nonnull %i.fe) #10
  %.not205.not = icmp eq ptr %i.hq, null
  br i1 %.not205.not, label %Py_DECREF.exit, label %..thread315_crit_edge

..thread315_crit_edge:                            ; preds = %bb.bs
  %.pre = load i8, ptr %i.x, align 8
  br label %.thread315

.thread315:                                       ; preds = %PyUnicode_READ.exit249.us343, %PyUnicode_READ.exit249, %bb.bb, %..thread315_crit_edge, %bb.aq, %bb.ap, %bb.ao, %bb.at
  %i.hr = phi i8 [ %i.cg, %PyUnicode_READ.exit249 ], [ %i.cg, %bb.aq ], [ %i.cg, %bb.ap ], [ %i.cg, %bb.ao ], [ %.pre, %..thread315_crit_edge ], [ %i.cg, %bb.at ], [ %i.cg, %bb.bb ], [ %i.cg, %PyUnicode_READ.exit249.us343 ]
  %.6179 = phi ptr [ %.4177, %PyUnicode_READ.exit249 ], [ %.4177, %bb.aq ], [ %.4177, %bb.ap ], [ %.4177, %bb.ao ], [ %i.hq, %..thread315_crit_edge ], [ %.4177, %bb.at ], [ %.4177, %bb.bb ], [ %.4177, %PyUnicode_READ.exit249.us343 ]
  %.9 = phi i32 [ %.1146, %PyUnicode_READ.exit249 ], [ 2, %bb.aq ], [ 0, %bb.ap ], [ %i.cj, %bb.ao ], [ %.5150, %..thread315_crit_edge ], [ 7, %bb.at ], [ %.3148, %bb.bb ], [ %.1146.us346, %PyUnicode_READ.exit249.us343 ]
  %i.hs = trunc nuw nsw i32 %.9 to i8
  %i.ht = shl nuw nsw i8 %i.hs, 2
  %i.hu = or i8 %i.ht, %i.hr
  store i8 %i.hu, ptr %i.x, align 8
  br label %Py_DECREF.exit

bb.bt:                                            ; preds = %.thread320, %bb.ag, %PyUnicode_MAX_CHAR_VALUE.exit
  %.8181 = phi ptr [ %.4177, %.thread320 ], [ %.0273, %PyUnicode_MAX_CHAR_VALUE.exit ], [ %.2175, %bb.ag ] ; 3 uses
  %i.hv = load i32, ptr %.8181, align 8, !tbaa !19 ; 2 uses
  %.not.i = icmp sgt i32 %i.hv, -1
  br i1 %.not.i, label %bb.bu, label %Py_DECREF.exit

bb.bu:                                            ; preds = %bb.bt
  %i.hw = add nsw i32 %i.hv, -1                   ; 2 uses
  store i32 %i.hw, ptr %.8181, align 8, !tbaa !19
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bv, label %Py_DECREF.exit

bb.bv:                                            ; preds = %bb.bu
  tail call void @_Py_Dealloc(ptr noundef nonnull %.8181) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.bs, %_PyUnicode_DATA.exit246, %bb.h, %bb.g, %bb.f, %_Py_NewRef.exit, %bb.bv, %bb.bu, %bb.bt, %.thread315, %bb.b
  %.3 = phi ptr [ null, %bb.b ], [ %.4177, %_PyUnicode_DATA.exit246 ], [ null, %bb.bv ], [ null, %bb.h ], [ null, %bb.g ], [ %.6179, %.thread315 ], [ null, %bb.bt ], [ null, %bb.bu ], [ null, %_Py_NewRef.exit ], [ null, %bb.f ], [ null, %bb.bs ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @PyErr_SetString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyObject_CallMethodObjArgs(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @check_decoded(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.b, align 8, !tbaa !20 ; 2 uses
  %i.c = getelementptr i8, ptr %.val5, i64 168
  %.val6 = load i64, ptr %i.c, align 8, !tbaa !21
  %i.d = and i64 %.val6, 268435456
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !17
  %i.f = getelementptr i8, ptr %.val5, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30
  %i.h = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.e, ptr noundef nonnull @.str.18, ptr noundef %i.g) #10 ; 0 uses
  %i.i = load i32, ptr %0, align 8, !tbaa !19     ; 2 uses
  %.not.i = icmp sgt i32 %i.i, -1
  br i1 %.not.i, label %bb.d, label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.c
  %i.j = add nsw i32 %i.i, -1                     ; 2 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !19
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_Dealloc(ptr noundef nonnull %0) #10
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ], [ -1, %bb.c ], [ -1, %bb.d ], [ -1, %bb.e ]
  ret i32 %.0
}

declare ptr @PyUnicode_New(i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

declare ptr @PyErr_NoMemory() local_unnamed_addr #2

declare ptr @PyUnicode_FromKindAndData(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @_PyIO_find_line_ending(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #4 {
bb.a:
  %i.a = ptrtoint ptr %5 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %4 to i64                   ; 7 uses
  %i.c = sub i64 %i.a, %i.b                       ; 3 uses
  %i.d = sext i32 %3 to i64                       ; 29 uses
  %i.e = sdiv i64 %i.c, %i.d                      ; 6 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %3, label %.split.i [
    i32 1, label %bb.e
    i32 2, label %.split.us24.us.i
  ]

.split.us24.us.i:                                 ; preds = %bb.b, %bb.d
  %.018.us40.i = phi ptr [ %i.k, %bb.d ], [ %4, %bb.b ] ; 3 uses
  %i.f = load i16, ptr %.018.us40.i, align 2      ; 2 uses
  %i.g = icmp ugt i16 %i.f, 10
  br i1 %i.g, label %PyUnicode_READ.exit.us26.us.i, label %PyUnicode_READ.exit21.us41.i

PyUnicode_READ.exit21.us41.i:                     ; preds = %PyUnicode_READ.exit.us26.us.i, %.split.us24.us.i
  %i.h = phi i16 [ %i.f, %.split.us24.us.i ], [ %i.m, %PyUnicode_READ.exit.us26.us.i ]
  %.1.lcssa.us28.us.i = phi ptr [ %.018.us40.i, %.split.us24.us.i ], [ %i.l, %PyUnicode_READ.exit.us26.us.i ] ; 3 uses
  %i.i = icmp eq i16 %i.h, 10
  br i1 %i.i, label %find_control_char.exit, label %bb.c

bb.c:                                             ; preds = %PyUnicode_READ.exit21.us41.i
  %i.j = icmp eq ptr %.1.lcssa.us28.us.i, %5
  br i1 %i.j, label %find_control_char.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.1.lcssa.us28.us.i, i64 %i.d
  br label %.split.us24.us.i

PyUnicode_READ.exit.us26.us.i:                    ; preds = %.split.us24.us.i, %PyUnicode_READ.exit.us26.us.i
  %.1.us2534.us.i = phi ptr [ %i.l, %PyUnicode_READ.exit.us26.us.i ], [ %.018.us40.i, %.split.us24.us.i ]
  %i.l = getelementptr i8, ptr %.1.us2534.us.i, i64 %i.d ; 3 uses
  %i.m = load i16, ptr %i.l, align 2              ; 2 uses
  %i.n = icmp ugt i16 %i.m, 10
  br i1 %i.n, label %PyUnicode_READ.exit.us26.us.i, label %PyUnicode_READ.exit21.us41.i, !llvm.loop !39

bb.e:                                             ; preds = %bb.b
  %i.o = tail call ptr @memchr(ptr noundef %4, i32 noundef 10, i64 noundef %i.c) #11
  br label %find_control_char.exit

.split.i:                                         ; preds = %bb.b, %bb.g
  %.018.i = phi ptr [ %i.x, %bb.g ], [ %4, %bb.b ] ; 3 uses
  %i.p = load i32, ptr %.018.i, align 4, !tbaa !7 ; 2 uses
  %i.q = icmp ugt i32 %i.p, 10
  br i1 %i.q, label %PyUnicode_READ.exit.i, label %.split23.split.i

PyUnicode_READ.exit.i:                            ; preds = %.split.i, %PyUnicode_READ.exit.i
  %.130.i = phi ptr [ %i.r, %PyUnicode_READ.exit.i ], [ %.018.i, %.split.i ]
  %i.r = getelementptr i8, ptr %.130.i, i64 %i.d  ; 3 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !7    ; 2 uses
  %i.t = icmp ugt i32 %i.s, 10
  br i1 %i.t, label %PyUnicode_READ.exit.i, label %.split23.split.i, !llvm.loop !39

.split23.split.i:                                 ; preds = %PyUnicode_READ.exit.i, %.split.i
  %i.u = phi i32 [ %i.p, %.split.i ], [ %i.s, %PyUnicode_READ.exit.i ]
  %.1.lcssa.i = phi ptr [ %.018.i, %.split.i ], [ %i.r, %PyUnicode_READ.exit.i ] ; 3 uses
  %i.v = icmp eq i32 %i.u, 10
  br i1 %i.v, label %find_control_char.exit, label %bb.f

bb.f:                                             ; preds = %.split23.split.i
  %i.w = icmp eq ptr %.1.lcssa.i, %5
  br i1 %i.w, label %find_control_char.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr i8, ptr %.1.lcssa.i, i64 %i.d
  br label %.split.i

find_control_char.exit:                           ; preds = %PyUnicode_READ.exit21.us41.i, %.split23.split.i, %bb.e
  %.0.i = phi ptr [ %i.o, %bb.e ], [ %.1.lcssa.i, %.split23.split.i ], [ %.1.lcssa.us28.us.i, %PyUnicode_READ.exit21.us41.i ] ; 2 uses
  %.not121 = icmp eq ptr %.0.i, null
  br i1 %.not121, label %find_control_char.exit.thread, label %bb.h

bb.h:                                             ; preds = %find_control_char.exit
  %i.y = ptrtoint ptr %.0.i to i64
  %i.z = sub i64 %i.y, %i.b
  %i.aa = sdiv i64 %i.z, %i.d
  %i.ab = add i64 %i.aa, 1
  br label %.thread

find_control_char.exit.thread:                    ; preds = %bb.c, %bb.f, %find_control_char.exit
  store i64 %i.e, ptr %6, align 8, !tbaa !40
  br label %.thread

bb.i:                                             ; preds = %bb.a
  %.not115 = icmp eq i32 %1, 0
  br i1 %.not115, label %bb.t, label %.preheader210

.preheader210:                                    ; preds = %bb.i, %PyUnicode_READ.exit124
  %.0104 = phi ptr [ %i.ba, %PyUnicode_READ.exit124 ], [ %4, %bb.i ] ; 9 uses
  switch i32 %3, label %.split [
    i32 1, label %.split.us
    i32 2, label %.split.us240
  ]

.split.us:                                        ; preds = %.preheader210
  %i.ac = load i8, ptr %.0104, align 1, !tbaa !19 ; 2 uses
  %i.ad = icmp ugt i8 %i.ac, 13
  br i1 %i.ad, label %PyUnicode_READ.exit.us, label %.split239.us

PyUnicode_READ.exit.us:                           ; preds = %.split.us, %PyUnicode_READ.exit.us
  %.1105.us247 = phi ptr [ %i.ae, %PyUnicode_READ.exit.us ], [ %.0104, %.split.us ]
  %i.ae = getelementptr i8, ptr %.1105.us247, i64 %i.d ; 3 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !19  ; 2 uses
  %i.ag = icmp ugt i8 %i.af, 13
  br i1 %i.ag, label %PyUnicode_READ.exit.us, label %.split239.us, !llvm.loop !41

.split.us240:                                     ; preds = %.preheader210
  %i.ah = load i16, ptr %.0104, align 2           ; 2 uses
  %i.ai = icmp ugt i16 %i.ah, 13
  %i.aj = trunc nuw nsw i16 %i.ah to i8
  br i1 %i.ai, label %PyUnicode_READ.exit.us242, label %.split239.us

PyUnicode_READ.exit.us242:                        ; preds = %.split.us240, %PyUnicode_READ.exit.us242
  %.1105.us241250 = phi ptr [ %i.ak, %PyUnicode_READ.exit.us242 ], [ %.0104, %.split.us240 ]
  %i.ak = getelementptr i8, ptr %.1105.us241250, i64 %i.d ; 3 uses
  %i.al = load i16, ptr %i.ak, align 2            ; 2 uses
  %i.am = icmp ugt i16 %i.al, 13
  br i1 %i.am, label %PyUnicode_READ.exit.us242, label %.split239.us.loopexit283, !llvm.loop !41

.split:                                           ; preds = %.preheader210
  %i.an = load i32, ptr %.0104, align 4           ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 13
  %i.ap = trunc nuw nsw i32 %i.an to i8
  br i1 %i.ao, label %PyUnicode_READ.exit, label %.split239.us

PyUnicode_READ.exit:                              ; preds = %.split, %PyUnicode_READ.exit
  %.1105246 = phi ptr [ %i.aq, %PyUnicode_READ.exit ], [ %.0104, %.split ]
  %i.aq = getelementptr i8, ptr %.1105246, i64 %i.d ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4            ; 2 uses
  %i.as = icmp ugt i32 %i.ar, 13
  br i1 %i.as, label %PyUnicode_READ.exit, label %.split239.us.loopexit, !llvm.loop !41

.split239.us.loopexit:                            ; preds = %PyUnicode_READ.exit
  %i.at = trunc nuw nsw i32 %i.ar to i8
  br label %.split239.us

.split239.us.loopexit283:                         ; preds = %PyUnicode_READ.exit.us242
  %i.au = trunc nuw nsw i16 %i.al to i8
  br label %.split239.us

.split239.us:                                     ; preds = %PyUnicode_READ.exit.us, %.split239.us.loopexit283, %.split239.us.loopexit, %.split.us240, %.split, %.split.us
  %i.av = phi i8 [ %i.at, %.split239.us.loopexit ], [ %i.ac, %.split.us ], [ %i.au, %.split239.us.loopexit283 ], [ %i.aj, %.split.us240 ], [ %i.ap, %.split ], [ %i.af, %PyUnicode_READ.exit.us ]
  %.us-phi = phi ptr [ %i.aq, %.split239.us.loopexit ], [ %.0104, %.split.us ], [ %i.ak, %.split239.us.loopexit283 ], [ %.0104, %.split.us240 ], [ %.0104, %.split ], [ %i.ae, %PyUnicode_READ.exit.us ] ; 4 uses
  %.not120 = icmp ult ptr %.us-phi, %5
  br i1 %.not120, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split239.us
  store i64 %i.e, ptr %6, align 8, !tbaa !40
  br label %.thread

bb.k:                                             ; preds = %.split239.us
  switch i32 %3, label %bb.n [
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aw = zext nneg i8 %i.av to i32
  br label %PyUnicode_READ.exit124

bb.m:                                             ; preds = %bb.k
  %i.ax = load i16, ptr %.us-phi, align 2, !tbaa !34
  %i.ay = zext i16 %i.ax to i32
  br label %PyUnicode_READ.exit124

bb.n:                                             ; preds = %bb.k
  %i.az = load i32, ptr %.us-phi, align 4, !tbaa !7
  br label %PyUnicode_READ.exit124

PyUnicode_READ.exit124:                           ; preds = %bb.l, %bb.m, %bb.n
  %.0.i123 = phi i32 [ %i.aw, %bb.l ], [ %i.ay, %bb.m ], [ %i.az, %bb.n ]
  %i.ba = getelementptr i8, ptr %.us-phi, i64 %i.d ; 6 uses
  switch i32 %.0.i123, label %.preheader210 [
    i32 10, label %bb.o
    i32 13, label %bb.p
  ]

bb.o:                                             ; preds = %PyUnicode_READ.exit124
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = sub i64 %i.bb, %i.b
  %i.bd = sdiv i64 %i.bc, %i.d
  br label %.thread

bb.p:                                             ; preds = %PyUnicode_READ.exit124
  switch i32 %3, label %bb.s [
    i32 1, label %bb.q
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %bb.p
  %i.be = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bf = zext i8 %i.be to i32
  br label %PyUnicode_READ.exit126

bb.r:                                             ; preds = %bb.p
  %i.bg = load i16, ptr %i.ba, align 2, !tbaa !34
  %i.bh = zext i16 %i.bg to i32
  br label %PyUnicode_READ.exit126

bb.s:                                             ; preds = %bb.p
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !7
  br label %PyUnicode_READ.exit126

PyUnicode_READ.exit126:                           ; preds = %bb.q, %bb.r, %bb.s
  %.0.i125 = phi i32 [ %i.bf, %bb.q ], [ %i.bh, %bb.r ], [ %i.bi, %bb.s ]
  %i.bj = icmp eq i32 %.0.i125, 10
  %i.bk = ptrtoint ptr %i.ba to i64
  %i.bl = sub i64 %i.bk, %i.b
  %i.bm = sdiv i64 %i.bl, %i.d
  %i.bn = zext i1 %i.bj to i64
  %spec.select400 = add i64 %i.bm, %i.bn
  br label %.thread

bb.t:                                             ; preds = %bb.i
  %i.bo = getelementptr i8, ptr %2, i64 16
  %.val = load i64, ptr %i.bo, align 8, !tbaa !31 ; 8 uses
  %i.bp = getelementptr i8, ptr %2, i64 32
  %.val.i = load i32, ptr %i.bp, align 8          ; 2 uses
  %i.bq = and i32 %.val.i, 32
  %.not.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = and i32 %.val.i, 64
  %.not.i.i = icmp eq i32 %i.br, 0
  %.0.v.i.i = select i1 %.not.i.i, i64 56, i64 40
  %.0.i.i = getelementptr i8, ptr %2, i64 %.0.v.i.i
  br label %_PyUnicode_DATA.exit

bb.v:                                             ; preds = %bb.t
  %i.bs = getelementptr i8, ptr %2, i64 56
  %.val4.i = load ptr, ptr %i.bs, align 8, !tbaa !19
  br label %_PyUnicode_DATA.exit

_PyUnicode_DATA.exit:                             ; preds = %bb.u, %bb.v
  %.0.i127 = phi ptr [ %.0.i.i, %bb.u ], [ %.val4.i, %bb.v ] ; 5 uses
  %i.bt = icmp eq i64 %.val, 1
  br i1 %i.bt, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %_PyUnicode_DATA.exit
  %i.bu = load i8, ptr %.0.i127, align 1, !tbaa !19 ; 3 uses
  %i.bv = zext i8 %i.bu to i32                    ; 3 uses
  switch i32 %3, label %.split.i130 [
    i32 1, label %bb.z
    i32 2, label %.split.us24.us.preheader.i137
  ]

.split.us24.us.preheader.i137:                    ; preds = %bb.w
  %i.bw = zext i8 %i.bu to i16                    ; 3 uses
  br label %.split.us24.us.i138

.split.us24.us.i138:                              ; preds = %bb.y, %.split.us24.us.preheader.i137
  %.018.us40.i139 = phi ptr [ %i.cc, %bb.y ], [ %4, %.split.us24.us.preheader.i137 ] ; 3 uses
  %i.bx = load i16, ptr %.018.us40.i139, align 2  ; 2 uses
  %i.by = icmp ugt i16 %i.bx, %i.bw
  br i1 %i.by, label %PyUnicode_READ.exit.us26.us.i142, label %PyUnicode_READ.exit21.us41.i140

PyUnicode_READ.exit21.us41.i140:                  ; preds = %PyUnicode_READ.exit.us26.us.i142, %.split.us24.us.i138
  %i.bz = phi i16 [ %i.bx, %.split.us24.us.i138 ], [ %i.ce, %PyUnicode_READ.exit.us26.us.i142 ]
  %.1.lcssa.us28.us.i141 = phi ptr [ %.018.us40.i139, %.split.us24.us.i138 ], [ %i.cd, %PyUnicode_READ.exit.us26.us.i142 ] ; 3 uses
  %i.ca = icmp eq i16 %i.bz, %i.bw
  br i1 %i.ca, label %find_control_char.exit144, label %bb.x

bb.x:                                             ; preds = %PyUnicode_READ.exit21.us41.i140
  %i.cb = icmp eq ptr %.1.lcssa.us28.us.i141, %5
  br i1 %i.cb, label %find_control_char.exit144.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %.1.lcssa.us28.us.i141, i64 %i.d
  br label %.split.us24.us.i138

PyUnicode_READ.exit.us26.us.i142:                 ; preds = %.split.us24.us.i138, %PyUnicode_READ.exit.us26.us.i142
  %.1.us2534.us.i143 = phi ptr [ %i.cd, %PyUnicode_READ.exit.us26.us.i142 ], [ %.018.us40.i139, %.split.us24.us.i138 ]
  %i.cd = getelementptr i8, ptr %.1.us2534.us.i143, i64 %i.d ; 3 uses
  %i.ce = load i16, ptr %i.cd, align 2            ; 2 uses
  %i.cf = icmp ugt i16 %i.ce, %i.bw
  br i1 %i.cf, label %PyUnicode_READ.exit.us26.us.i142, label %PyUnicode_READ.exit21.us41.i140, !llvm.loop !39

bb.z:                                             ; preds = %bb.w
  %i.cg = sext i8 %i.bu to i32
  %i.ch = tail call ptr @memchr(ptr noundef %4, i32 noundef %i.cg, i64 noundef %i.c) #11
  br label %find_control_char.exit144

.split.i130:                                      ; preds = %bb.w, %bb.ab
  %.018.i131 = phi ptr [ %i.cq, %bb.ab ], [ %4, %bb.w ] ; 3 uses
  %i.ci = load i32, ptr %.018.i131, align 4, !tbaa !7 ; 2 uses
  %i.cj = icmp ugt i32 %i.ci, %i.bv
  br i1 %i.cj, label %PyUnicode_READ.exit.i135, label %.split23.split.i132

PyUnicode_READ.exit.i135:                         ; preds = %.split.i130, %PyUnicode_READ.exit.i135
  %.130.i136 = phi ptr [ %i.ck, %PyUnicode_READ.exit.i135 ], [ %.018.i131, %.split.i130 ]
  %i.ck = getelementptr i8, ptr %.130.i136, i64 %i.d ; 3 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !7  ; 2 uses
  %i.cm = icmp ugt i32 %i.cl, %i.bv
  br i1 %i.cm, label %PyUnicode_READ.exit.i135, label %.split23.split.i132, !llvm.loop !39

.split23.split.i132:                              ; preds = %PyUnicode_READ.exit.i135, %.split.i130
  %i.cn = phi i32 [ %i.ci, %.split.i130 ], [ %i.cl, %PyUnicode_READ.exit.i135 ]
  %.1.lcssa.i133 = phi ptr [ %.018.i131, %.split.i130 ], [ %i.ck, %PyUnicode_READ.exit.i135 ] ; 3 uses
  %i.co = icmp eq i32 %i.cn, %i.bv
  br i1 %i.co, label %find_control_char.exit144, label %bb.aa

bb.aa:                                            ; preds = %.split23.split.i132
  %i.cp = icmp eq ptr %.1.lcssa.i133, %5
  br i1 %i.cp, label %find_control_char.exit144.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr i8, ptr %.1.lcssa.i133, i64 %i.d
  br label %.split.i130

find_control_char.exit144:                        ; preds = %PyUnicode_READ.exit21.us41.i140, %.split23.split.i132, %bb.z
  %.0.i134 = phi ptr [ %i.ch, %bb.z ], [ %.1.lcssa.i133, %.split23.split.i132 ], [ %.1.lcssa.us28.us.i141, %PyUnicode_READ.exit21.us41.i140 ] ; 2 uses
  %.not119 = icmp eq ptr %.0.i134, null
  br i1 %.not119, label %find_control_char.exit144.thread, label %bb.ac

bb.ac:                                            ; preds = %find_control_char.exit144
  %i.cr = ptrtoint ptr %.0.i134 to i64
  %i.cs = sub i64 %i.cr, %i.b
  %i.ct = sdiv i64 %i.cs, %i.d
  %i.cu = add i64 %i.ct, 1
  br label %.thread

find_control_char.exit144.thread:                 ; preds = %bb.x, %bb.aa, %find_control_char.exit144
  store i64 %i.e, ptr %6, align 8, !tbaa !40
  br label %.thread

bb.ad:                                            ; preds = %_PyUnicode_DATA.exit
  %.neg = sub i64 1, %.val
  %.neg116 = mul i64 %.neg, %i.d
  %i.cv = getelementptr i8, ptr %5, i64 %.neg116  ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %4
  %spec.select = select i1 %i.cw, ptr %4, ptr %i.cv ; 7 uses
  %i.cx = icmp ult ptr %4, %spec.select
  %.pre = load i8, ptr %.0.i127, align 1, !tbaa !19 ; 5 uses
  %i.cy = zext i8 %.pre to i32                    ; 6 uses
  br i1 %i.cx, label %.lr.ph270, label %.thread194

.lr.ph270:                                        ; preds = %bb.ad
  %i.cz = zext i8 %.pre to i16                    ; 3 uses
  %i.da = sext i8 %.pre to i32
  %i.db = icmp sgt i64 %.val, 1
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph270, %bb.an
  %.0102268 = phi ptr [ %4, %.lr.ph270 ], [ %i.eu, %bb.an ] ; 4 uses
  switch i32 %3, label %.split.i147 [
    i32 1, label %bb.ah
    i32 2, label %.split.us24.us.i155
  ]

.split.us24.us.i155:                              ; preds = %bb.ae, %bb.ag
  %.018.us40.i156 = phi ptr [ %i.dh, %bb.ag ], [ %.0102268, %bb.ae ] ; 3 uses
  %i.dc = load i16, ptr %.018.us40.i156, align 2  ; 2 uses
  %i.dd = icmp ugt i16 %i.dc, %i.cz
  br i1 %i.dd, label %PyUnicode_READ.exit.us26.us.i159, label %PyUnicode_READ.exit21.us41.i157

PyUnicode_READ.exit21.us41.i157:                  ; preds = %PyUnicode_READ.exit.us26.us.i159, %.split.us24.us.i155
  %i.de = phi i16 [ %i.dc, %.split.us24.us.i155 ], [ %i.dj, %PyUnicode_READ.exit.us26.us.i159 ]
  %.1.lcssa.us28.us.i158 = phi ptr [ %.018.us40.i156, %.split.us24.us.i155 ], [ %i.di, %PyUnicode_READ.exit.us26.us.i159 ] ; 3 uses
  %i.df = icmp eq i16 %i.de, %i.cz
  br i1 %i.df, label %find_control_char.exit162, label %bb.af

bb.af:                                            ; preds = %PyUnicode_READ.exit21.us41.i157
  %i.dg = icmp eq ptr %.1.lcssa.us28.us.i158, %5
  br i1 %i.dg, label %.thread194, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr i8, ptr %.1.lcssa.us28.us.i158, i64 %i.d
  br label %.split.us24.us.i155

PyUnicode_READ.exit.us26.us.i159:                 ; preds = %.split.us24.us.i155, %PyUnicode_READ.exit.us26.us.i159
  %.1.us2534.us.i160 = phi ptr [ %i.di, %PyUnicode_READ.exit.us26.us.i159 ], [ %.018.us40.i156, %.split.us24.us.i155 ]
  %i.di = getelementptr i8, ptr %.1.us2534.us.i160, i64 %i.d ; 3 uses
  %i.dj = load i16, ptr %i.di, align 2            ; 2 uses
  %i.dk = icmp ugt i16 %i.dj, %i.cz
  br i1 %i.dk, label %PyUnicode_READ.exit.us26.us.i159, label %PyUnicode_READ.exit21.us41.i157, !llvm.loop !39

bb.ah:                                            ; preds = %bb.ae
  %i.dl = ptrtoint ptr %.0102268 to i64
  %i.dm = sub i64 %i.a, %i.dl
  %i.dn = tail call ptr @memchr(ptr noundef %.0102268, i32 noundef %i.da, i64 noundef %i.dm) #11
  br label %find_control_char.exit162

.split.i147:                                      ; preds = %bb.ae, %bb.aj
  %.018.i148 = phi ptr [ %i.dw, %bb.aj ], [ %.0102268, %bb.ae ] ; 3 uses
  %i.do = load i32, ptr %.018.i148, align 4, !tbaa !7 ; 2 uses
  %i.dp = icmp ugt i32 %i.do, %i.cy
  br i1 %i.dp, label %PyUnicode_READ.exit.i152, label %.split23.split.i149

PyUnicode_READ.exit.i152:                         ; preds = %.split.i147, %PyUnicode_READ.exit.i152
  %.130.i153 = phi ptr [ %i.dq, %PyUnicode_READ.exit.i152 ], [ %.018.i148, %.split.i147 ]
  %i.dq = getelementptr i8, ptr %.130.i153, i64 %i.d ; 3 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !7  ; 2 uses
  %i.ds = icmp ugt i32 %i.dr, %i.cy
  br i1 %i.ds, label %PyUnicode_READ.exit.i152, label %.split23.split.i149, !llvm.loop !39

.split23.split.i149:                              ; preds = %PyUnicode_READ.exit.i152, %.split.i147
  %i.dt = phi i32 [ %i.do, %.split.i147 ], [ %i.dr, %PyUnicode_READ.exit.i152 ]
  %.1.lcssa.i150 = phi ptr [ %.018.i148, %.split.i147 ], [ %i.dq, %PyUnicode_READ.exit.i152 ] ; 3 uses
  %i.du = icmp eq i32 %i.dt, %i.cy
  br i1 %i.du, label %find_control_char.exit162, label %bb.ai

bb.ai:                                            ; preds = %.split23.split.i149
  %i.dv = icmp eq ptr %.1.lcssa.i150, %5
  br i1 %i.dv, label %.thread194, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dw = getelementptr i8, ptr %.1.lcssa.i150, i64 %i.d
  br label %.split.i147

find_control_char.exit162:                        ; preds = %PyUnicode_READ.exit21.us41.i157, %.split23.split.i149, %bb.ah
  %.0.i151 = phi ptr [ %i.dn, %bb.ah ], [ %.1.lcssa.i150, %.split23.split.i149 ], [ %.1.lcssa.us28.us.i158, %PyUnicode_READ.exit21.us41.i157 ] ; 7 uses
  %i.dx = icmp ne ptr %.0.i151, null
  %.not117 = icmp ult ptr %.0.i151, %spec.select
  %or.cond = and i1 %i.dx, %.not117
  br i1 %or.cond, label %.preheader, label %.thread194

.preheader:                                       ; preds = %find_control_char.exit162
  br i1 %i.db, label %.lr.ph254, label %PyUnicode_READ.exit164._crit_edge

.lr.ph254:                                        ; preds = %.preheader
  switch i32 %3, label %PyUnicode_READ.exit164 [
    i32 1, label %PyUnicode_READ.exit164.us
    i32 2, label %PyUnicode_READ.exit164.us261
  ]

PyUnicode_READ.exit164.us:                        ; preds = %.lr.ph254, %bb.ak
  %.098253.us = phi i64 [ %i.ec, %bb.ak ], [ 1, %.lr.ph254 ] ; 4 uses
  %i.dy = getelementptr i8, ptr %.0.i151, i64 %.098253.us
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !19
  %i.ea = getelementptr i8, ptr %.0.i127, i64 %.098253.us
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !19
  %.not118.us = icmp eq i8 %i.dz, %i.eb
  br i1 %.not118.us, label %bb.ak, label %PyUnicode_READ.exit164._crit_edge

bb.ak:                                            ; preds = %PyUnicode_READ.exit164.us
  %i.ec = add nuw nsw i64 %.098253.us, 1          ; 2 uses
  %exitcond315.not = icmp eq i64 %i.ec, %.val
  br i1 %exitcond315.not, label %.thread198, label %PyUnicode_READ.exit164.us, !llvm.loop !42

PyUnicode_READ.exit164.us261:                     ; preds = %.lr.ph254, %bb.al
  %.098253.us260 = phi i64 [ %i.ei, %bb.al ], [ 1, %.lr.ph254 ] ; 4 uses
  %i.ed = getelementptr [2 x i8], ptr %.0.i151, i64 %.098253.us260
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !34
  %i.ef = getelementptr i8, ptr %.0.i127, i64 %.098253.us260
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !19
  %i.eh = zext i8 %i.eg to i16
  %.not118.us263 = icmp eq i16 %i.ee, %i.eh
  br i1 %.not118.us263, label %bb.al, label %PyUnicode_READ.exit164._crit_edge

bb.al:                                            ; preds = %PyUnicode_READ.exit164.us261
  %i.ei = add nuw nsw i64 %.098253.us260, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.ei, %.val
  br i1 %exitcond.not, label %.thread198, label %PyUnicode_READ.exit164.us261, !llvm.loop !42

PyUnicode_READ.exit164:                           ; preds = %.lr.ph254, %bb.am
  %.098253 = phi i64 [ %i.eo, %bb.am ], [ 1, %.lr.ph254 ] ; 4 uses
  %i.ej = getelementptr [4 x i8], ptr %.0.i151, i64 %.098253
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !7
  %i.el = getelementptr i8, ptr %.0.i127, i64 %.098253
  %i.em = load i8, ptr %i.el, align 1, !tbaa !19
  %i.en = zext i8 %i.em to i32
  %.not118 = icmp eq i32 %i.ek, %i.en
  br i1 %.not118, label %bb.am, label %PyUnicode_READ.exit164._crit_edge

bb.am:                                            ; preds = %PyUnicode_READ.exit164
  %i.eo = add nuw nsw i64 %.098253, 1             ; 2 uses
  %exitcond316.not = icmp eq i64 %i.eo, %.val
  br i1 %exitcond316.not, label %.thread198, label %PyUnicode_READ.exit164, !llvm.loop !42

PyUnicode_READ.exit164._crit_edge:                ; preds = %PyUnicode_READ.exit164.us261, %PyUnicode_READ.exit164.us, %PyUnicode_READ.exit164, %.preheader
  %.098.lcssa = phi i64 [ 1, %.preheader ], [ %.098253, %PyUnicode_READ.exit164 ], [ %.098253.us, %PyUnicode_READ.exit164.us ], [ %.098253.us260, %PyUnicode_READ.exit164.us261 ]
  %i.ep = icmp eq i64 %.098.lcssa, %.val
  br i1 %i.ep, label %.thread198, label %bb.an

.thread198:                                       ; preds = %PyUnicode_READ.exit164._crit_edge, %bb.al, %bb.ak, %bb.am
  %i.eq = ptrtoint ptr %.0.i151 to i64
  %i.er = sub i64 %i.eq, %i.b
  %i.es = sdiv i64 %i.er, %i.d
  %i.et = add i64 %i.es, %.val
  br label %.thread

bb.an:                                            ; preds = %PyUnicode_READ.exit164._crit_edge
  %i.eu = getelementptr i8, ptr %.0.i151, i64 %i.d ; 2 uses
  %i.ev = icmp ult ptr %i.eu, %spec.select
  br i1 %i.ev, label %bb.ae, label %.thread194

.thread194:                                       ; preds = %bb.an, %find_control_char.exit162, %bb.af, %bb.ai, %bb.ad
  switch i32 %3, label %.split.i167 [
    i32 1, label %bb.aq
    i32 2, label %.split.us24.us.preheader.i174
  ]

.split.us24.us.preheader.i174:                    ; preds = %.thread194
  %i.ew = zext i8 %.pre to i16                    ; 3 uses
  br label %.split.us24.us.i175

.split.us24.us.i175:                              ; preds = %bb.ap, %.split.us24.us.preheader.i174
  %.018.us40.i176 = phi ptr [ %i.fc, %bb.ap ], [ %spec.select, %.split.us24.us.preheader.i174 ] ; 3 uses
  %i.ex = load i16, ptr %.018.us40.i176, align 2  ; 2 uses
  %i.ey = icmp ugt i16 %i.ex, %i.ew
  br i1 %i.ey, label %PyUnicode_READ.exit.us26.us.i179, label %PyUnicode_READ.exit21.us41.i177

PyUnicode_READ.exit21.us41.i177:                  ; preds = %PyUnicode_READ.exit.us26.us.i179, %.split.us24.us.i175
  %i.ez = phi i16 [ %i.ex, %.split.us24.us.i175 ], [ %i.fe, %PyUnicode_READ.exit.us26.us.i179 ]
  %.1.lcssa.us28.us.i178 = phi ptr [ %.018.us40.i176, %.split.us24.us.i175 ], [ %i.fd, %PyUnicode_READ.exit.us26.us.i179 ] ; 3 uses
  %i.fa = icmp eq i16 %i.ez, %i.ew
  br i1 %i.fa, label %find_control_char.exit182, label %bb.ao

bb.ao:                                            ; preds = %PyUnicode_READ.exit21.us41.i177
  %i.fb = icmp eq ptr %.1.lcssa.us28.us.i178, %5
  br i1 %i.fb, label %find_control_char.exit182.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr i8, ptr %.1.lcssa.us28.us.i178, i64 %i.d
  br label %.split.us24.us.i175

PyUnicode_READ.exit.us26.us.i179:                 ; preds = %.split.us24.us.i175, %PyUnicode_READ.exit.us26.us.i179
  %.1.us2534.us.i180 = phi ptr [ %i.fd, %PyUnicode_READ.exit.us26.us.i179 ], [ %.018.us40.i176, %.split.us24.us.i175 ]
  %i.fd = getelementptr i8, ptr %.1.us2534.us.i180, i64 %i.d ; 3 uses
  %i.fe = load i16, ptr %i.fd, align 2            ; 2 uses
  %i.ff = icmp ugt i16 %i.fe, %i.ew
  br i1 %i.ff, label %PyUnicode_READ.exit.us26.us.i179, label %PyUnicode_READ.exit21.us41.i177, !llvm.loop !39

bb.aq:                                            ; preds = %.thread194
  %i.fg = sext i8 %.pre to i32
  %i.fh = ptrtoint ptr %spec.select to i64
  %i.fi = sub i64 %i.a, %i.fh
  %i.fj = tail call ptr @memchr(ptr noundef %spec.select, i32 noundef %i.fg, i64 noundef %i.fi) #11
  br label %find_control_char.exit182

.split.i167:                                      ; preds = %.thread194, %bb.as
  %.018.i168 = phi ptr [ %i.fs, %bb.as ], [ %spec.select, %.thread194 ] ; 3 uses
  %i.fk = load i32, ptr %.018.i168, align 4, !tbaa !7 ; 2 uses
  %i.fl = icmp ugt i32 %i.fk, %i.cy
  br i1 %i.fl, label %PyUnicode_READ.exit.i172, label %.split23.split.i169

PyUnicode_READ.exit.i172:                         ; preds = %.split.i167, %PyUnicode_READ.exit.i172
  %.130.i173 = phi ptr [ %i.fm, %PyUnicode_READ.exit.i172 ], [ %.018.i168, %.split.i167 ]
  %i.fm = getelementptr i8, ptr %.130.i173, i64 %i.d ; 3 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !7  ; 2 uses
  %i.fo = icmp ugt i32 %i.fn, %i.cy
  br i1 %i.fo, label %PyUnicode_READ.exit.i172, label %.split23.split.i169, !llvm.loop !39

.split23.split.i169:                              ; preds = %PyUnicode_READ.exit.i172, %.split.i167
  %i.fp = phi i32 [ %i.fk, %.split.i167 ], [ %i.fn, %PyUnicode_READ.exit.i172 ]
  %.1.lcssa.i170 = phi ptr [ %.018.i168, %.split.i167 ], [ %i.fm, %PyUnicode_READ.exit.i172 ] ; 3 uses
  %i.fq = icmp eq i32 %i.fp, %i.cy
  br i1 %i.fq, label %find_control_char.exit182, label %bb.ar

bb.ar:                                            ; preds = %.split23.split.i169
  %i.fr = icmp eq ptr %.1.lcssa.i170, %5
  br i1 %i.fr, label %find_control_char.exit182.thread, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fs = getelementptr i8, ptr %.1.lcssa.i170, i64 %i.d
  br label %.split.i167

find_control_char.exit182:                        ; preds = %PyUnicode_READ.exit21.us41.i177, %.split23.split.i169, %bb.aq
  %.0.i171 = phi ptr [ %i.fj, %bb.aq ], [ %.1.lcssa.i170, %.split23.split.i169 ], [ %.1.lcssa.us28.us.i178, %PyUnicode_READ.exit21.us41.i177 ] ; 2 uses
  %i.ft = icmp eq ptr %.0.i171, null
  br i1 %i.ft, label %find_control_char.exit182.thread, label %bb.at

bb.at:                                            ; preds = %find_control_char.exit182
  %i.fu = ptrtoint ptr %.0.i171 to i64
  %i.fv = sub i64 %i.fu, %i.b
  %i.fw = sdiv i64 %i.fv, %i.d
  br label %find_control_char.exit182.thread

find_control_char.exit182.thread:                 ; preds = %bb.ao, %bb.ar, %find_control_char.exit182, %bb.at
  %storemerge = phi i64 [ %i.fw, %bb.at ], [ %i.e, %find_control_char.exit182 ], [ %i.e, %bb.ar ], [ %i.e, %bb.ao ]
  store i64 %storemerge, ptr %6, align 8, !tbaa !40
  br label %.thread

.thread:                                          ; preds = %PyUnicode_READ.exit126, %bb.o, %bb.j, %.thread198, %find_control_char.exit144.thread, %bb.ac, %find_control_char.exit182.thread, %bb.h, %find_control_char.exit.thread
  %.8 = phi i64 [ -1, %find_control_char.exit182.thread ], [ -1, %find_control_char.exit.thread ], [ %i.ab, %bb.h ], [ -1, %find_control_char.exit144.thread ], [ %i.cu, %bb.ac ], [ %i.et, %.thread198 ], [ -1, %bb.j ], [ %spec.select400, %PyUnicode_READ.exit126 ], [ %i.bd, %bb.o ]
  ret i64 %.8
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__TextIOBase_detach(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) #0 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not6 = icmp eq ptr %4, null
  br i1 %.not6, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr i8, ptr %4, i64 16
  %.val = load i64, ptr %i.a, align 8, !tbaa !43
  %.not7 = icmp eq i64 %.val, 0
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.b = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !17
  tail call void @PyErr_SetString(ptr noundef %i.b, ptr noundef nonnull @.str.10) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr i8, ptr %1, i64 888
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr i8, ptr %.val8, i64 24
  %.val8.val = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.e = getelementptr i8, ptr %.val8.val, i64 8
  %.val8.val.val = load ptr, ptr %i.e, align 8, !tbaa !56
  tail call void @PyErr_SetString(ptr noundef %.val8.val.val, ptr noundef nonnull @.str.5) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__TextIOBase_read(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %4, null
  %i.c = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io__TextIOBase_read._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = icmp slt i64 %3, 1
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.i = call i32 @PyLong_AsInt(ptr noundef %i.h) #10
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @PyErr_Occurred() #10
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread
  %i.l = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.n, align 8, !tbaa !56
  call void @PyErr_SetString(ptr noundef %.val.val.val, ptr noundef nonnull @.str.6) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__TextIOBase_readline(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = icmp eq ptr %4, null
  %i.c = icmp ult i64 %3, 2
  %or.cond3 = and i1 %i.c, %i.b
  %i.d = icmp ne ptr %2, null
  %or.cond5 = and i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = call ptr @_PyArg_UnpackKeywords(ptr noundef %2, i64 noundef %3, ptr noundef null, ptr noundef %4, ptr noundef nonnull @_io__TextIOBase_readline._parser, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %i.a) #10 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %i.e, %bb.b ], [ %2, %bb.a ]
  %i.g = icmp slt i64 %3, 1
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !17
  %i.i = call i32 @PyLong_AsInt(ptr noundef %i.h) #10
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = call ptr @PyErr_Occurred() #10
  %.not24 = icmp eq ptr %i.k, null
  br i1 %.not24, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d, %.thread
  %i.l = getelementptr i8, ptr %1, i64 888
  %.val = load ptr, ptr %i.l, align 8, !tbaa !44
  %i.m = getelementptr i8, ptr %.val, i64 24
  %.val.val = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.n = getelementptr i8, ptr %.val.val, i64 8
  %.val.val.val = load ptr, ptr %i.n, align 8, !tbaa !56
  call void @PyErr_SetString(ptr noundef %.val.val.val, ptr noundef nonnull @.str.7) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret ptr null
}

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @_io__TextIOBase_write(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) #0 {
bb.a:
  %i.a = alloca [1 x ptr], align 8                ; 3 uses
  %i.b = alloca i64, align 8                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.c = icmp eq ptr %4, null
  %i.d = icmp eq i64 %3, 1
  %or.cond3 = and i1 %i.d, %i.c
  %i.e = icmp ne ptr %2, null
end_hunk_0
