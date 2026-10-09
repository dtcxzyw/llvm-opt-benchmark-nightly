Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/diff?download=true
inline.NumInlined: 585
inline.NumDeleted: 138
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 24
begin_hunk_0_@diff_flush:bb.a
  %.1.i.i.i = phi i32 [ %i.ant, %bb.jj ], [ %i.anz, %bb.jk ] ; 2 uses
  %i.anu = add i32 %.245.i.i.i, 1                 ; 3 uses
  %i.anv = zext i32 %i.anu to i64
  %i.anw = getelementptr inbounds nuw i8, ptr %.pre.i.i180, i64 %i.anv
  %i.anx = load i8, ptr %i.anw, align 1, !tbaa !44 ; 2 uses
  %i.any = icmp eq i8 %i.anx, 9
  %i.anz = add nsw i32 %.1.i.i.i, %i.ank
  br i1 %i.any, label %bb.jk, label %.critedge2.i.i.i.backedge, !llvm.loop !413

.lr.ph.i.i.i:                                     ; preds = %bb.jl, %.lr.ph.i.preheader.i.i
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i, %bb.jl ], [ %i.ano, %.lr.ph.i.preheader.i.i ] ; 3 uses
  %i.aoa = getelementptr inbounds nuw i8, ptr %.pre.i.i180, i64 %indvars.iv.i.i.i
  %i.aob = load i8, ptr %i.aoa, align 1, !tbaa !44
  %i.aoc = zext i8 %i.aob to i64
  %i.aod = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.aoc
  %i.aoe = load i8, ptr %i.aod, align 1, !tbaa !44
  %i.aof = and i8 %i.aoe, 1
  %.not.i.i.i183 = icmp eq i8 %i.aof, 0
  br i1 %.not.i.i.i183, label %._crit_edge.loopexit.i.i.i, label %bb.jl

bb.jl:                                            ; preds = %.lr.ph.i.i.i
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i.i = trunc i64 %indvars.iv.next.i.i.i to i32
  %exitcond.not.i.i.i = icmp eq i32 %.pre90.i.i, %lftr.wideiv.i.i.i
  br i1 %exitcond.not.i.i.i, label %fill_es_indent_data.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !414

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.aog = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.preheader.i.i.i
  %.042.lcssa.i.i.i = phi i32 [ %.144.i.i.i, %.preheader.i.i.i ], [ %i.aog, %._crit_edge.loopexit.i.i.i ]
  %i.aoh = icmp eq i32 %.042.lcssa.i.i.i, %.pre90.i.i ; 2 uses
  %spec.select.i.i.i182 = select i1 %i.aoh, i32 -2147483648, i32 %.0.i.i.i
  %spec.select67.i.i.i = select i1 %i.aoh, i32 %.pre90.i.i, i32 %.144.i.i.i
  br label %fill_es_indent_data.exit.i.i

fill_es_indent_data.exit.i.i:                     ; preds = %bb.jl, %._crit_edge.i.i.i
  %.0.lcssa.sink.i.i.i = phi i32 [ %spec.select.i.i.i182, %._crit_edge.i.i.i ], [ -2147483648, %bb.jl ]
  %.144.lcssa.sink.i.i.i = phi i32 [ %spec.select67.i.i.i, %._crit_edge.i.i.i ], [ %.pre90.i.i, %bb.jl ] ; 2 uses
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.amw, i64 20
  store i32 %.0.lcssa.sink.i.i.i, ptr %i.aoi, align 4, !tbaa !57
  %i.aoj = getelementptr inbounds nuw i8, ptr %i.amw, i64 16
  store i32 %.144.lcssa.sink.i.i.i, ptr %i.aoj, align 8, !tbaa !56
  br label %bb.jm

bb.jm:                                            ; preds = %fill_es_indent_data.exit.i.i, %._crit_edge87.i.i
  %i.aok = phi i32 [ %.pre88.i.i, %._crit_edge87.i.i ], [ %.144.lcssa.sink.i.i.i, %fill_es_indent_data.exit.i.i ] ; 2 uses
  %i.aol = and i32 %i.ana, 30
  %i.aom = sext i32 %i.aok to i64
  %i.aon = getelementptr inbounds i8, ptr %.pre.i.i180, i64 %i.aom
  %i.aoo = sub nsw i32 %.pre90.i.i, %i.aok
  %i.aop = sext i32 %i.aoo to i64
  %i.aoq = zext nneg i32 %i.aol to i64
  %i.aor = call i64 @xdiff_hash_string(ptr noundef %i.aon, i64 noundef %i.aop, i64 noundef %i.aoq) #33
  %i.aos = trunc i64 %i.aor to i32
  store i32 %i.aos, ptr %i.ams, align 8, !tbaa !431
  store ptr null, ptr %3, align 8, !tbaa !432
  store ptr %i.amw, ptr %i.amt, align 8, !tbaa !257
  %i.aot = call ptr @hashmap_get(ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %3) #33 ; 2 uses
  %.not71.i.i = icmp eq ptr %i.aot, null
  br i1 %.not71.i.i, label %bb.jo, label %bb.jn

bb.jn:                                            ; preds = %bb.jm
  %i.aou = getelementptr inbounds nuw i8, ptr %i.aot, i64 16
  %i.aov = load ptr, ptr %i.aou, align 8, !tbaa !257
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 24
  %i.aox = load i32, ptr %i.aow, align 8, !tbaa !58
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.amw, i64 24
  store i32 %i.aox, ptr %i.aoy, align 8, !tbaa !58
  br label %bb.js

bb.jo:                                            ; preds = %bb.jm
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.amw, i64 24
  store i32 %.05481.i.i, ptr %i.aoz, align 8, !tbaa !58
  %i.apa = add i32 %.05481.i.i, 1                 ; 2 uses
  %i.apb = zext i32 %i.apa to i64                 ; 2 uses
  %i.apc = zext i32 %.05481.i.i to i64
  %i.apd = icmp eq i32 %.05481.i.i, -1
  br i1 %i.apd, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.258, i32 noundef 1091, ptr noundef nonnull @.str.478) #35
  unreachable

bb.jq:                                            ; preds = %bb.jo
  %i.ape = icmp ult i64 %.05580.i.i, %i.apb
  br i1 %i.ape, label %st_mult.exit.i.i, label %bb.jr

st_mult.exit.i.i:                                 ; preds = %bb.jq
  %i.apf = mul nuw nsw i64 %.05580.i.i, 3
  %i.apg = add nuw nsw i64 %i.apf, 48
  %i.aph = lshr i64 %i.apg, 1
  %..i.i = call i64 @llvm.umax.i64(i64 %i.aph, i64 %i.apb) ; 2 uses
  %i.api = shl nuw nsw i64 %..i.i, 4
  %i.apj = call ptr @xrealloc(ptr noundef %.05879.i.i, i64 noundef %i.api) #33
  br label %bb.jr

bb.jr:                                            ; preds = %st_mult.exit.i.i, %bb.jq
  %.159.i.i = phi ptr [ %i.apj, %st_mult.exit.i.i ], [ %.05879.i.i, %bb.jq ] ; 2 uses
  %.257.i.i = phi i64 [ %..i.i, %st_mult.exit.i.i ], [ %.05580.i.i, %bb.jq ]
  %i.apk = getelementptr inbounds nuw [16 x i8], ptr %.159.i.i, i64 %i.apc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.apk, i8 0, i64 16, i1 false)
  %i.apl = call ptr @mem_pool_alloc(ptr noundef nonnull %1, i64 noundef 24) #33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.apl, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @hashmap_add(ptr noundef nonnull %2, ptr noundef nonnull %i.apl) #33
  br label %bb.js

bb.js:                                            ; preds = %bb.jr, %bb.jn
  %.260.i.i = phi ptr [ %.05879.i.i, %bb.jn ], [ %.159.i.i, %bb.jr ] ; 3 uses
  %.3.i.i = phi i64 [ %.05580.i.i, %bb.jn ], [ %.257.i.i, %bb.jr ] ; 2 uses
  %.1.i.i = phi i32 [ %.05481.i.i, %bb.jn ], [ %i.apa, %bb.jr ] ; 2 uses
  %i.apm = call ptr @mem_pool_alloc(ptr noundef nonnull %6, i64 noundef 24) #33 ; 9 uses
  store ptr %i.amw, ptr %i.apm, align 8, !tbaa !435
  %i.apn = getelementptr inbounds nuw i8, ptr %i.apm, i64 8
  store ptr null, ptr %i.apn, align 8, !tbaa !436
  %.not72.i.i = icmp eq ptr %.06278.i.i, null
  br i1 %.not72.i.i, label %thread-pre-split.i.i, label %bb.jt

bb.jt:                                            ; preds = %bb.js
  %i.apo = load ptr, ptr %.06278.i.i, align 8, !tbaa !435
  %i.app = getelementptr inbounds nuw i8, ptr %i.apo, i64 28
  %i.apq = load i32, ptr %i.app, align 4, !tbaa !59 ; 2 uses
  %i.apr = load i32, ptr %i.amx, align 4, !tbaa !59 ; 2 uses
  %i.aps = icmp eq i32 %i.apq, %i.apr
  br i1 %i.aps, label %bb.ju, label %bb.jv

bb.ju:                                            ; preds = %bb.jt
  %i.apt = getelementptr inbounds nuw i8, ptr %.06278.i.i, i64 8
  store ptr %i.apm, ptr %i.apt, align 8, !tbaa !436
  br label %bb.jv

thread-pre-split.i.i:                             ; preds = %bb.js
  %.pr.i.i = load i32, ptr %i.amx, align 4, !tbaa !59
  br label %bb.jv

bb.jv:                                            ; preds = %thread-pre-split.i.i, %bb.ju, %bb.jt
  %i.apu = phi i32 [ %.pr.i.i, %thread-pre-split.i.i ], [ %i.apq, %bb.ju ], [ %i.apr, %bb.jt ]
  %i.apv = icmp eq i32 %i.apu, 28
  %i.apw = getelementptr inbounds nuw i8, ptr %i.amw, i64 24
  %i.apx = load i32, ptr %i.apw, align 8, !tbaa !58
  %i.apy = zext i32 %i.apx to i64
  %i.apz = getelementptr inbounds nuw [16 x i8], ptr %.260.i.i, i64 %i.apy ; 3 uses
  br i1 %i.apv, label %bb.jw, label %bb.jx

