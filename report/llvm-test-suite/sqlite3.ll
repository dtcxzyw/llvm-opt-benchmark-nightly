Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/sqlite3?download=true
inline.NumInlined: 3254
inline.NumDeleted: 427
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 107
begin_hunk_0_@vxprintf:bb.a
  %.0336.lcssa = phi i32 [ 0, %bb.do ], [ %i.sq, %._crit_edge.loopexit ]
  %.0333.lcssa = phi i32 [ 0, %bb.do ], [ %spec.select551, %._crit_edge.loopexit ]
  %i.sr = and i1 %i.cg, %i.si                     ; 3 uses
  %i.ss = select i1 %i.sr, i32 3, i32 1
  %i.st = add nuw nsw i32 %i.ss, %.0336.lcssa
  %i.su = add nuw nsw i32 %i.st, %.0333.lcssa     ; 2 uses
  %i.sv = icmp samesign ugt i32 %i.su, 350
  br i1 %i.sv, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %._crit_edge
  %i.sw = call ptr @sqlite3_malloc(i32 noundef %i.su) ; 3 uses
  %i.sx = icmp eq ptr %i.sw, null
  br i1 %i.sx, label %.thread609, label %bb.dq

bb.dq:                                            ; preds = %._crit_edge, %bb.dp
  %.22 = phi ptr [ %i.sw, %bb.dp ], [ %i.a, %._crit_edge ] ; 6 uses
  %.1358 = phi ptr [ %i.sw, %bb.dp ], [ null, %._crit_edge ]
  br i1 %i.sr, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  store i8 39, ptr %.22, align 1, !tbaa !139
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %.0334 = phi i32 [ 1, %bb.dr ], [ 0, %bb.dq ]   ; 2 uses
  %i.sy = load i8, ptr %.0, align 1, !tbaa !139   ; 2 uses
  %.not507709 = icmp eq i8 %i.sy, 0
  br i1 %.not507709, label %._crit_edge714, label %.lr.ph713

.lr.ph713:                                        ; preds = %bb.ds, %bb.du
  %indvars.iv835 = phi i64 [ %indvars.iv.next836, %bb.du ], [ 0, %bb.ds ]
  %i.sz = phi i8 [ %i.ti, %bb.du ], [ %i.sy, %bb.ds ] ; 2 uses
  %.1335711 = phi i32 [ %.2, %bb.du ], [ %.0334, %bb.ds ] ; 3 uses
  %i.ta = add nsw i32 %.1335711, 1                ; 2 uses
  %i.tb = sext i32 %.1335711 to i64
  %i.tc = getelementptr inbounds i8, ptr %.22, i64 %i.tb
  store i8 %i.sz, ptr %i.tc, align 1, !tbaa !139
  %i.td = icmp eq i8 %i.sz, %i.ch
  br i1 %i.td, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.lr.ph713
  %i.te = add nsw i32 %.1335711, 2
  %i.tf = sext i32 %i.ta to i64
  %i.tg = getelementptr inbounds i8, ptr %.22, i64 %i.tf
  store i8 %i.ch, ptr %i.tg, align 1, !tbaa !139
  br label %bb.du

bb.du:                                            ; preds = %.lr.ph713, %bb.dt
  %.2 = phi i32 [ %i.te, %bb.dt ], [ %i.ta, %.lr.ph713 ] ; 2 uses
  %indvars.iv.next836 = add nuw nsw i64 %indvars.iv835, 1 ; 2 uses
  %i.th = getelementptr inbounds nuw i8, ptr %.0, i64 %indvars.iv.next836
  %i.ti = load i8, ptr %i.th, align 1, !tbaa !139 ; 2 uses
  %.not507 = icmp eq i8 %i.ti, 0
  br i1 %.not507, label %._crit_edge714, label %.lr.ph713, !llvm.loop !1077

._crit_edge714:                                   ; preds = %bb.du, %bb.ds
  %.1335.lcssa = phi i32 [ %.0334, %bb.ds ], [ %.2, %bb.du ] ; 3 uses
  br i1 %i.sr, label %bb.dv, label %.thread633

bb.dv:                                            ; preds = %._crit_edge714
  %i.tj = add nsw i32 %.1335.lcssa, 1
  %i.tk = sext i32 %.1335.lcssa to i64
  %i.tl = getelementptr inbounds i8, ptr %.22, i64 %i.tk
  store i8 39, ptr %i.tl, align 1, !tbaa !139
  br label %.thread633

.thread633:                                       ; preds = %._crit_edge714, %bb.dv
  %.3 = phi i32 [ %i.tj, %bb.dv ], [ %.1335.lcssa, %._crit_edge714 ] ; 2 uses
  %i.tm = sext i32 %.3 to i64
  %i.tn = getelementptr inbounds i8, ptr %.22, i64 %i.tm
  store i8 0, ptr %i.tn, align 1, !tbaa !139
  br label %.loopexit648

bb.dw:                                            ; preds = %.thread1007
  %i.to = load i32, ptr %3, align 8               ; 3 uses
  %i.tp = icmp ult i32 %i.to, 41
  br i1 %i.tp, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.tq = load ptr, ptr %i.c, align 8
  %i.tr = zext nneg i32 %i.to to i64
  %i.ts = getelementptr i8, ptr %i.tq, i64 %i.tr
  %i.tt = add nuw nsw i32 %i.to, 8
  store i32 %i.tt, ptr %3, align 8
  br label %bb.dz

bb.dy:                                            ; preds = %bb.dw
  %i.tu = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.tv = getelementptr i8, ptr %i.tu, i64 8
  store ptr %i.tv, ptr %i.b, align 8
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.tw = phi ptr [ %i.ts, %bb.dx ], [ %i.tu, %bb.dy ]
  %i.tx = load ptr, ptr %i.tw, align 8, !tbaa !152 ; 3 uses
  %.not504 = icmp eq ptr %i.tx, null
  br i1 %.not504, label %.loopexit648, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !154 ; 2 uses
  %.not505 = icmp eq ptr %i.ty, null
  br i1 %.not505, label %.loopexit648, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.ua = load i32, ptr %i.tz, align 8
  %i.ub = lshr i32 %i.ua, 1
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef nonnull %i.ty, i32 noundef %i.ub)
  br label %.loopexit648

bb.ec:                                            ; preds = %.thread1007
  %i.uc = load i32, ptr %3, align 8               ; 5 uses
  %i.ud = icmp ult i32 %i.uc, 41
  br i1 %i.ud, label %bb.ed, label %.thread1620

.thread1620:                                      ; preds = %bb.ec
  %i.ue = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.uf = getelementptr i8, ptr %i.ue, i64 8
  store ptr %i.uf, ptr %i.b, align 8
  %i.ug = load ptr, ptr %i.ue, align 8, !tbaa !1085
  br label %bb.ef

bb.ed:                                            ; preds = %bb.ec
  %i.uh = load ptr, ptr %i.c, align 8
  %i.ui = zext nneg i32 %i.uc to i64
  %i.uj = getelementptr i8, ptr %i.uh, i64 %i.ui
  %i.uk = add nuw nsw i32 %i.uc, 8                ; 2 uses
  store i32 %i.uk, ptr %3, align 8
  %i.ul = load ptr, ptr %i.uj, align 8, !tbaa !1085 ; 2 uses
  %i.um = icmp ult i32 %i.uc, 33
  br i1 %i.um, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.un = load ptr, ptr %i.c, align 8
  %i.uo = zext nneg i32 %i.uk to i64
  %i.up = getelementptr i8, ptr %i.un, i64 %i.uo
  %i.uq = add nuw nsw i32 %i.uc, 16
  store i32 %i.uq, ptr %3, align 8
  br label %bb.eg

