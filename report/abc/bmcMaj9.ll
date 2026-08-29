Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/bmcMaj9?download=true
inline.NumInlined: 239
inline.NumDeleted: 62
loop-unroll.NumCompletelyUnrolled: 32
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 37
begin_hunk_0_@Exa9_ManExactSynthesis:bb.a

bb.au:                                            ; preds = %bb.as
  %i.nh = load i32, ptr %i.ml, align 8, !tbaa !79
  %i.ni = add nsw i32 %i.nh, 1
  store i32 %i.ni, ptr %i.ml, align 8, !tbaa !79
  br label %Exa9_ManAddUnit.exit.us.i

bb.av:                                            ; preds = %.preheader245.split.us.preheader.i
  %i.nj = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.nk = add nsw i32 %i.nj, 1
  store i32 %i.nk, ptr %i.mm, align 8, !tbaa !80
  br label %Exa9_ManAddUnit.exit.us.i

Exa9_ManAddUnit.exit.us.i:                        ; preds = %bb.av, %bb.au, %bb.at
  %i.nl = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.nm = call i32 @kissat_is_inconsistent(ptr noundef %i.nl) #19
  %.not13.i.i.not.us.i = icmp eq i32 %i.nm, 0
  br i1 %.not13.i.i.not.us.i, label %.preheader245.split.us.1.i, label %.split.us.i

.preheader245.split.us.1.i:                       ; preds = %Exa9_ManAddUnit.exit.us.i
  %.val162.us.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %.neg471.i = mul i32 %.val162.us.1.i, %.neg.i
  %.neg472.i = sub i32 %.neg471.i, %.0134271.i
  %i.nn = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.nn, i32 noundef %.neg472.i) #19
  %i.no = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.no, i32 noundef 0) #19
  %i.np = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i.i.us.1.i = icmp eq i32 %i.np, 0
  br i1 %.not.i.i.us.1.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %.preheader245.split.us.1.i
  %i.nq = load i32, ptr %i.mj, align 8, !tbaa !77
  %.not12.i.i.us.1.i = icmp eq i32 %i.nq, 0
  br i1 %.not12.i.i.us.1.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nr = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.mk, align 4, !tbaa !78
  br label %Exa9_ManAddUnit.exit.us.1.i

bb.ay:                                            ; preds = %bb.aw
  %i.nt = load i32, ptr %i.ml, align 8, !tbaa !79
  %i.nu = add nsw i32 %i.nt, 1
  store i32 %i.nu, ptr %i.ml, align 8, !tbaa !79
  br label %Exa9_ManAddUnit.exit.us.1.i

bb.az:                                            ; preds = %.preheader245.split.us.1.i
  %i.nv = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.nw = add nsw i32 %i.nv, 1
  store i32 %i.nw, ptr %i.mm, align 8, !tbaa !80
  br label %Exa9_ManAddUnit.exit.us.1.i

Exa9_ManAddUnit.exit.us.1.i:                      ; preds = %bb.az, %bb.ay, %bb.ax
  %i.nx = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.ny = call i32 @kissat_is_inconsistent(ptr noundef %i.nx) #19
  %.not13.i.i.not.us.1.i = icmp eq i32 %i.ny, 0
  br i1 %.not13.i.i.not.us.1.i, label %.split254.us.i, label %.split.us.i

.preheader245.split.i:                            ; preds = %.preheader245.i
  %i.nz = sext i32 %.promoted262.i to i64         ; 2 uses
  %i.oa = sext i32 %.promoted.i to i64            ; 2 uses
  %i.ob = mul nsw i32 %.val162.us.i, %i.mv
  %i.oc = add i32 %.0134271.i, %i.ob
  %i.od = shl nsw i32 %i.oc, 1
  %i.oe = icmp eq i32 %.promoted.i, %.promoted256.i
  br i1 %i.oe, label %bb.bc, label %Vec_IntPush.exit.i

.split.us.i:                                      ; preds = %Exa9_ManAddUnit.exit.us.1.i, %Exa9_ManAddUnit.exit.us.i
  %.not.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i, label %Vec_IntFree.exit.i, label %bb.ba

bb.ba:                                            ; preds = %.split.us.i
  call void @free(ptr noundef nonnull %i.mx) #19
  %.pre.i215 = load ptr, ptr %i.mc, align 8, !tbaa !74
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.ba, %.split.us.i
  %i.of = phi ptr [ %.promoted267.i, %.split.us.i ], [ %.pre.i215, %bb.ba ] ; 2 uses
  call void @free(ptr noundef nonnull %i.lv) #19
  %.not.i174.i = icmp eq ptr %i.of, null
  br i1 %.not.i174.i, label %Vec_IntFree.exit175.i, label %bb.bb

bb.bb:                                            ; preds = %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.of) #19
  br label %Vec_IntFree.exit175.i

Vec_IntFree.exit175.i:                            ; preds = %bb.bb, %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.lz) #19
  br label %.thread

bb.bc:                                            ; preds = %.preheader245.split.i
  %i.og = icmp slt i32 %.promoted256.i, 16
  br i1 %i.og, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not9.i.i.i = icmp eq ptr %i.mx, null
  br i1 %.not9.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.oh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.mx, i64 noundef 64) #22
  br label %Vec_IntPush.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.oi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit.i

bb.bg:                                            ; preds = %bb.bc
  %i.oj = icmp samesign ult i32 %.promoted256.i, 1073741823
  %i.ok = shl nuw i32 %.promoted256.i, 1
  %spec.select.i.i214 = select i1 %i.oj, i32 %i.ok, i32 2147483647 ; 4 uses
  %.not.i9.i.i = icmp ult i32 %.promoted256.i, %spec.select.i.i214
  br i1 %.not.i9.i.i, label %bb.bh, label %Vec_IntPush.exit.i

bb.bh:                                            ; preds = %bb.bg
  %.not9.i10.i.i = icmp eq ptr %i.mx, null
  %i.ol = zext nneg i32 %spec.select.i.i214 to i64
  %i.om = shl nuw nsw i64 %i.ol, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.on = call ptr @realloc(ptr noundef nonnull %i.mx, i64 noundef %i.om) #22
  br label %Vec_IntPush.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.oo = call noalias ptr @malloc(i64 noundef %i.om) #21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be, %.preheader245.split.i
  %storemerge238261.i = phi ptr [ %i.mx, %.preheader245.split.i ], [ %i.mx, %bb.bg ], [ %i.oi, %bb.bf ], [ %i.oh, %bb.be ], [ %i.on, %bb.bi ], [ %i.oo, %bb.bj ] ; 4 uses
  %spec.select.sink.i257.i = phi i32 [ %.promoted256.i, %.preheader245.split.i ], [ %.promoted256.i, %bb.bg ], [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i.i214, %bb.bi ], [ %spec.select.i.i214, %bb.bj ] ; 4 uses
  %indvars.iv.next330.i = add nsw i64 %i.oa, 1    ; 3 uses
  %i.op = getelementptr inbounds [4 x i8], ptr %storemerge238261.i, i64 %i.oa
  store i32 %i.od, ptr %i.op, align 4, !tbaa !81
  %.val163.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %.val164.i = load i32, ptr %i.go, align 4, !tbaa !54
  %i.oq = mul nsw i32 %.val163.i, %i.mv
  %i.or = add i32 %.val164.i, %.0134271.i
  %i.os = add i32 %i.or, %i.oq
  %i.ot = icmp eq i32 %.promoted262.i, %.promoted264.i
  br i1 %i.ot, label %bb.bk, label %Vec_IntPush.exit183.i

bb.bk:                                            ; preds = %Vec_IntPush.exit.i
  %i.ou = icmp slt i32 %.promoted264.i, 16
  br i1 %i.ou, label %bb.bl, label %bb.bo

bb.bl:                                            ; preds = %bb.bk
  %.not9.i.i181.i = icmp eq ptr %.promoted267.i, null
  br i1 %.not9.i.i181.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ov = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted267.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit183.i

bb.bn:                                            ; preds = %bb.bl
  %i.ow = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit183.i

bb.bo:                                            ; preds = %bb.bk
  %i.ox = icmp samesign ult i32 %.promoted264.i, 1073741823
  %i.oy = shl nuw i32 %.promoted264.i, 1
  %spec.select.i176.i = select i1 %i.ox, i32 %i.oy, i32 2147483647 ; 4 uses
  %.not.i9.i177.i = icmp ult i32 %.promoted264.i, %spec.select.i176.i
  br i1 %.not.i9.i177.i, label %bb.bp, label %Vec_IntPush.exit183.i

bb.bp:                                            ; preds = %bb.bo
  %.not9.i10.i178.i = icmp eq ptr %.promoted267.i, null
  %i.oz = zext nneg i32 %spec.select.i176.i to i64
  %i.pa = shl nuw nsw i64 %i.oz, 2                ; 2 uses
  br i1 %.not9.i10.i178.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pb = call ptr @realloc(ptr noundef nonnull %.promoted267.i, i64 noundef %i.pa) #22
  br label %Vec_IntPush.exit183.i

bb.br:                                            ; preds = %bb.bp
  %i.pc = call noalias ptr @malloc(i64 noundef %i.pa) #21
  br label %Vec_IntPush.exit183.i

Vec_IntPush.exit183.i:                            ; preds = %bb.br, %bb.bq, %bb.bo, %bb.bn, %bb.bm, %Vec_IntPush.exit.i
  %storemerge239269.i = phi ptr [ %.promoted267.i, %Vec_IntPush.exit.i ], [ %.promoted267.i, %bb.bo ], [ %i.ow, %bb.bn ], [ %i.ov, %bb.bm ], [ %i.pb, %bb.bq ], [ %i.pc, %bb.br ] ; 4 uses
  %spec.select.sink.i180265.i = phi i32 [ %.promoted264.i, %Vec_IntPush.exit.i ], [ %.promoted264.i, %bb.bo ], [ 16, %bb.bn ], [ 16, %bb.bm ], [ %spec.select.i176.i, %bb.bq ], [ %spec.select.i176.i, %bb.br ] ; 4 uses
  %indvars.iv.next.i210 = add nsw i64 %i.nz, 1    ; 3 uses
  %i.pd = getelementptr inbounds [4 x i8], ptr %storemerge239269.i, i64 %i.nz
  store i32 %i.os, ptr %i.pd, align 4, !tbaa !81
  %.val162.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.pe = mul nsw i32 %.val162.1.i, %i.mw
  %i.pf = add i32 %i.pe, %.0134271.i
  %i.pg = shl nsw i32 %i.pf, 1
  %i.ph = trunc nsw i64 %indvars.iv.next330.i to i32
  %i.pi = icmp eq i32 %spec.select.sink.i257.i, %i.ph
  br i1 %i.pi, label %bb.bs, label %Vec_IntPush.exit.1.i

bb.bs:                                            ; preds = %Vec_IntPush.exit183.i
  %i.pj = icmp slt i32 %.promoted.i, 15
  br i1 %i.pj, label %Vec_IntPush.exit.1.sink.split.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.pk = icmp samesign ult i32 %.promoted.i, 1073741822
  %i.pl = shl i32 %spec.select.sink.i257.i, 1
  %spec.select.i.1.i = select i1 %i.pk, i32 %i.pl, i32 2147483647 ; 3 uses
  %i.pm = sext i32 %spec.select.i.1.i to i64
  %.not.i9.i.1.i = icmp samesign ult i64 %indvars.iv.next330.i, %i.pm
  br i1 %.not.i9.i.1.i, label %bb.bu, label %Vec_IntPush.exit.1.i

bb.bu:                                            ; preds = %bb.bt
  %i.pn = zext nneg i32 %spec.select.i.1.i to i64
  %i.po = shl nuw nsw i64 %i.pn, 2
  br label %Vec_IntPush.exit.1.sink.split.i

Vec_IntPush.exit.1.sink.split.i:                  ; preds = %bb.bu, %bb.bs
  %.sink.i = phi i64 [ %i.po, %bb.bu ], [ 64, %bb.bs ]
  %spec.select.sink.i257.1.ph.i = phi i32 [ %spec.select.i.1.i, %bb.bu ], [ 16, %bb.bs ]
  %i.pp = call ptr @realloc(ptr noundef nonnull %storemerge238261.i, i64 noundef %.sink.i) #22
  br label %Vec_IntPush.exit.1.i

Vec_IntPush.exit.1.i:                             ; preds = %Vec_IntPush.exit.1.sink.split.i, %bb.bt, %Vec_IntPush.exit183.i
  %storemerge238261.1.i = phi ptr [ %storemerge238261.i, %Vec_IntPush.exit183.i ], [ %storemerge238261.i, %bb.bt ], [ %i.pp, %Vec_IntPush.exit.1.sink.split.i ] ; 3 uses
  %spec.select.sink.i257.1.i = phi i32 [ %spec.select.sink.i257.i, %Vec_IntPush.exit183.i ], [ %spec.select.sink.i257.i, %bb.bt ], [ %spec.select.sink.i257.1.ph.i, %Vec_IntPush.exit.1.sink.split.i ] ; 2 uses
  %indvars.iv.next330.1.i = add i32 %.promoted.i, 2 ; 2 uses
  %i.pq = getelementptr inbounds [4 x i8], ptr %storemerge238261.1.i, i64 %indvars.iv.next330.i
  store i32 %i.pg, ptr %i.pq, align 4, !tbaa !81
  %.val163.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %.val164.1.i = load i32, ptr %i.go, align 4, !tbaa !54
  %i.pr = mul nsw i32 %.val163.1.i, %i.mw
  %i.ps = add i32 %.val164.1.i, %.0134271.i
  %i.pt = add i32 %i.ps, %i.pr
  %i.pu = trunc nsw i64 %indvars.iv.next.i210 to i32
  %i.pv = icmp eq i32 %spec.select.sink.i180265.i, %i.pu
  br i1 %i.pv, label %bb.bv, label %Vec_IntPush.exit183.1.i

bb.bv:                                            ; preds = %Vec_IntPush.exit.1.i
  %i.pw = icmp slt i32 %.promoted262.i, 15
  br i1 %i.pw, label %Vec_IntPush.exit183.1.sink.split.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.px = icmp samesign ult i32 %.promoted262.i, 1073741822
  %i.py = shl i32 %spec.select.sink.i180265.i, 1
  %spec.select.i176.1.i = select i1 %i.px, i32 %i.py, i32 2147483647 ; 3 uses
  %i.pz = sext i32 %spec.select.i176.1.i to i64
  %.not.i9.i177.1.i = icmp samesign ult i64 %indvars.iv.next.i210, %i.pz
  br i1 %.not.i9.i177.1.i, label %bb.bx, label %Vec_IntPush.exit183.1.i

bb.bx:                                            ; preds = %bb.bw
  %i.qa = zext nneg i32 %spec.select.i176.1.i to i64
  %i.qb = shl nuw nsw i64 %i.qa, 2
  br label %Vec_IntPush.exit183.1.sink.split.i

Vec_IntPush.exit183.1.sink.split.i:               ; preds = %bb.bx, %bb.bv
  %.sink507.i = phi i64 [ %i.qb, %bb.bx ], [ 64, %bb.bv ]
  %spec.select.sink.i180265.1.ph.i = phi i32 [ %spec.select.i176.1.i, %bb.bx ], [ 16, %bb.bv ]
  %i.qc = call ptr @realloc(ptr noundef nonnull %storemerge239269.i, i64 noundef %.sink507.i) #22
  br label %Vec_IntPush.exit183.1.i