bb.jw:                                            ; preds = %bb.jv
  %i.aqa = load ptr, ptr %i.apz, align 8, !tbaa !438
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  store ptr %i.aqa, ptr %i.aqb, align 8, !tbaa !439
  store ptr %i.apm, ptr %i.apz, align 8, !tbaa !438
  br label %bb.jy

bb.jx:                                            ; preds = %bb.jv
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.apz, i64 8 ; 2 uses
  %i.aqd = load ptr, ptr %i.aqc, align 8, !tbaa !440
  %i.aqe = getelementptr inbounds nuw i8, ptr %i.apm, i64 16
  store ptr %i.aqd, ptr %i.aqe, align 8, !tbaa !439
  store ptr %i.apm, ptr %i.aqc, align 8, !tbaa !440
  br label %bb.jy

bb.jy:                                            ; preds = %bb.jx, %bb.jw, %bb.jd
  %.163.i.i = phi ptr [ null, %bb.jd ], [ %i.apm, %bb.jx ], [ %i.apm, %bb.jw ]
  %.361.i.i = phi ptr [ %.05879.i.i, %bb.jd ], [ %.260.i.i, %bb.jx ], [ %.260.i.i, %bb.jw ] ; 2 uses
  %.4.i.i = phi i64 [ %.05580.i.i, %bb.jd ], [ %.3.i.i, %bb.jx ], [ %.3.i.i, %bb.jw ]
  %.2.i.i = phi i32 [ %.05481.i.i, %bb.jd ], [ %.1.i.i, %bb.jx ], [ %.1.i.i, %bb.jw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %indvars.iv.next.i33.i = add nuw nsw i64 %indvars.iv.i32.i, 1 ; 2 uses
  %i.aqf = load ptr, ptr %i.aml, align 8, !tbaa !60 ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 8
  %i.aqh = load i32, ptr %i.aqg, align 8, !tbaa !63
  %i.aqi = sext i32 %i.aqh to i64
  %i.aqj = icmp slt i64 %indvars.iv.next.i33.i, %i.aqi
  br i1 %i.aqj, label %bb.jd, label %add_lines_to_move_detection.exit.i, !llvm.loop !415

add_lines_to_move_detection.exit.i:               ; preds = %bb.jy, %bb.jc
  %.058.lcssa.i.i = phi ptr [ null, %bb.jc ], [ %.361.i.i, %bb.jy ] ; 3 uses
  call void @hashmap_clear_(ptr noundef nonnull %2, i64 noundef -1) #33
  call void @mem_pool_discard(ptr noundef nonnull %1, i32 noundef 0) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  %i.aqk = load ptr, ptr %i.aml, align 8, !tbaa !60 ; 2 uses
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aqk, i64 8
  %i.aqm = load i32, ptr %i.aql, align 8, !tbaa !63
  %i.aqn = icmp sgt i32 %i.aqm, 0
  br i1 %i.aqn, label %.lr.ph.i34.i, label %mark_color_as_moved.exit.i

.lr.ph.i34.i:                                     ; preds = %add_lines_to_move_detection.exit.i
  %i.aqo = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  br label %bb.jz

bb.jz:                                            ; preds = %.thread168.i.i, %.lr.ph.i34.i
  %i.aqp = phi ptr [ %i.aqk, %.lr.ph.i34.i ], [ %i.awy, %.thread168.i.i ]
  %.051258.i.i = phi i32 [ 0, %.lr.ph.i34.i ], [ %.3.i50.i, %.thread168.i.i ] ; 6 uses
  %.054257.i.i = phi i32 [ 0, %.lr.ph.i34.i ], [ %.4.i49.i, %.thread168.i.i ] ; 15 uses
  %.058256.i.i = phi i32 [ 0, %.lr.ph.i34.i ], [ %.5.i.i, %.thread168.i.i ] ; 6 uses
  %.063255.i.i = phi i32 [ 0, %.lr.ph.i34.i ], [ %i.awx, %.thread168.i.i ] ; 10 uses
  %.0146254.i.i = phi i32 [ 0, %.lr.ph.i34.i ], [ %.3148.i.i, %.thread168.i.i ] ; 7 uses
  %.0149253.i.i = phi i32 [ 0, %.lr.ph.i34.i ], [ %.4153.i.i, %.thread168.i.i ] ; 5 uses
  %.0154252.i.i = phi ptr [ null, %.lr.ph.i34.i ], [ %.3157.i.i, %.thread168.i.i ] ; 9 uses
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !65 ; 7 uses
  %i.aqr = sext i32 %.063255.i.i to i64           ; 13 uses
  %i.aqs = getelementptr inbounds [32 x i8], ptr %i.aqq, i64 %i.aqr ; 9 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqs, i64 28 ; 2 uses
  %i.aqu = load i32, ptr %i.aqt, align 4, !tbaa !59 ; 2 uses
  switch i32 %i.aqu, label %.thread.i.i [
    i32 28, label %bb.ka
    i32 29, label %bb.kb
  ]

bb.ka:                                            ; preds = %bb.jz
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqs, i64 24
  %i.aqw = load i32, ptr %i.aqv, align 8, !tbaa !58
  %i.aqx = zext i32 %i.aqw to i64
  %i.aqy = getelementptr inbounds nuw [16 x i8], ptr %.058.lcssa.i.i, i64 %i.aqx
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 8
  br label %bb.kc

bb.kb:                                            ; preds = %bb.jz
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqs, i64 24
  %i.arb = load i32, ptr %i.ara, align 8, !tbaa !58
  %i.arc = zext i32 %i.arb to i64
  %i.ard = getelementptr inbounds nuw [16 x i8], ptr %.058.lcssa.i.i, i64 %i.arc
  br label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %.0.in.i.i = phi ptr [ %i.ard, %bb.kb ], [ %i.aqz, %bb.ka ]
  %.0.i35.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !441 ; 6 uses
  %.not.i36.i = icmp eq i32 %.0149253.i.i, 0
  br i1 %.not.i36.i, label %adjust_last_block.exit.thread.i.i, label %bb.kd

.thread.i.i:                                      ; preds = %bb.jz
  %.not160.i.i = icmp eq i32 %.0149253.i.i, 0
  br i1 %.not160.i.i, label %.thread168.i.i, label %.thread163.i.i

bb.kd:                                            ; preds = %bb.kc
  %.not69.i.i = icmp eq ptr %.0.i35.i, null
  br i1 %.not69.i.i, label %.thread163.i.i, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %.not70.i37.i = icmp eq i32 %i.aqu, %.051258.i.i
  br i1 %.not70.i37.i, label %.thread175.i.i, label %.thread163.i.i

.thread163.i.i:                                   ; preds = %bb.ke, %bb.kd, %.thread.i.i
  %.0162167.i.i = phi ptr [ null, %bb.kd ], [ %.0.i35.i, %bb.ke ], [ null, %.thread.i.i ] ; 3 uses
  %i.are = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.arf = icmp eq i32 %i.are, 1
  br i1 %i.arf, label %adjust_last_block.exit.i.i, label %.preheader37.i.i.i

.preheader37.i.i.i:                               ; preds = %.thread163.i.i
  %.not42.i.i.i = icmp slt i32 %.054257.i.i, 1
  br i1 %.not42.i.i.i, label %adjust_last_block.exit.thread.i.i, label %.lr.ph45.i.i.i

.lr.ph45.i.i.i:                                   ; preds = %.preheader37.i.i.i
  %i.arg = add nuw i32 %.054257.i.i, 1
  %wide.trip.count.i.i.i = zext i32 %i.arg to i64
  br label %bb.kf

bb.kf:                                            ; preds = %._crit_edge.i.i41.i, %.lr.ph45.i.i.i
  %indvars.iv.i.i38.i = phi i64 [ 1, %.lr.ph45.i.i.i ], [ %indvars.iv.next.i.i42.i, %._crit_edge.i.i41.i ] ; 2 uses
  %.02144.i.i.i = phi i32 [ 0, %.lr.ph45.i.i.i ], [ %.1.lcssa.i.i.i, %._crit_edge.i.i41.i ] ; 2 uses
  %i.arh = sub nsw i64 %i.aqr, %indvars.iv.i.i38.i
  %i.ari = getelementptr inbounds [32 x i8], ptr %i.aqq, i64 %i.arh
  %i.arj = load ptr, ptr %i.ari, align 8, !tbaa !53 ; 2 uses
  %i.ark = load i8, ptr %i.arj, align 1, !tbaa !44 ; 2 uses
  %.not3239.i.i.i = icmp eq i8 %i.ark, 0
  br i1 %.not3239.i.i.i, label %._crit_edge.i.i41.i, label %.lr.ph.i.i39.i

.lr.ph.i.i39.i:                                   ; preds = %bb.kf, %bb.kh
  %i.arl = phi i8 [ %i.art, %bb.kh ], [ %i.ark, %bb.kf ]
  %.041.i.i.i = phi ptr [ %i.ars, %bb.kh ], [ %i.arj, %bb.kf ]
  %.140.i.i.i = phi i32 [ %.2.i.i40.i, %bb.kh ], [ %.02144.i.i.i, %bb.kf ] ; 3 uses
  %i.arm = zext i8 %i.arl to i64
  %i.arn = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.arm
  %i.aro = load i8, ptr %i.arn, align 1, !tbaa !44
  %i.arp = and i8 %i.aro, 6
  %.not33.i.i.i = icmp eq i8 %i.arp, 0
  br i1 %.not33.i.i.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %.lr.ph.i.i39.i
  %i.arq = add nsw i32 %.140.i.i.i, 1
  %i.arr = icmp sgt i32 %.140.i.i.i, 18
  br i1 %i.arr, label %adjust_last_block.exit.thread.i.i, label %bb.kh

bb.kh:                                            ; preds = %bb.kg, %.lr.ph.i.i39.i
  %.2.i.i40.i = phi i32 [ %i.arq, %bb.kg ], [ %.140.i.i.i, %.lr.ph.i.i39.i ] ; 2 uses
  %i.ars = getelementptr inbounds nuw i8, ptr %.041.i.i.i, i64 1 ; 2 uses
  %i.art = load i8, ptr %i.ars, align 1, !tbaa !44 ; 2 uses
  %.not32.i.i.i = icmp eq i8 %i.art, 0
  br i1 %.not32.i.i.i, label %._crit_edge.i.i41.i, label %.lr.ph.i.i39.i, !llvm.loop !416

._crit_edge.i.i41.i:                              ; preds = %bb.kh, %bb.kf
  %.1.lcssa.i.i.i = phi i32 [ %.02144.i.i.i, %bb.kf ], [ %.2.i.i40.i, %bb.kh ]
  %indvars.iv.next.i.i42.i = add nuw nsw i64 %indvars.iv.i.i38.i, 1 ; 2 uses
  %exitcond.not.i.i43.i = icmp eq i64 %indvars.iv.next.i.i42.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i43.i, label %.preheader.i.i44.i.preheader, label %bb.kf, !llvm.loop !417

.preheader.i.i44.i.preheader:                     ; preds = %._crit_edge.i.i41.i
  %i.aru = zext nneg i32 %.054257.i.i to i64      ; 2 uses
  %xtraiter = and i64 %i.aru, 3                   ; 3 uses
  %i.arv = icmp ult i32 %.054257.i.i, 4
  br i1 %i.arv, label %.preheader.i.i44.i.epil.preheader, label %.preheader.i.i44.i.preheader.new

.preheader.i.i44.i.preheader.new:                 ; preds = %.preheader.i.i44.i.preheader
  %unroll_iter = and i64 %i.aru, 2147483644
  %invariant.gep = getelementptr [32 x i8], ptr %i.aqq, i64 %i.aqr
  br label %.preheader.i.i44.i

.preheader.i.i44.i:                               ; preds = %.preheader.i.i44.i, %.preheader.i.i44.i.preheader.new
  %indvars.iv51.i.i.i = phi i64 [ 1, %.preheader.i.i44.i.preheader.new ], [ %indvars.iv.next52.i.i.i.3, %.preheader.i.i44.i ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader.i.i44.i.preheader.new ], [ %niter.next.3, %.preheader.i.i44.i ]
  %i.arw = sub nsw i64 %i.aqr, %indvars.iv51.i.i.i
  %i.arx = getelementptr inbounds [32 x i8], ptr %i.aqq, i64 %i.arw
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arx, i64 12 ; 2 uses
  %i.arz = load i32, ptr %i.ary, align 4, !tbaa !55
  %i.asa = and i32 %i.arz, -3145729
  store i32 %i.asa, ptr %i.ary, align 4, !tbaa !55
  %indvars.iv.next52.i.i.i.neg = xor i64 %indvars.iv51.i.i.i, -1
  %gep = getelementptr [32 x i8], ptr %invariant.gep, i64 %indvars.iv.next52.i.i.i.neg
  %i.asb = getelementptr inbounds nuw i8, ptr %gep, i64 12 ; 2 uses
  %i.asc = load i32, ptr %i.asb, align 4, !tbaa !55
  %i.asd = and i32 %i.asc, -3145729
  store i32 %i.asd, ptr %i.asb, align 4, !tbaa !55
  %indvars.iv.next52.i.i.i.1 = add nuw nsw i64 %indvars.iv51.i.i.i, 2
  %25 = sub nsw i64 %i.aqr, %indvars.iv.next52.i.i.i.1
  %i.ase = getelementptr inbounds [32 x i8], ptr %i.aqq, i64 %25
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 12 ; 2 uses
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !55
  %i.ash = and i32 %i.asg, -3145729
  store i32 %i.ash, ptr %i.asf, align 4, !tbaa !55
  %indvars.iv.next52.i.i.i.2 = add nuw nsw i64 %indvars.iv51.i.i.i, 3
  %26 = sub nsw i64 %i.aqr, %indvars.iv.next52.i.i.i.2
  %i.asi = getelementptr inbounds [32 x i8], ptr %i.aqq, i64 %26
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asi, i64 12 ; 2 uses
  %i.ask = load i32, ptr %i.asj, align 4, !tbaa !55
  %i.asl = and i32 %i.ask, -3145729
  store i32 %i.asl, ptr %i.asj, align 4, !tbaa !55
  %indvars.iv.next52.i.i.i.3 = add nuw nsw i64 %indvars.iv51.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %adjust_last_block.exit.i.i.loopexit.unr-lcssa, label %.preheader.i.i44.i, !llvm.loop !418

adjust_last_block.exit.i.i.loopexit.unr-lcssa:    ; preds = %.preheader.i.i44.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %adjust_last_block.exit.i.i, label %.preheader.i.i44.i.epil.preheader

.preheader.i.i44.i.epil.preheader:                ; preds = %adjust_last_block.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i44.i.preheader
  %indvars.iv51.i.i.i.epil.init = phi i64 [ 1, %.preheader.i.i44.i.preheader ], [ %indvars.iv.next52.i.i.i.3, %adjust_last_block.exit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod476 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod476)
  br label %.preheader.i.i44.i.epil

.preheader.i.i44.i.epil:                          ; preds = %.preheader.i.i44.i.epil, %.preheader.i.i44.i.epil.preheader
  %indvars.iv51.i.i.i.epil = phi i64 [ %indvars.iv.next52.i.i.i.epil, %.preheader.i.i44.i.epil ], [ %indvars.iv51.i.i.i.epil.init, %.preheader.i.i44.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i44.i.epil ], [ 0, %.preheader.i.i44.i.epil.preheader ]
  %i.asm = sub nsw i64 %i.aqr, %indvars.iv51.i.i.i.epil
  %i.asn = getelementptr inbounds [32 x i8], ptr %i.aqq, i64 %i.asm
  %i.aso = getelementptr inbounds nuw i8, ptr %i.asn, i64 12 ; 2 uses
  %i.asp = load i32, ptr %i.aso, align 4, !tbaa !55
  %i.asq = and i32 %i.asp, -3145729
  store i32 %i.asq, ptr %i.aso, align 4, !tbaa !55
  %indvars.iv.next52.i.i.i.epil = add nuw nsw i64 %indvars.iv51.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %adjust_last_block.exit.i.i, label %.preheader.i.i44.i.epil, !llvm.loop !419

adjust_last_block.exit.i.i:                       ; preds = %adjust_last_block.exit.i.i.loopexit.unr-lcssa, %.preheader.i.i44.i.epil, %.thread163.i.i
  %.226.i.i.i = phi i32 [ %.054257.i.i, %.thread163.i.i ], [ 0, %.preheader.i.i44.i.epil ], [ 0, %adjust_last_block.exit.i.i.loopexit.unr-lcssa ]
  %i.asr = icmp eq i32 %.226.i.i.i, 0
  %i.ass = icmp sgt i32 %.054257.i.i, 1
  %or.cond.i.i = select i1 %i.asr, i1 %i.ass, i1 false
  %i.ast = sub nsw i32 %.063255.i.i, %.054257.i.i
  br i1 %or.cond.i.i, label %.thread168.i.i, label %adjust_last_block.exit.thread.i.i

adjust_last_block.exit.thread.i.i:                ; preds = %bb.kg, %adjust_last_block.exit.i.i, %.preheader37.i.i.i, %bb.kc
  %.260.i45.i = phi i32 [ 0, %adjust_last_block.exit.i.i ], [ %.058256.i.i, %bb.kc ], [ 0, %.preheader37.i.i.i ], [ 0, %bb.kg ] ; 3 uses
  %.155.i.i = phi i32 [ 0, %adjust_last_block.exit.i.i ], [ %.054257.i.i, %bb.kc ], [ 0, %.preheader37.i.i.i ], [ 0, %bb.kg ] ; 3 uses
  %.2.i46.i = phi ptr [ %.0162167.i.i, %adjust_last_block.exit.i.i ], [ %.0.i35.i, %bb.kc ], [ %.0162167.i.i, %.preheader37.i.i.i ], [ %.0162167.i.i, %bb.kg ] ; 2 uses
  %.not71.i47.i = icmp eq ptr %.2.i46.i, null
  br i1 %.not71.i47.i, label %.thread168.i.i, label %.thread175.thread.i.i

.thread175.i.i:                                   ; preds = %bb.ke
  %i.asu = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.asv = icmp eq i32 %i.asu, 1
  br i1 %i.asv, label %bb.ki, label %bb.kj

.thread175.thread.i.i:                            ; preds = %adjust_last_block.exit.thread.i.i
  %i.asw = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.asx = icmp eq i32 %i.asw, 1
  br i1 %i.asx, label %bb.ki, label %.preheader37.i82.i.i

bb.ki:                                            ; preds = %.thread175.thread.i.i, %.thread175.i.i
  %.1150182290.i.i = phi i32 [ 0, %.thread175.thread.i.i ], [ %.0149253.i.i, %.thread175.i.i ]
  %.260184286.i.i = phi i32 [ %.260.i45.i, %.thread175.thread.i.i ], [ %.058256.i.i, %.thread175.i.i ]
  %.155185284.i.i = phi i32 [ %.155.i.i, %.thread175.thread.i.i ], [ %.054257.i.i, %.thread175.i.i ]
  %i.asy = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.asz = load i32, ptr %i.asy, align 4, !tbaa !55
  %i.ata = or i32 %i.asz, 1048576
  store i32 %i.ata, ptr %i.asy, align 4, !tbaa !55
  br label %.thread168.i.i

bb.kj:                                            ; preds = %.thread175.i.i
  %i.atb = icmp sgt i32 %.0149253.i.i, 0
  br i1 %i.atb, label %.lr.ph.i78.i.i, label %.preheader37.i82.i.i

.lr.ph.i78.i.i:                                   ; preds = %bb.kj
  %i.atc = getelementptr i8, ptr %i.aqs, i64 20
  %i.atd = getelementptr i8, ptr %i.aqs, i64 24   ; 2 uses
  %i.ate = zext nneg i32 %.0149253.i.i to i64
  br label %bb.kk

bb.kk:                                            ; preds = %.thread46.i.i.i, %.lr.ph.i78.i.i
  %indvars.iv.i79.i.i = phi i64 [ 0, %.lr.ph.i78.i.i ], [ %indvars.iv.next.i81.i.i, %.thread46.i.i.i ] ; 2 uses
  %.02650.i.i.i = phi i32 [ 0, %.lr.ph.i78.i.i ], [ %.1.i.i54.i, %.thread46.i.i.i ] ; 8 uses
  %i.atf = getelementptr inbounds nuw [16 x i8], ptr %.0154252.i.i, i64 %indvars.iv.i79.i.i ; 3 uses
  %i.atg = load ptr, ptr %i.atf, align 8, !tbaa !444 ; 2 uses
  %.not.i.i52.i = icmp eq ptr %i.atg, null
  br i1 %.not.i.i52.i, label %.thread46.i.i.i, label %bb.kl

bb.kl:                                            ; preds = %bb.kk
  %i.ath = getelementptr inbounds nuw i8, ptr %i.atg, i64 8
  %i.ati = load ptr, ptr %i.ath, align 8, !tbaa !436 ; 4 uses
  %i.atj = load i32, ptr %i.aqo, align 4, !tbaa !145
  %i.atk = and i32 %i.atj, 32
  %.not33.i80.i.i = icmp eq i32 %i.atk, 0
  %.not34.i.i.i = icmp eq ptr %i.ati, null        ; 2 uses
  br i1 %.not33.i80.i.i, label %bb.kq, label %bb.km

bb.km:                                            ; preds = %bb.kl
  br i1 %.not34.i.i.i, label %.thread46.i.i.i, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %.val.i.i.i179 = load ptr, ptr %i.ati, align 8, !tbaa !435 ; 2 uses
  %.val38.i.i.i = load i32, ptr %i.atc, align 4, !tbaa !57
  %.val39.i.i.i = load i32, ptr %i.atd, align 8, !tbaa !58
  %i.atl = getelementptr i8, ptr %.val.i.i.i179, i64 20
  %.val.val.i.i.i = load i32, ptr %i.atl, align 4, !tbaa !57 ; 2 uses
  %i.atm = getelementptr i8, ptr %.val.i.i.i179, i64 24
  %.val.val40.i.i.i = load i32, ptr %i.atm, align 8, !tbaa !58
  %.not.i.i.i53.i = icmp eq i32 %.val.val40.i.i.i, %.val39.i.i.i
  br i1 %.not.i.i.i53.i, label %bb.ko, label %.thread46.i.i.i

bb.ko:                                            ; preds = %bb.kn
  %i.atn = icmp eq i32 %.val.val.i.i.i, -2147483648
  br i1 %i.atn, label %.critedge.i.i56.i, label %bb.kp

bb.kp:                                            ; preds = %bb.ko
  %i.ato = sub nsw i32 %.val38.i.i.i, %.val.val.i.i.i ; 2 uses
  %i.atp = getelementptr inbounds nuw i8, ptr %i.atf, i64 8 ; 2 uses
  %i.atq = load i32, ptr %i.atp, align 8, !tbaa !445 ; 2 uses
  %i.atr = icmp eq i32 %i.atq, -2147483648
  br i1 %i.atr, label %cmp_in_block_with_wsd.exit.thread.i.i.i, label %cmp_in_block_with_wsd.exit.i.i.i

cmp_in_block_with_wsd.exit.thread.i.i.i:          ; preds = %bb.kp
  store i32 %i.ato, ptr %i.atp, align 8, !tbaa !445
  br label %.critedge.i.i56.i

bb.kq:                                            ; preds = %bb.kl
  br i1 %.not34.i.i.i, label %.thread46.i.i.i, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.kq
  %i.ats = load ptr, ptr %i.ati, align 8, !tbaa !435
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 24
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !58
  %i.atv = load i32, ptr %i.atd, align 8, !tbaa !58
  %.not57.i.i.i = icmp eq i32 %i.atu, %i.atv
  br i1 %.not57.i.i.i, label %.critedge.i.i56.i, label %.thread46.i.i.i

cmp_in_block_with_wsd.exit.i.i.i:                 ; preds = %bb.kp
  %.not56.i.i.i = icmp eq i32 %i.ato, %i.atq
  br i1 %.not56.i.i.i, label %.critedge.i.i56.i, label %.thread46.i.i.i

.critedge.i.i56.i:                                ; preds = %cmp_in_block_with_wsd.exit.i.i.i, %.split.i.i.i, %cmp_in_block_with_wsd.exit.thread.i.i.i, %bb.ko
  %i.atw = sext i32 %.02650.i.i.i to i64
  %i.atx = getelementptr inbounds [16 x i8], ptr %.0154252.i.i, i64 %i.atw ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.atx, ptr noundef nonnull align 8 dereferenceable(16) %i.atf, i64 16, i1 false), !tbaa.struct !446
  %i.aty = add nsw i32 %.02650.i.i.i, 1
  store ptr %i.ati, ptr %i.atx, align 8, !tbaa !444
  br label %.thread46.i.i.i