bb.ef:                                            ; preds = %.thread1620, %bb.ed
  %i.ur = phi ptr [ %i.ug, %.thread1620 ], [ %i.ul, %bb.ed ]
  %i.us = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.ut = getelementptr i8, ptr %i.us, i64 8
  store ptr %i.ut, ptr %i.b, align 8
  br label %bb.eg

bb.eg:                                            ; preds = %bb.ef, %bb.ee
  %i.uu = phi ptr [ %i.ul, %bb.ee ], [ %i.ur, %bb.ef ]
  %i.uv = phi ptr [ %i.up, %bb.ee ], [ %i.us, %bb.ef ]
  %i.uw = load i32, ptr %i.uv, align 4, !tbaa !112
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uy = sext i32 %i.uw to i64
  %i.uz = getelementptr inbounds [72 x i8], ptr %i.ux, i64 %i.uy ; 2 uses
  %i.va = load ptr, ptr %i.uz, align 8, !tbaa !161 ; 3 uses
  %.not502 = icmp eq ptr %i.va, null
  br i1 %.not502, label %bb.ej, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.vb = load i8, ptr %i.va, align 1, !tbaa !139
  %.not503 = icmp eq i8 %i.vb, 0
  br i1 %.not503, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef nonnull %i.va, i32 noundef -1)
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef 1)
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh, %bb.eg
  %i.vc = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !162
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef %i.vd, i32 noundef -1)
  br label %.loopexit648

.loopexit648:                                     ; preds = %.lr.ph702.preheader, %.preheader659, %.thread633, %bb.dk, %bb.dz, %bb.ea, %bb.eb, %bb.dg, %.thread1007, %._crit_edge720, %bb.cu, %bb.ej, %bb.da, %bb.cz, %bb.by, %.loopexit
  %.11442 = phi ptr [ %.9440, %.thread1007 ], [ %.9440, %.loopexit ], [ %.9440, %bb.ej ], [ %.9440, %bb.by ], [ %.9440, %bb.cu ], [ %.10441, %bb.dg ], [ %.9440, %._crit_edge720 ], [ %.9440, %bb.cz ], [ %.9440, %bb.da ], [ %.9440, %bb.ea ], [ %.9440, %bb.dz ], [ %.10441, %.lr.ph702.preheader ], [ %.9440, %bb.dk ], [ %.9440, %.thread633 ], [ %.9440, %bb.eb ], [ %.10441, %.preheader659 ] ; 2 uses
  %.24 = phi ptr [ %.1416, %.thread1007 ], [ %.8423, %.loopexit ], [ %.1416, %bb.ej ], [ %.9, %bb.by ], [ %i.a, %bb.cu ], [ %i.a, %bb.dg ], [ @.str.17, %._crit_edge720 ], [ %.1416, %bb.cz ], [ %i.a, %bb.da ], [ %.1416, %bb.ea ], [ %.1416, %bb.dz ], [ %i.a, %.lr.ph702.preheader ], [ %.21, %bb.dk ], [ %.22, %.thread633 ], [ %.1416, %bb.eb ], [ %i.a, %.preheader659 ] ; 2 uses
  %.3405 = phi i32 [ %.0402, %.thread1007 ], [ %i.gx, %.loopexit ], [ 0, %bb.ej ], [ %i.jx, %bb.by ], [ %i.of, %bb.cu ], [ 1, %bb.dg ], [ 3, %._crit_edge720 ], [ 0, %bb.cz ], [ 1, %bb.da ], [ 0, %bb.ea ], [ 0, %bb.dz ], [ %.3409, %.lr.ph702.preheader ], [ %spec.select554, %bb.dk ], [ %.3, %.thread633 ], [ 0, %bb.eb ], [ %.2408, %.preheader659 ] ; 2 uses
  %.3397 = phi i32 [ %spec.store.select, %.thread1007 ], [ %spec.store.select, %.loopexit ], [ 0, %bb.ej ], [ %spec.store.select, %bb.by ], [ %spec.store.select, %bb.cu ], [ %spec.store.select, %bb.dg ], [ %spec.store.select, %._crit_edge720 ], [ 0, %bb.cz ], [ %spec.store.select, %bb.da ], [ 0, %bb.ea ], [ 0, %bb.dz ], [ %spec.store.select, %.lr.ph702.preheader ], [ %spec.store.select, %bb.dk ], [ %spec.store.select, %.thread633 ], [ 0, %bb.eb ], [ %spec.store.select, %.preheader659 ] ; 2 uses
  %.3360 = phi ptr [ null, %.thread1007 ], [ null, %.loopexit ], [ null, %bb.ej ], [ null, %bb.by ], [ null, %bb.cu ], [ null, %bb.dg ], [ null, %._crit_edge720 ], [ null, %bb.cz ], [ null, %bb.da ], [ null, %bb.ea ], [ null, %bb.dz ], [ null, %.lr.ph702.preheader ], [ %.0357, %bb.dk ], [ %.1358, %.thread633 ], [ null, %bb.eb ], [ null, %.preheader659 ] ; 2 uses
  %.not533 = icmp eq i8 %.3393, 0
  br i1 %.not533, label %.loopexit648.thread, label %appendSpace.exit

.loopexit648.thread:                              ; preds = %.preheader647, %.lr.ph773.preheader, %.loopexit648
  %.33601636 = phi ptr [ %.3360, %.loopexit648 ], [ null, %.lr.ph773.preheader ], [ null, %.preheader647 ] ; 3 uses
  %.33971634 = phi i32 [ %.3397, %.loopexit648 ], [ %spec.store.select, %.lr.ph773.preheader ], [ %spec.store.select, %.preheader647 ] ; 4 uses
  %.34051632 = phi i32 [ %.3405, %.loopexit648 ], [ %spec.store.select, %.lr.ph773.preheader ], [ %spec.store.select, %.preheader647 ] ; 4 uses
  %.241630 = phi ptr [ %.24, %.loopexit648 ], [ %i.a, %.lr.ph773.preheader ], [ %i.a, %.preheader647 ] ; 3 uses
  %.114421628 = phi ptr [ %.11442, %.loopexit648 ], [ %.9440, %.lr.ph773.preheader ], [ %.9440, %.preheader647 ] ; 3 uses
  %i.ve = sub nsw i32 %.33971634, %.34051632      ; 4 uses
  %i.vf = icmp sgt i32 %i.ve, 0
  br i1 %i.vf, label %bb.ek, label %appendSpace.exit