Vec_IntPush.exit183.1.i:                          ; preds = %Vec_IntPush.exit183.1.sink.split.i, %bb.bw, %Vec_IntPush.exit.1.i
  %storemerge239269.1.i = phi ptr [ %storemerge239269.i, %Vec_IntPush.exit.1.i ], [ %storemerge239269.i, %bb.bw ], [ %i.qc, %Vec_IntPush.exit183.1.sink.split.i ] ; 3 uses
  %spec.select.sink.i180265.1.i = phi i32 [ %spec.select.sink.i180265.i, %Vec_IntPush.exit.1.i ], [ %spec.select.sink.i180265.i, %bb.bw ], [ %spec.select.sink.i180265.1.ph.i, %Vec_IntPush.exit183.1.sink.split.i ] ; 2 uses
  %indvars.iv.next.1.i = add i32 %.promoted262.i, 2 ; 2 uses
  %i.qd = getelementptr inbounds [4 x i8], ptr %storemerge239269.1.i, i64 %indvars.iv.next.i210
  store i32 %i.pt, ptr %i.qd, align 4, !tbaa !81
  store i32 %indvars.iv.next330.1.i, ptr %i.lw, align 4, !tbaa !75
  store i32 %spec.select.sink.i257.1.i, ptr %i.lv, align 8
  store ptr %storemerge238261.1.i, ptr %i.ly, align 8
  store i32 %indvars.iv.next.1.i, ptr %i.ma, align 4, !tbaa !75
  store i32 %spec.select.sink.i180265.1.i, ptr %i.lz, align 8
  store ptr %storemerge239269.1.i, ptr %i.mc, align 8
  br label %.split254.us.i

.split254.us.i:                                   ; preds = %Vec_IntPush.exit183.1.i, %Exa9_ManAddUnit.exit.us.1.i
  %.promoted267402.i = phi ptr [ %storemerge239269.1.i, %Vec_IntPush.exit183.1.i ], [ %.promoted267.i, %Exa9_ManAddUnit.exit.us.1.i ] ; 7 uses
  %.promoted264397.i = phi i32 [ %spec.select.sink.i180265.1.i, %Vec_IntPush.exit183.1.i ], [ %.promoted264.i, %Exa9_ManAddUnit.exit.us.1.i ] ; 4 uses
  %.promoted262392.i = phi i32 [ %indvars.iv.next.1.i, %Vec_IntPush.exit183.1.i ], [ %.promoted262.i, %Exa9_ManAddUnit.exit.us.1.i ]
  %.promoted259390.i = phi ptr [ %storemerge238261.1.i, %Vec_IntPush.exit183.1.i ], [ %i.mx, %Exa9_ManAddUnit.exit.us.1.i ] ; 8 uses
  %.promoted256385.i = phi i32 [ %spec.select.sink.i257.1.i, %Vec_IntPush.exit183.1.i ], [ %.promoted256.i, %Exa9_ManAddUnit.exit.us.1.i ] ; 4 uses
  %.promoted380.i = phi i32 [ %indvars.iv.next330.1.i, %Vec_IntPush.exit183.1.i ], [ %.promoted.i, %Exa9_ManAddUnit.exit.us.1.i ] ; 2 uses
  %i.qe = add nuw nsw i32 %.0134271.i, 1
  %i.qf = load i32, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %.not152.not.i = icmp slt i32 %.0134271.i, %i.qf
  br i1 %.not152.not.i, label %.preheader245.i, label %._crit_edge.i211, !llvm.loop !82

._crit_edge.i211:                                 ; preds = %.split254.us.i
  %i.qg = icmp eq i32 %.promoted380.i, 0
  br i1 %i.qg, label %._crit_edge.thread.i, label %bb.by

bb.by:                                            ; preds = %._crit_edge.i211
  %i.qh = call fastcc i32 @Exa9_ManAddOneHot(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.lv, ptr noundef nonnull %i.lz)
  %.not153.i = icmp eq i32 %i.qh, 0
  br i1 %.not153.i, label %._crit_edge.thread.i, label %bb.aq

._crit_edge.thread.i:                             ; preds = %bb.by, %._crit_edge.i211, %bb.ar
  %i.qi = phi ptr [ %.promoted267402.i, %bb.by ], [ %.promoted267402.i, %._crit_edge.i211 ], [ %.promoted267399.i, %bb.ar ]
  %i.qj = phi ptr [ %.promoted259390.i, %bb.by ], [ %.promoted259390.i, %._crit_edge.i211 ], [ %.promoted259387.i, %bb.ar ] ; 2 uses
  %.not.i297 = icmp eq ptr %i.qj, null
  br i1 %.not.i297, label %Vec_IntFree.exit298, label %bb.bz

bb.bz:                                            ; preds = %._crit_edge.thread.i
  call void @free(ptr noundef nonnull %i.qj) #19
  %.pre481 = load ptr, ptr %i.mc, align 8, !tbaa !74
  br label %Vec_IntFree.exit298

Vec_IntFree.exit298:                              ; preds = %._crit_edge.thread.i, %bb.bz
  %i.qk = phi ptr [ %i.qi, %._crit_edge.thread.i ], [ %.pre481, %bb.bz ] ; 2 uses
  call void @free(ptr noundef nonnull %i.lv) #19
  %.not.i295 = icmp eq ptr %i.qk, null
  br i1 %.not.i295, label %Vec_IntFree.exit296, label %bb.ca

bb.ca:                                            ; preds = %Vec_IntFree.exit298
  call void @free(ptr noundef nonnull %i.qk) #19
  br label %Vec_IntFree.exit296

Vec_IntFree.exit296:                              ; preds = %Vec_IntFree.exit298, %bb.ca
  call void @free(ptr noundef nonnull %i.lz) #19
  br label %.thread

.preheader246.i:                                  ; preds = %.critedge157.1.i, %.preheader246.lr.ph.i
  %indvars.iv.i212 = phi i32 [ 2, %.preheader246.lr.ph.i ], [ %indvars.iv.next335.i, %.critedge157.1.i ] ; 3 uses
  %.1135277.i = phi i32 [ 1, %.preheader246.lr.ph.i ], [ %i.td, %.critedge157.1.i ] ; 3 uses
  %.val161.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.ql = mul nsw i32 %.val161.i, %i.mp
  %i.qm = add i32 %.1135277.i, %i.ql
  %i.qn = sub nsw i32 0, %i.qm                    ; 2 uses
  br label %.preheader244.i

.preheader244.i:                                  ; preds = %.critedge.1.i, %.preheader246.i
  %.0127274.i = phi i32 [ 1, %.preheader246.i ], [ %i.rv, %.critedge.1.i ] ; 3 uses
  %.val160.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.qo = mul nsw i32 %.val160.i, %i.mr
  %i.qp = add i32 %.0127274.i, %i.qo
  %i.qq = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.qq, i32 noundef %i.qn) #19
  %i.qr = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.qs = sub nsw i32 0, %i.qp
  call void @kissat_add(ptr noundef %i.qr, i32 noundef %i.qs) #19
  %i.qt = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.qt, i32 noundef 0) #19
  %i.qu = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i185.i = icmp eq i32 %i.qu, 0
  br i1 %.not.i185.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %.preheader244.i
  %i.qv = load i32, ptr %i.mj, align 8, !tbaa !77
  %.not12.i.i = icmp eq i32 %i.qv, 0
  br i1 %.not12.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qw = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.qx = add nsw i32 %i.qw, 1
  store i32 %i.qx, ptr %i.mk, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit.i

bb.cd:                                            ; preds = %bb.cb
  %i.qy = load i32, ptr %i.ml, align 8, !tbaa !79
  %i.qz = add nsw i32 %i.qy, 1
  store i32 %i.qz, ptr %i.ml, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit.i

bb.ce:                                            ; preds = %.preheader244.i
  %i.ra = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.rb = add nsw i32 %i.ra, 1
  store i32 %i.rb, ptr %i.mm, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit.i

Exa9_KissatAddClause.exit.i:                      ; preds = %bb.ce, %bb.cd, %bb.cc
  %i.rc = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.rd = call i32 @kissat_is_inconsistent(ptr noundef %i.rc) #19
  %.not13.i.not.i = icmp eq i32 %i.rd, 0
  br i1 %.not13.i.not.i, label %.critedge.i, label %.loopexit345.i

.loopexit345.i:                                   ; preds = %Exa9_KissatAddClause.exit.1.i, %Exa9_KissatAddClause.exit.i, %Exa9_KissatAddClause.exit.1.1.i, %Exa9_KissatAddClause.exit.1343.i
  %.not.i186.i = icmp eq ptr %.promoted259390.i, null
  br i1 %.not.i186.i, label %Vec_IntFree.exit187.i, label %bb.cf

bb.cf:                                            ; preds = %.loopexit345.i
  call void @free(ptr noundef nonnull %.promoted259390.i) #19
  %.pre405.i = load ptr, ptr %i.mc, align 8, !tbaa !74
  br label %Vec_IntFree.exit187.i

Vec_IntFree.exit187.i:                            ; preds = %bb.cf, %.loopexit345.i
  %i.re = phi ptr [ %.promoted267402.i, %.loopexit345.i ], [ %.pre405.i, %bb.cf ] ; 2 uses
  call void @free(ptr noundef nonnull %i.lv) #19
  %.not.i188.i = icmp eq ptr %i.re, null
  br i1 %.not.i188.i, label %Vec_IntFree.exit189.i, label %bb.cg

bb.cg:                                            ; preds = %Vec_IntFree.exit187.i
  call void @free(ptr noundef nonnull %i.re) #19
  br label %Vec_IntFree.exit189.i

Vec_IntFree.exit189.i:                            ; preds = %bb.cg, %Vec_IntFree.exit187.i
  call void @free(ptr noundef nonnull %i.lz) #19
  br label %.thread

.critedge.i:                                      ; preds = %Exa9_KissatAddClause.exit.i
  %.val160.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.rf = mul nsw i32 %.val160.1.i, %i.ms
  %i.rg = add i32 %.0127274.i, %i.rf
  %i.rh = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.rh, i32 noundef %i.qn) #19
  %i.ri = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.rj = sub nsw i32 0, %i.rg
  call void @kissat_add(ptr noundef %i.ri, i32 noundef %i.rj) #19
  %i.rk = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.rk, i32 noundef 0) #19
  %i.rl = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i185.1.i = icmp eq i32 %i.rl, 0
  br i1 %.not.i185.1.i, label %bb.ck, label %bb.ch

bb.ch:                                            ; preds = %.critedge.i
  %i.rm = load i32, ptr %i.mj, align 8, !tbaa !77
  %.not12.i.1.i = icmp eq i32 %i.rm, 0
  br i1 %.not12.i.1.i, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.rn = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.ro = add nsw i32 %i.rn, 1
  store i32 %i.ro, ptr %i.mk, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit.1.i

bb.cj:                                            ; preds = %bb.ch
  %i.rp = load i32, ptr %i.ml, align 8, !tbaa !79
  %i.rq = add nsw i32 %i.rp, 1
  store i32 %i.rq, ptr %i.ml, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit.1.i

bb.ck:                                            ; preds = %.critedge.i
  %i.rr = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.rs = add nsw i32 %i.rr, 1
  store i32 %i.rs, ptr %i.mm, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit.1.i

Exa9_KissatAddClause.exit.1.i:                    ; preds = %bb.ck, %bb.cj, %bb.ci
  %i.rt = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.ru = call i32 @kissat_is_inconsistent(ptr noundef %i.rt) #19
  %.not13.i.not.1.i = icmp eq i32 %i.ru, 0
  br i1 %.not13.i.not.1.i, label %.critedge.1.i, label %.loopexit345.i

.critedge.1.i:                                    ; preds = %Exa9_KissatAddClause.exit.1.i
  %i.rv = add nuw i32 %.0127274.i, 1              ; 2 uses
  %exitcond.not.i213 = icmp eq i32 %i.rv, %indvars.iv.i212
end_hunk_0
begin_hunk_1_@Exa9_ManExactSynthesis:bb.a
  %i.sm = mul nsw i32 %.val160.1.1.i, %i.ms
  %i.sn = add i32 %.0127274.1.i, %i.sm
  %i.so = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.so, i32 noundef %.neg475.i) #19
  %i.sp = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.sq = sub nsw i32 0, %i.sn
  call void @kissat_add(ptr noundef %i.sp, i32 noundef %i.sq) #19
  %i.sr = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.sr, i32 noundef 0) #19
  %i.ss = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i185.1.1.i = icmp eq i32 %i.ss, 0
  br i1 %.not.i185.1.1.i, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %.critedge.1344.i
  %i.st = load i32, ptr %i.mj, align 8, !tbaa !77
  %.not12.i.1.1.i = icmp eq i32 %i.st, 0
  br i1 %.not12.i.1.1.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.su = load i32, ptr %i.mk, align 4, !tbaa !78
  %i.sv = add nsw i32 %i.su, 1
  store i32 %i.sv, ptr %i.mk, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit.1.1.i

bb.cr:                                            ; preds = %bb.cp
  %i.sw = load i32, ptr %i.ml, align 8, !tbaa !79
  %i.sx = add nsw i32 %i.sw, 1
  store i32 %i.sx, ptr %i.ml, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit.1.1.i

bb.cs:                                            ; preds = %.critedge.1344.i
  %i.sy = load i32, ptr %i.mm, align 8, !tbaa !80
  %i.sz = add nsw i32 %i.sy, 1
  store i32 %i.sz, ptr %i.mm, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit.1.1.i

Exa9_KissatAddClause.exit.1.1.i:                  ; preds = %bb.cs, %bb.cr, %bb.cq
  %i.ta = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.tb = call i32 @kissat_is_inconsistent(ptr noundef %i.ta) #19
  %.not13.i.not.1.1.i = icmp eq i32 %i.tb, 0
  br i1 %.not13.i.not.1.1.i, label %.critedge.1.1.i, label %.loopexit345.i

.critedge.1.1.i:                                  ; preds = %Exa9_KissatAddClause.exit.1.1.i
  %i.tc = add nuw i32 %.0127274.1.i, 1            ; 2 uses
  %exitcond.1.not.i = icmp eq i32 %i.tc, %indvars.iv.i212
  br i1 %exitcond.1.not.i, label %.critedge157.1.i, label %.preheader244.1.i, !llvm.loop !83

.critedge157.1.i:                                 ; preds = %.critedge.1.1.i
  %i.td = add nuw nsw i32 %.1135277.i, 1
  %indvars.iv.next335.i = add nuw i32 %indvars.iv.i212, 1 ; 2 uses
  %exitcond349.not.i = icmp eq i32 %indvars.iv.next335.i, %i.mq
  br i1 %exitcond349.not.i, label %._crit_edge278.i, label %.preheader246.i, !llvm.loop !84

._crit_edge278.i:                                 ; preds = %.critedge157.1.i, %.preheader247.i
  %i.te = add nuw nsw i32 %.0138279.i, 1          ; 2 uses
  %i.tf = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.tg = icmp slt i32 %i.te, %i.tf
  %indvars.iv.next348.i = add nuw i32 %indvars.iv347.i, 1
  br i1 %i.tg, label %bb.ap, label %._crit_edge281.i, !llvm.loop !85