.thread46.i.i.i:                                  ; preds = %.critedge.i.i56.i, %cmp_in_block_with_wsd.exit.i.i.i, %.split.i.i.i, %bb.kq, %bb.kn, %bb.km, %bb.kk
  %.1.i.i54.i = phi i32 [ %i.aty, %.critedge.i.i56.i ], [ %.02650.i.i.i, %cmp_in_block_with_wsd.exit.i.i.i ], [ %.02650.i.i.i, %bb.km ], [ %.02650.i.i.i, %bb.kq ], [ %.02650.i.i.i, %bb.kk ], [ %.02650.i.i.i, %bb.kn ], [ %.02650.i.i.i, %.split.i.i.i ] ; 3 uses
  %indvars.iv.next.i81.i.i = add nuw nsw i64 %indvars.iv.i79.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i81.i.i, %i.ate
  br i1 %exitcond.not.i.i, label %pmb_advance_or_null.exit.i.i, label %bb.kk, !llvm.loop !420

pmb_advance_or_null.exit.i.i:                     ; preds = %.thread46.i.i.i
  %i.atz = icmp eq i32 %.1.i.i54.i, 0
  br i1 %i.atz, label %bb.kr, label %.thread211.i.i

bb.kr:                                            ; preds = %pmb_advance_or_null.exit.i.i
  %.pr.i55.i = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.aua = icmp eq i32 %.pr.i55.i, 1
  br i1 %i.aua, label %adjust_last_block.exit105.i.i, label %.preheader37.i82.i.i