bb.ek:                                            ; preds = %.loopexit648.thread
  %i.vg = icmp samesign ugt i32 %i.ve, 28
  br i1 %i.vg, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %bb.ek, %.lr.ph.i
  %.06.i = phi i32 [ %i.vh, %.lr.ph.i ], [ %i.ve, %bb.ek ]
  call fastcc void @sqlite3StrAccumAppend(ptr noundef nonnull %0, ptr noundef nonnull @appendSpace.zSpaces, i32 noundef 29)
  %i.vh = add i32 %.06.i, -29                     ; 4 uses
  %i.vi = icmp ugt i32 %i.vh, 28
  br i1 %i.vi, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !1078

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i32 %i.vh, 0
  br i1 %.not.i, label %appendSpace.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.ek
  %.0.lcssa10.i = phi i32 [ %i.vh, %._crit_edge.i ], [ %i.ve, %bb.ek ]
  call fastcc void @sqlite3StrAccumAppend(ptr noundef nonnull %0, ptr noundef nonnull @appendSpace.zSpaces, i32 noundef %.0.lcssa10.i)
  br label %appendSpace.exit

appendSpace.exit:                                 ; preds = %._crit_edge.thread.i, %._crit_edge.i, %.loopexit648.thread, %.loopexit648
  %.not5331637 = phi i1 [ true, %._crit_edge.thread.i ], [ true, %._crit_edge.i ], [ true, %.loopexit648.thread ], [ false, %.loopexit648 ]
  %.33601635 = phi ptr [ %.33601636, %._crit_edge.thread.i ], [ %.33601636, %._crit_edge.i ], [ %.33601636, %.loopexit648.thread ], [ %.3360, %.loopexit648 ] ; 2 uses
  %.33971633 = phi i32 [ %.33971634, %._crit_edge.thread.i ], [ %.33971634, %._crit_edge.i ], [ %.33971634, %.loopexit648.thread ], [ %.3397, %.loopexit648 ]
  %.34051631 = phi i32 [ %.34051632, %._crit_edge.thread.i ], [ %.34051632, %._crit_edge.i ], [ %.34051632, %.loopexit648.thread ], [ %.3405, %.loopexit648 ] ; 4 uses
  %.241629 = phi ptr [ %.241630, %._crit_edge.thread.i ], [ %.241630, %._crit_edge.i ], [ %.241630, %.loopexit648.thread ], [ %.24, %.loopexit648 ] ; 2 uses
  %.114421627 = phi ptr [ %.114421628, %._crit_edge.thread.i ], [ %.114421628, %._crit_edge.i ], [ %.114421628, %.loopexit648.thread ], [ %.11442, %.loopexit648 ]
  %i.vj = icmp sgt i32 %.34051631, 0
  br i1 %i.vj, label %bb.el, label %bb.em

bb.el:                                            ; preds = %appendSpace.exit
  call fastcc void @sqlite3StrAccumAppend(ptr noundef %0, ptr noundef %.241629, i32 noundef %.34051631)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %appendSpace.exit
  br i1 %.not5331637, label %appendSpace.exit563, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.vk = sub nsw i32 %.33971633, %.34051631      ; 4 uses
  %i.vl = icmp sgt i32 %i.vk, 0
  br i1 %i.vl, label %bb.eo, label %appendSpace.exit563

bb.eo:                                            ; preds = %bb.en
  %i.vm = icmp samesign ugt i32 %i.vk, 28
  br i1 %i.vm, label %.lr.ph.i559, label %._crit_edge.thread.i557

.lr.ph.i559:                                      ; preds = %bb.eo, %.lr.ph.i559
  %.06.i560 = phi i32 [ %i.vn, %.lr.ph.i559 ], [ %i.vk, %bb.eo ]
  call fastcc void @sqlite3StrAccumAppend(ptr noundef nonnull %0, ptr noundef nonnull @appendSpace.zSpaces, i32 noundef 29)
  %i.vn = add i32 %.06.i560, -29                  ; 4 uses
  %i.vo = icmp ugt i32 %i.vn, 28
  br i1 %i.vo, label %.lr.ph.i559, label %._crit_edge.i561, !llvm.loop !1078

._crit_edge.i561:                                 ; preds = %.lr.ph.i559
  %.not.i562 = icmp eq i32 %i.vn, 0
  br i1 %.not.i562, label %appendSpace.exit563, label %._crit_edge.thread.i557

._crit_edge.thread.i557:                          ; preds = %._crit_edge.i561, %bb.eo
  %.0.lcssa10.i558 = phi i32 [ %i.vn, %._crit_edge.i561 ], [ %i.vk, %bb.eo ]
  call fastcc void @sqlite3StrAccumAppend(ptr noundef nonnull %0, ptr noundef nonnull @appendSpace.zSpaces, i32 noundef %.0.lcssa10.i558)
  br label %appendSpace.exit563

appendSpace.exit563:                              ; preds = %._crit_edge.thread.i557, %._crit_edge.i561, %bb.en, %bb.em
  %.not534 = icmp eq ptr %.33601635, null
  br i1 %.not534, label %bb.ep, label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %appendSpace.exit563
  %i.vp = getelementptr inbounds i8, ptr %.33601635, i64 -8 ; 2 uses
  %i.vq = load i64, ptr %i.vp, align 8, !tbaa !130
  %i.vr = shl i64 %i.vq, 32
  %i.vs = ashr exact i64 %i.vr, 32
  %i.vt = load i64, ptr @mem.5, align 8, !tbaa !125
  %i.vu = sub nsw i64 %i.vt, %i.vs
  store i64 %i.vu, ptr @mem.5, align 8, !tbaa !125
  call void @free(ptr noundef nonnull %i.vp) #43
  br label %bb.ep

bb.ep:                                            ; preds = %appendSpace.exit563, %sqlite3_free.exit
  %i.vv = getelementptr inbounds nuw i8, ptr %.114421627, i64 1
  br label %bb.b, !llvm.loop !1079