._crit_edge281.i:                                 ; preds = %._crit_edge278.i, %bb.ao
  %.promoted295415.i = phi ptr [ %i.mb, %bb.ao ], [ %.promoted267402.i, %._crit_edge278.i ] ; 2 uses
  %.promoted292413.i = phi i32 [ 100, %bb.ao ], [ %.promoted264397.i, %._crit_edge278.i ]
  %.promoted287410.i = phi ptr [ %i.lx, %bb.ao ], [ %.promoted259390.i, %._crit_edge278.i ] ; 3 uses
  %.promoted284408.i = phi i32 [ 100, %bb.ao ], [ %.promoted256385.i, %._crit_edge278.i ]
  store i32 0, ptr %i.lw, align 4, !tbaa !75
  store i32 0, ptr %i.ma, align 4, !tbaa !75
  %i.th = load i32, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %.not303.i = icmp slt i32 %i.th, 1
  br i1 %.not303.i, label %._crit_edge305.thread.i, label %.preheader243.i

.preheader243.i:                                  ; preds = %._crit_edge281.i, %Vec_IntPush.exit207.1.i
  %.val173.i = phi i32 [ %i.vn, %Vec_IntPush.exit207.1.i ], [ %i.th, %._crit_edge281.i ]
  %.promoted295.i = phi ptr [ %storemerge235297.1.i, %Vec_IntPush.exit207.1.i ], [ %.promoted295415.i, %._crit_edge281.i ] ; 6 uses
  %.promoted292.i = phi i32 [ %spec.select.sink.i204293.1.i, %Vec_IntPush.exit207.1.i ], [ %.promoted292413.i, %._crit_edge281.i ] ; 7 uses
  %.promoted290.i = phi i32 [ %indvars.iv.next353.1.i, %Vec_IntPush.exit207.1.i ], [ 0, %._crit_edge281.i ] ; 13 uses
  %.promoted287.i = phi ptr [ %storemerge289.1.i, %Vec_IntPush.exit207.1.i ], [ %.promoted287410.i, %._crit_edge281.i ] ; 6 uses
  %.promoted284.i = phi i32 [ %spec.select.sink.i194285.1.i, %Vec_IntPush.exit207.1.i ], [ %.promoted284408.i, %._crit_edge281.i ] ; 2 uses
  %.2136304.i = phi i32 [ %i.vm, %Vec_IntPush.exit207.1.i ], [ 1, %._crit_edge281.i ] ; 6 uses
  %i.ti = sext i32 %.promoted290.i to i64         ; 3 uses
  %.val172.i = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.tj = shl i32 %.val173.i, 2
  %reass.mul.i.i = mul i32 %i.tj, %.val172.i
  %i.tk = add i32 %reass.mul.i.i, %.2136304.i
  %i.tl = shl nsw i32 %i.tk, 1
  %i.tm = icmp eq i32 %.promoted290.i, %.promoted284.i
  br i1 %i.tm, label %bb.ct, label %Vec_IntPush.exit197.i

bb.ct:                                            ; preds = %.preheader243.i
  %i.tn = icmp slt i32 %.promoted290.i, 16
  br i1 %i.tn, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %.not9.i.i195.i = icmp eq ptr %.promoted287.i, null
  br i1 %.not9.i.i195.i, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.to = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted287.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit197.i

bb.cw:                                            ; preds = %bb.cu
  %i.tp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit197.i

bb.cx:                                            ; preds = %bb.ct
  %i.tq = icmp samesign ult i32 %.promoted290.i, 1073741823
  %i.tr = shl nuw i32 %.promoted290.i, 1
  %spec.select.i190.i = select i1 %i.tq, i32 %i.tr, i32 2147483647 ; 4 uses
  %.not.i9.i191.i = icmp ult i32 %.promoted290.i, %spec.select.i190.i
  br i1 %.not.i9.i191.i, label %bb.cy, label %Vec_IntPush.exit197.i

bb.cy:                                            ; preds = %bb.cx
  %.not9.i10.i192.i = icmp eq ptr %.promoted287.i, null
  %i.ts = zext nneg i32 %spec.select.i190.i to i64
  %i.tt = shl nuw nsw i64 %i.ts, 2                ; 2 uses
  br i1 %.not9.i10.i192.i, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.tu = call ptr @realloc(ptr noundef nonnull %.promoted287.i, i64 noundef %i.tt) #22
  br label %Vec_IntPush.exit197.i

bb.da:                                            ; preds = %bb.cy
  %i.tv = call noalias ptr @malloc(i64 noundef %i.tt) #21
  br label %Vec_IntPush.exit197.i

Vec_IntPush.exit197.i:                            ; preds = %bb.da, %bb.cz, %bb.cx, %bb.cw, %bb.cv, %.preheader243.i
  %storemerge289.i = phi ptr [ %.promoted287.i, %.preheader243.i ], [ %.promoted287.i, %bb.cx ], [ %i.tp, %bb.cw ], [ %i.to, %bb.cv ], [ %i.tu, %bb.cz ], [ %i.tv, %bb.da ] ; 4 uses
  %spec.select.sink.i194285.i = phi i32 [ %.promoted284.i, %.preheader243.i ], [ %.promoted290.i, %bb.cx ], [ 16, %bb.cw ], [ 16, %bb.cv ], [ %spec.select.i190.i, %bb.cz ], [ %spec.select.i190.i, %bb.da ] ; 4 uses
  %indvars.iv.next351.i = or disjoint i64 %i.ti, 1 ; 5 uses
  %i.tw = getelementptr inbounds [4 x i8], ptr %storemerge289.i, i64 %i.ti
  store i32 %i.tl, ptr %i.tw, align 4, !tbaa !81
  %i.tx = load i32, ptr %i.go, align 4, !tbaa !54
  %i.ty = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.tz = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.ua = shl i32 %i.ty, 2
  %reass.mul.i199.i = mul i32 %i.ua, %i.tz
  %i.ub = add i32 %i.tx, %.2136304.i
  %i.uc = add i32 %i.ub, %reass.mul.i199.i
  %i.ud = icmp eq i32 %.promoted290.i, %.promoted292.i
  br i1 %i.ud, label %bb.db, label %Vec_IntPush.exit207.i

bb.db:                                            ; preds = %Vec_IntPush.exit197.i
  %i.ue = icmp slt i32 %.promoted292.i, 16
  br i1 %i.ue, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %.not9.i.i205.i = icmp eq ptr %.promoted295.i, null
  br i1 %.not9.i.i205.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.uf = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted295.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit207.i

bb.de:                                            ; preds = %bb.dc
  %i.ug = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit207.i

bb.df:                                            ; preds = %bb.db
  %i.uh = icmp samesign ult i32 %.promoted292.i, 1073741823
  %i.ui = shl nuw i32 %.promoted292.i, 1
  %spec.select.i200.i = select i1 %i.uh, i32 %i.ui, i32 2147483647 ; 4 uses
  %.not.i9.i201.i = icmp ult i32 %.promoted292.i, %spec.select.i200.i
  br i1 %.not.i9.i201.i, label %bb.dg, label %Vec_IntPush.exit207.i

bb.dg:                                            ; preds = %bb.df
  %.not9.i10.i202.i = icmp eq ptr %.promoted295.i, null
  %i.uj = zext nneg i32 %spec.select.i200.i to i64
  %i.uk = shl nuw nsw i64 %i.uj, 2                ; 2 uses
  br i1 %.not9.i10.i202.i, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ul = call ptr @realloc(ptr noundef nonnull %.promoted295.i, i64 noundef %i.uk) #22
  br label %Vec_IntPush.exit207.i

bb.di:                                            ; preds = %bb.dg
  %i.um = call noalias ptr @malloc(i64 noundef %i.uk) #21
  br label %Vec_IntPush.exit207.i

Vec_IntPush.exit207.i:                            ; preds = %bb.di, %bb.dh, %bb.df, %bb.de, %bb.dd, %Vec_IntPush.exit197.i
  %storemerge235297.i = phi ptr [ %.promoted295.i, %Vec_IntPush.exit197.i ], [ %.promoted295.i, %bb.df ], [ %i.ug, %bb.de ], [ %i.uf, %bb.dd ], [ %i.ul, %bb.dh ], [ %i.um, %bb.di ] ; 4 uses
  %spec.select.sink.i204293.i = phi i32 [ %.promoted292.i, %Vec_IntPush.exit197.i ], [ %.promoted292.i, %bb.df ], [ 16, %bb.de ], [ 16, %bb.dd ], [ %spec.select.i200.i, %bb.dh ], [ %spec.select.i200.i, %bb.di ] ; 4 uses
  %i.un = getelementptr inbounds [4 x i8], ptr %storemerge235297.i, i64 %i.ti
  store i32 %i.uc, ptr %i.un, align 4, !tbaa !81
  %.val172.1.i = load i32, ptr %i.gb, align 4, !tbaa !50
  %.val173.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.uo = shl i32 %.val172.1.i, 2
  %reass.add.i.1.i = or disjoint i32 %i.uo, 1
  %reass.mul.i.1.i = mul i32 %reass.add.i.1.i, %.val173.1.i
  %i.up = add i32 %reass.mul.i.1.i, %.2136304.i
  %i.uq = shl nsw i32 %i.up, 1
  %i.ur = trunc nsw i64 %indvars.iv.next351.i to i32 ; 2 uses
  %i.us = icmp eq i32 %spec.select.sink.i194285.i, %i.ur
  br i1 %i.us, label %bb.dj, label %Vec_IntPush.exit197.1.i

bb.dj:                                            ; preds = %Vec_IntPush.exit207.i
  %i.ut = icmp slt i32 %.promoted290.i, 15
  br i1 %i.ut, label %Vec_IntPush.exit197.1.sink.split.i, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.uu = icmp samesign ult i32 %.promoted290.i, 1073741822
  %i.uv = shl nuw i32 %spec.select.sink.i194285.i, 1
  %spec.select.i190.1.i = select i1 %i.uu, i32 %i.uv, i32 2147483647 ; 3 uses
  %4 = sext i32 %spec.select.i190.1.i to i64
  %.not.i9.i191.1.i = icmp samesign ult i64 %indvars.iv.next351.i, %4
  br i1 %.not.i9.i191.1.i, label %bb.dl, label %Vec_IntPush.exit197.1.i

bb.dl:                                            ; preds = %bb.dk
  %5 = zext nneg i32 %spec.select.i190.1.i to i64
  %i.uw = shl nuw nsw i64 %5, 2
  br label %Vec_IntPush.exit197.1.sink.split.i

Vec_IntPush.exit197.1.sink.split.i:               ; preds = %bb.dl, %bb.dj
  %.sink508.i = phi i64 [ %i.uw, %bb.dl ], [ 64, %bb.dj ]
  %spec.select.sink.i194285.1.ph.i = phi i32 [ %spec.select.i190.1.i, %bb.dl ], [ 16, %bb.dj ]
  %i.ux = call ptr @realloc(ptr noundef nonnull %storemerge289.i, i64 noundef %.sink508.i) #22
  br label %Vec_IntPush.exit197.1.i

Vec_IntPush.exit197.1.i:                          ; preds = %Vec_IntPush.exit197.1.sink.split.i, %bb.dk, %Vec_IntPush.exit207.i
  %storemerge289.1.i = phi ptr [ %storemerge289.i, %Vec_IntPush.exit207.i ], [ %storemerge289.i, %bb.dk ], [ %i.ux, %Vec_IntPush.exit197.1.sink.split.i ] ; 5 uses
  %spec.select.sink.i194285.1.i = phi i32 [ %spec.select.sink.i194285.i, %Vec_IntPush.exit207.i ], [ %spec.select.sink.i194285.i, %bb.dk ], [ %spec.select.sink.i194285.1.ph.i, %Vec_IntPush.exit197.1.sink.split.i ] ; 2 uses
  %indvars.iv.next353.1.i = add nuw i32 %.promoted290.i, 2 ; 3 uses
  %i.uy = getelementptr inbounds [4 x i8], ptr %storemerge289.1.i, i64 %indvars.iv.next351.i
  store i32 %i.uq, ptr %i.uy, align 4, !tbaa !81
  %i.uz = load i32, ptr %i.go, align 4, !tbaa !54
  %i.va = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.vb = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.vc = shl i32 %i.va, 2
  %reass.add.i198.1.i = or disjoint i32 %i.vc, 1
  %reass.mul.i199.1.i = mul i32 %reass.add.i198.1.i, %i.vb
  %i.vd = add i32 %i.uz, %.2136304.i
  %i.ve = add i32 %i.vd, %reass.mul.i199.1.i
  %i.vf = icmp eq i32 %spec.select.sink.i204293.i, %i.ur
  br i1 %i.vf, label %bb.dm, label %Vec_IntPush.exit207.1.i

bb.dm:                                            ; preds = %Vec_IntPush.exit197.1.i
  %i.vg = icmp slt i32 %.promoted290.i, 15
  br i1 %i.vg, label %Vec_IntPush.exit207.1.sink.split.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.vh = icmp samesign ult i32 %.promoted290.i, 1073741822
  %i.vi = shl nuw i32 %spec.select.sink.i204293.i, 1
  %spec.select.i200.1.i = select i1 %i.vh, i32 %i.vi, i32 2147483647 ; 3 uses
  %6 = sext i32 %spec.select.i200.1.i to i64
  %.not.i9.i201.1.i = icmp samesign ult i64 %indvars.iv.next351.i, %6
  br i1 %.not.i9.i201.1.i, label %bb.do, label %Vec_IntPush.exit207.1.i

bb.do:                                            ; preds = %bb.dn
  %7 = zext nneg i32 %spec.select.i200.1.i to i64
  %i.vj = shl nuw nsw i64 %7, 2
  br label %Vec_IntPush.exit207.1.sink.split.i

Vec_IntPush.exit207.1.sink.split.i:               ; preds = %bb.do, %bb.dm
  %.sink509.i = phi i64 [ %i.vj, %bb.do ], [ 64, %bb.dm ]
  %spec.select.sink.i204293.1.ph.i = phi i32 [ %spec.select.i200.1.i, %bb.do ], [ 16, %bb.dm ]
  %i.vk = call ptr @realloc(ptr noundef nonnull %storemerge235297.i, i64 noundef %.sink509.i) #22
  br label %Vec_IntPush.exit207.1.i

Vec_IntPush.exit207.1.i:                          ; preds = %Vec_IntPush.exit207.1.sink.split.i, %bb.dn, %Vec_IntPush.exit197.1.i
  %storemerge235297.1.i = phi ptr [ %storemerge235297.i, %Vec_IntPush.exit197.1.i ], [ %storemerge235297.i, %bb.dn ], [ %i.vk, %Vec_IntPush.exit207.1.sink.split.i ] ; 3 uses
  %spec.select.sink.i204293.1.i = phi i32 [ %spec.select.sink.i204293.i, %Vec_IntPush.exit197.1.i ], [ %spec.select.sink.i204293.i, %bb.dn ], [ %spec.select.sink.i204293.1.ph.i, %Vec_IntPush.exit207.1.sink.split.i ] ; 2 uses
  %i.vl = getelementptr inbounds [4 x i8], ptr %storemerge235297.1.i, i64 %indvars.iv.next351.i
  store i32 %i.ve, ptr %i.vl, align 4, !tbaa !81
  store i32 %indvars.iv.next353.1.i, ptr %i.lw, align 4, !tbaa !75
  store i32 %spec.select.sink.i194285.1.i, ptr %i.lv, align 8
  store ptr %storemerge289.1.i, ptr %i.ly, align 8
  store i32 %indvars.iv.next353.1.i, ptr %i.ma, align 4, !tbaa !75
  store i32 %spec.select.sink.i204293.1.i, ptr %i.lz, align 8
  store ptr %storemerge235297.1.i, ptr %i.mc, align 8
  %i.vm = add nuw nsw i32 %.2136304.i, 1
  %i.vn = load i32, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %.not.not.i = icmp slt i32 %.2136304.i, %i.vn
  br i1 %.not.not.i, label %.preheader243.i, label %._crit_edge305.i, !llvm.loop !86

