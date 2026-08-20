inline.NumInlined: 28
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_bt_preprocess_array_keys_final:bb.a
  %i.db = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  call void @fmgr_info(i32 noundef %i.da, ptr noundef nonnull %i.db) #8
  store i64 %i.ct, ptr %i.cm, align 8
  store i16 2, ptr %i.bx, align 2
  br label %_bt_skiparray_strat_decrement.exit.i

_bt_skiparray_strat_decrement.exit.i:             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  br label %bb.w

bb.w:                                             ; preds = %_bt_skiparray_strat_decrement.exit.i, %bb.p, %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.dd = load ptr, ptr %i.dc, align 8            ; 6 uses
  %.not14.i = icmp eq ptr %i.dd, null
  br i1 %.not14.i, label %_bt_skiparray_strat_adjust.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 6 ; 2 uses
  %i.df = load i16, ptr %i.de, align 2
  %i.dg = icmp eq i16 %i.df, 5
  br i1 %i.dg, label %bb.y, label %_bt_skiparray_strat_adjust.exit

bb.y:                                             ; preds = %bb.x
  %i.dh = getelementptr i8, ptr %i.q, i64 4
  %.val15.i = load i16, ptr %i.dh, align 4
  %i.di = load ptr, ptr %i.e, align 8             ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 360
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = sext i16 %.val15.i to i64
  %i.dm = add nsw i64 %i.dl, -1                   ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4
  %i.dp = getelementptr inbounds nuw i8, ptr %i.di, i64 368
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dm
  %i.ds = load i32, ptr %i.dr, align 4            ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 64 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.dw = load i32, ptr %i.dv, align 8            ; 2 uses
  %.not.i16.i = icmp eq i32 %i.dw, %i.ds
  %.not29.i17.i = icmp eq i32 %i.dw, 0
  %or.cond.i18.i = or i1 %.not.i16.i, %.not29.i17.i
  br i1 %or.cond.i18.i, label %bb.z, label %_bt_skiparray_strat_increment.exit.i

bb.z:                                             ; preds = %bb.y
  %i.dx = load ptr, ptr %i.bm, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = call i64 %i.dz(ptr noundef nonnull %i.di, i64 noundef %i.du, ptr noundef nonnull %i.a) #8, !inline_history !20
  %i.eb = load i8, ptr %i.a, align 1, !range !10, !noundef !11
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ed = load ptr, ptr %i.c, align 8
  store i8 0, ptr %i.ed, align 8
  br label %_bt_skiparray_strat_increment.exit.i

bb.ab:                                            ; preds = %bb.z
  %i.ee = load i32, ptr %i.dd, align 8
  %i.ef = and i32 %i.ee, 16777216
  %.not30.i19.i = icmp eq i32 %i.ef, 0
  %spec.store.select.i20.i = select i1 %.not30.i19.i, i16 4, i16 2
  %i.eg = call i32 @get_opfamily_member(i32 noundef %i.do, i32 noundef %i.ds, i32 noundef %i.ds, i16 noundef signext %spec.store.select.i20.i) #8 ; 2 uses
  %.not31.i21.i = icmp eq i32 %i.eg, 0
  br i1 %.not31.i21.i, label %_bt_skiparray_strat_increment.exit.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eh = call i32 @get_opcode(i32 noundef %i.eg) #8 ; 2 uses
  %.not32.i22.i = icmp eq i32 %i.eh, 0
  br i1 %.not32.i22.i, label %_bt_skiparray_strat_increment.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  call void @fmgr_info(i32 noundef %i.eh, ptr noundef nonnull %i.ei) #8
  store i64 %i.ea, ptr %i.dt, align 8
  store i16 4, ptr %i.de, align 2
  br label %_bt_skiparray_strat_increment.exit.i

_bt_skiparray_strat_increment.exit.i:             ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %_bt_skiparray_strat_adjust.exit

_bt_skiparray_strat_adjust.exit:                  ; preds = %bb.w, %bb.x, %_bt_skiparray_strat_increment.exit.i
  store ptr %i.bu, ptr @CurrentMemoryContext, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.j, %_bt_skiparray_strat_adjust.exit, %bb.n, %bb.m
  %i.ej = add nsw i32 %i.av, 1
  br label %.loopexit

bb.af:                                            ; preds = %bb.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.ao, %lftr.wideiv
  br i1 %exitcond.not, label %.loopexit, label %bb.i, !llvm.loop !21

.loopexit:                                        ; preds = %bb.af, %bb.h, %bb.b, %bb.g, %bb.d, %bb.l, %bb.ae
  %.5.ph = phi i32 [ %i.ej, %bb.ae ], [ %i.av, %bb.l ], [ %.06190, %bb.d ], [ %.06190, %bb.b ], [ %.06190, %bb.g ], [ %.06190, %bb.h ], [ %i.ao, %bb.af ]
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %i.ek = load i32, ptr %i.j, align 4
  %i.el = sext i32 %i.ek to i64
  %.not72 = icmp slt i64 %indvars.iv.next98, %i.el
  br i1 %.not72, label %bb.b, label %.critedge, !llvm.loop !22