.thread609:                                       ; preds = %bb.dp, %bb.d, %bb.b, %bb.z, %bb.y, %bb.l, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_mprintf(ptr nofree noundef readonly captures(none) %0, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [350 x i8], align 16              ; 4 uses
  %1 = alloca %struct.StrAccum, align 8           ; 11 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #43
  call void @llvm.va_start.p0(ptr nonnull %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #43
  store ptr %i.a, ptr %1, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20
  store i32 350, ptr %i.d, align 4, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 25 ; 2 uses
  store i8 1, ptr %i.e, align 1, !tbaa !136
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 26
  store i8 0, ptr %i.f, align 2, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !138
  call fastcc void @vxprintf(ptr noundef %1, i32 noundef 0, ptr noundef readonly %0, ptr noundef nonnull %2)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !133  ; 5 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %sqlite3_vmprintf.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load i32, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !139
  %i.l = load i8, ptr %i.e, align 1, !tbaa !136
  %.not15.i.i = icmp eq i8 %i.l, 0
  br i1 %.not15.i.i, label %sqlite3_vmprintf.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %1, align 8, !tbaa !132    ; 2 uses
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.d, label %sqlite3_vmprintf.exit

bb.d:                                             ; preds = %bb.c
  %i.o = add nsw i32 %i.i, 1                      ; 2 uses
  %i.p = call ptr @sqlite3_malloc(i32 noundef %i.o) ; 3 uses
  %.not16.i.i = icmp eq ptr %i.p, null
  br i1 %.not16.i.i, label %sqlite3_vmprintf.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = sext i32 %i.o to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %sqlite3_vmprintf.exit

sqlite3_vmprintf.exit:                            ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e
  %i.r = phi ptr [ %i.h, %bb.b ], [ %i.h, %bb.c ], [ null, %bb.a ], [ %i.p, %bb.e ], [ null, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #43
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #43
  ret ptr %i.r
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nounwind uwtable
define dso_local ptr @sqlite3_snprintf(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ...) local_unnamed_addr #5 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %4 = alloca %struct.StrAccum, align 8           ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #43
  %i.a = icmp slt i32 %0, 1
  br i1 %i.a, label %sqlite3StrAccumFinish.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %4, align 8, !tbaa !132
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20
  store i32 %0, ptr %i.d, align 4, !tbaa !135
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 25 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 26
  store i8 0, ptr %i.f, align 2, !tbaa !137
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i8 0, ptr %i.g, align 8, !tbaa !138
  store i8 0, ptr %i.e, align 1, !tbaa !136
  call void @llvm.va_start.p0(ptr nonnull %3)
  call fastcc void @vxprintf(ptr noundef %4, i32 noundef 0, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !133  ; 5 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %sqlite3StrAccumFinish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.c, align 8, !tbaa !134  ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !139
  %i.l = load i8, ptr %i.e, align 1, !tbaa !136
  %.not15.i = icmp eq i8 %i.l, 0
  br i1 %.not15.i, label %sqlite3StrAccumFinish.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !132    ; 2 uses
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.e, label %sqlite3StrAccumFinish.exit

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.i, 1                      ; 2 uses
  %i.p = call ptr @sqlite3_malloc(i32 noundef %i.o) ; 3 uses
  %.not16.i = icmp eq ptr %i.p, null
  br i1 %.not16.i, label %sqlite3StrAccumFinish.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = sext i32 %i.o to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr align 1 %i.m, i64 %i.q, i1 false)
  br label %sqlite3StrAccumFinish.exit

sqlite3StrAccumFinish.exit:                       ; preds = %bb.e, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %i.h, %bb.c ], [ %i.h, %bb.d ], [ null, %bb.b ], [ %i.p, %bb.f ], [ null, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #43
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #43
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @sqlite3_enable_shared_cache(i32 noundef %0) local_unnamed_addr #12 {
bb.a:
  store i32 %0, ptr @sqlite3SharedCacheEnabled, align 4, !tbaa !112
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @sqlite3_sql(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !176
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @sqlite3_expired(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 339
  %i.c = load i8, ptr %i.b, align 1, !tbaa !177
  %i.d = icmp ne i8 %i.c, 0
  %i.e = zext i1 %i.d to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i32 [ 1, %bb.a ], [ %i.e, %bb.b ]
  ret i32 %i.f
}

end_hunk_0
begin_hunk_1_@getAutoVacuum:bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i21, i64 1 ; 2 uses
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !139 ; 2 uses
  %.not.i28 = icmp eq i8 %i.at, 0
  br i1 %.not.i28, label %..critedge.loopexit.i23_crit_edge, label %.lr.ph.i20, !llvm.loop !10

..critedge.loopexit.i23_crit_edge:                ; preds = %bb.d
  br label %sqlite3StrICmp.exit29, !llvm.loop !10

.critedge.loopexit.i23split:                      ; preds = %.lr.ph.i20
  %i.au = zext i8 %i.ai to i64
  br label %sqlite3StrICmp.exit29

sqlite3StrICmp.exit29:                            ; preds = %bb.a, %..critedge.loopexit.i23_crit_edge, %.critedge.loopexit.i23split
  %.0.lcssa.i26 = phi ptr [ @.str.493, %bb.a ], [ %.012.i21, %.critedge.loopexit.i23split ], [ %i.as, %..critedge.loopexit.i23_crit_edge ]
  %.lcssa.i27 = phi i64 [ 0, %bb.a ], [ %i.au, %.critedge.loopexit.i23split ], [ 0, %..critedge.loopexit.i23_crit_edge ]
  %i.av = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i27
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !139
  %i.ax = load i8, ptr %.0.lcssa.i26, align 1, !tbaa !139
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !139
  %i.bb = icmp eq i8 %i.aw, %i.ba
  br i1 %i.bb, label %bb.f, label %bb.e

bb.e:                                             ; preds = %sqlite3StrICmp.exit29
  %i.bc = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #43, !inline_history !64
  %i.bd = trunc i64 %i.bc to i32                  ; 2 uses
  %or.cond = icmp ult i32 %i.bd, 3
  %i.be = select i1 %or.cond, i32 %i.bd, i32 0
  br label %bb.f

bb.f:                                             ; preds = %sqlite3StrICmp.exit29, %sqlite3StrICmp.exit18, %sqlite3StrICmp.exit, %bb.e
  %.0 = phi i32 [ %i.be, %bb.e ], [ 0, %sqlite3StrICmp.exit ], [ 1, %sqlite3StrICmp.exit18 ], [ 2, %sqlite3StrICmp.exit29 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @changeTempStorage(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !139     ; 4 uses
  %i.b = add i8 %i.a, -48                         ; 2 uses
  %or.cond.i = icmp ult i8 %i.b, 3
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = zext nneg i8 %i.b to i32
  br label %getTempStore.exit

bb.c:                                             ; preds = %bb.a
  %.not10.i.i = icmp eq i8 %i.a, 0
  br i1 %.not10.i.i, label %sqlite3StrICmp.exit16.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %i.d = phi i8 [ %i.o, %bb.d ], [ %i.a, %bb.c ]
  %.012.i.i = phi ptr [ %i.n, %bb.d ], [ @.str.465, %bb.c ] ; 2 uses
  %.0911.i.i = phi ptr [ %i.m, %bb.d ], [ %1, %bb.c ]
  %i.e = zext i8 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !139
  %i.h = load i8, ptr %.012.i.i, align 1, !tbaa !139
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !139
  %i.l = icmp eq i8 %i.g, %i.k
  br i1 %i.l, label %bb.d, label %.lr.ph.i7.i.preheader

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.0911.i.i, i64 1 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.m, align 1, !tbaa !139   ; 2 uses
  %.not.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i, label %sqlite3StrICmp.exit.i, label %.lr.ph.i.i, !llvm.loop !10

sqlite3StrICmp.exit.i:                            ; preds = %bb.d
  %.pre19.i = load i8, ptr %i.n, align 1, !tbaa !139
  %i.p = icmp eq i8 %.pre19.i, 0
  br i1 %i.p, label %getTempStore.exit, label %.lr.ph.i7.i.preheader

.lr.ph.i7.i.preheader:                            ; preds = %.lr.ph.i.i, %sqlite3StrICmp.exit.i
  br label %.lr.ph.i7.i

.lr.ph.i7.i:                                      ; preds = %.lr.ph.i7.i.preheader, %bb.e
  %i.q = phi i8 [ %i.ab, %bb.e ], [ %i.a, %.lr.ph.i7.i.preheader ]
  %.012.i8.i = phi ptr [ %i.aa, %bb.e ], [ @.str.494, %.lr.ph.i7.i.preheader ] ; 3 uses
  %.0911.i9.i = phi ptr [ %i.z, %bb.e ], [ %1, %.lr.ph.i7.i.preheader ]
  %i.r = zext i8 %i.q to i64                      ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !139
  %i.u = load i8, ptr %.012.i8.i, align 1, !tbaa !139
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !139
  %i.y = icmp eq i8 %i.t, %i.x
  br i1 %i.y, label %bb.e, label %sqlite3StrICmp.exit16.i

bb.e:                                             ; preds = %.lr.ph.i7.i
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i9.i, i64 1 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.012.i8.i, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.z, align 1, !tbaa !139  ; 2 uses
  %.not.i15.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i15.i, label %..critedge.loopexit.i10_crit_edge.i, label %.lr.ph.i7.i, !llvm.loop !10

..critedge.loopexit.i10_crit_edge.i:              ; preds = %bb.e
  br label %sqlite3StrICmp.exit16.i, !llvm.loop !10

sqlite3StrICmp.exit16.i:                          ; preds = %.lr.ph.i7.i, %..critedge.loopexit.i10_crit_edge.i, %bb.c
  %.0.lcssa.i13.i = phi ptr [ @.str.494, %bb.c ], [ %i.aa, %..critedge.loopexit.i10_crit_edge.i ], [ %.012.i8.i, %.lr.ph.i7.i ]
  %.lcssa.i14.i = phi i64 [ 0, %bb.c ], [ 0, %..critedge.loopexit.i10_crit_edge.i ], [ %i.r, %.lr.ph.i7.i ]
  %i.ac = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.lcssa.i14.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !139
  %i.ae = load i8, ptr %.0.lcssa.i13.i, align 1, !tbaa !139
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !139
  %i.ai = icmp eq i8 %i.ad, %i.ah
  %..i = select i1 %i.ai, i32 2, i32 0
  br label %getTempStore.exit

getTempStore.exit:                                ; preds = %bb.b, %sqlite3StrICmp.exit.i, %sqlite3StrICmp.exit16.i
  %.0.i = phi i32 [ %i.c, %bb.b ], [ 1, %sqlite3StrICmp.exit.i ], [ %..i, %sqlite3StrICmp.exit16.i ] ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !292   ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 41 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !742
  %i.am = zext i8 %i.al to i32
  %i.an = icmp eq i32 %.0.i, %i.am
  br i1 %i.an, label %bb.j, label %bb.f

bb.f:                                             ; preds = %getTempStore.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !280
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !422 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.as = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.at = load i8, ptr %i.as, align 8, !tbaa !481
  %.not8.i = icmp eq i8 %i.at, 0
  br i1 %.not8.i, label %invalidateTempStorage.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.ar)
  %i.au = load ptr, ptr %i.ao, align 8, !tbaa !280
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 56
  store ptr null, ptr %i.av, align 8, !tbaa !422
  tail call fastcc void @sqlite3ResetInternalSchema(ptr noundef nonnull %i.aj, i32 noundef 0)
  br label %bb.i

invalidateTempStorage.exit:                       ; preds = %bb.g
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.495)
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.f
  %i.aw = trunc nuw nsw i32 %.0.i to i8
  store i8 %i.aw, ptr %i.ak, align 1, !tbaa !742
  br label %bb.j

bb.j:                                             ; preds = %invalidateTempStorage.exit, %getTempStore.exit, %bb.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @invalidateTempStorage(ptr nofree noundef captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !292    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !280
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !422  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !481
  %.not8 = icmp eq i8 %i.g, 0
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ptr, ...) @sqlite3ErrorMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.495)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @sqlite3BtreeClose(ptr noundef nonnull %i.e)
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !280
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store ptr null, ptr %i.i, align 8, !tbaa !422
  tail call fastcc void @sqlite3ResetInternalSchema(ptr noundef nonnull %i.a, i32 noundef 0)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @getSafetyLevel(ptr noundef nonnull %0) unnamed_addr #5 {
bb.a:
  %i.a = tail call ptr @__ctype_b_loc() #46
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !233
  %i.c = load i8, ptr %0, align 1, !tbaa !139     ; 6 uses
  %i.d = sext i8 %i.c to i64
  %i.e = getelementptr inbounds [2 x i8], ptr %i.b, i64 %i.d
  %i.f = load i16, ptr %i.e, align 2, !tbaa !234
  %i.g = and i16 %i.f, 2048
  %.not = icmp eq i16 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i64 @__isoc23_strtol(ptr noundef nonnull %0, ptr noundef null, i32 noundef 10) #43, !inline_history !64
  %i.i = trunc i64 %i.h to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.j = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #42
  %.fr26 = freeze i64 %i.j
  %i.k = trunc i64 %.fr26 to i32
  switch i32 %i.k, label %.loopexit [
    i32 4, label %.lr.ph.i.preheader.5
    i32 2, label %.lr.ph.i.preheader
    i32 3, label %.lr.ph.i.preheader.2
    i32 5, label %.lr.ph.i.preheader.3
  ]

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = and i8 %i.c, -33
  %i.m = icmp eq i8 %i.l, 79
  br i1 %i.m, label %.lr.ph.i.171, label %sqlite3StrNICmp.exit

.lr.ph.i.171:                                     ; preds = %.lr.ph.i.preheader
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !139
  %i.p = and i8 %i.o, -33
  %i.q = icmp eq i8 %i.p, 78
  br i1 %i.q, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit

sqlite3StrNICmp.exit:                             ; preds = %.lr.ph.i.preheader, %.lr.ph.i.171
  %.lcssa33 = phi i32 [ 111, %.lr.ph.i.preheader ], [ 110, %.lr.ph.i.171 ]
  %.015.i.lcssa30 = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.171 ]
  %i.r = load i8, ptr %.015.i.lcssa30, align 1, !tbaa !139
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !139
  %i.v = zext i8 %i.u to i32
  %i.w = icmp eq i32 %.lcssa33, %i.v
  br i1 %i.w, label %sqlite3StrNICmp.exit.thread, label %.lr.ph.i.preheader.1

sqlite3StrNICmp.exit.thread:                      ; preds = %sqlite3StrNICmp.exit, %sqlite3StrNICmp.exit.1, %sqlite3StrNICmp.exit.2, %sqlite3StrNICmp.exit.3, %sqlite3StrNICmp.exit.4, %sqlite3StrNICmp.exit.5, %sqlite3StrNICmp.exit.6, %.lr.ph.i.171, %.lr.ph.i.1.1, %.lr.ph.i.2.2, %.lr.ph.i.3.4, %.lr.ph.i.4.2, %.lr.ph.i.5.3, %.lr.ph.i.6.3
  %i.x = phi i64 [ 6, %.lr.ph.i.6.3 ], [ 4, %.lr.ph.i.4.2 ], [ 5, %.lr.ph.i.5.3 ], [ 0, %.lr.ph.i.171 ], [ 1, %.lr.ph.i.1.1 ], [ 2, %.lr.ph.i.2.2 ], [ 3, %.lr.ph.i.3.4 ], [ 0, %sqlite3StrNICmp.exit ], [ 1, %sqlite3StrNICmp.exit.1 ], [ 2, %sqlite3StrNICmp.exit.2 ], [ 3, %sqlite3StrNICmp.exit.3 ], [ 4, %sqlite3StrNICmp.exit.4 ], [ 5, %sqlite3StrNICmp.exit.5 ], [ 6, %sqlite3StrNICmp.exit.6 ]
  %i.y = getelementptr inbounds nuw i8, ptr @getSafetyLevel.iValue, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !139
  %i.aa = zext i8 %i.z to i32
  br label %.loopexit

.lr.ph.i.preheader.1:                             ; preds = %sqlite3StrNICmp.exit
  %i.ab = and i8 %i.c, -33
  %i.ac = icmp eq i8 %i.ab, 78
  br i1 %i.ac, label %.lr.ph.i.1.1, label %sqlite3StrNICmp.exit.1

.lr.ph.i.1.1:                                     ; preds = %.lr.ph.i.preheader.1
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !139
  %i.af = and i8 %i.ae, -33
  %i.ag = icmp eq i8 %i.af, 79
  br i1 %i.ag, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.1

sqlite3StrNICmp.exit.1:                           ; preds = %.lr.ph.i.preheader.1, %.lr.ph.i.1.1
  %.lcssa33.1 = phi i32 [ 110, %.lr.ph.i.preheader.1 ], [ 111, %.lr.ph.i.1.1 ]
  %.015.i.lcssa30.1 = phi ptr [ %0, %.lr.ph.i.preheader.1 ], [ %i.ad, %.lr.ph.i.1.1 ]
  %i.ah = load i8, ptr %.015.i.lcssa30.1, align 1, !tbaa !139
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !139
  %i.al = zext i8 %i.ak to i32
  %i.am = icmp eq i32 %.lcssa33.1, %i.al
  br i1 %i.am, label %sqlite3StrNICmp.exit.thread, label %.loopexit

.lr.ph.i.preheader.2:                             ; preds = %bb.c
  %1 = zext i8 %i.c to i64
  %2 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %1
  %i.an = and i8 %i.c, -33
  %i.ao = icmp eq i8 %i.an, 79
  br i1 %i.ao, label %.lr.ph.i.2.1, label %sqlite3StrNICmp.exit.2

.lr.ph.i.2.1:                                     ; preds = %.lr.ph.i.preheader.2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !139 ; 2 uses
  %3 = zext i8 %i.aq to i64
  %4 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %3
  %i.ar = and i8 %i.aq, -33
  %i.as = icmp eq i8 %i.ar, 70
  br i1 %i.as, label %.lr.ph.i.2.2, label %sqlite3StrNICmp.exit.2

.lr.ph.i.2.2:                                     ; preds = %.lr.ph.i.2.1
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !139 ; 2 uses
  %5 = zext i8 %i.au to i64
  %6 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %5
  %i.av = and i8 %i.au, -33
  %i.aw = icmp eq i8 %i.av, 70
  br i1 %i.aw, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.2

sqlite3StrNICmp.exit.2:                           ; preds = %.lr.ph.i.preheader.2, %.lr.ph.i.2.1, %.lr.ph.i.2.2
  %.pre161.in = phi ptr [ %2, %.lr.ph.i.preheader.2 ], [ %4, %.lr.ph.i.2.1 ], [ %6, %.lr.ph.i.2.2 ]
  %.lcssa33.2 = phi i32 [ 111, %.lr.ph.i.preheader.2 ], [ 102, %.lr.ph.i.2.1 ], [ 102, %.lr.ph.i.2.2 ]
  %.pre161 = load i8, ptr %.pre161.in, align 1, !tbaa !139
  %i.ax = zext i8 %.pre161 to i32
  %i.ay = icmp eq i32 %.lcssa33.2, %i.ax
  br i1 %i.ay, label %sqlite3StrNICmp.exit.thread, label %.lr.ph.i.preheader.4

.lr.ph.i.preheader.3:                             ; preds = %bb.c
  %i.az = and i8 %i.c, -33
  %i.ba = icmp eq i8 %i.az, 70
  br i1 %i.ba, label %.lr.ph.i.3.1, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.1:                                     ; preds = %.lr.ph.i.preheader.3
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !139
  %i.bd = and i8 %i.bc, -33
  %i.be = icmp eq i8 %i.bd, 65
  br i1 %i.be, label %.lr.ph.i.3.2, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.2:                                     ; preds = %.lr.ph.i.3.1
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !139
  %i.bh = and i8 %i.bg, -33
  %i.bi = icmp eq i8 %i.bh, 76
  br i1 %i.bi, label %.lr.ph.i.3.3, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.3:                                     ; preds = %.lr.ph.i.3.2
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !139
  %i.bl = and i8 %i.bk, -33
  %i.bm = icmp eq i8 %i.bl, 83
  br i1 %i.bm, label %.lr.ph.i.3.4, label %sqlite3StrNICmp.exit.3

.lr.ph.i.3.4:                                     ; preds = %.lr.ph.i.3.3
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !139
  %i.bp = and i8 %i.bo, -33
  %i.bq = icmp eq i8 %i.bp, 69
  br i1 %i.bq, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.3

sqlite3StrNICmp.exit.3:                           ; preds = %.lr.ph.i.preheader.3, %.lr.ph.i.3.1, %.lr.ph.i.3.2, %.lr.ph.i.3.3, %.lr.ph.i.3.4
  %.lcssa33.3 = phi i32 [ 102, %.lr.ph.i.preheader.3 ], [ 97, %.lr.ph.i.3.1 ], [ 108, %.lr.ph.i.3.2 ], [ 115, %.lr.ph.i.3.3 ], [ 101, %.lr.ph.i.3.4 ]
  %.015.i.lcssa30.3 = phi ptr [ %0, %.lr.ph.i.preheader.3 ], [ %i.bb, %.lr.ph.i.3.1 ], [ %i.bf, %.lr.ph.i.3.2 ], [ %i.bj, %.lr.ph.i.3.3 ], [ %i.bn, %.lr.ph.i.3.4 ]
  %.pre162 = load i8, ptr %.015.i.lcssa30.3, align 1, !tbaa !139
  %.phi.trans.insert163 = zext i8 %.pre162 to i64
  %.phi.trans.insert164 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert163
  %.pre165 = load i8, ptr %.phi.trans.insert164, align 1, !tbaa !139
  %i.br = zext i8 %.pre165 to i32
  %i.bs = icmp eq i32 %.lcssa33.3, %i.br
  br i1 %i.bs, label %sqlite3StrNICmp.exit.thread, label %.loopexit

.lr.ph.i.preheader.4:                             ; preds = %sqlite3StrNICmp.exit.2
  %7 = load i8, ptr %0, align 1, !tbaa !139
  %i.bt = and i8 %7, -33
  %i.bu = icmp eq i8 %i.bt, 89
  br i1 %i.bu, label %.lr.ph.i.4.1, label %sqlite3StrNICmp.exit.4

.lr.ph.i.4.1:                                     ; preds = %.lr.ph.i.preheader.4
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !139
  %i.bx = and i8 %i.bw, -33
  %i.by = icmp eq i8 %i.bx, 69
  br i1 %i.by, label %.lr.ph.i.4.2, label %sqlite3StrNICmp.exit.4

.lr.ph.i.4.2:                                     ; preds = %.lr.ph.i.4.1
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !139
  %i.cb = and i8 %i.ca, -33
  %i.cc = icmp eq i8 %i.cb, 83
  br i1 %i.cc, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.4

sqlite3StrNICmp.exit.4:                           ; preds = %.lr.ph.i.preheader.4, %.lr.ph.i.4.1, %.lr.ph.i.4.2
  %.lcssa33.4 = phi i32 [ 121, %.lr.ph.i.preheader.4 ], [ 101, %.lr.ph.i.4.1 ], [ 115, %.lr.ph.i.4.2 ]
  %.015.i.lcssa30.4 = phi ptr [ %0, %.lr.ph.i.preheader.4 ], [ %i.bv, %.lr.ph.i.4.1 ], [ %i.bz, %.lr.ph.i.4.2 ]
  %.pre166 = load i8, ptr %.015.i.lcssa30.4, align 1, !tbaa !139
  %.phi.trans.insert167 = zext i8 %.pre166 to i64
  %.phi.trans.insert168 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert167
  %.pre169 = load i8, ptr %.phi.trans.insert168, align 1, !tbaa !139
  %i.cd = zext i8 %.pre169 to i32
  %i.ce = icmp eq i32 %.lcssa33.4, %i.cd
  br i1 %i.ce, label %sqlite3StrNICmp.exit.thread, label %.loopexit

.lr.ph.i.preheader.5:                             ; preds = %bb.c
  %8 = load i8, ptr %0, align 1, !tbaa !139
  %i.cf = and i8 %8, -33
  %i.cg = icmp eq i8 %i.cf, 84
  br i1 %i.cg, label %.lr.ph.i.5.1, label %sqlite3StrNICmp.exit.5

.lr.ph.i.5.1:                                     ; preds = %.lr.ph.i.preheader.5
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !139
  %i.cj = and i8 %i.ci, -33
  %i.ck = icmp eq i8 %i.cj, 82
  br i1 %i.ck, label %.lr.ph.i.5.2, label %sqlite3StrNICmp.exit.5

.lr.ph.i.5.2:                                     ; preds = %.lr.ph.i.5.1
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !139
  %i.cn = and i8 %i.cm, -33
  %i.co = icmp eq i8 %i.cn, 85
  br i1 %i.co, label %.lr.ph.i.5.3, label %sqlite3StrNICmp.exit.5

.lr.ph.i.5.3:                                     ; preds = %.lr.ph.i.5.2
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !139
  %i.cr = and i8 %i.cq, -33
  %i.cs = icmp eq i8 %i.cr, 69
  br i1 %i.cs, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.5

sqlite3StrNICmp.exit.5:                           ; preds = %.lr.ph.i.preheader.5, %.lr.ph.i.5.1, %.lr.ph.i.5.2, %.lr.ph.i.5.3
  %.lcssa33.5 = phi i32 [ 116, %.lr.ph.i.preheader.5 ], [ 114, %.lr.ph.i.5.1 ], [ 117, %.lr.ph.i.5.2 ], [ 101, %.lr.ph.i.5.3 ]
  %.015.i.lcssa30.5 = phi ptr [ %0, %.lr.ph.i.preheader.5 ], [ %i.ch, %.lr.ph.i.5.1 ], [ %i.cl, %.lr.ph.i.5.2 ], [ %i.cp, %.lr.ph.i.5.3 ]
  %.pre170 = load i8, ptr %.015.i.lcssa30.5, align 1, !tbaa !139
  %.phi.trans.insert171 = zext i8 %.pre170 to i64
  %.phi.trans.insert172 = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %.phi.trans.insert171
  %.pre173 = load i8, ptr %.phi.trans.insert172, align 1, !tbaa !139
  %i.ct = zext i8 %.pre173 to i32
  %i.cu = icmp eq i32 %.lcssa33.5, %i.ct
  br i1 %i.cu, label %sqlite3StrNICmp.exit.thread, label %.lr.ph.i.preheader.6

.lr.ph.i.preheader.6:                             ; preds = %sqlite3StrNICmp.exit.5
  %9 = load i8, ptr %0, align 1, !tbaa !139
  %i.cv = and i8 %9, -33
  %i.cw = icmp eq i8 %i.cv, 70
  br i1 %i.cw, label %.lr.ph.i.6.1, label %sqlite3StrNICmp.exit.6

.lr.ph.i.6.1:                                     ; preds = %.lr.ph.i.preheader.6
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !139
  %i.cz = and i8 %i.cy, -33
  %i.da = icmp eq i8 %i.cz, 85
  br i1 %i.da, label %.lr.ph.i.6.2, label %sqlite3StrNICmp.exit.6

.lr.ph.i.6.2:                                     ; preds = %.lr.ph.i.6.1
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !139
  %i.dd = and i8 %i.dc, -33
  %i.de = icmp eq i8 %i.dd, 76
  br i1 %i.de, label %.lr.ph.i.6.3, label %sqlite3StrNICmp.exit.6

.lr.ph.i.6.3:                                     ; preds = %.lr.ph.i.6.2
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 3 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !139
  %i.dh = and i8 %i.dg, -33
  %i.di = icmp eq i8 %i.dh, 76
  br i1 %i.di, label %sqlite3StrNICmp.exit.thread, label %sqlite3StrNICmp.exit.6

sqlite3StrNICmp.exit.6:                           ; preds = %.lr.ph.i.preheader.6, %.lr.ph.i.6.1, %.lr.ph.i.6.2, %.lr.ph.i.6.3
  %.lcssa33.6 = phi i32 [ 102, %.lr.ph.i.preheader.6 ], [ 117, %.lr.ph.i.6.1 ], [ 108, %.lr.ph.i.6.2 ], [ 108, %.lr.ph.i.6.3 ]
  %.015.i.lcssa30.6 = phi ptr [ %0, %.lr.ph.i.preheader.6 ], [ %i.cx, %.lr.ph.i.6.1 ], [ %i.db, %.lr.ph.i.6.2 ], [ %i.df, %.lr.ph.i.6.3 ]
  %i.dj = load i8, ptr %.015.i.lcssa30.6, align 1, !tbaa !139
  %i.dk = zext i8 %i.dj to i64
  %i.dl = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !139
  %i.dn = zext i8 %i.dm to i32
  %i.do = icmp eq i32 %.lcssa33.6, %i.dn
  br i1 %i.do, label %sqlite3StrNICmp.exit.thread, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %sqlite3StrNICmp.exit.4, %sqlite3StrNICmp.exit.1, %sqlite3StrNICmp.exit.6, %sqlite3StrNICmp.exit.3, %sqlite3StrNICmp.exit.thread, %bb.b
  %.011 = phi i32 [ %i.i, %bb.b ], [ %i.aa, %sqlite3StrNICmp.exit.thread ], [ 1, %bb.c ], [ 1, %sqlite3StrNICmp.exit.3 ], [ 1, %sqlite3StrNICmp.exit.6 ], [ 1, %sqlite3StrNICmp.exit.4 ], [ 1, %sqlite3StrNICmp.exit.1 ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @flagPragma(ptr nofree noundef captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !139     ; 11 uses
  %.not10.i = icmp eq i8 %i.a, 0
  br i1 %.not10.i, label %sqlite3VdbeAddOp2.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.m, %bb.b ], [ %i.a, %bb.a ]
  %.012.i = phi ptr [ %i.l, %bb.b ], [ @.str.496, %bb.a ] ; 2 uses
  %.0911.i = phi ptr [ %i.k, %bb.b ], [ %1, %bb.a ]
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !139
  %i.f = load i8, ptr %.012.i, align 1, !tbaa !139
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !139
  %i.j = icmp eq i8 %i.e, %i.i
  br i1 %i.j, label %bb.b, label %.lr.ph.i.1.preheader

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.0911.i, i64 1 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i, i64 1 ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !139   ; 2 uses
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %.critedge.loopexit.i, label %.lr.ph.i, !llvm.loop !10

.critedge.loopexit.i:                             ; preds = %bb.b
  %.pre37 = load i8, ptr %i.l, align 1, !tbaa !139
  %i.n = icmp eq i8 %.pre37, 0
  br i1 %i.n, label %.split28.us, label %.lr.ph.i.1.preheader

.lr.ph.i.1.preheader:                             ; preds = %.lr.ph.i, %.critedge.loopexit.i
  br label %.lr.ph.i.1

.split28.us:                                      ; preds = %.critedge.loopexit.i, %.critedge.loopexit.i.1, %.critedge.loopexit.i.2, %.critedge.loopexit.i.3, %.critedge.loopexit.i.4, %.critedge.loopexit.i.5, %.critedge.loopexit.i.6, %.critedge.loopexit.i.7, %.critedge.loopexit.i.8, %.critedge.loopexit.i.9
  %.026.lcssa = phi ptr [ @flagPragma.aPragma, %.critedge.loopexit.i ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 16), %.critedge.loopexit.i.1 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 32), %.critedge.loopexit.i.2 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 48), %.critedge.loopexit.i.3 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 64), %.critedge.loopexit.i.4 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 80), %.critedge.loopexit.i.5 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 96), %.critedge.loopexit.i.6 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 112), %.critedge.loopexit.i.7 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 128), %.critedge.loopexit.i.8 ], [ getelementptr inbounds nuw (i8, ptr @flagPragma.aPragma, i64 144), %.critedge.loopexit.i.9 ] ; 2 uses
  %.lcssa34 = phi ptr [ @.str.496, %.critedge.loopexit.i ], [ @.str.497, %.critedge.loopexit.i.1 ], [ @.str.498, %.critedge.loopexit.i.2 ], [ @.str.499, %.critedge.loopexit.i.3 ], [ @.str.500, %.critedge.loopexit.i.4 ], [ @.str.501, %.critedge.loopexit.i.5 ], [ @.str.502, %.critedge.loopexit.i.6 ], [ @.str.503, %.critedge.loopexit.i.7 ], [ @.str.504, %.critedge.loopexit.i.8 ], [ @.str.505, %.critedge.loopexit.i.9 ]
  %i.o = load ptr, ptr %0, align 8, !tbaa !292    ; 3 uses
  %i.p = tail call fastcc ptr @sqlite3GetVdbe(ptr noundef nonnull %0) ; 8 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %sqlite3VdbeAddOp2.exit, label %bb.c