._crit_edge305.i:                                 ; preds = %Vec_IntPush.exit207.1.i
  %i.vo = call fastcc i32 @Exa9_ManAddOneHot(ptr noundef nonnull %i.fw, ptr noundef nonnull %i.lv, ptr noundef nonnull %i.lz)
  %.not145.i = icmp eq i32 %i.vo, 0
  br i1 %.not145.i, label %._crit_edge305.thread.i.thread, label %.preheader242.i

.preheader242.i:                                  ; preds = %._crit_edge305.i
  %i.vp = load i32, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %.not146319.i = icmp slt i32 %i.vp, 1
  br i1 %.not146319.i, label %._crit_edge322.i.thread, label %.lr.ph321.i

.lr.ph321.i:                                      ; preds = %.preheader242.i
  %i.vq = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  %i.vr = getelementptr inbounds nuw i8, ptr %i.fw, i64 44 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.fw, i64 40 ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 2 uses
  br label %bb.dr

._crit_edge305.thread.i:                          ; preds = %._crit_edge281.i
  %.not.i293 = icmp eq ptr %.promoted287410.i, null
  br i1 %.not.i293, label %Vec_IntFree.exit294, label %._crit_edge305.thread.i.thread

._crit_edge305.thread.i.thread:                   ; preds = %._crit_edge305.i, %._crit_edge305.thread.i
  %i.vu = phi ptr [ %.promoted287410.i, %._crit_edge305.thread.i ], [ %storemerge289.1.i, %._crit_edge305.i ]
  call void @free(ptr noundef nonnull %i.vu) #19
  %.pre480 = load ptr, ptr %i.mc, align 8, !tbaa !74
  br label %Vec_IntFree.exit294

Vec_IntFree.exit294:                              ; preds = %._crit_edge305.thread.i, %._crit_edge305.thread.i.thread
  %i.vv = phi ptr [ %.promoted295415.i, %._crit_edge305.thread.i ], [ %.pre480, %._crit_edge305.thread.i.thread ] ; 2 uses
  call void @free(ptr noundef nonnull %i.lv) #19
  %.not.i291 = icmp eq ptr %i.vv, null
  br i1 %.not.i291, label %Vec_IntFree.exit292, label %bb.dp

bb.dp:                                            ; preds = %Vec_IntFree.exit294
  call void @free(ptr noundef nonnull %i.vv) #19
  br label %Vec_IntFree.exit292

Vec_IntFree.exit292:                              ; preds = %Vec_IntFree.exit294, %bb.dp
  call void @free(ptr noundef nonnull %i.lz) #19
  %i.vw = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 2 uses
  %.not.i289 = icmp eq ptr %i.vw, null
  br i1 %.not.i289, label %Vec_IntFree.exit290, label %bb.dq

bb.dq:                                            ; preds = %Vec_IntFree.exit292
  call void @free(ptr noundef nonnull %i.vw) #19
  br label %Vec_IntFree.exit290

Vec_IntFree.exit290:                              ; preds = %Vec_IntFree.exit292, %bb.dq
  call void @free(ptr noundef nonnull %i.md) #19
  br label %.thread

bb.dr:                                            ; preds = %bb.fc, %.lr.ph321.i
  %.val171426.i = phi i32 [ %i.vp, %.lr.ph321.i ], [ %i.aaw, %bb.fc ]
  %.3137320.i = phi i32 [ 1, %.lr.ph321.i ], [ %i.aav, %bb.fc ] ; 9 uses
  store i32 0, ptr %i.me, align 4, !tbaa !75
  %i.vx = load i32, ptr %i.gb, align 4, !tbaa !50 ; 3 uses
  %i.vy = icmp sgt i32 %i.vx, 0
  br i1 %i.vy, label %.lr.ph315.i, label %.preheader241.i

.preheader241.loopexit.i:                         ; preds = %bb.ej
  %.val171.pre.i = load i32, ptr %i.gd, align 8, !tbaa !51
  br label %.preheader241.i

.preheader241.i:                                  ; preds = %.preheader241.loopexit.i, %bb.dr
  %.val171.i = phi i32 [ %.val171.pre.i, %.preheader241.loopexit.i ], [ %.val171426.i, %bb.dr ]
  %.val170.i = phi i32 [ %i.yx, %.preheader241.loopexit.i ], [ %i.vx, %bb.dr ]
  %.promoted316.i = phi i32 [ %.promoted309418.i, %.preheader241.loopexit.i ], [ 0, %bb.dr ] ; 11 uses
  %i.vz = sext i32 %.promoted316.i to i64         ; 2 uses
  %i.wa = shl i32 %.val171.i, 2
  %reass.mul.i217.i = mul i32 %i.wa, %.val170.i
  %i.wb = add i32 %reass.mul.i217.i, %.3137320.i
  %i.wc = shl nsw i32 %i.wb, 1
  %i.wd = load i32, ptr %i.md, align 8, !tbaa !72
  %i.we = icmp eq i32 %.promoted316.i, %i.wd
  br i1 %i.we, label %bb.ek, label %.preheader241.Vec_IntPush.exit225_crit_edge.i

.preheader241.Vec_IntPush.exit225_crit_edge.i:    ; preds = %.preheader241.i
  %.pre427.i = load ptr, ptr %i.mg, align 8, !tbaa !74
  br label %Vec_IntPush.exit225.i

.lr.ph315.i:                                      ; preds = %bb.dr, %bb.ej
  %i.wf = phi i32 [ %i.yx, %bb.ej ], [ %i.vx, %bb.dr ]
  %.promoted309.i = phi i32 [ %.promoted309418.i, %bb.ej ], [ 0, %bb.dr ] ; 14 uses
  %.1139313.i = phi i32 [ %i.yy, %bb.ej ], [ 0, %bb.dr ] ; 3 uses
  %i.wg = load i32, ptr %i.fy, align 8, !tbaa !49
  %i.wh = add nsw i32 %i.wg, %.1139313.i
  %.not148.not.i = icmp slt i32 %i.wh, %.3137320.i
  br i1 %.not148.not.i, label %bb.ej, label %.preheader240.i

.preheader240.i:                                  ; preds = %.lr.ph315.i
  %i.wi = shl i32 %.1139313.i, 2                  ; 4 uses
  %i.wj = sext i32 %.promoted309.i to i64         ; 4 uses
  %.val.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.wk = mul nsw i32 %.val.i, %i.wi
  %i.wl = add i32 %i.wk, %.3137320.i
  %i.wm = shl nsw i32 %i.wl, 1
  %i.wn = load i32, ptr %i.md, align 8, !tbaa !72
  %i.wo = icmp eq i32 %.promoted309.i, %i.wn
  br i1 %i.wo, label %bb.ds, label %.preheader240.Vec_IntPush.exit215_crit_edge.i

.preheader240.Vec_IntPush.exit215_crit_edge.i:    ; preds = %.preheader240.i
  %.pre420.i = load ptr, ptr %i.mg, align 8, !tbaa !74
  br label %Vec_IntPush.exit215.i

bb.ds:                                            ; preds = %.preheader240.i
  %i.wp = icmp slt i32 %.promoted309.i, 16
  br i1 %i.wp, label %bb.dt, label %bb.dw

bb.dt:                                            ; preds = %bb.ds
  %i.wq = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 2 uses
  %.not9.i.i213.i = icmp eq ptr %i.wq, null
  br i1 %.not9.i.i213.i, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.wr = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.wq, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i211.i

bb.dv:                                            ; preds = %bb.dt
  %i.ws = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i211.i

bb.dw:                                            ; preds = %bb.ds
  %i.wt = icmp samesign ult i32 %.promoted309.i, 1073741823
  %i.wu = shl nuw i32 %.promoted309.i, 1
  %spec.select.i208.i = select i1 %i.wt, i32 %i.wu, i32 2147483647 ; 4 uses
  %.not.i9.i209.i = icmp ult i32 %.promoted309.i, %spec.select.i208.i
  %.pre421.i = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 3 uses
  br i1 %.not.i9.i209.i, label %bb.dx, label %Vec_IntPush.exit215.i

bb.dx:                                            ; preds = %bb.dw
  %.not9.i10.i210.i = icmp eq ptr %.pre421.i, null
  %i.wv = zext nneg i32 %spec.select.i208.i to i64
  %i.ww = shl nuw nsw i64 %i.wv, 2                ; 2 uses
  br i1 %.not9.i10.i210.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.wx = call ptr @realloc(ptr noundef nonnull %.pre421.i, i64 noundef %i.ww) #22
  br label %Vec_IntGrow.exit11.sink.split.i211.i

bb.dz:                                            ; preds = %bb.dx
  %i.wy = call noalias ptr @malloc(i64 noundef %i.ww) #21
  br label %Vec_IntGrow.exit11.sink.split.i211.i

Vec_IntGrow.exit11.sink.split.i211.i:             ; preds = %bb.dz, %bb.dy, %bb.dv, %bb.du
  %storemerge237.i = phi ptr [ %i.ws, %bb.dv ], [ %i.wr, %bb.du ], [ %i.wx, %bb.dy ], [ %i.wy, %bb.dz ] ; 2 uses
  %spec.select.sink.i212.i = phi i32 [ 16, %bb.dv ], [ 16, %bb.du ], [ %spec.select.i208.i, %bb.dy ], [ %spec.select.i208.i, %bb.dz ]
  store ptr %storemerge237.i, ptr %i.mg, align 8, !tbaa !74
  store i32 %spec.select.sink.i212.i, ptr %i.md, align 8, !tbaa !72
  br label %Vec_IntPush.exit215.i

Vec_IntPush.exit215.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i211.i, %bb.dw, %.preheader240.Vec_IntPush.exit215_crit_edge.i
  %i.wz = phi ptr [ %.pre420.i, %.preheader240.Vec_IntPush.exit215_crit_edge.i ], [ %.pre421.i, %bb.dw ], [ %storemerge237.i, %Vec_IntGrow.exit11.sink.split.i211.i ] ; 4 uses
  %indvars.iv.next358.i = add nsw i64 %i.wj, 1    ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wz, i64 %i.wj
  store i32 %i.wm, ptr %i.xa, align 4, !tbaa !81
  %.val.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.xb = or disjoint i32 %i.wi, 1
  %i.xc = mul nsw i32 %.val.1.i, %i.xb
  %i.xd = add i32 %i.xc, %.3137320.i
  %i.xe = shl nsw i32 %i.xd, 1
  %i.xf = load i32, ptr %i.md, align 8, !tbaa !72 ; 2 uses
  %i.xg = trunc nsw i64 %indvars.iv.next358.i to i32
  %i.xh = icmp eq i32 %i.xf, %i.xg
  br i1 %i.xh, label %bb.ea, label %Vec_IntPush.exit215.1.i

bb.ea:                                            ; preds = %Vec_IntPush.exit215.i
  %i.xi = icmp slt i32 %.promoted309.i, 15
  br i1 %i.xi, label %Vec_IntGrow.exit11.sink.split.i211.1.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.xj = icmp samesign ult i32 %.promoted309.i, 1073741822
  %i.xk = shl i32 %i.xf, 1
  %spec.select.i208.1.i = select i1 %i.xj, i32 %i.xk, i32 2147483647 ; 3 uses
  %i.xl = sext i32 %spec.select.i208.1.i to i64
  %.not.i9.i209.1.i = icmp samesign ult i64 %indvars.iv.next358.i, %i.xl
  br i1 %.not.i9.i209.1.i, label %bb.ec, label %Vec_IntPush.exit215.1.i

bb.ec:                                            ; preds = %bb.eb
  %i.xm = zext nneg i32 %spec.select.i208.1.i to i64
  %i.xn = shl nuw nsw i64 %i.xm, 2
  br label %Vec_IntGrow.exit11.sink.split.i211.1.i

Vec_IntGrow.exit11.sink.split.i211.1.i:           ; preds = %bb.ec, %bb.ea
  %.sink510.i = phi i64 [ %i.xn, %bb.ec ], [ 64, %bb.ea ]
  %spec.select.sink.i212.1.i = phi i32 [ %spec.select.i208.1.i, %bb.ec ], [ 16, %bb.ea ]
  %i.xo = call ptr @realloc(ptr noundef nonnull %i.wz, i64 noundef %.sink510.i) #22 ; 2 uses
  store ptr %i.xo, ptr %i.mg, align 8, !tbaa !74
  store i32 %spec.select.sink.i212.1.i, ptr %i.md, align 8, !tbaa !72
  br label %Vec_IntPush.exit215.1.i

Vec_IntPush.exit215.1.i:                          ; preds = %Vec_IntGrow.exit11.sink.split.i211.1.i, %bb.eb, %Vec_IntPush.exit215.i
  %i.xp = phi ptr [ %i.xo, %Vec_IntGrow.exit11.sink.split.i211.1.i ], [ %i.wz, %bb.eb ], [ %i.wz, %Vec_IntPush.exit215.i ] ; 4 uses
  %indvars.iv.next358.1.i = add nsw i64 %i.wj, 2  ; 3 uses
  %i.xq = getelementptr inbounds [4 x i8], ptr %i.xp, i64 %indvars.iv.next358.i
  store i32 %i.xe, ptr %i.xq, align 4, !tbaa !81
  %i.xr = trunc nsw i64 %indvars.iv.next358.1.i to i32 ; 2 uses
  %i.xs = or disjoint i32 %i.wi, 2
  %.val.1360.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.xt = mul nsw i32 %.val.1360.i, %i.xs
  %i.xu = add i32 %i.xt, %.3137320.i
  %i.xv = shl nsw i32 %i.xu, 1
  %i.xw = load i32, ptr %i.md, align 8, !tbaa !72
  %i.xx = icmp eq i32 %i.xw, %i.xr
  br i1 %i.xx, label %bb.ed, label %Vec_IntPush.exit215.1369.i

bb.ed:                                            ; preds = %Vec_IntPush.exit215.1.i
  %i.xy = icmp slt i32 %.promoted309.i, 14
  br i1 %i.xy, label %Vec_IntGrow.exit11.sink.split.i211.1367.i, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.xz = icmp samesign ult i32 %.promoted309.i, 1073741821
  %i.ya = shl i32 %i.xr, 1
  %spec.select.i208.1361.i = select i1 %i.xz, i32 %i.ya, i32 2147483647 ; 3 uses
  %i.yb = sext i32 %spec.select.i208.1361.i to i64
  %.not.i9.i209.1362.i = icmp samesign ult i64 %indvars.iv.next358.1.i, %i.yb
  br i1 %.not.i9.i209.1362.i, label %bb.ef, label %Vec_IntPush.exit215.1369.i

bb.ef:                                            ; preds = %bb.ee
  %i.yc = zext nneg i32 %spec.select.i208.1361.i to i64
  %i.yd = shl nuw nsw i64 %i.yc, 2
  br label %Vec_IntGrow.exit11.sink.split.i211.1367.i