.critedge:                                        ; preds = %.loopexit, %.preheader
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.en = load ptr, ptr %i.em, align 8
  %.not73 = icmp eq ptr %i.en, null
  br i1 %.not73, label %.loopexit86, label %bb.ag

bb.ag:                                            ; preds = %.critedge
  %i.eo = load i32, ptr %i.g, align 8
  %i.ep = icmp sgt i32 %i.eo, 32
  br i1 %i.ep, label %bb.ah, label %.loopexit86

bb.ah:                                            ; preds = %bb.ag
  %i.eq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #9 ; 0 uses
  %i.er = call i32 @errcode(i32 noundef 261) #8   ; 0 uses
  %i.es = load i32, ptr %i.g, align 8
  %i.et = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.8, i32 noundef %i.es, i32 noundef 32) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 2375, ptr noundef nonnull @__func__._bt_preprocess_array_keys_final) #8
  unreachable

.loopexit86:                                      ; preds = %bb.k, %.critedge, %bb.ag, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_bt_unmark_keys(ptr nofree readonly captures(none) %.56.val, ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.56.val, i64 4 ; 8 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = sext i32 %i.b to i64
  %i.d = tail call ptr @palloc0(i64 noundef %i.c) #8 ; 12 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.56.val, i64 8 ; 5 uses
  %i.f = load i32, ptr %i.a, align 4
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph23.preheader, label %._crit_edge

.lr.ph23.preheader:                               ; preds = %bb.a
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i16, ptr %i.i, align 4
  br label %.lr.ph23

._crit_edge:                                      ; preds = %.loopexit13, %bb.a
  %.0132.lcssa = phi i32 [ 0, %bb.a ], [ %.3, %.loopexit13 ] ; 4 uses
  %i.k = sext i32 %.0132.lcssa to i64             ; 2 uses
  %i.l = mul nsw i64 %i.k, 72
  %i.m = tail call ptr @palloc(i64 noundef %i.l) #8 ; 3 uses
  %i.n = load i32, ptr %i.a, align 4
  %i.o = sub i32 %i.n, %.0132.lcssa
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.p, 72
  %i.r = tail call ptr @palloc(i64 noundef %i.q) #8 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.56.val, i64 16 ; 6 uses
  %i.t = load i32, ptr %i.s, align 8
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.h, label %bb.g

.lr.ph23:                                         ; preds = %.lr.ph23.preheader, %.loopexit13
  %indvars.iv40 = phi i64 [ 0, %.lr.ph23.preheader ], [ %indvars.iv.next41, %.loopexit13 ] ; 7 uses
  %.011721 = phi i1 [ false, %.lr.ph23.preheader ], [ %.2, %.loopexit13 ] ; 2 uses
  %.011820 = phi i1 [ false, %.lr.ph23.preheader ], [ %.2120, %.loopexit13 ] ; 2 uses
  %.012119 = phi i1 [ false, %.lr.ph23.preheader ], [ %.2123, %.loopexit13 ]
  %.012618 = phi i32 [ 0, %.lr.ph23.preheader ], [ %.11278, %.loopexit13 ] ; 2 uses
  %.013217 = phi i32 [ 0, %.lr.ph23.preheader ], [ %.3, %.loopexit13 ] ; 6 uses
  %.013516 = phi i16 [ %i.j, %.lr.ph23.preheader ], [ %.11366, %.loopexit13 ] ; 3 uses
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw [72 x i8], ptr %i.u, i64 %indvars.iv40 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i16, ptr %i.w, align 4              ; 2 uses
  %.not143 = icmp eq i16 %i.x, %.013516
  %i.y = trunc nuw nsw i64 %indvars.iv40 to i32
  br i1 %.not143, label %bb.b, label %.thread

bb.b:                                             ; preds = %.lr.ph23
  br i1 %.012119, label %.loopexit13.sink.split, label %.thread

.thread:                                          ; preds = %.lr.ph23, %bb.b
  %.112 = phi i1 [ %.011721, %bb.b ], [ false, %.lr.ph23 ] ; 6 uses
  %.111911 = phi i1 [ %.011820, %bb.b ], [ false, %.lr.ph23 ] ; 6 uses
  %.11279 = phi i32 [ %.012618, %bb.b ], [ %i.y, %.lr.ph23 ] ; 7 uses
  %.11367 = phi i16 [ %.013516, %bb.b ], [ %i.x, %.lr.ph23 ] ; 6 uses
  %i.z = load i32, ptr %i.v, align 8              ; 3 uses
  %i.aa = and i32 %i.z, 131072
  %.not145 = icmp eq i32 %i.aa, 0
  %i.ab = and i32 %i.z, 196608
  %or.cond146.not = icmp eq i32 %i.ab, 196608
  br i1 %or.cond146.not, label %.preheader, label %bb.e

.preheader:                                       ; preds = %.thread
  %i.ac = sext i32 %.11279 to i64                 ; 5 uses
  %i.ad = icmp sgt i64 %indvars.iv40, %i.ac
  br i1 %i.ad, label %.lr.ph.preheader, label %.loopexit13

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.ae = sub i64 %indvars.iv40, %i.ac            ; 3 uses
  %min.iters.check = icmp ult i64 %i.ae, 8
  br i1 %min.iters.check, label %.lr.ph.preheader69, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.ae, -8                      ; 3 uses
  %i.af = add i64 %n.vec, %i.ac
  %i.ag = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.013217, i64 0
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue66, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue66 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ag, %vector.ph ], [ %predphi, %pred.store.continue66 ]
  %vec.phi51 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %predphi67, %pred.store.continue66 ]
  %i.ah = add i64 %index, %i.ac                   ; 8 uses
  %i.ai = getelementptr inbounds i8, ptr %i.d, i64 %i.ah ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %wide.load = load <4 x i8>, ptr %i.ai, align 1
  %wide.load52 = load <4 x i8>, ptr %i.aj, align 1
  %i.ak = trunc nuw <4 x i8> %wide.load to <4 x i1> ; 2 uses
  %i.al = trunc nuw <4 x i8> %wide.load52 to <4 x i1> ; 2 uses
  %i.am = xor <4 x i1> %i.ak, splat (i1 true)     ; 4 uses
  %i.an = xor <4 x i1> %i.al, splat (i1 true)     ; 4 uses
  %i.ao = extractelement <4 x i1> %i.am, i64 0
  br i1 %i.ao, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 1, ptr %i.ai, align 1
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ap = extractelement <4 x i1> %i.am, i64 1
  br i1 %i.ap, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue
  %i.aq = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.ar = getelementptr i8, ptr %i.aq, i64 1
  store i8 1, ptr %i.ar, align 1
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue
  %i.as = extractelement <4 x i1> %i.am, i64 2
  br i1 %i.as, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %i.at = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.au = getelementptr i8, ptr %i.at, i64 2
  store i8 1, ptr %i.au, align 1
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.av = extractelement <4 x i1> %i.am, i64 3
  br i1 %i.av, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.ax = getelementptr i8, ptr %i.aw, i64 3
  store i8 1, ptr %i.ax, align 1
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.ay = extractelement <4 x i1> %i.an, i64 0
  br i1 %i.ay, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %i.az = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.ba = getelementptr i8, ptr %i.az, i64 4
  store i8 1, ptr %i.ba, align 1
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.bb = extractelement <4 x i1> %i.an, i64 1
  br i1 %i.bb, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %i.bc = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.bd = getelementptr i8, ptr %i.bc, i64 5
  store i8 1, ptr %i.bd, align 1
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.be = extractelement <4 x i1> %i.an, i64 2
  br i1 %i.be, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.bf = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.bg = getelementptr i8, ptr %i.bf, i64 6
  store i8 1, ptr %i.bg, align 1
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.bh = extractelement <4 x i1> %i.an, i64 3
  br i1 %i.bh, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.bi = getelementptr i8, ptr %i.d, i64 %i.ah
  %i.bj = getelementptr i8, ptr %i.bi, i64 7
  store i8 1, ptr %i.bj, align 1
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %not. = xor <4 x i1> %i.ak, splat (i1 true)
  %i.bk = zext <4 x i1> %not. to <4 x i32>
  %predphi = add <4 x i32> %vec.phi, %i.bk        ; 2 uses
  %not.68 = xor <4 x i1> %i.al, splat (i1 true)
  %i.bl = zext <4 x i1> %not.68 to <4 x i32>
  %predphi67 = add <4 x i32> %vec.phi51, %i.bl    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %pred.store.continue66
  %bin.rdx = add <4 x i32> %predphi67, %predphi
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %.loopexit13, label %.lr.ph.preheader69