bb.c:                                             ; preds = %.split28.us
  %i.q = icmp eq ptr %2, null
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !353
  %i.t = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !1909
  %i.v = and i32 %i.u, %i.s
  %i.w = icmp ne i32 %i.v, 0
  %i.x = zext i1 %i.w to i32
  tail call fastcc void @returnSingleInt(ptr noundef nonnull %0, ptr noundef nonnull %.lcssa34, i32 noundef %i.x)
  br label %sqlite3VdbeAddOp2.exit

bb.e:                                             ; preds = %bb.c
  %i.y = tail call fastcc i32 @getSafetyLevel(ptr noundef nonnull %2)
  %i.z = and i32 %i.y, 1
  %.not23 = icmp eq i32 %i.z, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1909 ; 2 uses
  br i1 %.not23, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !353
  %i.ae = or i32 %i.ad, %i.ab
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !353
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.af = xor i32 %i.ab, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !353
  %i.ai = and i32 %i.ah, %i.af
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !353
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !208 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.p, i64 28 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !216 ; 6 uses
  %.not.i.i = icmp sgt i32 %i.am, %i.ak
  br i1 %.not.i.i, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not23.i.i = icmp eq i32 %i.am, 0
  %i.an = shl nsw i32 %i.am, 1
  %spec.select.i.i = select i1 %.not23.i.i, i32 42, i32 %i.an ; 4 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !179
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 32 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 42 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !202
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.j, label %resizeOpArray.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.at = mul i32 %spec.select.i.i, 24
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !209
  %i.av = tail call ptr @sqlite3_realloc(ptr noundef %i.au, i32 noundef %i.at) ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i, label %bb.k, label %sqlite3DbRealloc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.aq, align 2, !tbaa !202
  br label %resizeOpArray.exit.i.i