Vec_IntGrow.exit11.sink.split.i211.1367.i:        ; preds = %bb.ef, %bb.ed
  %.sink511.i = phi i64 [ %i.yd, %bb.ef ], [ 64, %bb.ed ]
  %spec.select.sink.i212.1366.i = phi i32 [ %spec.select.i208.1361.i, %bb.ef ], [ 16, %bb.ed ]
  %i.ye = call ptr @realloc(ptr noundef nonnull %i.xp, i64 noundef %.sink511.i) #22 ; 2 uses
  store ptr %i.ye, ptr %i.mg, align 8, !tbaa !74
  store i32 %spec.select.sink.i212.1366.i, ptr %i.md, align 8, !tbaa !72
  br label %Vec_IntPush.exit215.1369.i

Vec_IntPush.exit215.1369.i:                       ; preds = %Vec_IntGrow.exit11.sink.split.i211.1367.i, %bb.ee, %Vec_IntPush.exit215.1.i
  %i.yf = phi ptr [ %i.ye, %Vec_IntGrow.exit11.sink.split.i211.1367.i ], [ %i.xp, %bb.ee ], [ %i.xp, %Vec_IntPush.exit215.1.i ] ; 4 uses
  %indvars.iv.next358.1368.i = add nsw i64 %i.wj, 3 ; 3 uses
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.yf, i64 %indvars.iv.next358.1.i
  store i32 %i.xv, ptr %i.yg, align 4, !tbaa !81
  %.val.1.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.yh = or disjoint i32 %i.wi, 3
  %i.yi = mul nsw i32 %.val.1.1.i, %i.yh
  %i.yj = add i32 %i.yi, %.3137320.i
  %i.yk = shl nsw i32 %i.yj, 1
  %i.yl = load i32, ptr %i.md, align 8, !tbaa !72 ; 2 uses
  %i.ym = trunc nsw i64 %indvars.iv.next358.1368.i to i32
  %i.yn = icmp eq i32 %i.yl, %i.ym
  br i1 %i.yn, label %bb.eg, label %Vec_IntPush.exit215.1.1.i

bb.eg:                                            ; preds = %Vec_IntPush.exit215.1369.i
  %i.yo = icmp slt i32 %.promoted309.i, 13
  br i1 %i.yo, label %Vec_IntGrow.exit11.sink.split.i211.1.1.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.yp = icmp samesign ult i32 %.promoted309.i, 1073741820
  %i.yq = shl i32 %i.yl, 1
  %spec.select.i208.1.1.i = select i1 %i.yp, i32 %i.yq, i32 2147483647 ; 3 uses
  %i.yr = sext i32 %spec.select.i208.1.1.i to i64
  %.not.i9.i209.1.1.i = icmp samesign ult i64 %indvars.iv.next358.1368.i, %i.yr
  br i1 %.not.i9.i209.1.1.i, label %bb.ei, label %Vec_IntPush.exit215.1.1.i

bb.ei:                                            ; preds = %bb.eh
  %i.ys = zext nneg i32 %spec.select.i208.1.1.i to i64
  %i.yt = shl nuw nsw i64 %i.ys, 2
  br label %Vec_IntGrow.exit11.sink.split.i211.1.1.i

Vec_IntGrow.exit11.sink.split.i211.1.1.i:         ; preds = %bb.ei, %bb.eg
  %.sink512.i = phi i64 [ %i.yt, %bb.ei ], [ 64, %bb.eg ]
  %spec.select.sink.i212.1.1.i = phi i32 [ %spec.select.i208.1.1.i, %bb.ei ], [ 16, %bb.eg ]
  %i.yu = call ptr @realloc(ptr noundef nonnull %i.yf, i64 noundef %.sink512.i) #22 ; 2 uses
  store ptr %i.yu, ptr %i.mg, align 8, !tbaa !74
  store i32 %spec.select.sink.i212.1.1.i, ptr %i.md, align 8, !tbaa !72
  br label %Vec_IntPush.exit215.1.1.i

Vec_IntPush.exit215.1.1.i:                        ; preds = %Vec_IntGrow.exit11.sink.split.i211.1.1.i, %bb.eh, %Vec_IntPush.exit215.1369.i
  %i.yv = phi ptr [ %i.yu, %Vec_IntGrow.exit11.sink.split.i211.1.1.i ], [ %i.yf, %bb.eh ], [ %i.yf, %Vec_IntPush.exit215.1369.i ]
  %indvars.iv.next358.1.1.i = add i32 %.promoted309.i, 4 ; 2 uses
  %i.yw = getelementptr inbounds [4 x i8], ptr %i.yv, i64 %indvars.iv.next358.1368.i
  store i32 %i.yk, ptr %i.yw, align 4, !tbaa !81
  store i32 %indvars.iv.next358.1.1.i, ptr %i.me, align 4, !tbaa !75
  %.pre422.i = load i32, ptr %i.gb, align 4, !tbaa !50
  br label %bb.ej

bb.ej:                                            ; preds = %Vec_IntPush.exit215.1.1.i, %.lr.ph315.i
  %i.yx = phi i32 [ %.pre422.i, %Vec_IntPush.exit215.1.1.i ], [ %i.wf, %.lr.ph315.i ] ; 3 uses
  %.promoted309418.i = phi i32 [ %indvars.iv.next358.1.1.i, %Vec_IntPush.exit215.1.1.i ], [ %.promoted309.i, %.lr.ph315.i ] ; 2 uses
  %i.yy = add nuw nsw i32 %.1139313.i, 1          ; 2 uses
  %i.yz = icmp slt i32 %i.yy, %i.yx
  br i1 %i.yz, label %.lr.ph315.i, label %.preheader241.loopexit.i, !llvm.loop !87

bb.ek:                                            ; preds = %.preheader241.i
  %i.za = icmp slt i32 %.promoted316.i, 16
  br i1 %i.za, label %bb.el, label %bb.eo

bb.el:                                            ; preds = %bb.ek
  %i.zb = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 2 uses
  %.not9.i.i223.i = icmp eq ptr %i.zb, null
  br i1 %.not9.i.i223.i, label %bb.en, label %bb.em

bb.em:                                            ; preds = %bb.el
  %i.zc = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.zb, i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i221.i

bb.en:                                            ; preds = %bb.el
  %i.zd = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i221.i

bb.eo:                                            ; preds = %bb.ek
  %i.ze = icmp samesign ult i32 %.promoted316.i, 1073741823
  %i.zf = shl nuw i32 %.promoted316.i, 1
  %spec.select.i218.i = select i1 %i.ze, i32 %i.zf, i32 2147483647 ; 4 uses
  %.not.i9.i219.i = icmp ult i32 %.promoted316.i, %spec.select.i218.i
  %.pre428.i = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 3 uses
  br i1 %.not.i9.i219.i, label %bb.ep, label %Vec_IntPush.exit225.i

bb.ep:                                            ; preds = %bb.eo
  %.not9.i10.i220.i = icmp eq ptr %.pre428.i, null
  %i.zg = zext nneg i32 %spec.select.i218.i to i64
  %i.zh = shl nuw nsw i64 %i.zg, 2                ; 2 uses
  br i1 %.not9.i10.i220.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.zi = call ptr @realloc(ptr noundef nonnull %.pre428.i, i64 noundef %i.zh) #22
  br label %Vec_IntGrow.exit11.sink.split.i221.i

bb.er:                                            ; preds = %bb.ep
  %i.zj = call noalias ptr @malloc(i64 noundef %i.zh) #21
  br label %Vec_IntGrow.exit11.sink.split.i221.i

Vec_IntGrow.exit11.sink.split.i221.i:             ; preds = %bb.er, %bb.eq, %bb.en, %bb.em
  %storemerge236.i = phi ptr [ %i.zd, %bb.en ], [ %i.zc, %bb.em ], [ %i.zi, %bb.eq ], [ %i.zj, %bb.er ] ; 2 uses
  %spec.select.sink.i222.i = phi i32 [ 16, %bb.en ], [ 16, %bb.em ], [ %spec.select.i218.i, %bb.eq ], [ %spec.select.i218.i, %bb.er ]
  store ptr %storemerge236.i, ptr %i.mg, align 8, !tbaa !74
  store i32 %spec.select.sink.i222.i, ptr %i.md, align 8, !tbaa !72
  br label %Vec_IntPush.exit225.i

Vec_IntPush.exit225.i:                            ; preds = %Vec_IntGrow.exit11.sink.split.i221.i, %bb.eo, %.preheader241.Vec_IntPush.exit225_crit_edge.i
  %i.zk = phi ptr [ %.pre427.i, %.preheader241.Vec_IntPush.exit225_crit_edge.i ], [ %.pre428.i, %bb.eo ], [ %storemerge236.i, %Vec_IntGrow.exit11.sink.split.i221.i ] ; 5 uses
  %indvars.iv.next371.i = add nsw i64 %i.vz, 1    ; 4 uses
  %i.zl = getelementptr inbounds [4 x i8], ptr %i.zk, i64 %i.vz
  store i32 %i.wc, ptr %i.zl, align 4, !tbaa !81
  %.val170.1.i = load i32, ptr %i.gb, align 4, !tbaa !50
  %.val171.1.i = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.zm = shl i32 %.val170.1.i, 2
  %reass.add.i216.1.i = or disjoint i32 %i.zm, 1
  %reass.mul.i217.1.i = mul i32 %reass.add.i216.1.i, %.val171.1.i
  %i.zn = add i32 %reass.mul.i217.1.i, %.3137320.i
  %i.zo = shl nsw i32 %i.zn, 1                    ; 2 uses
  %i.zp = load i32, ptr %i.md, align 8, !tbaa !72 ; 2 uses
  %i.zq = trunc nsw i64 %indvars.iv.next371.i to i32
  %i.zr = icmp eq i32 %i.zp, %i.zq
  br i1 %i.zr, label %bb.es, label %Vec_IntPush.exit225.1.i

bb.es:                                            ; preds = %Vec_IntPush.exit225.i
  %i.zs = icmp slt i32 %.promoted316.i, 15
  br i1 %i.zs, label %Vec_IntGrow.exit11.sink.split.i221.1.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.zt = icmp samesign ult i32 %.promoted316.i, 1073741822
  %i.zu = shl i32 %i.zp, 1
  %spec.select.i218.1.i = select i1 %i.zt, i32 %i.zu, i32 2147483647 ; 3 uses
  %i.zv = sext i32 %spec.select.i218.1.i to i64
  %.not.i9.i219.1.i = icmp samesign ult i64 %indvars.iv.next371.i, %i.zv
  br i1 %.not.i9.i219.1.i, label %bb.eu, label %.thread.i208

.thread.i208:                                     ; preds = %bb.et
  %indvars.iv.next371.1483.i = add nuw i32 %.promoted316.i, 2 ; 2 uses
  %i.zw = getelementptr inbounds nuw [4 x i8], ptr %i.zk, i64 %indvars.iv.next371.i
  store i32 %i.zo, ptr %i.zw, align 4, !tbaa !81
  store i32 %indvars.iv.next371.1483.i, ptr %i.me, align 4, !tbaa !75
  br label %.lr.ph.i.i

bb.eu:                                            ; preds = %bb.et
  %i.zx = zext nneg i32 %spec.select.i218.1.i to i64
  %i.zy = shl nuw nsw i64 %i.zx, 2
  br label %Vec_IntGrow.exit11.sink.split.i221.1.i

Vec_IntGrow.exit11.sink.split.i221.1.i:           ; preds = %bb.eu, %bb.es
  %.sink513.i = phi i64 [ %i.zy, %bb.eu ], [ 64, %bb.es ]
  %spec.select.sink.i222.1.i = phi i32 [ %spec.select.i218.1.i, %bb.eu ], [ 16, %bb.es ]
  %i.zz = call ptr @realloc(ptr noundef nonnull %i.zk, i64 noundef %.sink513.i) #22 ; 2 uses
  store ptr %i.zz, ptr %i.mg, align 8, !tbaa !74
  store i32 %spec.select.sink.i222.1.i, ptr %i.md, align 8, !tbaa !72
  br label %Vec_IntPush.exit225.1.i

Vec_IntPush.exit225.1.i:                          ; preds = %Vec_IntGrow.exit11.sink.split.i221.1.i, %Vec_IntPush.exit225.i
  %.val169.i = phi ptr [ %i.zz, %Vec_IntGrow.exit11.sink.split.i221.1.i ], [ %i.zk, %Vec_IntPush.exit225.i ] ; 2 uses
  %indvars.iv.next371.1.i = add i32 %.promoted316.i, 2 ; 3 uses
  %i.aaa = getelementptr inbounds [4 x i8], ptr %.val169.i, i64 %indvars.iv.next371.i
  store i32 %i.zo, ptr %i.aaa, align 4, !tbaa !81
  store i32 %indvars.iv.next371.1.i, ptr %i.me, align 4, !tbaa !75
  %i.aab = icmp eq i32 %indvars.iv.next371.1.i, 0
  br i1 %i.aab, label %bb.fc, label %bb.ev

bb.ev:                                            ; preds = %Vec_IntPush.exit225.1.i
  %i.aac = icmp sgt i32 %.promoted316.i, -2
  br i1 %i.aac, label %.lr.ph.i.i, label %._crit_edge.i226.i

.lr.ph.i.i:                                       ; preds = %bb.ev, %.thread.i208
  %.val169484489.i = phi ptr [ %i.zk, %.thread.i208 ], [ %.val169.i, %bb.ev ]
  %indvars.iv.next371.1485488.i = phi i32 [ %indvars.iv.next371.1483.i, %.thread.i208 ], [ %indvars.iv.next371.1.i, %bb.ev ]
  %wide.trip.count.i.i = zext nneg i32 %indvars.iv.next371.1485488.i to i64
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ew, %.lr.ph.i.i
  %indvars.iv.i230.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i232.i, %bb.ew ] ; 2 uses
  %i.aad = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %.val169484489.i, i64 %indvars.iv.i230.i
  %i.aaf = load i32, ptr %i.aae, align 4, !tbaa !81 ; 2 uses
  %i.aag = ashr i32 %i.aaf, 1                     ; 2 uses
  %i.aah = and i32 %i.aaf, 1
  %.not.i.i231.i = icmp eq i32 %i.aah, 0
  %i.aai = sub nsw i32 0, %i.aag
  %i.aaj = select i1 %.not.i.i231.i, i32 %i.aag, i32 %i.aai
  call void @kissat_add(ptr noundef %i.aad, i32 noundef %i.aaj) #19
  %indvars.iv.next.i232.i = add nuw nsw i64 %indvars.iv.i230.i, 1 ; 2 uses
  %exitcond.not.i233.i = icmp eq i64 %indvars.iv.next.i232.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i233.i, label %._crit_edge.i226.i, label %bb.ew, !llvm.loop !88

._crit_edge.i226.i:                               ; preds = %bb.ew, %bb.ev
  %i.aak = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.aak, i32 noundef 0) #19
  %i.aal = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i227.i = icmp eq i32 %i.aal, 0
  br i1 %.not.i227.i, label %bb.fa, label %bb.ex

bb.ex:                                            ; preds = %._crit_edge.i226.i
  %i.aam = load i32, ptr %i.vq, align 8, !tbaa !77
  %.not12.i228.i = icmp eq i32 %i.aam, 0
  br i1 %.not12.i228.i, label %bb.ez, label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aan = load i32, ptr %i.vr, align 4, !tbaa !78
  %i.aao = add nsw i32 %i.aan, 1
  store i32 %i.aao, ptr %i.vr, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit234.i