.preheader37.i82.i.i:                             ; preds = %bb.kr, %bb.kj, %.thread175.thread.i.i
  %.2186282301.i.i = phi ptr [ %.0.i35.i, %bb.kr ], [ %.0.i35.i, %bb.kj ], [ %.2.i46.i, %.thread175.thread.i.i ] ; 4 uses
  %.155185283298.i.i = phi i32 [ %.054257.i.i, %bb.kr ], [ %.054257.i.i, %bb.kj ], [ %.155.i.i, %.thread175.thread.i.i ] ; 6 uses
  %.260184285296.i.i = phi i32 [ %.058256.i.i, %bb.kr ], [ %.058256.i.i, %bb.kj ], [ %.260.i45.i, %.thread175.thread.i.i ] ; 4 uses
  %.not42.i83.i.i = icmp slt i32 %.155185283298.i.i, 1
  br i1 %.not42.i83.i.i, label %adjust_last_block.exit105.thread.i.i, label %.lr.ph45.i84.i.i

.lr.ph45.i84.i.i:                                 ; preds = %.preheader37.i82.i.i
  %i.aub = load ptr, ptr %i.aml, align 8, !tbaa !60
  %i.auc = load ptr, ptr %i.aub, align 8, !tbaa !65 ; 6 uses
  %i.aud = add nuw i32 %.155185283298.i.i, 1
  %wide.trip.count.i85.i.i = zext i32 %i.aud to i64
  br label %bb.ks

bb.ks:                                            ; preds = %._crit_edge.i95.i.i, %.lr.ph45.i84.i.i
  %indvars.iv.i86.i.i = phi i64 [ 1, %.lr.ph45.i84.i.i ], [ %indvars.iv.next.i97.i.i, %._crit_edge.i95.i.i ] ; 2 uses
  %.02144.i87.i.i = phi i32 [ 0, %.lr.ph45.i84.i.i ], [ %.1.lcssa.i96.i.i, %._crit_edge.i95.i.i ] ; 2 uses
  %i.aue = sub nsw i64 %i.aqr, %indvars.iv.i86.i.i
  %i.auf = getelementptr inbounds [32 x i8], ptr %i.auc, i64 %i.aue
  %i.aug = load ptr, ptr %i.auf, align 8, !tbaa !53 ; 2 uses
  %i.auh = load i8, ptr %i.aug, align 1, !tbaa !44 ; 2 uses
  %.not3239.i88.i.i = icmp eq i8 %i.auh, 0
  br i1 %.not3239.i88.i.i, label %._crit_edge.i95.i.i, label %.lr.ph.i89.i.i

.lr.ph.i89.i.i:                                   ; preds = %bb.ks, %bb.ku
  %i.aui = phi i8 [ %i.auq, %bb.ku ], [ %i.auh, %bb.ks ]
  %.041.i90.i.i = phi ptr [ %i.aup, %bb.ku ], [ %i.aug, %bb.ks ]
  %.140.i91.i.i = phi i32 [ %.2.i93.i.i, %bb.ku ], [ %.02144.i87.i.i, %bb.ks ] ; 3 uses
  %i.auj = zext i8 %i.aui to i64
  %i.auk = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.auj
  %i.aul = load i8, ptr %i.auk, align 1, !tbaa !44
  %i.aum = and i8 %i.aul, 6
  %.not33.i92.i.i = icmp eq i8 %i.aum, 0
  br i1 %.not33.i92.i.i, label %bb.ku, label %bb.kt

bb.kt:                                            ; preds = %.lr.ph.i89.i.i
  %i.aun = add nsw i32 %.140.i91.i.i, 1
  %i.auo = icmp sgt i32 %.140.i91.i.i, 18
  br i1 %i.auo, label %adjust_last_block.exit105.thread.i.i, label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %.lr.ph.i89.i.i
  %.2.i93.i.i = phi i32 [ %i.aun, %bb.kt ], [ %.140.i91.i.i, %.lr.ph.i89.i.i ] ; 2 uses
  %i.aup = getelementptr inbounds nuw i8, ptr %.041.i90.i.i, i64 1 ; 2 uses
  %i.auq = load i8, ptr %i.aup, align 1, !tbaa !44 ; 2 uses
  %.not32.i94.i.i = icmp eq i8 %i.auq, 0
  br i1 %.not32.i94.i.i, label %._crit_edge.i95.i.i, label %.lr.ph.i89.i.i, !llvm.loop !416

._crit_edge.i95.i.i:                              ; preds = %bb.ku, %bb.ks
  %.1.lcssa.i96.i.i = phi i32 [ %.02144.i87.i.i, %bb.ks ], [ %.2.i93.i.i, %bb.ku ]
  %indvars.iv.next.i97.i.i = add nuw nsw i64 %indvars.iv.i86.i.i, 1 ; 2 uses
  %exitcond.not.i98.i.i = icmp eq i64 %indvars.iv.next.i97.i.i, %wide.trip.count.i85.i.i
  br i1 %exitcond.not.i98.i.i, label %.preheader.i99.i.i.preheader, label %bb.ks, !llvm.loop !417