sqlite3DbRealloc.exit.i.i.i:                      ; preds = %bb.j
  store i32 %spec.select.i.i, ptr %i.al, align 4, !tbaa !216
  store ptr %i.av, ptr %i.ap, align 8, !tbaa !209
  %i.aw = icmp sgt i32 %spec.select.i.i, %i.am
  br i1 %i.aw, label %bb.l, label %resizeOpArray.exit.i.i

bb.l:                                             ; preds = %sqlite3DbRealloc.exit.i.i.i
  %i.ax = sext i32 %i.am to i64
  %i.ay = getelementptr inbounds [24 x i8], ptr %i.av, i64 %i.ax
  %i.az = sub nsw i32 %spec.select.i.i, %i.am
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = mul nuw nsw i64 %i.ba, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ay, i8 0, i64 %i.bb, i1 false)
  br label %resizeOpArray.exit.i.i

resizeOpArray.exit.i.i:                           ; preds = %bb.l, %sqlite3DbRealloc.exit.i.i.i, %bb.k, %bb.i
  %i.bc = load ptr, ptr %i.p, align 8, !tbaa !179
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 42
  %i.be = load i8, ptr %i.bd, align 2, !tbaa !202
  %.not24.i.i = icmp eq i8 %i.be, 0
  br i1 %.not24.i.i, label %resizeOpArray.exit._crit_edge.i.i, label %sqlite3VdbeAddOp2.exit