bb.ez:                                            ; preds = %bb.ex
  %i.aap = load i32, ptr %i.vs, align 8, !tbaa !79
  %i.aaq = add nsw i32 %i.aap, 1
  store i32 %i.aaq, ptr %i.vs, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit234.i

bb.fa:                                            ; preds = %._crit_edge.i226.i
  %i.aar = load i32, ptr %i.vt, align 8, !tbaa !80
  %i.aas = add nsw i32 %i.aar, 1
  store i32 %i.aas, ptr %i.vt, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit234.i

Exa9_KissatAddClause.exit234.i:                   ; preds = %bb.fa, %bb.ez, %bb.ey
  %i.aat = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.aau = call i32 @kissat_is_inconsistent(ptr noundef %i.aat) #19
  %.not13.i229.not.i = icmp eq i32 %i.aau, 0
  br i1 %.not13.i229.not.i, label %bb.fc, label %bb.fb

bb.fb:                                            ; preds = %Exa9_KissatAddClause.exit234.i
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.lv)
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.lz)
  call fastcc void @Vec_IntFree(ptr noundef nonnull %i.md)
  br label %.thread

bb.fc:                                            ; preds = %Exa9_KissatAddClause.exit234.i, %Vec_IntPush.exit225.1.i
  %i.aav = add nuw nsw i32 %.3137320.i, 1
  %i.aaw = load i32, ptr %i.gd, align 8, !tbaa !51 ; 2 uses
  %.not146.not.i = icmp slt i32 %.3137320.i, %i.aaw
  br i1 %.not146.not.i, label %bb.dr, label %._crit_edge322.i, !llvm.loop !89

._crit_edge322.i:                                 ; preds = %bb.fc
  %.pre478 = load ptr, ptr %i.ly, align 8, !tbaa !74 ; 2 uses
  %.not.i287 = icmp eq ptr %.pre478, null
  br i1 %.not.i287, label %Vec_IntFree.exit288, label %._crit_edge322.i.thread

._crit_edge322.i.thread:                          ; preds = %.preheader242.i, %._crit_edge322.i
  %i.aax = phi ptr [ %.pre478, %._crit_edge322.i ], [ %storemerge289.1.i, %.preheader242.i ]
  call void @free(ptr noundef nonnull %i.aax) #19
  br label %Vec_IntFree.exit288

Vec_IntFree.exit288:                              ; preds = %._crit_edge322.i, %._crit_edge322.i.thread
  call void @free(ptr noundef nonnull %i.lv) #19
  %i.aay = load ptr, ptr %i.mc, align 8, !tbaa !74 ; 2 uses
  %.not.i285 = icmp eq ptr %i.aay, null
  br i1 %.not.i285, label %Vec_IntFree.exit286, label %bb.fd

bb.fd:                                            ; preds = %Vec_IntFree.exit288
  call void @free(ptr noundef nonnull %i.aay) #19
  br label %Vec_IntFree.exit286

Vec_IntFree.exit286:                              ; preds = %Vec_IntFree.exit288, %bb.fd
  call void @free(ptr noundef nonnull %i.lz) #19
  %i.aaz = load ptr, ptr %i.mg, align 8, !tbaa !74 ; 2 uses
  %.not.i283 = icmp eq ptr %i.aaz, null
  br i1 %.not.i283, label %bb.ff, label %bb.fe

bb.fe:                                            ; preds = %Vec_IntFree.exit286
  call void @free(ptr noundef nonnull %i.aaz) #19
  br label %bb.ff

bb.ff:                                            ; preds = %Vec_IntFree.exit286, %bb.fe
  call void @free(ptr noundef nonnull %i.md) #19
  %i.aba = load i32, ptr %i.n, align 4, !tbaa !21
  %.not179 = icmp eq i32 %i.aba, 0
  br i1 %.not179, label %bb.fj, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.abb = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.abc = load i32, ptr %i.abb, align 8, !tbaa !22
  %.not180 = icmp eq i32 %i.abc, 0
  br i1 %.not180, label %bb.fh, label %bb.fj

bb.fh:                                            ; preds = %bb.fg
  %i.abd = load i32, ptr %i.fy, align 8, !tbaa !49 ; 3 uses
  %i.abe = load i32, ptr %i.gb, align 4, !tbaa !50 ; 3 uses
  %i.abf = icmp sgt i32 %i.abe, 0
  br i1 %i.abf, label %.lr.ph397.preheader, label %._crit_edge

.lr.ph397.preheader:                              ; preds = %bb.fh
  %i.abg = add nsw i32 %i.abe, -1                 ; 2 uses
  %i.abh = shl i32 %i.abd, 3
  %i.abi = add i32 %i.abh, 11
  %i.abj = mul i32 %i.abg, %i.abi
  %i.abk = mul i32 %i.abd, 9
  %i.abl = add i32 %i.abj, %i.abk
  %i.abm = add nuw i32 %i.abe, 1073741822
  %i.abn = mul i32 %i.abg, %i.abm
  %i.abo = shl i32 %i.abn, 2
  %i.abp = and i32 %i.abo, -8
  %i.abq = add i32 %i.abl, %i.abp
  %i.abr = add i32 %i.abq, 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph397.preheader, %bb.fh
  %.0153.lcssa = phi i32 [ %i.abd, %bb.fh ], [ %i.abr, %.lr.ph397.preheader ]
  %i.abs = load i32, ptr %i.gd, align 8, !tbaa !51
  %i.abt = shl nsw i32 %i.abs, 1
  %i.abu = add nsw i32 %i.abt, %.0153.lcssa
  %i.abv = load ptr, ptr %i.fw, align 8, !tbaa !44
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abv, i64 104
  %i.abx = load i32, ptr %i.abw, align 8, !tbaa !23
  %switch.tableidx866 = add i32 %i.abx, -1        ; 2 uses
  %i.aby = icmp ult i32 %switch.tableidx866, 3
  br i1 %i.aby, label %switch.lookup867, label %bb.fi

switch.lookup867:                                 ; preds = %._crit_edge
  %i.abz = zext nneg i32 %switch.tableidx866 to i64
  %switch.gep868 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.Exa9_ManExactSynthesis.21, i64 %i.abz
  %switch.load869 = load ptr, ptr %switch.gep868, align 8
  br label %bb.fi

bb.fi:                                            ; preds = %._crit_edge, %switch.lookup867
  %i.aca = phi ptr [ %switch.load869, %switch.lookup867 ], [ @.str.6, %._crit_edge ]
  %i.acb = load i32, ptr %i.gk, align 8, !tbaa !53
  %i.acc = mul nsw i32 %i.acb, %i.abu             ; 2 uses
  %i.acd = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  %i.ace = load i32, ptr %i.acd, align 8, !tbaa !79 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.fw, i64 44
  %i.acg = load i32, ptr %i.acf, align 4, !tbaa !78 ; 2 uses
  %i.ach = add i32 %i.acc, %i.ace
  %i.aci = add i32 %i.ach, %i.acg
  %i.acj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %i.ace, ptr noundef nonnull %i.aca, i32 noundef %i.acg, i32 noundef %i.acc, i32 noundef %i.aci) ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fg, %bb.ff
  %i.ack = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.acl = load i32, ptr %i.ack, align 8, !tbaa !22
  %.not181 = icmp eq i32 %i.acl, 0
  br i1 %.not181, label %bb.fk, label %bb.fl

bb.fk:                                            ; preds = %bb.fj
  %i.acm = load i32, ptr %i.fy, align 8, !tbaa !49
  %i.acn = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.aco = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.acm, i32 noundef %i.acn) ; 0 uses
  br label %bb.fl

bb.fl:                                            ; preds = %bb.fk, %bb.fj
  %i.acp = load i32, ptr %i.gk, align 8, !tbaa !53 ; 4 uses
  %i.acq = add i32 %i.acp, -1
  %or.cond.i216 = icmp ult i32 %i.acq, 15
  %spec.store.select.i = select i1 %or.cond.i216, i32 16, i32 %i.acp ; 3 uses
  %.not.i217 = icmp eq i32 %spec.store.select.i, 0
  br i1 %.not.i217, label %Vec_IntAlloc.exit, label %bb.fm

bb.fm:                                            ; preds = %bb.fl
  %i.acr = sext i32 %spec.store.select.i to i64
  %i.acs = shl nsw i64 %i.acr, 2
  %i.act = call noalias ptr @malloc(i64 noundef %i.acs) #21
  br label %Vec_IntAlloc.exit

Vec_IntAlloc.exit:                                ; preds = %bb.fl, %bb.fm
  %.promoted406 = phi ptr [ %i.act, %bb.fm ], [ null, %bb.fl ] ; 2 uses
  %i.acu = icmp sgt i32 %i.acp, 0
  br i1 %i.acu, label %.lr.ph400, label %._crit_edge401

.lr.ph400:                                        ; preds = %Vec_IntAlloc.exit, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 7 uses
  %storemerge407 = phi ptr [ %storemerge408, %Vec_IntPush.exit ], [ %.promoted406, %Vec_IntAlloc.exit ] ; 6 uses
  %spec.select.sink.i405 = phi i32 [ %spec.select.sink.i404, %Vec_IntPush.exit ], [ %spec.store.select.i, %Vec_IntAlloc.exit ] ; 3 uses
  %.0149399 = phi i32 [ %i.adi, %Vec_IntPush.exit ], [ 0, %Vec_IntAlloc.exit ] ; 2 uses
  %i.acv = trunc nsw i64 %indvars.iv to i32
  %i.acw = icmp eq i32 %spec.select.sink.i405, %i.acv
  br i1 %i.acw, label %bb.fn, label %Vec_IntPush.exit

bb.fn:                                            ; preds = %.lr.ph400
  %i.acx = icmp samesign ult i64 %indvars.iv, 16
  br i1 %i.acx, label %bb.fo, label %bb.fr

bb.fo:                                            ; preds = %bb.fn
  %.not9.i.i = icmp eq ptr %storemerge407, null
  br i1 %.not9.i.i, label %bb.fq, label %bb.fp

bb.fp:                                            ; preds = %bb.fo
  %i.acy = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge407, i64 noundef 64) #22
  br label %Vec_IntPush.exit

bb.fq:                                            ; preds = %bb.fo
  %i.acz = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit

bb.fr:                                            ; preds = %bb.fn
  %i.ada = icmp samesign ult i64 %indvars.iv, 1073741823
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %i.adb = shl i32 %indvars.iv.tr, 1
  %spec.select.i218 = select i1 %i.ada, i32 %i.adb, i32 2147483647 ; 4 uses
  %i.adc = sext i32 %spec.select.i218 to i64
  %.not.i9.i = icmp samesign ult i64 %indvars.iv, %i.adc
  br i1 %.not.i9.i, label %bb.fs, label %Vec_IntPush.exit

bb.fs:                                            ; preds = %bb.fr
  %.not9.i10.i = icmp eq ptr %storemerge407, null
  %i.add = zext nneg i32 %spec.select.i218 to i64
  %i.ade = shl nuw nsw i64 %i.add, 2              ; 2 uses
  br i1 %.not9.i10.i, label %bb.fu, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.adf = call ptr @realloc(ptr noundef nonnull %storemerge407, i64 noundef %i.ade) #22
  br label %Vec_IntPush.exit

bb.fu:                                            ; preds = %bb.fs
  %i.adg = call noalias ptr @malloc(i64 noundef %i.ade) #21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.fq, %bb.fp, %bb.fu, %bb.ft, %.lr.ph400, %bb.fr
  %storemerge408 = phi ptr [ %storemerge407, %.lr.ph400 ], [ %storemerge407, %bb.fr ], [ %i.acz, %bb.fq ], [ %i.acy, %bb.fp ], [ %i.adf, %bb.ft ], [ %i.adg, %bb.fu ] ; 3 uses
  %spec.select.sink.i404 = phi i32 [ %spec.select.sink.i405, %.lr.ph400 ], [ %spec.select.sink.i405, %bb.fr ], [ 16, %bb.fq ], [ 16, %bb.fp ], [ %spec.select.i218, %bb.ft ], [ %spec.select.i218, %bb.fu ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %storemerge408, i64 %indvars.iv
  store i32 %.0149399, ptr %i.adh, align 4, !tbaa !81
  %i.adi = add nuw nsw i32 %.0149399, 1           ; 2 uses
  %i.adj = load i32, ptr %i.gk, align 8, !tbaa !53 ; 2 uses
  %i.adk = icmp slt i32 %i.adi, %i.adj
  br i1 %i.adk, label %.lr.ph400, label %._crit_edge401, !llvm.loop !90

._crit_edge401:                                   ; preds = %Vec_IntPush.exit, %Vec_IntAlloc.exit
  %i.adl = phi i32 [ %i.acp, %Vec_IntAlloc.exit ], [ %i.adj, %Vec_IntPush.exit ]
  %i.adm = phi ptr [ %.promoted406, %Vec_IntAlloc.exit ], [ %storemerge408, %Vec_IntPush.exit ] ; 5 uses
  %i.adn = load i32, ptr %i.hp, align 4, !tbaa !24 ; 2 uses
  %i.ado = icmp sgt i32 %i.adn, 0
  br i1 %i.ado, label %bb.fv, label %.loopexit

bb.fv:                                            ; preds = %._crit_edge401
  %i.adp = call i32 @Abc_Random(i32 noundef %i.adn) #19 ; 0 uses
  %i.adq = load i32, ptr %i.gk, align 8, !tbaa !53 ; 2 uses
  %i.adr = icmp sgt i32 %i.adq, 1
  br i1 %i.adr, label %.lr.ph411, label %.loopexit

.lr.ph411:                                        ; preds = %bb.fv, %.lr.ph411
  %indvars.iv468 = phi i64 [ %indvars.iv.next469, %.lr.ph411 ], [ 1, %bb.fv ] ; 2 uses
  %i.ads = call i32 @Abc_Random(i32 noundef 0) #19
  %indvars.iv.next469 = add nuw nsw i64 %indvars.iv468, 1 ; 3 uses
  %i.adt = trunc nuw nsw i64 %indvars.iv.next469 to i32
  %i.adu = urem i32 %i.ads, %i.adt
  %i.adv = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv468 ; 2 uses
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !81
  %i.adx = zext nneg i32 %i.adu to i64
  %i.ady = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %i.adx ; 2 uses
  %i.adz = load i32, ptr %i.ady, align 4, !tbaa !81
  store i32 %i.adz, ptr %i.adv, align 4, !tbaa !81
  store i32 %i.adw, ptr %i.ady, align 4, !tbaa !81
  %i.aea = load i32, ptr %i.gk, align 8, !tbaa !53 ; 2 uses
  %i.aeb = sext i32 %i.aea to i64
  %i.aec = icmp slt i64 %indvars.iv.next469, %i.aeb
  br i1 %i.aec, label %.lr.ph411, label %.loopexit, !llvm.loop !91

.loopexit:                                        ; preds = %.lr.ph411, %bb.fv, %._crit_edge401
  %i.aed = phi i32 [ %i.adl, %._crit_edge401 ], [ %i.adq, %bb.fv ], [ %i.aea, %.lr.ph411 ]
  %i.aee = icmp sgt i32 %i.aed, 0
  br i1 %i.aee, label %.lr.ph414, label %Exa9_ManAddCnf.exit.thread

.lr.ph414:                                        ; preds = %.loopexit
  %i.aef = getelementptr inbounds nuw i8, ptr %i.fw, i64 56 ; 10 uses
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.fw, i64 44 ; 20 uses
  %i.aeh = getelementptr inbounds nuw i8, ptr %i.fw, i64 40 ; 20 uses
  %i.aei = getelementptr inbounds nuw i8, ptr %i.fw, i64 48 ; 20 uses
  br label %bb.fw

bb.fw:                                            ; preds = %.lr.ph414, %Exa9_ManAddCnf.exit
  %indvars.iv471 = phi i64 [ 0, %.lr.ph414 ], [ %indvars.iv.next472, %Exa9_ManAddCnf.exit ] ; 6 uses
  %i.aej = getelementptr inbounds nuw [4 x i8], ptr %i.adm, i64 %indvars.iv471
  %i.aek = load i32, ptr %i.aej, align 4, !tbaa !81 ; 6 uses
  store i32 0, ptr %i.lu, align 4, !tbaa !71
  %i.ael = load i32, ptr %i.fy, align 8, !tbaa !49
  %.not144.i = icmp slt i32 %i.ael, 1
  br i1 %.not144.i, label %.preheader134.i, label %.lr.ph.i219

.lr.ph.i219:                                      ; preds = %bb.fw
  %i.aem = add i32 %i.aek, 1
  br label %bb.fy

bb.fx:                                            ; preds = %Exa9_ManAddUnit.exit.i
  %i.aen = add nuw nsw i32 %.086145.i, 1
  %i.aeo = load i32, ptr %i.fy, align 8, !tbaa !49
  %.not.not.i221 = icmp slt i32 %.086145.i, %i.aeo
  br i1 %.not.not.i221, label %bb.fy, label %.preheader134.i, !llvm.loop !92

.preheader134.i:                                  ; preds = %bb.fx, %bb.fw
  %i.aep = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.aeq = icmp sgt i32 %i.aep, 0
  br i1 %i.aeq, label %.lr.ph152.i, label %._crit_edge153.i

.lr.ph152.i:                                      ; preds = %.preheader134.i
  %i.aer = add i32 %i.aek, 1                      ; 3 uses
  br label %bb.ge

bb.fy:                                            ; preds = %bb.fx, %.lr.ph.i219
  %.086145.i = phi i32 [ 1, %.lr.ph.i219 ], [ %i.aen, %bb.fx ] ; 4 uses
  %i.aes = add nsw i32 %.086145.i, -1
  %.val118.i = load i32, ptr %i.gk, align 8, !tbaa !53
  %.val119.i = load i32, ptr %i.go, align 4, !tbaa !54
  %i.aet = shl nsw i32 %.val119.i, 1
  %i.aeu = mul i32 %.086145.i, 3
  %i.aev = add i32 %i.aeu, -1
  %i.aew = mul nsw i32 %i.aev, %.val118.i
  %i.aex = add i32 %i.aem, %i.aew
  %i.aey = add i32 %i.aex, %i.aet                 ; 2 uses
  %i.aez = shl nuw i32 1, %i.aes
  %i.afa = and i32 %i.aez, %i.aek
  %.not.i.i.i.not.i = icmp eq i32 %i.afa, 0
  %i.afb = sub nsw i32 0, %i.aey
  %i.afc = select i1 %.not.i.i.i.not.i, i32 %i.afb, i32 %i.aey
  %i.afd = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.afd, i32 noundef %i.afc) #19
  %i.afe = load ptr, ptr %i.ho, align 8, !tbaa !63
  call void @kissat_add(ptr noundef %i.afe, i32 noundef 0) #19
  %i.aff = load i32, ptr %i.lu, align 4, !tbaa !71
  %.not.i.i.i220 = icmp eq i32 %i.aff, 0
  br i1 %.not.i.i.i220, label %bb.gc, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.afg = load i32, ptr %i.aef, align 8, !tbaa !77
  %.not12.i.i.i = icmp eq i32 %i.afg, 0
  br i1 %.not12.i.i.i, label %bb.gb, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.afh = load i32, ptr %i.aeg, align 4, !tbaa !78
  %i.afi = add nsw i32 %i.afh, 1
  store i32 %i.afi, ptr %i.aeg, align 4, !tbaa !78
  br label %Exa9_ManAddUnit.exit.i