.preheader.i99.i.i.preheader:                     ; preds = %._crit_edge.i95.i.i
  %i.aur = zext nneg i32 %.155185283298.i.i to i64 ; 2 uses
  %xtraiter477 = and i64 %i.aur, 3                ; 3 uses
  %i.aus = icmp ult i32 %.155185283298.i.i, 4
  br i1 %i.aus, label %.preheader.i99.i.i.epil.preheader, label %.preheader.i99.i.i.preheader.new

.preheader.i99.i.i.preheader.new:                 ; preds = %.preheader.i99.i.i.preheader
  %unroll_iter481 = and i64 %i.aur, 2147483644
  %invariant.gep519 = getelementptr [32 x i8], ptr %i.auc, i64 %i.aqr
  br label %.preheader.i99.i.i

.preheader.i99.i.i:                               ; preds = %.preheader.i99.i.i, %.preheader.i99.i.i.preheader.new
  %indvars.iv51.i101.i.i = phi i64 [ 1, %.preheader.i99.i.i.preheader.new ], [ %indvars.iv.next52.i102.i.i.3, %.preheader.i99.i.i ] ; 5 uses
  %niter482 = phi i64 [ 0, %.preheader.i99.i.i.preheader.new ], [ %niter482.next.3, %.preheader.i99.i.i ]
  %i.aut = sub nsw i64 %i.aqr, %indvars.iv51.i101.i.i
  %i.auu = getelementptr inbounds [32 x i8], ptr %i.auc, i64 %i.aut
  %i.auv = getelementptr inbounds nuw i8, ptr %i.auu, i64 12 ; 2 uses
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !55
  %i.aux = and i32 %i.auw, -3145729
  store i32 %i.aux, ptr %i.auv, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.neg = xor i64 %indvars.iv51.i101.i.i, -1
  %gep520 = getelementptr [32 x i8], ptr %invariant.gep519, i64 %indvars.iv.next52.i102.i.i.neg
  %i.auy = getelementptr inbounds nuw i8, ptr %gep520, i64 12 ; 2 uses
  %i.auz = load i32, ptr %i.auy, align 4, !tbaa !55
  %i.ava = and i32 %i.auz, -3145729
  store i32 %i.ava, ptr %i.auy, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.1 = add nuw nsw i64 %indvars.iv51.i101.i.i, 2
  %27 = sub nsw i64 %i.aqr, %indvars.iv.next52.i102.i.i.1
  %i.avb = getelementptr inbounds [32 x i8], ptr %i.auc, i64 %27
  %i.avc = getelementptr inbounds nuw i8, ptr %i.avb, i64 12 ; 2 uses
  %i.avd = load i32, ptr %i.avc, align 4, !tbaa !55
  %i.ave = and i32 %i.avd, -3145729
  store i32 %i.ave, ptr %i.avc, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.2 = add nuw nsw i64 %indvars.iv51.i101.i.i, 3
  %28 = sub nsw i64 %i.aqr, %indvars.iv.next52.i102.i.i.2
  %i.avf = getelementptr inbounds [32 x i8], ptr %i.auc, i64 %28
  %i.avg = getelementptr inbounds nuw i8, ptr %i.avf, i64 12 ; 2 uses
  %i.avh = load i32, ptr %i.avg, align 4, !tbaa !55
  %i.avi = and i32 %i.avh, -3145729
  store i32 %i.avi, ptr %i.avg, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.3 = add nuw nsw i64 %indvars.iv51.i101.i.i, 4 ; 2 uses
  %niter482.next.3 = add nuw i64 %niter482, 4     ; 2 uses
  %niter482.ncmp.3 = icmp eq i64 %niter482.next.3, %unroll_iter481
  br i1 %niter482.ncmp.3, label %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, label %.preheader.i99.i.i, !llvm.loop !418

adjust_last_block.exit105.i.i.loopexit.unr-lcssa: ; preds = %.preheader.i99.i.i
  %lcmp.mod479.not = icmp eq i64 %xtraiter477, 0
  br i1 %lcmp.mod479.not, label %adjust_last_block.exit105.i.i, label %.preheader.i99.i.i.epil.preheader