resizeOpArray.exit._crit_edge.i.i:                ; preds = %resizeOpArray.exit.i.i
  %.pre.i.i = load i32, ptr %i.aj, align 8, !tbaa !208
  br label %bb.m

bb.m:                                             ; preds = %resizeOpArray.exit._crit_edge.i.i, %bb.h
  %i.bf = phi i32 [ %.pre.i.i, %resizeOpArray.exit._crit_edge.i.i ], [ %i.ak, %bb.h ]
  %i.bg = add nsw i32 %i.bf, 1
  store i32 %i.bg, ptr %i.aj, align 8, !tbaa !208
  %i.bh = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !209
  %i.bj = sext i32 %i.ak to i64
  %i.bk = getelementptr inbounds [24 x i8], ptr %i.bi, i64 %i.bj ; 3 uses
  store i8 13, ptr %i.bk, align 8, !tbaa !211
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 0, ptr %i.bm, align 1, !tbaa !247
  %i.bn = getelementptr inbounds nuw i8, ptr %i.p, i64 339
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.bl, i8 0, i64 20, i1 false)
  store i8 0, ptr %i.bn, align 1, !tbaa !177
  br label %sqlite3VdbeAddOp2.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.preheader, %bb.n
  %i.bo = phi i8 [ %i.bz, %bb.n ], [ %i.a, %.lr.ph.i.1.preheader ]
  %.012.i.1 = phi ptr [ %i.by, %bb.n ], [ @.str.497, %.lr.ph.i.1.preheader ] ; 2 uses
  %.0911.i.1 = phi ptr [ %i.bx, %bb.n ], [ %1, %.lr.ph.i.1.preheader ]
  %i.bp = zext i8 %i.bo to i64
end_hunk_1