bb.gb:                                            ; preds = %bb.fz
  %i.afj = load i32, ptr %i.aeh, align 8, !tbaa !79
  %i.afk = add nsw i32 %i.afj, 1
  store i32 %i.afk, ptr %i.aeh, align 8, !tbaa !79
  br label %Exa9_ManAddUnit.exit.i

bb.gc:                                            ; preds = %bb.fy
  %i.afl = load i32, ptr %i.aei, align 8, !tbaa !80
  %i.afm = add nsw i32 %i.afl, 1
  store i32 %i.afm, ptr %i.aei, align 8, !tbaa !80
  br label %Exa9_ManAddUnit.exit.i

Exa9_ManAddUnit.exit.i:                           ; preds = %bb.gc, %bb.gb, %bb.ga
  %i.afn = load ptr, ptr %i.ho, align 8, !tbaa !63
  %i.afo = call i32 @kissat_is_inconsistent(ptr noundef %i.afn) #19
  %.not13.i.i.not.i = icmp eq i32 %i.afo, 0
  br i1 %.not13.i.i.not.i, label %bb.fx, label %Exa9_ManAddCnf.exit.thread.loopexit423

bb.gd:                                            ; preds = %Exa9_KissatAddClause.exit
  %i.afp = add nuw nsw i32 %.187151.i, 1          ; 2 uses
  %i.afq = load i32, ptr %i.gb, align 4, !tbaa !50
  %i.afr = icmp slt i32 %i.afp, %i.afq
  %indvars.iv.next.i237 = add nuw i32 %indvars.iv.i231, 1
  br i1 %i.afr, label %bb.ge, label %._crit_edge153.i, !llvm.loop !93

bb.ge:                                            ; preds = %bb.gd, %.lr.ph152.i
  %indvars.iv.i231 = phi i32 [ 1, %.lr.ph152.i ], [ %indvars.iv.next.i237, %bb.gd ] ; 2 uses
  %.187151.i = phi i32 [ 0, %.lr.ph152.i ], [ %i.afp, %bb.gd ] ; 3 uses
  %i.afs = load i32, ptr %i.fy, align 8, !tbaa !49 ; 2 uses
  %i.aft = add nsw i32 %i.afs, %.187151.i         ; 2 uses
  %.val116.i = load i32, ptr %i.gk, align 8, !tbaa !53 ; 3 uses
  %.val117.i = load i32, ptr %i.go, align 4, !tbaa !54
  %i.afu = shl nsw i32 %.val117.i, 1
  %i.afv = mul i32 %i.aft, 3                      ; 3 uses
  %i.afw = mul nsw i32 %i.afv, %.val116.i
  %i.afx = add i32 %i.afu, %i.aer                 ; 3 uses
  %i.afy = add i32 %i.afx, %i.afw                 ; 3 uses
  %i.afz = add nsw i32 %i.afv, 1
  %i.aga = mul nsw i32 %i.afz, %.val116.i
  %i.agb = add i32 %i.afx, %i.aga                 ; 3 uses
  %i.agc = add nsw i32 %i.afv, 2
  %i.agd = mul nsw i32 %i.agc, %.val116.i
  %i.age = add i32 %i.afx, %i.agd                 ; 2 uses
  %.not100147.i = icmp slt i32 %i.aft, 1
  %.neg125.i = mul i32 %.187151.i, -4             ; 2 uses
  br i1 %.not100147.i, label %.split150.i, label %.preheader133.preheader.i

.preheader133.preheader.i:                        ; preds = %bb.ge
  %i.agf = add i32 %i.afs, %indvars.iv.i231
  br label %.preheader133.i

.preheader133.i:                                  ; preds = %._crit_edge.i236, %.preheader133.preheader.i
  %i.agg = phi i1 [ true, %.preheader133.preheader.i ], [ false, %._crit_edge.i236 ]
  %indvars.iv161.i.sroa.phi.sroa.speculated = phi i32 [ %i.afy, %.preheader133.preheader.i ], [ %i.agb, %._crit_edge.i236 ] ; 3 uses
  %indvars.iv161.i = phi i32 [ 0, %.preheader133.preheader.i ], [ 2, %._crit_edge.i236 ] ; 2 uses
  %i.agh = sub nsw i32 0, %indvars.iv161.i.sroa.phi.sroa.speculated ; 2 uses
  %.neg127.i = sub i32 %.neg125.i, %indvars.iv161.i
  %.neg.i232 = xor i32 %indvars.iv161.i, -1
  %.neg127.1.i = add i32 %.neg125.i, %.neg.i232
  br label %.preheader132.i

.preheader132.i:                                  ; preds = %bb.go, %.preheader133.i
  %.084148.i = phi i32 [ 1, %.preheader133.i ], [ %i.aib, %bb.go ] ; 4 uses
  %i.agi = mul i32 %.084148.i, 3
end_hunk_1
begin_hunk_2_@Exa9_ManAddOneHot:bb.a
bb.ao:                                            ; preds = %._crit_edge.i102.i
  %i.hp = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i104.i = icmp eq i32 %i.hp, 0
  br i1 %.not12.i104.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hq = load i32, ptr %i.fs, align 4, !tbaa !78
  %i.hr = add nsw i32 %i.hq, 1
  store i32 %i.hr, ptr %i.fs, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit106.i

bb.aq:                                            ; preds = %bb.ao
  %i.hs = load i32, ptr %i.ft, align 8, !tbaa !79
  %i.ht = add nsw i32 %i.hs, 1
  store i32 %i.ht, ptr %i.ft, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit106.i

bb.ar:                                            ; preds = %._crit_edge.i102.i
  %i.hu = load i32, ptr %i.fu, align 8, !tbaa !80
  %i.hv = add nsw i32 %i.hu, 1
  store i32 %i.hv, ptr %i.fu, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit106.i

Exa9_KissatAddClause.exit106.i:                   ; preds = %bb.ar, %bb.aq, %bb.ap
  %i.hw = load ptr, ptr %i.eq, align 8, !tbaa !63
  %i.hx = tail call i32 @kissat_is_inconsistent(ptr noundef %i.hw) #19
  %.not13.i105.not.i = icmp eq i32 %i.hx, 0
  br i1 %.not13.i105.not.i, label %bb.as, label %Exa9_ManAddOneHotSeq.exit

bb.as:                                            ; preds = %Exa9_KissatAddClause.exit106.i
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %i.hy = lshr i32 %.0629.i, 1
  %exitcond33.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count32.i
  br i1 %exitcond33.not.i, label %.critedge.i, label %._crit_edge.i102.i, !llvm.loop !130

.critedge.i:                                      ; preds = %bb.as
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %i.hz = icmp samesign ult i64 %indvars.iv.next35.i, %i.fz
  br i1 %i.hz, label %.preheader.i39, label %._crit_edge.i36, !llvm.loop !131

._crit_edge.i36:                                  ; preds = %.critedge.i, %bb.ai
  %i.ia = add nuw nsw i32 %.06412.i, 1            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 6
  %indvars.iv.next25.i = add nuw nsw i64 %indvars.iv24.i, 6
  %exitcond37.not.i = icmp eq i32 %i.ia, %i.fo
  br i1 %exitcond37.not.i, label %Exa9_ManAddOneHotSeq.exit, label %bb.ai, !llvm.loop !132

.lr.ph.i.i64:                                     ; preds = %bb.c
  %i.ib = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %.val106.i = load ptr, ptr %i.ib, align 8, !tbaa !74 ; 5 uses
  %i.ic = getelementptr i8, ptr %2, i64 8
  %.val105.i = load ptr, ptr %i.ic, align 8, !tbaa !74
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 18 uses
  %wide.trip.count.i.i65 = zext nneg i32 %.val to i64
  br label %bb.at

bb.at:                                            ; preds = %bb.at, %.lr.ph.i.i64
  %indvars.iv.i.i66 = phi i64 [ 0, %.lr.ph.i.i64 ], [ %indvars.iv.next.i.i68, %bb.at ] ; 2 uses
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv.i.i66
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !81 ; 2 uses
  %i.ih = ashr i32 %i.ig, 1                       ; 2 uses
  %i.ii = and i32 %i.ig, 1
  %.not.i.i.i67 = icmp eq i32 %i.ii, 0
  %i.ij = sub nsw i32 0, %i.ih
  %i.ik = select i1 %.not.i.i.i67, i32 %i.ih, i32 %i.ij
  tail call void @kissat_add(ptr noundef %i.ie, i32 noundef %i.ik) #19
  %indvars.iv.next.i.i68 = add nuw nsw i64 %indvars.iv.i.i66, 1 ; 2 uses
  %exitcond.not.i.i69 = icmp eq i64 %indvars.iv.next.i.i68, %wide.trip.count.i.i65
  br i1 %exitcond.not.i.i69, label %._crit_edge.i.i48, label %bb.at, !llvm.loop !88

._crit_edge.i.i48:                                ; preds = %bb.at
  %i.il = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.il, i32 noundef 0) #19
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.in = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i.i49 = icmp eq i32 %i.in, 0
  br i1 %.not.i.i49, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %._crit_edge.i.i48
  %i.io = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i.i50 = icmp eq i32 %i.io, 0
  br i1 %.not12.i.i50, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !78
  %i.ir = add nsw i32 %i.iq, 1
  store i32 %i.ir, ptr %i.ip, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit.i51

bb.aw:                                            ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !79
  %i.iu = add nsw i32 %i.it, 1
  store i32 %i.iu, ptr %i.is, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit.i51

bb.ax:                                            ; preds = %._crit_edge.i.i48
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !80
  %i.ix = add nsw i32 %i.iw, 1
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit.i51

Exa9_KissatAddClause.exit.i51:                    ; preds = %bb.ax, %bb.aw, %bb.av
  %i.iy = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.iz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.iy) #19
  %.not13.i.not.i52 = icmp eq i32 %i.iz, 0
  br i1 %.not13.i.not.i52, label %bb.ay, label %Exa9_ManAddOneHotSeq.exit

bb.ay:                                            ; preds = %Exa9_KissatAddClause.exit.i51
  %i.ja = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #21 ; 12 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4 ; 5 uses
  store i32 0, ptr %i.jb, align 4, !tbaa !75
  store i32 16, ptr %i.ja, align 8, !tbaa !72
  %i.jc = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.ja, i64 8 ; 5 uses
  store ptr %i.jc, ptr %i.jd, align 8, !tbaa !74
  %i.je = add nuw nsw i32 %.val, 3
  %i.jf = lshr i32 %i.je, 2                       ; 3 uses
  %i.jg = getelementptr i8, ptr %2, i64 4
  %.val.i53 = load i32, ptr %i.jg, align 4, !tbaa !75
  %i.jh = icmp sgt i32 %i.jf, %.val.i53
  br i1 %i.jh, label %bb.az, label %.lr.ph177.i

.lr.ph177.i:                                      ; preds = %bb.ay
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 8 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count.i54 = zext nneg i32 %i.jf to i64 ; 4 uses
  br label %bb.bb

bb.az:                                            ; preds = %bb.ay
  %.not.i113.i = icmp eq ptr %i.jc, null
  br i1 %.not.i113.i, label %Vec_IntFree.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @free(ptr noundef nonnull %i.jc) #19
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.ba, %bb.az
  tail call void @free(ptr noundef nonnull %i.ja) #19
  %.val107.i = load i32, ptr %i.d, align 4, !tbaa !75
  %.val108.i = load ptr, ptr %i.ib, align 8, !tbaa !74
  %i.jl = tail call fastcc i32 @Exa9_ManAddOneHotQuad(ptr noundef nonnull %0, i32 %.val107.i, ptr %.val108.i)
  br label %Exa9_ManAddOneHotSeq.exit