.lr.ph.preheader69:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ac, %.lr.ph.preheader ], [ %i.af, %middle.block ]
  %.113314.ph = phi i32 [ %.013217, %.lr.ph.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader69, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %.lr.ph.preheader69 ] ; 2 uses
  %.113314 = phi i32 [ %.2134, %bb.d ], [ %.113314.ph, %.lr.ph.preheader69 ] ; 2 uses
  %i.bo = getelementptr inbounds i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !range !10, !noundef !11
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  store i8 1, ptr %i.bo, align 1
  %i.br = add i32 %.113314, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.2134 = phi i32 [ %.113314, %.lr.ph ], [ %i.br, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv40
  br i1 %exitcond.not, label %.loopexit13, label %.lr.ph, !llvm.loop !24

bb.e:                                             ; preds = %.thread
  %i.bs = and i32 %i.z, 65536
  %.not144 = icmp eq i32 %i.bs, 0
  %or.cond = select i1 %.not144, i1 true, i1 %.111911
  br i1 %or.cond, label %bb.f, label %.loopexit13

bb.f:                                             ; preds = %bb.e
  %or.cond3 = select i1 %.not145, i1 true, i1 %.112
  br i1 %or.cond3, label %.loopexit13.sink.split, label %.loopexit13

.loopexit13.sink.split:                           ; preds = %bb.f, %bb.b
  %.11278.ph = phi i32 [ %.012618, %bb.b ], [ %.11279, %bb.f ]
  %.11366.ph = phi i16 [ %.013516, %bb.b ], [ %.11367, %bb.f ]
  %.2123.ph = phi i1 [ true, %bb.b ], [ false, %bb.f ]
  %.2120.ph = phi i1 [ %.011820, %bb.b ], [ %.111911, %bb.f ]
  %.2.ph = phi i1 [ %.011721, %bb.b ], [ %.112, %bb.f ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv40
  store i8 1, ptr %i.bt, align 1
  %i.bu = add i32 %.013217, 1
  br label %.loopexit13

.loopexit13:                                      ; preds = %bb.d, %middle.block, %.loopexit13.sink.split, %.preheader, %bb.f, %bb.e
  %.11278 = phi i32 [ %.11279, %.preheader ], [ %.11279, %bb.f ], [ %.11278.ph, %.loopexit13.sink.split ], [ %.11279, %bb.e ], [ %.11279, %middle.block ], [ %.11279, %bb.d ]
  %.11366 = phi i16 [ %.11367, %.preheader ], [ %.11367, %bb.f ], [ %.11366.ph, %.loopexit13.sink.split ], [ %.11367, %bb.e ], [ %.11367, %middle.block ], [ %.11367, %bb.d ]
  %.3 = phi i32 [ %.013217, %.preheader ], [ %.013217, %bb.f ], [ %i.bu, %.loopexit13.sink.split ], [ %.013217, %bb.e ], [ %i.bn, %middle.block ], [ %.2134, %bb.d ] ; 2 uses
  %.2123 = phi i1 [ true, %.preheader ], [ false, %bb.f ], [ %.2123.ph, %.loopexit13.sink.split ], [ false, %bb.e ], [ true, %middle.block ], [ true, %bb.d ]
  %.2120 = phi i1 [ %.111911, %.preheader ], [ %.111911, %bb.f ], [ %.2120.ph, %.loopexit13.sink.split ], [ true, %bb.e ], [ %.111911, %middle.block ], [ %.111911, %bb.d ]
  %.2 = phi i1 [ %.112, %.preheader ], [ true, %bb.f ], [ %.2.ph, %.loopexit13.sink.split ], [ %.112, %bb.e ], [ %.112, %middle.block ], [ %.112, %bb.d ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %i.bv = load i32, ptr %i.a, align 4
  %i.bw = sext i32 %i.bv to i64
  %i.bx = icmp slt i64 %indvars.iv.next41, %i.bw
  br i1 %i.bx, label %.lr.ph23, label %._crit_edge, !llvm.loop !25

bb.g:                                             ; preds = %._crit_edge
  %i.by = mul nsw i64 %i.k, 48
  %i.bz = tail call ptr @palloc(i64 noundef %i.by) #8
  %i.ca = load i32, ptr %i.a, align 4
  %i.cb = sub i32 %i.ca, %.0132.lcssa
  %i.cc = sext i32 %i.cb to i64
  %i.cd = mul nsw i64 %i.cc, 48
  %i.ce = tail call ptr @palloc(i64 noundef %i.cd) #8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.0125 = phi ptr [ %i.ce, %bb.g ], [ null, %._crit_edge ] ; 3 uses
  %.0124 = phi ptr [ %i.bz, %bb.g ], [ null, %._crit_edge ] ; 3 uses
  %i.cf = load i32, ptr %i.a, align 4
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph29, label %._crit_edge30

.lr.ph29:                                         ; preds = %bb.h
  %i.ch = getelementptr inbounds nuw i8, ptr %.56.val, i64 32 ; 2 uses
  br label %bb.i

._crit_edge30.loopexit:                           ; preds = %bb.r
  %i.ci = sext i32 %.1129 to i64
  %i.cj = sext i32 %.1131 to i64
  br label %._crit_edge30

end_hunk_0