.preheader.i99.i.i.epil.preheader:                ; preds = %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, %.preheader.i99.i.i.preheader
  %indvars.iv51.i101.i.i.epil.init = phi i64 [ 1, %.preheader.i99.i.i.preheader ], [ %indvars.iv.next52.i102.i.i.3, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %lcmp.mod480 = icmp ne i64 %xtraiter477, 0
  call void @llvm.assume(i1 %lcmp.mod480)
  br label %.preheader.i99.i.i.epil

.preheader.i99.i.i.epil:                          ; preds = %.preheader.i99.i.i.epil, %.preheader.i99.i.i.epil.preheader
  %indvars.iv51.i101.i.i.epil = phi i64 [ %indvars.iv.next52.i102.i.i.epil, %.preheader.i99.i.i.epil ], [ %indvars.iv51.i101.i.i.epil.init, %.preheader.i99.i.i.epil.preheader ] ; 2 uses
  %epil.iter478 = phi i64 [ %epil.iter478.next, %.preheader.i99.i.i.epil ], [ 0, %.preheader.i99.i.i.epil.preheader ]
  %i.avj = sub nsw i64 %i.aqr, %indvars.iv51.i101.i.i.epil
  %i.avk = getelementptr inbounds [32 x i8], ptr %i.auc, i64 %i.avj
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 12 ; 2 uses
  %i.avm = load i32, ptr %i.avl, align 4, !tbaa !55
  %i.avn = and i32 %i.avm, -3145729
  store i32 %i.avn, ptr %i.avl, align 4, !tbaa !55
  %indvars.iv.next52.i102.i.i.epil = add nuw nsw i64 %indvars.iv51.i101.i.i.epil, 1
  %epil.iter478.next = add i64 %epil.iter478, 1   ; 2 uses
  %epil.iter478.cmp.not = icmp eq i64 %epil.iter478.next, %xtraiter477
  br i1 %epil.iter478.cmp.not, label %adjust_last_block.exit105.i.i, label %.preheader.i99.i.i.epil, !llvm.loop !421

adjust_last_block.exit105.i.i:                    ; preds = %adjust_last_block.exit105.i.i.loopexit.unr-lcssa, %.preheader.i99.i.i.epil, %bb.kr
  %.2186282299.i.i = phi ptr [ %.0.i35.i, %bb.kr ], [ %.2186282301.i.i, %.preheader.i99.i.i.epil ], [ %.2186282301.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %.155185283297.i.i = phi i32 [ %.054257.i.i, %bb.kr ], [ %.155185283298.i.i, %.preheader.i99.i.i.epil ], [ %.155185283298.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.260184287.i.i = phi i32 [ %.058256.i.i, %bb.kr ], [ %.260184285296.i.i, %.preheader.i99.i.i.epil ], [ %.260184285296.i.i, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ]
  %.226.i104.i.i = phi i32 [ %.054257.i.i, %bb.kr ], [ 0, %.preheader.i99.i.i.epil ], [ 0, %adjust_last_block.exit105.i.i.loopexit.unr-lcssa ] ; 2 uses
  %i.avo = icmp eq i32 %.226.i104.i.i, 0
  %i.avp = icmp sgt i32 %.155185283297.i.i, 1
  %or.cond3.i.i = select i1 %i.avo, i1 %i.avp, i1 false
  br i1 %or.cond3.i.i, label %.thread223.i.i, label %adjust_last_block.exit105.thread.i.i

.thread223.i.i:                                   ; preds = %adjust_last_block.exit105.i.i
  %i.avq = sub nsw i32 %.063255.i.i, %.155185283297.i.i
  br label %.thread168.i.i

adjust_last_block.exit105.thread.i.i:             ; preds = %bb.kt, %adjust_last_block.exit105.i.i, %.preheader37.i82.i.i
  %.2186282300.i.i = phi ptr [ %.2186282299.i.i, %adjust_last_block.exit105.i.i ], [ %.2186282301.i.i, %.preheader37.i82.i.i ], [ %.2186282301.i.i, %bb.kt ]
  %.260184288.i.i = phi i32 [ %.260184287.i.i, %adjust_last_block.exit105.i.i ], [ %.260184285296.i.i, %.preheader37.i82.i.i ], [ %.260184285296.i.i, %bb.kt ]
  %.226.i104198.i.i = phi i32 [ %.226.i104.i.i, %adjust_last_block.exit105.i.i ], [ 0, %.preheader37.i82.i.i ], [ 1, %bb.kt ]
  %i.avr = getelementptr i8, ptr %i.aqs, i64 20
  br label %bb.kv

bb.kv:                                            ; preds = %bb.ky, %adjust_last_block.exit105.thread.i.i
  %indvars.iv.i106.i.i = phi i64 [ 0, %adjust_last_block.exit105.thread.i.i ], [ %indvars.iv.next.i107.i.i, %bb.ky ] ; 3 uses
  %.02843.i.i.i = phi i32 [ %.0146254.i.i, %adjust_last_block.exit105.thread.i.i ], [ %.2.i109.i.i, %bb.ky ] ; 3 uses
  %.02942.i.i.i = phi ptr [ %.0154252.i.i, %adjust_last_block.exit105.thread.i.i ], [ %.130.i.i.i, %bb.ky ] ; 2 uses
  %.03141.i.i.i = phi ptr [ %.2186282300.i.i, %adjust_last_block.exit105.thread.i.i ], [ %i.awk, %bb.ky ] ; 3 uses
  %indvars.iv.next.i107.i.i = add nuw nsw i64 %indvars.iv.i106.i.i, 1 ; 3 uses
  %i.avs = sext i32 %.02843.i.i.i to i64
  %.not34.i108.i.i = icmp slt i64 %indvars.iv.i106.i.i, %i.avs
  br i1 %.not34.i108.i.i, label %bb.kw, label %st_mult.exit.i.i.i

st_mult.exit.i.i.i:                               ; preds = %bb.kv
  %i.avt = mul i32 %.02843.i.i.i, 3
  %i.avu = add i32 %i.avt, 48
  %i.avv = sdiv i32 %i.avu, 2
  %i.avw = trunc nuw nsw i64 %indvars.iv.next.i107.i.i to i32
  %..i.i.i = call i32 @llvm.smax.i32(i32 %i.avv, i32 %i.avw) ; 2 uses
  %i.avx = sext i32 %..i.i.i to i64
  %i.avy = shl nuw nsw i64 %i.avx, 4
  %i.avz = call ptr @xrealloc(ptr noundef %.02942.i.i.i, i64 noundef %i.avy) #33
  br label %bb.kw

bb.kw:                                            ; preds = %st_mult.exit.i.i.i, %bb.kv
  %.130.i.i.i = phi ptr [ %i.avz, %st_mult.exit.i.i.i ], [ %.02942.i.i.i, %bb.kv ] ; 4 uses
  %.2.i109.i.i = phi i32 [ %..i.i.i, %st_mult.exit.i.i.i ], [ %.02843.i.i.i, %bb.kv ] ; 3 uses
  %i.awa = load i32, ptr %i.aqo, align 4, !tbaa !145
  %i.awb = and i32 %i.awa, 32
  %.not36.i.i.i = icmp eq i32 %i.awb, 0
  br i1 %.not36.i.i.i, label %bb.ky, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.awc = load ptr, ptr %.03141.i.i.i, align 8, !tbaa !435
  %.val.i110.i.i = load i32, ptr %i.avr, align 4, !tbaa !57 ; 2 uses
  %i.awd = getelementptr i8, ptr %i.awc, i64 20
  %.val37.i.i.i = load i32, ptr %i.awd, align 4, !tbaa !57 ; 2 uses
  %i.awe = icmp eq i32 %.val.i110.i.i, -2147483648
  %i.awf = icmp eq i32 %.val37.i.i.i, -2147483648
  %or.cond.i.i.i.i = select i1 %i.awe, i1 %i.awf, i1 false
  %i.awg = sub nsw i32 %.val.i110.i.i, %.val37.i.i.i
  %.0.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 -2147483648, i32 %i.awg
  br label %bb.ky

bb.ky:                                            ; preds = %bb.kx, %bb.kw
  %.sink.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.kx ], [ 0, %bb.kw ]
  %i.awh = getelementptr inbounds nuw [16 x i8], ptr %.130.i.i.i, i64 %indvars.iv.i106.i.i ; 2 uses
  %i.awi = getelementptr inbounds nuw i8, ptr %i.awh, i64 8
  store i32 %.sink.i.i.i, ptr %i.awi, align 8, !tbaa !445
  store ptr %.03141.i.i.i, ptr %i.awh, align 8, !tbaa !444
  %i.awj = getelementptr inbounds nuw i8, ptr %.03141.i.i.i, i64 16
  %i.awk = load ptr, ptr %i.awj, align 8, !tbaa !439 ; 2 uses
  %.not.i111.i.i = icmp eq ptr %i.awk, null
  br i1 %.not.i111.i.i, label %bb.kz, label %bb.kv, !llvm.loop !422

bb.kz:                                            ; preds = %bb.ky
  %i.awl = trunc nuw nsw i64 %indvars.iv.next.i107.i.i to i32 ; 2 uses
  %.not244.i.i = icmp ne i32 %.226.i104198.i.i, 0
  %.pre.i48.i = load i32, ptr %i.aqt, align 4, !tbaa !59 ; 2 uses
  %i.awm = icmp eq i32 %.051258.i.i, %.pre.i48.i
  %or.cond318.i.i = select i1 %.not244.i.i, i1 %i.awm, i1 false
  br i1 %or.cond318.i.i, label %bb.la, label %.thread211.thread.i.i

bb.la:                                            ; preds = %bb.kz
  %i.awn = xor i32 %.260184288.i.i, 1
  br label %.thread211.i.i

.thread211.thread.i.i:                            ; preds = %bb.kz
  %i.awo = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 2 uses
  %i.awp = load i32, ptr %i.awo, align 4, !tbaa !55
  %i.awq = or i32 %i.awp, 1048576
  store i32 %i.awq, ptr %i.awo, align 4, !tbaa !55
  br label %.thread168.i.i

.thread211.i.i:                                   ; preds = %bb.la, %pmb_advance_or_null.exit.i.i
  %.2156.i.i = phi ptr [ %.0154252.i.i, %pmb_advance_or_null.exit.i.i ], [ %.130.i.i.i, %bb.la ] ; 3 uses
  %.3152.i.i = phi i32 [ %.1.i.i54.i, %pmb_advance_or_null.exit.i.i ], [ %i.awl, %bb.la ] ; 3 uses
  %.2147.i.i = phi i32 [ %.0146254.i.i, %pmb_advance_or_null.exit.i.i ], [ %.2.i109.i.i, %bb.la ] ; 3 uses
  %.462.i.i = phi i32 [ %.058256.i.i, %pmb_advance_or_null.exit.i.i ], [ %i.awn, %bb.la ]
  %.256.i.i = phi i32 [ %.054257.i.i, %pmb_advance_or_null.exit.i.i ], [ 0, %bb.la ]
  %i.awr = add nsw i32 %.256.i.i, 1               ; 3 uses
  %i.aws = getelementptr inbounds nuw i8, ptr %i.aqs, i64 12 ; 3 uses
  %i.awt = load i32, ptr %i.aws, align 4, !tbaa !55 ; 2 uses
  %i.awu = or i32 %i.awt, 1048576
  store i32 %i.awu, ptr %i.aws, align 4, !tbaa !55
  %.not74.i.i = icmp eq i32 %.462.i.i, 0
  br i1 %.not74.i.i, label %.thread168.i.i, label %bb.lb

bb.lb:                                            ; preds = %.thread211.i.i
  %i.awv = load i32, ptr %i.ail, align 8, !tbaa !144
  %.not75.i.i = icmp eq i32 %i.awv, 2
  br i1 %.not75.i.i, label %.thread168.i.i, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.aww = or i32 %i.awt, 3145728
  store i32 %i.aww, ptr %i.aws, align 4, !tbaa !55
  br label %.thread168.i.i

.thread168.i.i:                                   ; preds = %bb.lc, %bb.lb, %.thread211.i.i, %.thread211.thread.i.i, %.thread223.i.i, %bb.ki, %adjust_last_block.exit.thread.i.i, %adjust_last_block.exit.i.i, %.thread.i.i
  %.3157.i.i = phi ptr [ %.0154252.i.i, %adjust_last_block.exit.thread.i.i ], [ %.0154252.i.i, %bb.ki ], [ %.0154252.i.i, %adjust_last_block.exit.i.i ], [ %.2156.i.i, %.thread211.i.i ], [ %.2156.i.i, %bb.lb ], [ %.2156.i.i, %bb.lc ], [ %.0154252.i.i, %.thread.i.i ], [ %.0154252.i.i, %.thread223.i.i ], [ %.130.i.i.i, %.thread211.thread.i.i ] ; 5 uses
  %.4153.i.i = phi i32 [ 0, %adjust_last_block.exit.thread.i.i ], [ %.1150182290.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ %.3152.i.i, %.thread211.i.i ], [ %.3152.i.i, %bb.lb ], [ %.3152.i.i, %bb.lc ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ %i.awl, %.thread211.thread.i.i ]
  %.3148.i.i = phi i32 [ %.0146254.i.i, %adjust_last_block.exit.thread.i.i ], [ %.0146254.i.i, %bb.ki ], [ %.0146254.i.i, %adjust_last_block.exit.i.i ], [ %.2147.i.i, %.thread211.i.i ], [ %.2147.i.i, %bb.lb ], [ %.2147.i.i, %bb.lc ], [ %.0146254.i.i, %.thread.i.i ], [ %.0146254.i.i, %.thread223.i.i ], [ %.2.i109.i.i, %.thread211.thread.i.i ]
  %.568.i.i = phi i32 [ %.063255.i.i, %adjust_last_block.exit.thread.i.i ], [ %.063255.i.i, %bb.ki ], [ %i.ast, %adjust_last_block.exit.i.i ], [ %.063255.i.i, %.thread211.i.i ], [ %.063255.i.i, %bb.lb ], [ %.063255.i.i, %bb.lc ], [ %.063255.i.i, %.thread.i.i ], [ %i.avq, %.thread223.i.i ], [ %.063255.i.i, %.thread211.thread.i.i ]
  %.5.i.i = phi i32 [ %.260.i45.i, %adjust_last_block.exit.thread.i.i ], [ %.260184286.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ 0, %.thread211.i.i ], [ 1, %bb.lb ], [ 1, %bb.lc ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ 0, %.thread211.thread.i.i ]
  %.4.i49.i = phi i32 [ %.155.i.i, %adjust_last_block.exit.thread.i.i ], [ %.155185284.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ %i.awr, %.thread211.i.i ], [ %i.awr, %bb.lb ], [ %i.awr, %bb.lc ], [ %.054257.i.i, %.thread.i.i ], [ 0, %.thread223.i.i ], [ 1, %.thread211.thread.i.i ] ; 5 uses
  %.3.i50.i = phi i32 [ 0, %adjust_last_block.exit.thread.i.i ], [ %.051258.i.i, %bb.ki ], [ 0, %adjust_last_block.exit.i.i ], [ %.051258.i.i, %.thread211.i.i ], [ %.051258.i.i, %bb.lb ], [ %.051258.i.i, %bb.lc ], [ 0, %.thread.i.i ], [ 0, %.thread223.i.i ], [ %.pre.i48.i, %.thread211.thread.i.i ]
  %i.awx = add nsw i32 %.568.i.i, 1               ; 3 uses
  %i.awy = load ptr, ptr %i.aml, align 8, !tbaa !60 ; 3 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.awy, i64 8
  %i.axa = load i32, ptr %i.awz, align 8, !tbaa !63
  %i.axb = icmp slt i32 %i.awx, %i.axa
  br i1 %i.axb, label %bb.jz, label %._crit_edge.i51.i, !llvm.loop !423

._crit_edge.i51.i:                                ; preds = %.thread168.i.i
  %i.axc = sext i32 %i.awx to i64                 ; 6 uses
  %i.axd = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.axe = icmp eq i32 %i.axd, 1
  %.not42.i113.i.i = icmp slt i32 %.4.i49.i, 1
  %or.cond243.i.i = select i1 %i.axe, i1 true, i1 %.not42.i113.i.i
  br i1 %or.cond243.i.i, label %mark_color_as_moved.exit.i, label %.lr.ph45.i114.i.i

.lr.ph45.i114.i.i:                                ; preds = %._crit_edge.i51.i
  %i.axf = load ptr, ptr %i.awy, align 8, !tbaa !65 ; 6 uses
  %i.axg = add nuw i32 %.4.i49.i, 1
  %wide.trip.count.i115.i.i = zext i32 %i.axg to i64
  br label %bb.ld

bb.ld:                                            ; preds = %._crit_edge.i125.i.i, %.lr.ph45.i114.i.i
  %indvars.iv.i116.i.i = phi i64 [ 1, %.lr.ph45.i114.i.i ], [ %indvars.iv.next.i127.i.i, %._crit_edge.i125.i.i ] ; 2 uses
  %.02144.i117.i.i = phi i32 [ 0, %.lr.ph45.i114.i.i ], [ %.1.lcssa.i126.i.i, %._crit_edge.i125.i.i ] ; 2 uses
  %i.axh = sub nsw i64 %i.axc, %indvars.iv.i116.i.i
  %i.axi = getelementptr inbounds [32 x i8], ptr %i.axf, i64 %i.axh
  %i.axj = load ptr, ptr %i.axi, align 8, !tbaa !53 ; 2 uses
  %i.axk = load i8, ptr %i.axj, align 1, !tbaa !44 ; 2 uses
  %.not3239.i118.i.i = icmp eq i8 %i.axk, 0
  br i1 %.not3239.i118.i.i, label %._crit_edge.i125.i.i, label %.lr.ph.i119.i.i

.lr.ph.i119.i.i:                                  ; preds = %bb.ld, %bb.lf
  %i.axl = phi i8 [ %i.axt, %bb.lf ], [ %i.axk, %bb.ld ]
  %.041.i120.i.i = phi ptr [ %i.axs, %bb.lf ], [ %i.axj, %bb.ld ]
  %.140.i121.i.i = phi i32 [ %.2.i123.i.i, %bb.lf ], [ %.02144.i117.i.i, %bb.ld ] ; 3 uses
  %i.axm = zext i8 %i.axl to i64
  %i.axn = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.axm
  %i.axo = load i8, ptr %i.axn, align 1, !tbaa !44
  %i.axp = and i8 %i.axo, 6
  %.not33.i122.i.i = icmp eq i8 %i.axp, 0
  br i1 %.not33.i122.i.i, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %.lr.ph.i119.i.i
  %i.axq = add nsw i32 %.140.i121.i.i, 1
  %i.axr = icmp sgt i32 %.140.i121.i.i, 18
  br i1 %i.axr, label %mark_color_as_moved.exit.i, label %bb.lf

bb.lf:                                            ; preds = %bb.le, %.lr.ph.i119.i.i
  %.2.i123.i.i = phi i32 [ %i.axq, %bb.le ], [ %.140.i121.i.i, %.lr.ph.i119.i.i ] ; 2 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %.041.i120.i.i, i64 1 ; 2 uses
  %i.axt = load i8, ptr %i.axs, align 1, !tbaa !44 ; 2 uses
  %.not32.i124.i.i = icmp eq i8 %i.axt, 0
  br i1 %.not32.i124.i.i, label %._crit_edge.i125.i.i, label %.lr.ph.i119.i.i, !llvm.loop !416

._crit_edge.i125.i.i:                             ; preds = %bb.lf, %bb.ld
  %.1.lcssa.i126.i.i = phi i32 [ %.02144.i117.i.i, %bb.ld ], [ %.2.i123.i.i, %bb.lf ]
  %indvars.iv.next.i127.i.i = add nuw nsw i64 %indvars.iv.i116.i.i, 1 ; 2 uses
  %exitcond.not.i128.i.i = icmp eq i64 %indvars.iv.next.i127.i.i, %wide.trip.count.i115.i.i
  br i1 %exitcond.not.i128.i.i, label %.preheader.i129.i.i.preheader, label %bb.ld, !llvm.loop !417

.preheader.i129.i.i.preheader:                    ; preds = %._crit_edge.i125.i.i
  %i.axu = zext nneg i32 %.4.i49.i to i64         ; 2 uses
  %xtraiter483 = and i64 %i.axu, 3                ; 3 uses
  %i.axv = add nsw i32 %.4.i49.i, -1
  %i.axw = icmp ult i32 %i.axv, 3
  br i1 %i.axw, label %.preheader.i129.i.i.epil.preheader, label %.preheader.i129.i.i.preheader.new

.preheader.i129.i.i.preheader.new:                ; preds = %.preheader.i129.i.i.preheader
  %unroll_iter487 = and i64 %i.axu, 2147483644
  %invariant.gep521 = getelementptr [32 x i8], ptr %i.axf, i64 %i.axc
  br label %.preheader.i129.i.i

.preheader.i129.i.i:                              ; preds = %.preheader.i129.i.i, %.preheader.i129.i.i.preheader.new
  %indvars.iv51.i131.i.i = phi i64 [ 1, %.preheader.i129.i.i.preheader.new ], [ %indvars.iv.next52.i132.i.i.3, %.preheader.i129.i.i ] ; 5 uses
  %niter488 = phi i64 [ 0, %.preheader.i129.i.i.preheader.new ], [ %niter488.next.3, %.preheader.i129.i.i ]
  %i.axx = sub nsw i64 %i.axc, %indvars.iv51.i131.i.i
  %i.axy = getelementptr inbounds [32 x i8], ptr %i.axf, i64 %i.axx
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axy, i64 12 ; 2 uses
  %i.aya = load i32, ptr %i.axz, align 4, !tbaa !55
  %i.ayb = and i32 %i.aya, -3145729
  store i32 %i.ayb, ptr %i.axz, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.neg = xor i64 %indvars.iv51.i131.i.i, -1
  %gep522 = getelementptr [32 x i8], ptr %invariant.gep521, i64 %indvars.iv.next52.i132.i.i.neg
  %i.ayc = getelementptr inbounds nuw i8, ptr %gep522, i64 12 ; 2 uses
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !55
  %i.aye = and i32 %i.ayd, -3145729
  store i32 %i.aye, ptr %i.ayc, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.1 = add nuw nsw i64 %indvars.iv51.i131.i.i, 2
  %29 = sub nsw i64 %i.axc, %indvars.iv.next52.i132.i.i.1
  %i.ayf = getelementptr inbounds [32 x i8], ptr %i.axf, i64 %29
  %i.ayg = getelementptr inbounds nuw i8, ptr %i.ayf, i64 12 ; 2 uses
  %i.ayh = load i32, ptr %i.ayg, align 4, !tbaa !55
  %i.ayi = and i32 %i.ayh, -3145729
  store i32 %i.ayi, ptr %i.ayg, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.2 = add nuw nsw i64 %indvars.iv51.i131.i.i, 3
  %30 = sub nsw i64 %i.axc, %indvars.iv.next52.i132.i.i.2
  %i.ayj = getelementptr inbounds [32 x i8], ptr %i.axf, i64 %30
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayj, i64 12 ; 2 uses
  %i.ayl = load i32, ptr %i.ayk, align 4, !tbaa !55
  %i.aym = and i32 %i.ayl, -3145729
  store i32 %i.aym, ptr %i.ayk, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.3 = add nuw nsw i64 %indvars.iv51.i131.i.i, 4 ; 2 uses
  %niter488.next.3 = add nuw i64 %niter488, 4     ; 2 uses
  %niter488.ncmp.3 = icmp eq i64 %niter488.next.3, %unroll_iter487
  br i1 %niter488.ncmp.3, label %mark_color_as_moved.exit.i.loopexit.unr-lcssa, label %.preheader.i129.i.i, !llvm.loop !418

mark_color_as_moved.exit.i.loopexit.unr-lcssa:    ; preds = %.preheader.i129.i.i
  %lcmp.mod485.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod485.not, label %mark_color_as_moved.exit.i, label %.preheader.i129.i.i.epil.preheader

.preheader.i129.i.i.epil.preheader:               ; preds = %mark_color_as_moved.exit.i.loopexit.unr-lcssa, %.preheader.i129.i.i.preheader
  %indvars.iv51.i131.i.i.epil.init = phi i64 [ 1, %.preheader.i129.i.i.preheader ], [ %indvars.iv.next52.i132.i.i.3, %mark_color_as_moved.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod486 = icmp ne i64 %xtraiter483, 0
  call void @llvm.assume(i1 %lcmp.mod486)
  br label %.preheader.i129.i.i.epil

.preheader.i129.i.i.epil:                         ; preds = %.preheader.i129.i.i.epil, %.preheader.i129.i.i.epil.preheader
  %indvars.iv51.i131.i.i.epil = phi i64 [ %indvars.iv.next52.i132.i.i.epil, %.preheader.i129.i.i.epil ], [ %indvars.iv51.i131.i.i.epil.init, %.preheader.i129.i.i.epil.preheader ] ; 2 uses
  %epil.iter484 = phi i64 [ %epil.iter484.next, %.preheader.i129.i.i.epil ], [ 0, %.preheader.i129.i.i.epil.preheader ]
  %i.ayn = sub nsw i64 %i.axc, %indvars.iv51.i131.i.i.epil
  %i.ayo = getelementptr inbounds [32 x i8], ptr %i.axf, i64 %i.ayn
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.ayo, i64 12 ; 2 uses
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !55
  %i.ayr = and i32 %i.ayq, -3145729
  store i32 %i.ayr, ptr %i.ayp, align 4, !tbaa !55
  %indvars.iv.next52.i132.i.i.epil = add nuw nsw i64 %indvars.iv51.i131.i.i.epil, 1
  %epil.iter484.next = add i64 %epil.iter484, 1   ; 2 uses
  %epil.iter484.cmp.not = icmp eq i64 %epil.iter484.next, %xtraiter483
  br i1 %epil.iter484.cmp.not, label %mark_color_as_moved.exit.i, label %.preheader.i129.i.i.epil, !llvm.loop !424

mark_color_as_moved.exit.i:                       ; preds = %bb.le, %mark_color_as_moved.exit.i.loopexit.unr-lcssa, %.preheader.i129.i.i.epil, %._crit_edge.i51.i, %add_lines_to_move_detection.exit.i
  %.0154.lcssa315.i.i = phi ptr [ %.3157.i.i, %mark_color_as_moved.exit.i.loopexit.unr-lcssa ], [ null, %add_lines_to_move_detection.exit.i ], [ %.3157.i.i, %._crit_edge.i51.i ], [ %.3157.i.i, %.preheader.i129.i.i.epil ], [ %.3157.i.i, %bb.le ]
  call void @free(ptr noundef %.0154.lcssa315.i.i) #33
  %i.ays = load i32, ptr %i.ail, align 8, !tbaa !144
  %i.ayt = icmp eq i32 %i.ays, 4
  br i1 %i.ayt, label %bb.lg, label %dim_moved_lines.exit.i

bb.lg:                                            ; preds = %mark_color_as_moved.exit.i
  %i.ayu = load ptr, ptr %i.aml, align 8, !tbaa !60 ; 2 uses
  %i.ayv = getelementptr inbounds nuw i8, ptr %i.ayu, i64 8
  %i.ayw = load i32, ptr %i.ayv, align 8, !tbaa !63 ; 4 uses
  %i.ayx = icmp sgt i32 %i.ayw, 0
  br i1 %i.ayx, label %bb.lh, label %dim_moved_lines.exit.i

bb.lh:                                            ; preds = %bb.lg
  %i.ayy = load ptr, ptr %i.ayu, align 8, !tbaa !65 ; 5 uses
  %i.ayz = add nsw i32 %i.ayw, -1                 ; 2 uses
  %i.aza = zext nneg i32 %i.ayz to i64
  %wide.trip.count.i.i = zext nneg i32 %i.ayw to i64
  %.not62.peel.not.i.i = icmp eq i32 %i.ayz, 0
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayy, i64 28
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !59
  %i.azd = and i32 %i.azc, -2
  %switch.peel.i.i = icmp eq i32 %i.azd, 28
  br i1 %switch.peel.i.i, label %bb.li, label %bb.lm

bb.li:                                            ; preds = %bb.lh
  %i.aze = getelementptr inbounds nuw i8, ptr %i.ayy, i64 12 ; 2 uses
  %i.azf = load i32, ptr %i.aze, align 4, !tbaa !55 ; 3 uses
  %i.azg = and i32 %i.azf, 1048576
  %.not49.peel.i.i = icmp eq i32 %i.azg, 0
  br i1 %.not49.peel.i.i, label %bb.lm, label %bb.lj

bb.lj:                                            ; preds = %bb.li
  br i1 %.not62.peel.not.i.i, label %.critedge.peel.thread.i.i, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.azh = getelementptr inbounds nuw i8, ptr %i.ayy, i64 60
  %i.azi = load i32, ptr %i.azh, align 4, !tbaa !59
  %i.azj = and i32 %i.azi, -2
  %switch81.i.i = icmp eq i32 %i.azj, 28
  br i1 %switch81.i.i, label %.critedge.peel.i.i, label %.critedge.peel.thread.i.i

.critedge.peel.i.i:                               ; preds = %bb.lk
  %i.azk = getelementptr inbounds nuw i8, ptr %i.ayy, i64 44
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !55 ; 2 uses
  %i.azm = and i32 %i.azl, 1048576
  %.not60.peel.i.i = icmp eq i32 %i.azm, 0
  br i1 %.not60.peel.i.i, label %.critedge.peel.thread.i.i, label %bb.ll

bb.ll:                                            ; preds = %.critedge.peel.i.i
  %i.azn = xor i32 %i.azl, %i.azf
  %i.azo = and i32 %i.azn, 2097152
  %.not61.peel.i.i = icmp eq i32 %i.azo, 0
  br i1 %.not61.peel.i.i, label %.critedge.peel.thread.i.i, label %.peel.next.i.i.preheader

.critedge.peel.thread.i.i:                        ; preds = %bb.ll, %.critedge.peel.i.i, %bb.lk, %bb.lj
  %i.azp = or i32 %i.azf, 4194304
  store i32 %i.azp, ptr %i.aze, align 4, !tbaa !55
  br label %bb.lm

bb.lm:                                            ; preds = %.critedge.peel.thread.i.i, %bb.li, %bb.lh
  %exitcond.peel.not.i.i = icmp eq i32 %i.ayw, 1
  br i1 %exitcond.peel.not.i.i, label %dim_moved_lines.exit.i, label %.peel.next.i.i.preheader

.peel.next.i.i.preheader:                         ; preds = %bb.lm, %bb.ll
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %.peel.next.i.i.preheader, %bb.mb
  %indvars.iv.i58.i = phi i64 [ %indvars.iv.next.i60.i, %bb.mb ], [ 1, %.peel.next.i.i.preheader ] ; 3 uses
  %i.azq = getelementptr [32 x i8], ptr %i.ayy, i64 %indvars.iv.i58.i ; 6 uses
  %i.azr = getelementptr i8, ptr %i.azq, i64 -32  ; 3 uses
  %.not62.i.i = icmp samesign ult i64 %indvars.iv.i58.i, %i.aza
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azq, i64 32 ; 2 uses
  %i.azt = getelementptr inbounds nuw i8, ptr %i.azq, i64 28
  %i.azu = load i32, ptr %i.azt, align 4, !tbaa !59
  %i.azv = and i32 %i.azu, -2
  %switch.i59.i = icmp eq i32 %i.azv, 28
  br i1 %switch.i59.i, label %bb.ln, label %bb.mb

bb.ln:                                            ; preds = %.peel.next.i.i
  %i.azw = getelementptr inbounds nuw i8, ptr %i.azq, i64 12 ; 2 uses
  %i.azx = load i32, ptr %i.azw, align 4, !tbaa !55 ; 5 uses
  %i.azy = and i32 %i.azx, 1048576
  %.not49.i.i = icmp eq i32 %i.azy, 0
  br i1 %.not49.i.i, label %bb.mb, label %bb.lo

bb.lo:                                            ; preds = %bb.ln
  %.not50.i.i = icmp eq ptr %i.azr, null
  br i1 %.not50.i.i, label %bb.lr, label %bb.lp

bb.lp:                                            ; preds = %bb.lo
  %i.azz = getelementptr i8, ptr %i.azq, i64 -4
  %i.baa = load i32, ptr %i.azz, align 4, !tbaa !59 ; 2 uses
  %.not51.i.i = icmp eq i32 %i.baa, 28
  br i1 %.not51.i.i, label %bb.lr, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %.not52.i.i = icmp eq i32 %i.baa, 29
  %spec.store.select.i.i = select i1 %.not52.i.i, ptr %i.azr, ptr null
  br label %bb.lr

bb.lr:                                            ; preds = %bb.lq, %bb.lp, %bb.lo
  %.038.i.i = phi ptr [ %spec.store.select.i.i, %bb.lq ], [ %i.azr, %bb.lp ], [ null, %bb.lo ] ; 2 uses
  br i1 %.not62.i.i, label %bb.ls, label %bb.lu

bb.ls:                                            ; preds = %bb.lr
  %i.bab = getelementptr inbounds nuw i8, ptr %i.azq, i64 60
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !59 ; 2 uses
  %.not54.i.i = icmp eq i32 %i.bac, 28
  br i1 %.not54.i.i, label %bb.lu, label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %.not55.i.i = icmp eq i32 %i.bac, 29
  %spec.store.select1.i.i = select i1 %.not55.i.i, ptr %i.azs, ptr null
  br label %bb.lu

bb.lu:                                            ; preds = %bb.lt, %bb.ls, %bb.lr
  %.0.i62.i = phi ptr [ %spec.store.select1.i.i, %bb.lt ], [ %i.azs, %bb.ls ], [ null, %bb.lr ] ; 4 uses
  %.not56.i.i = icmp eq ptr %.038.i.i, null
  br i1 %.not56.i.i, label %.critedge.i.i, label %bb.lv

bb.lv:                                            ; preds = %bb.lu
  %i.bad = getelementptr inbounds nuw i8, ptr %.038.i.i, i64 12
  %i.bae = load i32, ptr %i.bad, align 4, !tbaa !55 ; 3 uses
  %i.baf = and i32 %i.bae, 3145728                ; 2 uses
  %i.bag = and i32 %i.azx, 3145728
  %i.bah = icmp eq i32 %i.baf, %i.bag
  %i.bai = icmp ne ptr %.0.i62.i, null
  %or.cond.i63.i = select i1 %i.bah, i1 %i.bai, i1 false
  br i1 %or.cond.i63.i, label %bb.lw, label %bb.lx

bb.lw:                                            ; preds = %bb.lv
  %i.baj = getelementptr inbounds nuw i8, ptr %.0.i62.i, i64 12
  %i.bak = load i32, ptr %i.baj, align 4, !tbaa !55
  %i.bal = and i32 %i.bak, 3145728
  %i.bam = icmp eq i32 %i.bal, %i.baf
  br i1 %i.bam, label %.sink.split.i.i, label %bb.lx

bb.lx:                                            ; preds = %bb.lw, %bb.lv
  %i.ban = and i32 %i.bae, 1048576
  %.not57.i.i = icmp eq i32 %i.ban, 0
  br i1 %.not57.i.i, label %.critedge.i.i, label %bb.ly

bb.ly:                                            ; preds = %bb.lx
  %i.bao = xor i32 %i.bae, %i.azx
  %i.bap = and i32 %i.bao, 2097152
  %.not58.i.i = icmp eq i32 %i.bap, 0
  br i1 %.not58.i.i, label %.critedge.i.i, label %bb.mb

.critedge.i.i:                                    ; preds = %bb.ly, %bb.lx, %bb.lu
  %.not59.i.i = icmp eq ptr %.0.i62.i, null
  br i1 %.not59.i.i, label %.sink.split.i.i, label %bb.lz

bb.lz:                                            ; preds = %.critedge.i.i
  %i.baq = getelementptr inbounds nuw i8, ptr %.0.i62.i, i64 12
  %i.bar = load i32, ptr %i.baq, align 4, !tbaa !55 ; 2 uses
  %i.bas = and i32 %i.bar, 1048576
  %.not60.i.i = icmp eq i32 %i.bas, 0
  br i1 %.not60.i.i, label %.sink.split.i.i, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bat = xor i32 %i.bar, %i.azx
  %i.bau = and i32 %i.bat, 2097152
  %.not61.i.i = icmp eq i32 %i.bau, 0
  br i1 %.not61.i.i, label %.sink.split.i.i, label %bb.mb

.sink.split.i.i:                                  ; preds = %bb.ma, %bb.lz, %.critedge.i.i, %bb.lw
end_hunk_0