bb.bb:                                            ; preds = %._crit_edge175.i, %.lr.ph177.i
  %indvars.iv102 = phi i32 [ %indvars.iv.next103, %._crit_edge175.i ], [ -1, %.lr.ph177.i ] ; 2 uses
  %indvars.iv227.i = phi i64 [ %indvars.iv.next228.i, %._crit_edge175.i ], [ 0, %.lr.ph177.i ] ; 8 uses
  %indvars.iv221.i = phi i32 [ %indvars.iv.next222.i, %._crit_edge175.i ], [ 4, %.lr.ph177.i ] ; 2 uses
  %indvars.iv214.i = phi i64 [ %indvars.iv.next215.i, %._crit_edge175.i ], [ 1, %.lr.ph177.i ] ; 2 uses
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %._crit_edge175.i ], [ 0, %.lr.ph177.i ] ; 4 uses
  %storemerge188.i = phi ptr [ %storemerge189.i, %._crit_edge175.i ], [ %i.jc, %.lr.ph177.i ] ; 6 uses
  %spec.select.sink.i183.i = phi i32 [ %spec.select.sink.i182.i, %._crit_edge175.i ], [ 16, %.lr.ph177.i ] ; 4 uses
  %indvars108 = trunc i64 %indvars.iv214.i to i32
  %smin105 = tail call i32 @llvm.smin.i32(i32 %.val, i32 %indvars.iv221.i) ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %smin105, i32 %indvars108)
  %i.jm = add i32 %smax, %indvars.iv102
  %i.jn = zext i32 %i.jm to i64
  %i.jo = add nuw nsw i64 %i.jn, 2
  %i.jp = shl nuw nsw i64 %indvars.iv227.i, 4
  %scevgep203.i = getelementptr i8, ptr %.val106.i, i64 %i.jp
  %indvar.i.tr = trunc i64 %indvars.iv227.i to i32 ; 2 uses
  %i.jq = shl i32 %indvar.i.tr, 2                 ; 4 uses
  %i.jr = add i32 %i.jq, 4
  %smin.i55 = tail call i32 @llvm.smin.i32(i32 %.val, i32 %i.jr) ; 3 uses
  %i.js = or disjoint i32 %i.jq, 1
  %smax.i = tail call i32 @llvm.smax.i32(i32 %smin.i55, i32 %i.js)
  %i.jt = xor i32 %i.jq, -1
  %i.ju = add i32 %smax.i, %i.jt
  %i.jv = zext i32 %i.ju to i64
  %i.jw = shl nuw nsw i64 %i.jv, 2
  %i.jx = add nuw nsw i64 %i.jw, 4
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %.val105.i, i64 %indvars.iv227.i
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !81 ; 2 uses
  %i.ka = shl nsw i32 %i.jz, 1                    ; 2 uses
  %i.kb = icmp eq i32 %spec.select.sink.i183.i, %indvar.i.tr
  br i1 %i.kb, label %bb.bc, label %Vec_IntPush.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.kc = icmp samesign ult i64 %indvars.iv227.i, 16
  br i1 %i.kc, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not9.i.i.i = icmp eq ptr %storemerge188.i, null
  br i1 %.not9.i.i.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kd = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %storemerge188.i, i64 noundef 64) #22
  br label %Vec_IntPush.exit.i

bb.bf:                                            ; preds = %bb.bd
  %i.ke = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntPush.exit.i

bb.bg:                                            ; preds = %bb.bc
  %i.kf = icmp samesign ult i64 %indvars.iv227.i, 1073741823
  %i.kg = shl i32 %spec.select.sink.i183.i, 1
  %spec.select.i.i = select i1 %i.kf, i32 %i.kg, i32 2147483647 ; 4 uses
  %3 = sext i32 %spec.select.i.i to i64
  %.not.i9.i.i = icmp samesign ult i64 %indvars.iv227.i, %3
  br i1 %.not.i9.i.i, label %bb.bh, label %Vec_IntPush.exit.i

bb.bh:                                            ; preds = %bb.bg
  %.not9.i10.i.i = icmp eq ptr %storemerge188.i, null
  %i.kh = zext nneg i32 %spec.select.i.i to i64
  %i.ki = shl nuw nsw i64 %i.kh, 2                ; 2 uses
  br i1 %.not9.i10.i.i, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kj = tail call ptr @realloc(ptr noundef nonnull %storemerge188.i, i64 noundef %i.ki) #22
  br label %Vec_IntPush.exit.i

bb.bj:                                            ; preds = %bb.bh
  %i.kk = tail call noalias ptr @malloc(i64 noundef %i.ki) #21
  br label %Vec_IntPush.exit.i

Vec_IntPush.exit.i:                               ; preds = %bb.bj, %bb.bi, %bb.bg, %bb.bf, %bb.be, %bb.bb
  %storemerge189.i = phi ptr [ %storemerge188.i, %bb.bb ], [ %storemerge188.i, %bb.bg ], [ %i.ke, %bb.bf ], [ %i.kd, %bb.be ], [ %i.kj, %bb.bi ], [ %i.kk, %bb.bj ] ; 14 uses
  %spec.select.sink.i182.i = phi i32 [ %spec.select.sink.i183.i, %bb.bb ], [ %spec.select.sink.i183.i, %bb.bg ], [ 16, %bb.bf ], [ 16, %bb.be ], [ %spec.select.i.i, %bb.bi ], [ %spec.select.i.i, %bb.bj ] ; 5 uses
  %indvars.iv.next228.i = add nuw nsw i64 %indvars.iv227.i, 1 ; 5 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %storemerge189.i, i64 %indvars.iv227.i
  store i32 %i.ka, ptr %i.kl, align 4, !tbaa !81
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.km = or disjoint i32 %i.ka, 1
  store i32 %i.km, ptr %i.a, align 16, !tbaa !81
  %i.kn = icmp sgt i32 %.val, %i.jq               ; 2 uses
  br i1 %i.kn, label %.lr.ph.preheader.i, label %._crit_edge.i56

.lr.ph.preheader.i:                               ; preds = %Vec_IntPush.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 4 dereferenceable(1) %scevgep203.i, i64 %i.jx, i1 false), !tbaa !81
  br label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %.lr.ph.preheader.i, %Vec_IntPush.exit.i
  %.0.lcssa.i = phi i64 [ 1, %Vec_IntPush.exit.i ], [ %i.jo, %.lr.ph.preheader.i ]
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bk, %._crit_edge.i56
  %indvars.iv.i120.i = phi i64 [ 0, %._crit_edge.i56 ], [ %indvars.iv.next.i122.i, %bb.bk ] ; 2 uses
  %i.ko = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i120.i
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !81 ; 2 uses
  %i.kr = ashr i32 %i.kq, 1                       ; 2 uses
  %i.ks = and i32 %i.kq, 1
  %.not.i.i121.i = icmp eq i32 %i.ks, 0
  %i.kt = sub nsw i32 0, %i.kr
  %i.ku = select i1 %.not.i.i121.i, i32 %i.kr, i32 %i.kt
  tail call void @kissat_add(ptr noundef %i.ko, i32 noundef %i.ku) #19
  %indvars.iv.next.i122.i = add nuw nsw i64 %indvars.iv.i120.i, 1 ; 2 uses
  %exitcond.not.i123.i = icmp eq i64 %indvars.iv.next.i122.i, %.0.lcssa.i
  br i1 %exitcond.not.i123.i, label %._crit_edge.i114.i, label %bb.bk, !llvm.loop !88

._crit_edge.i114.i:                               ; preds = %bb.bk
  %i.kv = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.kv, i32 noundef 0) #19
  %i.kw = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i115.i = icmp eq i32 %i.kw, 0
  br i1 %.not.i115.i, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.i114.i
  %i.kx = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i116.i = icmp eq i32 %i.kx, 0
  br i1 %.not12.i116.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ky = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.kz = add nsw i32 %i.ky, 1
  store i32 %i.kz, ptr %i.ji, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit124.i

bb.bn:                                            ; preds = %bb.bl
  %i.la = load i32, ptr %i.jj, align 8, !tbaa !79
  %i.lb = add nsw i32 %i.la, 1
  store i32 %i.lb, ptr %i.jj, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit124.i

bb.bo:                                            ; preds = %._crit_edge.i114.i
  %i.lc = load i32, ptr %i.jk, align 8, !tbaa !80
  %i.ld = add nsw i32 %i.lc, 1
  store i32 %i.ld, ptr %i.jk, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit124.i

Exa9_KissatAddClause.exit124.i:                   ; preds = %bb.bo, %bb.bn, %bb.bm
  %i.le = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.lf = tail call i32 @kissat_is_inconsistent(ptr noundef %i.le) #19
  %.not13.i117.not.i = icmp eq i32 %i.lf, 0
  br i1 %.not13.i117.not.i, label %.critedge.i57, label %bb.bp

bb.bp:                                            ; preds = %Exa9_KissatAddClause.exit124.i
  %i.lg = trunc nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.lg, ptr %i.jb, align 4, !tbaa !75
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  tail call fastcc void @Vec_IntFree(ptr noundef nonnull %i.ja)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge.i57:                                    ; preds = %Exa9_KissatAddClause.exit124.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br i1 %i.kn, label %.lr.ph169.i, label %._crit_edge175.i

.lr.ph169.i:                                      ; preds = %.critedge.i57, %.critedge99.i
  %indvars.iv211.i = phi i64 [ %indvars.iv.next212.i, %.critedge99.i ], [ %indvars.iv204.i, %.critedge.i57 ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv211.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !81 ; 2 uses
  %i.lj = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.lk = ashr i32 %i.li, 1                       ; 2 uses
  %i.ll = and i32 %i.li, 1
  %.not.i.i127.not.i = icmp eq i32 %i.ll, 0
  %i.lm = sub nsw i32 0, %i.lk
  %i.ln = select i1 %.not.i.i127.not.i, i32 %i.lm, i32 %i.lk
  tail call void @kissat_add(ptr noundef %i.lj, i32 noundef %i.ln) #19
  %i.lo = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.lo, i32 noundef %i.jz) #19
  %i.lp = load ptr, ptr %i.id, align 8, !tbaa !63
  tail call void @kissat_add(ptr noundef %i.lp, i32 noundef 0) #19
  %i.lq = load i32, ptr %i.im, align 4, !tbaa !71
  %.not.i131.i = icmp eq i32 %i.lq, 0
  br i1 %.not.i131.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph169.i
  %i.lr = load i32, ptr %i.b, align 8, !tbaa !77
  %.not12.i132.i = icmp eq i32 %i.lr, 0
  br i1 %.not12.i132.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ls = load i32, ptr %i.ji, align 4, !tbaa !78
  %i.lt = add nsw i32 %i.ls, 1
  store i32 %i.lt, ptr %i.ji, align 4, !tbaa !78
  br label %Exa9_KissatAddClause.exit134.i

bb.bs:                                            ; preds = %bb.bq
  %i.lu = load i32, ptr %i.jj, align 8, !tbaa !79
  %i.lv = add nsw i32 %i.lu, 1
  store i32 %i.lv, ptr %i.jj, align 8, !tbaa !79
  br label %Exa9_KissatAddClause.exit134.i

bb.bt:                                            ; preds = %.lr.ph169.i
  %i.lw = load i32, ptr %i.jk, align 8, !tbaa !80
  %i.lx = add nsw i32 %i.lw, 1
  store i32 %i.lx, ptr %i.jk, align 8, !tbaa !80
  br label %Exa9_KissatAddClause.exit134.i

Exa9_KissatAddClause.exit134.i:                   ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ly = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.lz = tail call i32 @kissat_is_inconsistent(ptr noundef %i.ly) #19
  %.not13.i133.not.i = icmp eq i32 %i.lz, 0
  br i1 %.not13.i133.not.i, label %.critedge99.i, label %bb.bu

bb.bu:                                            ; preds = %Exa9_KissatAddClause.exit134.i
  %i.ma = trunc nsw i64 %indvars.iv.next228.i to i32
  store i32 %i.ma, ptr %i.jb, align 4, !tbaa !75
  store i32 %spec.select.sink.i182.i, ptr %i.ja, align 8
  store ptr %storemerge189.i, ptr %i.jd, align 8
  %.not.i135.i = icmp eq ptr %storemerge189.i, null
  br i1 %.not.i135.i, label %Vec_IntFree.exit136.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  tail call void @free(ptr noundef nonnull %storemerge189.i) #19
  br label %Vec_IntFree.exit136.i

Vec_IntFree.exit136.i:                            ; preds = %bb.bv, %bb.bu
  tail call void @free(ptr noundef nonnull %i.ja) #19
  br label %Exa9_ManAddOneHotSeq.exit

.critedge99.i:                                    ; preds = %Exa9_KissatAddClause.exit134.i
  %indvars.iv.next212.i = add nuw nsw i64 %indvars.iv211.i, 1 ; 2 uses
  %i.mb = trunc nuw i64 %indvars.iv.next212.i to i32
  %i.mc = icmp sgt i32 %smin.i55, %i.mb
  br i1 %i.mc, label %.lr.ph169.i, label %.lr.ph174.i.preheader, !llvm.loop !133

.lr.ph174.i.preheader:                            ; preds = %.critedge99.i
  %indvars.iv.next225.i82 = or disjoint i64 %indvars.iv204.i, 1 ; 2 uses
  %i.md = trunc nuw i64 %indvars.iv.next225.i82 to i32
  %i.me = icmp sgt i32 %smin.i55, %i.md
  br i1 %i.me, label %.lr.ph172.i, label %._crit_edge175.i

.loopexit.i60:                                    ; preds = %.critedge101.i
  %indvars.iv.next225.i = add nuw i64 %indvars.iv.next225.i85, 1 ; 2 uses
  %lftr.wideiv106 = trunc i64 %indvars.iv.next225.i to i32
  %exitcond107.not = icmp eq i32 %smin105, %lftr.wideiv106
  br i1 %exitcond107.not, label %._crit_edge175.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.lr.ph174.i.preheader, %.loopexit.i60
  %indvars.iv.next225.i85 = phi i64 [ %indvars.iv.next225.i, %.loopexit.i60 ], [ %indvars.iv.next225.i82, %.lr.ph174.i.preheader ] ; 3 uses
  %indvars.iv224.i83 = phi i64 [ %indvars.iv.next225.i85, %.loopexit.i60 ], [ %indvars.iv204.i, %.lr.ph174.i.preheader ]
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv224.i83
  br label %._crit_edge.i142.i

._crit_edge.i142.i:                               ; preds = %.critedge101.i, %.lr.ph172.i
  %indvars.iv218.i = phi i64 [ %indvars.iv.next225.i85, %.lr.ph172.i ], [ %indvars.iv.next219.i, %.critedge101.i ] ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !81 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %.val106.i, i64 %indvars.iv218.i
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !81 ; 2 uses
  %i.mj = load ptr, ptr %i.id, align 8, !tbaa !63
  %i.mk = ashr i32 %i.mg, 1                       ; 2 uses
  %i.ml = and i32 %i.mg, 1
  %.not.i.i139.not.i = icmp eq i32 %i.ml, 0
  %i.mm = sub nsw i32 0, %i.mk
  %i.mn = select i1 %.not.i.i139.not.i, i32 %i.mm, i32 %i.mk
end_hunk_2
