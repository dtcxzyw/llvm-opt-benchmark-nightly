Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cbaCom?download=true
inline.NumInlined: 318
inline.NumDeleted: 112
begin_hunk_0_@Cba_CommandRead:bb.a
Vec_IntPush.exit58.i.i.i.i.i:                     ; preds = %Vec_IntGrow.exit11.sink.split.i54.i.i.i.i.i, %bb.fl, %.Vec_IntPush.exit58.i.i_crit_edge.i.i.i
  %i.sa = phi ptr [ %.pre145.i.i.i, %.Vec_IntPush.exit58.i.i_crit_edge.i.i.i ], [ %.pre146.i.i.i, %bb.fl ], [ %storemerge110.i.i.i, %Vec_IntGrow.exit11.sink.split.i54.i.i.i.i.i ]
  %i.sb = phi i32 [ %.val29.i.i.i.i.i, %.Vec_IntPush.exit58.i.i_crit_edge.i.i.i ], [ %.val29.i.i.i.i.i, %bb.fl ], [ %.pre86.i.i.i.i.i, %Vec_IntGrow.exit11.sink.split.i54.i.i.i.i.i ] ; 2 uses
  %i.sc = add nsw i32 %i.sb, 1
  store i32 %i.sc, ptr %i.gm, align 4, !tbaa !36
  %i.sd = sext i32 %i.sb to i64
  %i.se = getelementptr inbounds [4 x i8], ptr %i.sa, i64 %i.sd
  store i32 %.val28.i.i.i.i.i, ptr %i.se, align 4, !tbaa !10
  br label %bb.fp

bb.fp:                                            ; preds = %Vec_IntPush.exit58.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %i.sf = icmp sgt i32 %i.or, 0
  br i1 %i.sf, label %.lr.ph78.i.i.i.i.i, label %._crit_edge79.i.i.i.i.i

.lr.ph78.i.i.i.i.i:                               ; preds = %bb.fp, %Vec_IntPush.exit66.i.i.i.i.i
  %.176.i.i.i.i.i = phi i32 [ %i.sz, %Vec_IntPush.exit66.i.i.i.i.i ], [ 0, %bb.fp ]
  %i.sg = load i32, ptr %i.lo, align 4, !tbaa !36 ; 7 uses
  %i.sh = load i32, ptr %i.ld, align 8, !tbaa !46
  %i.si = icmp eq i32 %i.sg, %i.sh
  br i1 %i.si, label %bb.fq, label %.Vec_IntPush.exit66_crit_edge.i.i.i.i.i

.Vec_IntPush.exit66_crit_edge.i.i.i.i.i:          ; preds = %.lr.ph78.i.i.i.i.i
  %.pre87.i.i.i.i.i = load ptr, ptr %i.mh, align 8, !tbaa !37
  br label %Vec_IntPush.exit66.i.i.i.i.i

bb.fq:                                            ; preds = %.lr.ph78.i.i.i.i.i
  %i.sj = icmp slt i32 %i.sg, 16
  br i1 %i.sj, label %bb.fr, label %bb.fu

bb.fr:                                            ; preds = %bb.fq
  %i.sk = load ptr, ptr %i.mh, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i64.i.i.i.i.i = icmp eq ptr %i.sk, null
  br i1 %.not9.i.i64.i.i.i.i.i, label %bb.ft, label %bb.fs

bb.fs:                                            ; preds = %bb.fr
  %i.sl = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.sk, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i

bb.ft:                                            ; preds = %bb.fr
  %i.sm = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i

bb.fu:                                            ; preds = %bb.fq
  %i.sn = icmp samesign ult i32 %i.sg, 1073741823
  %i.so = shl nuw nsw i32 %i.sg, 1
  %spec.select.i59.i.i.i.i.i = select i1 %i.sn, i32 %i.so, i32 2147483647 ; 4 uses
  %.not.i9.i60.i.i.i.i.i = icmp samesign ult i32 %i.sg, %spec.select.i59.i.i.i.i.i
  %.pre88.i.i.i.i.i = load ptr, ptr %i.mh, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i60.i.i.i.i.i, label %bb.fv, label %Vec_IntPush.exit66.i.i.i.i.i

bb.fv:                                            ; preds = %bb.fu
  %.not9.i10.i61.i.i.i.i.i = icmp eq ptr %.pre88.i.i.i.i.i, null
  %i.sp = zext nneg i32 %spec.select.i59.i.i.i.i.i to i64
  %i.sq = shl nuw nsw i64 %i.sp, 2                ; 2 uses
  br i1 %.not9.i10.i61.i.i.i.i.i, label %bb.fx, label %bb.fw

bb.fw:                                            ; preds = %bb.fv
  %i.sr = call ptr @realloc(ptr noundef nonnull %.pre88.i.i.i.i.i, i64 noundef %i.sq) #23
  br label %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i

bb.fx:                                            ; preds = %bb.fv
  %i.ss = call noalias ptr @malloc(i64 noundef %i.sq) #22
  br label %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i

Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i:      ; preds = %bb.fx, %bb.fw, %bb.ft, %bb.fs
  %i.st = phi ptr [ %i.sm, %bb.ft ], [ %i.sl, %bb.fs ], [ %i.sr, %bb.fw ], [ %i.ss, %bb.fx ] ; 2 uses
  %spec.select.sink.i63.i.i.i.i.i = phi i32 [ 16, %bb.ft ], [ 16, %bb.fs ], [ %spec.select.i59.i.i.i.i.i, %bb.fw ], [ %spec.select.i59.i.i.i.i.i, %bb.fx ]
  store ptr %i.st, ptr %i.mh, align 8, !tbaa !37
  store i32 %spec.select.sink.i63.i.i.i.i.i, ptr %i.ld, align 8, !tbaa !46
  %.pre89.i.i.i.i.i = load i32, ptr %i.lo, align 4, !tbaa !36
  br label %Vec_IntPush.exit66.i.i.i.i.i

Vec_IntPush.exit66.i.i.i.i.i:                     ; preds = %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i, %bb.fu, %.Vec_IntPush.exit66_crit_edge.i.i.i.i.i
  %i.su = phi i32 [ %i.sg, %.Vec_IntPush.exit66_crit_edge.i.i.i.i.i ], [ %i.sg, %bb.fu ], [ %.pre89.i.i.i.i.i, %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i ] ; 2 uses
  %i.sv = phi ptr [ %.pre87.i.i.i.i.i, %.Vec_IntPush.exit66_crit_edge.i.i.i.i.i ], [ %.pre88.i.i.i.i.i, %bb.fu ], [ %i.st, %Vec_IntGrow.exit11.sink.split.i62.i.i.i.i.i ]
  %i.sw = add nsw i32 %i.su, 1
  store i32 %i.sw, ptr %i.lo, align 4, !tbaa !36
  %i.sx = sext i32 %i.su to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sv, i64 %i.sx
  store i32 %.val.i.i.i.i.i, ptr %i.sy, align 4, !tbaa !10
  %i.sz = add nuw nsw i32 %.176.i.i.i.i.i, 1      ; 2 uses
  %exitcond80.not.i.i.i.i.i = icmp eq i32 %i.sz, %i.or
  br i1 %exitcond80.not.i.i.i.i.i, label %._crit_edge79.i.i.i.i.i, label %.lr.ph78.i.i.i.i.i, !llvm.loop !51

._crit_edge79.i.i.i.i.i:                          ; preds = %Vec_IntPush.exit66.i.i.i.i.i, %bb.fp
  %.val27.i.i.i.i.i = load i32, ptr %i.ii, align 4, !tbaa !36 ; 8 uses
  %.not25.i.i.i.i.i = icmp eq i32 %.val27.i.i.i.i.i, 0
  br i1 %.not25.i.i.i.i.i, label %Cba_ObjAlloc.exit.i.i.i.i, label %bb.fy

bb.fy:                                            ; preds = %._crit_edge79.i.i.i.i.i
  %.val26.i.i.i.i.i = load i32, ptr %i.lo, align 4, !tbaa !36
  %i.ta = load i32, ptr %i.hy, align 8, !tbaa !46
  %i.tb = icmp eq i32 %.val27.i.i.i.i.i, %i.ta
  br i1 %i.tb, label %bb.fz, label %.Vec_IntPush.exit74.i.i_crit_edge.i.i.i

.Vec_IntPush.exit74.i.i_crit_edge.i.i.i:          ; preds = %bb.fy
  %.pre147.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !37
  br label %Vec_IntPush.exit74.i.i.i.i.i

bb.fz:                                            ; preds = %bb.fy
  %i.tc = icmp slt i32 %.val27.i.i.i.i.i, 16
  br i1 %i.tc, label %bb.ga, label %bb.gd

bb.ga:                                            ; preds = %bb.fz
  %i.td = load ptr, ptr %i.jb, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i72.i.i.i.i.i = icmp eq ptr %i.td, null
  br i1 %.not9.i.i72.i.i.i.i.i, label %bb.gc, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.te = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.td, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i

bb.gc:                                            ; preds = %bb.ga
  %i.tf = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i

bb.gd:                                            ; preds = %bb.fz
  %i.tg = icmp samesign ult i32 %.val27.i.i.i.i.i, 1073741823
  %i.th = shl nuw nsw i32 %.val27.i.i.i.i.i, 1
  %spec.select.i67.i.i.i.i.i = select i1 %i.tg, i32 %i.th, i32 2147483647 ; 4 uses
  %.not.i9.i68.i.i.i.i.i = icmp samesign ult i32 %.val27.i.i.i.i.i, %spec.select.i67.i.i.i.i.i
  %.pre148.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i68.i.i.i.i.i, label %bb.ge, label %Vec_IntPush.exit74.i.i.i.i.i

bb.ge:                                            ; preds = %bb.gd
  %.not9.i10.i69.i.i.i.i.i = icmp eq ptr %.pre148.i.i.i, null
  %i.ti = zext nneg i32 %spec.select.i67.i.i.i.i.i to i64
  %i.tj = shl nuw nsw i64 %i.ti, 2                ; 2 uses
  br i1 %.not9.i10.i69.i.i.i.i.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  %i.tk = call ptr @realloc(ptr noundef nonnull %.pre148.i.i.i, i64 noundef %i.tj) #23
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i

bb.gg:                                            ; preds = %bb.ge
  %i.tl = call noalias ptr @malloc(i64 noundef %i.tj) #22
  br label %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i

Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i:      ; preds = %bb.gg, %bb.gf, %bb.gc, %bb.gb
  %storemerge111.i.i.i = phi ptr [ %i.tf, %bb.gc ], [ %i.te, %bb.gb ], [ %i.tk, %bb.gf ], [ %i.tl, %bb.gg ] ; 2 uses
  %spec.select.sink.i71.i.i.i.i.i = phi i32 [ 16, %bb.gc ], [ 16, %bb.gb ], [ %spec.select.i67.i.i.i.i.i, %bb.gf ], [ %spec.select.i67.i.i.i.i.i, %bb.gg ]
  store ptr %storemerge111.i.i.i, ptr %i.jb, align 8, !tbaa !37
  store i32 %spec.select.sink.i71.i.i.i.i.i, ptr %i.hy, align 8, !tbaa !46
  %.pre90.i.i.i.i.i = load i32, ptr %i.ii, align 4, !tbaa !36
  br label %Vec_IntPush.exit74.i.i.i.i.i

Vec_IntPush.exit74.i.i.i.i.i:                     ; preds = %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i, %bb.gd, %.Vec_IntPush.exit74.i.i_crit_edge.i.i.i
  %i.tm = phi ptr [ %.pre147.i.i.i, %.Vec_IntPush.exit74.i.i_crit_edge.i.i.i ], [ %.pre148.i.i.i, %bb.gd ], [ %storemerge111.i.i.i, %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i ]
  %i.tn = phi i32 [ %.val27.i.i.i.i.i, %.Vec_IntPush.exit74.i.i_crit_edge.i.i.i ], [ %.val27.i.i.i.i.i, %bb.gd ], [ %.pre90.i.i.i.i.i, %Vec_IntGrow.exit11.sink.split.i70.i.i.i.i.i ] ; 2 uses
  %i.to = add nsw i32 %i.tn, 1
  store i32 %i.to, ptr %i.ii, align 4, !tbaa !36
  %i.tp = sext i32 %i.tn to i64
  %i.tq = getelementptr inbounds [4 x i8], ptr %i.tm, i64 %i.tp
  store i32 %.val26.i.i.i.i.i, ptr %i.tq, align 4, !tbaa !10
  br label %Cba_ObjAlloc.exit.i.i.i.i

Cba_ObjAlloc.exit.i.i.i.i:                        ; preds = %Vec_IntPush.exit74.i.i.i.i.i, %._crit_edge79.i.i.i.i.i
  %i.tr = add nsw i32 %i.oe, 1                    ; 6 uses
  %i.ts = load i32, ptr %i.na, align 4, !tbaa !36 ; 4 uses
  %.not.i.not.i.i.i.i.i.i = icmp slt i32 %i.oe, %i.ts
  br i1 %.not.i.not.i.i.i.i.i.i, label %Cba_ObjDup.exit.i.i.i, label %bb.gh

bb.gh:                                            ; preds = %Cba_ObjAlloc.exit.i.i.i.i
  %i.tt = load i32, ptr %i.mm, align 8, !tbaa !46 ; 4 uses
  %i.tu = shl nsw i32 %i.tt, 1                    ; 2 uses
  %.not.i.i.i85.i.i.i = icmp slt i32 %i.oe, %i.tu
  %.not.i.i.not.i.i.i.i.i.i = icmp sgt i32 %i.tt, %i.oe ; 2 uses
  br i1 %.not.i.i.i85.i.i.i, label %bb.gm, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.tv = load ptr, ptr %i.nz, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i.i.i.i.i.i.i = icmp eq ptr %i.tv, null
  %i.tw = sext i32 %i.tr to i64
  %i.tx = shl nsw i64 %i.tw, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i.i.i.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ty = call ptr @realloc(ptr noundef nonnull %i.tv, i64 noundef %i.tx) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

bb.gl:                                            ; preds = %bb.gj
  %i.tz = call noalias ptr @malloc(i64 noundef %i.tx) #22
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

bb.gm:                                            ; preds = %bb.gh
  br i1 %.not.i.i.not.i.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i.i.i.i, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %i.ua = icmp slt i32 %i.tt, 1073741823
  %spec.select.i.i.i.i.i.i.i = select i1 %i.ua, i32 %i.tu, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i.i.i.i.i = icmp slt i32 %i.tt, %spec.select.i.i.i.i.i.i.i
  br i1 %.not.i22.i.i.i.i.i.i.i, label %bb.go, label %Vec_IntGrow.exit.i.i.i.i.i.i.i

bb.go:                                            ; preds = %bb.gn
  %i.ub = load ptr, ptr %i.nz, align 8, !tbaa !37 ; 2 uses
  %.not9.i23.i.i.i.i.i.i.i = icmp eq ptr %i.ub, null
  %i.uc = sext i32 %spec.select.i.i.i.i.i.i.i to i64
  %i.ud = shl nsw i64 %i.uc, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i.i.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.ue = call ptr @realloc(ptr noundef nonnull %i.ub, i64 noundef %i.ud) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

bb.gq:                                            ; preds = %bb.go
  %i.uf = call noalias ptr @malloc(i64 noundef %i.ud) #22
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i:        ; preds = %bb.gq, %bb.gp, %bb.gl, %bb.gk
  %storemerge230.i.i.i = phi ptr [ %i.tz, %bb.gl ], [ %i.ty, %bb.gk ], [ %i.ue, %bb.gp ], [ %i.uf, %bb.gq ]
  %spec.select.sink.i.i.i.i.i.i.i = phi i32 [ %i.tr, %bb.gl ], [ %i.tr, %bb.gk ], [ %spec.select.i.i.i.i.i.i.i, %bb.gp ], [ %spec.select.i.i.i.i.i.i.i, %bb.gq ]
  store ptr %storemerge230.i.i.i, ptr %i.nz, align 8, !tbaa !37
  store i32 %spec.select.sink.i.i.i.i.i.i.i, ptr %i.mm, align 8, !tbaa !46
  %.pre.i.i.i.i.i.i = load i32, ptr %i.na, align 4, !tbaa !36
  br label %Vec_IntGrow.exit.i.i.i.i.i.i.i

Vec_IntGrow.exit.i.i.i.i.i.i.i:                   ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i, %bb.gn, %bb.gm, %bb.gi
  %i.ug = phi i32 [ %.pre.i.i.i.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i.i ], [ %i.ts, %bb.gn ], [ %i.ts, %bb.gm ], [ %i.ts, %bb.gi ] ; 2 uses
  %.not4.i.i.i.i.i.i = icmp sgt i32 %i.ug, %i.oe
  br i1 %.not4.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %Vec_IntGrow.exit.i.i.i.i.i.i.i
  %i.uh = load ptr, ptr %i.nz, align 8, !tbaa !37
  %i.ui = sext i32 %i.ug to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i.i.i.i = sext i32 %i.tr to i64
  %i.uj = shl nsw i64 %i.ui, 2
  %scevgep.i.i.i.i.i.i = getelementptr i8, ptr %i.uh, i64 %i.uj
  %i.uk = sub nsw i64 %wide.trip.count.i.i.i.i.i.i.i, %i.ui
  %i.ul = shl nsw i64 %i.uk, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i.i.i, i8 0, i64 %i.ul, i1 false), !tbaa !10
  br label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i.i.i.i.i
  store i32 %i.tr, ptr %i.na, align 4, !tbaa !36
  br label %Cba_ObjDup.exit.i.i.i

Cba_ObjDup.exit.i.i.i:                            ; preds = %._crit_edge.i.i.i.i.i.i.i, %Cba_ObjAlloc.exit.i.i.i.i
  %.val.i.i.i.i.i.i = load ptr, ptr %i.nz, align 8, !tbaa !37 ; 4 uses
  %i.um = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i.i.i, i64 %i.of
  store i32 %.val.i.i.i.i.i, ptr %i.um, align 4, !tbaa !10
  %.val66.i.i.i = load ptr, ptr %i.nu, align 8, !tbaa !37 ; 3 uses
  %i.un = getelementptr inbounds [4 x i8], ptr %.val66.i.i.i, i64 %i.of
  %i.uo = load i32, ptr %i.un, align 4, !tbaa !10 ; 2 uses
  %i.up = sext i32 %i.tr to i64
  %i.uq = getelementptr inbounds [4 x i8], ptr %.val66.i.i.i, i64 %i.up ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !10
  %i.us = icmp slt i32 %i.uo, %i.ur
  br i1 %i.us, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Cba_ObjDup.exit.i.i.i
  %.val68.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !37
  %i.ut = sext i32 %.val.i.i.i.i.i to i64
  %i.uu = getelementptr inbounds [4 x i8], ptr %.val68.i.i.i, i64 %i.ut
  %.val69.i.i.i = load ptr, ptr %i.oa, align 8, !tbaa !37
  %i.uv = sext i32 %i.uo to i64
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gr, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.uv, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.gr ] ; 2 uses
  %.055115.i.i.i = phi i32 [ 0, %.lr.ph.i.i.i ], [ %i.uz, %bb.gr ] ; 2 uses
  %i.uw = load i32, ptr %i.uu, align 4, !tbaa !10
  %i.ux = add nsw i32 %i.uw, %.055115.i.i.i
  %i.uy = getelementptr inbounds [4 x i8], ptr %.val69.i.i.i, i64 %indvars.iv.i.i.i
  store i32 %i.ux, ptr %i.uy, align 4, !tbaa !10
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.uz = add nuw nsw i32 %.055115.i.i.i, 1
  %i.va = load i32, ptr %i.uq, align 4, !tbaa !10
  %i.vb = sext i32 %i.va to i64
  %i.vc = icmp slt i64 %indvars.iv.next.i.i.i, %i.vb
  br i1 %i.vc, label %bb.gr, label %._crit_edge.i.i.i, !llvm.loop !52

._crit_edge.i.i.i:                                ; preds = %bb.gr, %Cba_ObjDup.exit.i.i.i
  %indvars.iv.next131.i.i.i = add nuw nsw i64 %indvars.iv130.i.i.i, 1 ; 2 uses
  %.val59.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !36 ; 2 uses
  %i.vd = sext i32 %.val59.i.i.i to i64
  %i.ve = icmp slt i64 %indvars.iv.next131.i.i.i, %i.vd
  br i1 %i.ve, label %bb.dw, label %.critedge.preheader.i.i.i, !llvm.loop !53

bb.gs:                                            ; preds = %.critedge4.i.i.i, %.lr.ph125.i.i.i
  %.val.i.i92.i9.i.i = phi ptr [ %.val.i.i.i.i.i.i, %.lr.ph125.i.i.i ], [ %.val.i.i92.i.i.i, %.critedge4.i.i.i ] ; 4 uses
  %i.vf = phi ptr [ %.val.i.i.i.i.i.i, %.lr.ph125.i.i.i ], [ %i.xh, %.critedge4.i.i.i ] ; 4 uses
  %i.vg = phi ptr [ %.val.i.i.i.i.i.i, %.lr.ph125.i.i.i ], [ %i.xi, %.critedge4.i.i.i ] ; 8 uses
  %indvars.iv136.i.i.i = phi i64 [ 0, %.lr.ph125.i.i.i ], [ %indvars.iv.next137.i.i.i, %.critedge4.i.i.i ] ; 2 uses
  %.val61.i.i.i = load ptr, ptr %i.nr, align 8, !tbaa !37
  %i.vh = getelementptr inbounds nuw [4 x i8], ptr %.val61.i.i.i, i64 %indvars.iv136.i.i.i
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !10 ; 6 uses
  %i.vj = add nsw i32 %i.vi, 1                    ; 6 uses
  %i.vk = load i32, ptr %i.na, align 4, !tbaa !36 ; 4 uses
  %.not.i.not.i.i.i.i.i = icmp slt i32 %i.vi, %i.vk
  br i1 %.not.i.not.i.i.i.i.i, label %Cba_ObjCopy.exit.i.i.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.vl = load i32, ptr %i.mm, align 8, !tbaa !46 ; 4 uses
  %i.vm = shl nsw i32 %i.vl, 1                    ; 2 uses
  %.not.i.i87.i.i.i = icmp slt i32 %i.vi, %i.vm
  %.not.i.i.not.i.i.i.i.i = icmp sgt i32 %i.vl, %i.vi ; 2 uses
  br i1 %.not.i.i87.i.i.i, label %bb.gy, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  br i1 %.not.i.i.not.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i91.i.i.i, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %.not9.i.i.i.i88.i.i.i = icmp eq ptr %i.vg, null
  %i.vn = sext i32 %i.vj to i64
  %i.vo = shl nsw i64 %i.vn, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i88.i.i.i, label %bb.gx, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  %i.vp = call ptr @realloc(ptr noundef nonnull %i.vg, i64 noundef %i.vo) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i

bb.gx:                                            ; preds = %bb.gv
  %i.vq = call noalias ptr @malloc(i64 noundef %i.vo) #22
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i

bb.gy:                                            ; preds = %bb.gt
  br i1 %.not.i.i.not.i.i.i.i.i, label %Vec_IntGrow.exit.i.i.i91.i.i.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.vr = icmp slt i32 %i.vl, 1073741823
  %spec.select.i.i.i93.i.i.i = select i1 %i.vr, i32 %i.vm, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i.i.i.i = icmp slt i32 %i.vl, %spec.select.i.i.i93.i.i.i
  br i1 %.not.i22.i.i.i.i.i.i, label %bb.ha, label %Vec_IntGrow.exit.i.i.i91.i.i.i

bb.ha:                                            ; preds = %bb.gz
  %.not9.i23.i.i.i.i.i.i = icmp eq ptr %i.vg, null
  %i.vs = sext i32 %spec.select.i.i.i93.i.i.i to i64
  %i.vt = shl nsw i64 %i.vs, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i.i, label %bb.hc, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.vu = call ptr @realloc(ptr noundef nonnull %i.vg, i64 noundef %i.vt) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i

bb.hc:                                            ; preds = %bb.ha
  %i.vv = call noalias ptr @malloc(i64 noundef %i.vt) #22
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i.i:          ; preds = %bb.hc, %bb.hb, %bb.gx, %bb.gw
  %storemerge231.i.i.i = phi ptr [ %i.vq, %bb.gx ], [ %i.vp, %bb.gw ], [ %i.vu, %bb.hb ], [ %i.vv, %bb.hc ] ; 4 uses
  %spec.select.sink.i.i.i89.i.i.i = phi i32 [ %i.vj, %bb.gx ], [ %i.vj, %bb.gw ], [ %spec.select.i.i.i93.i.i.i, %bb.hb ], [ %spec.select.i.i.i93.i.i.i, %bb.hc ]
  store ptr %storemerge231.i.i.i, ptr %i.nz, align 8, !tbaa !37
  store i32 %spec.select.sink.i.i.i89.i.i.i, ptr %i.mm, align 8, !tbaa !46
  %.pre.i.i90.i.i.i = load i32, ptr %i.na, align 4, !tbaa !36
  br label %Vec_IntGrow.exit.i.i.i91.i.i.i

Vec_IntGrow.exit.i.i.i91.i.i.i:                   ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i, %bb.gz, %bb.gy, %bb.gu
  %.val.i.i92.i7.i.i = phi ptr [ %storemerge231.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i ], [ %.val.i.i92.i9.i.i, %bb.gz ], [ %.val.i.i92.i9.i.i, %bb.gy ], [ %.val.i.i92.i9.i.i, %bb.gu ]
  %i.vw = phi ptr [ %storemerge231.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i ], [ %i.vf, %bb.gz ], [ %i.vf, %bb.gy ], [ %i.vf, %bb.gu ] ; 3 uses
  %i.vx = phi ptr [ %storemerge231.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i ], [ %i.vg, %bb.gz ], [ %i.vg, %bb.gy ], [ %i.vg, %bb.gu ]
  %i.vy = phi i32 [ %.pre.i.i90.i.i.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i.i ], [ %i.vk, %bb.gz ], [ %i.vk, %bb.gy ], [ %i.vk, %bb.gu ] ; 2 uses
  %.not3.i.i.i.i.i = icmp sgt i32 %i.vy, %i.vi
  br i1 %.not3.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %Vec_IntGrow.exit.i.i.i91.i.i.i
  %i.vz = sext i32 %i.vy to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i.i.i = sext i32 %i.vj to i64
  %i.wa = shl nsw i64 %i.vz, 2
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.vw, i64 %i.wa
  %i.wb = sub nsw i64 %wide.trip.count.i.i.i.i.i.i, %i.vz
  %i.wc = shl nsw i64 %i.wb, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i.i, i8 -1, i64 %i.wc, i1 false), !tbaa !10
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %Vec_IntGrow.exit.i.i.i91.i.i.i
  %i.wd = phi ptr [ %i.vw, %.lr.ph.i.i.i.i.i.i ], [ %i.vx, %Vec_IntGrow.exit.i.i.i91.i.i.i ]
  store i32 %i.vj, ptr %i.na, align 4, !tbaa !36
  br label %Cba_ObjCopy.exit.i.i.i

Cba_ObjCopy.exit.i.i.i:                           ; preds = %._crit_edge.i.i.i.i.i.i, %bb.gs
  %.val.i.i92.i.i.i = phi ptr [ %.val.i.i92.i7.i.i, %._crit_edge.i.i.i.i.i.i ], [ %.val.i.i92.i9.i.i, %bb.gs ] ; 4 uses
  %i.we = phi ptr [ %i.vw, %._crit_edge.i.i.i.i.i.i ], [ %i.vf, %bb.gs ]
  %i.wf = phi ptr [ %i.wd, %._crit_edge.i.i.i.i.i.i ], [ %i.vg, %bb.gs ]
  %i.wg = sext i32 %i.vi to i64                   ; 2 uses
  %.val64.i.i.i = load ptr, ptr %i.nt, align 8, !tbaa !37 ; 2 uses
  %i.wh = getelementptr inbounds [4 x i8], ptr %.val64.i.i.i, i64 %i.wg
  %i.wi = load i32, ptr %i.wh, align 4, !tbaa !10 ; 2 uses
  %i.wj = sext i32 %i.vj to i64
  %i.wk = getelementptr inbounds [4 x i8], ptr %.val64.i.i.i, i64 %i.wj ; 2 uses
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !10
  %i.wm = icmp slt i32 %i.wi, %i.wl
  br i1 %i.wm, label %.lr.ph122.i.i.i, label %.critedge4.i.i.i

.lr.ph122.i.i.i:                                  ; preds = %Cba_ObjCopy.exit.i.i.i
  %i.wn = getelementptr inbounds [4 x i8], ptr %.val.i.i92.i.i.i, i64 %i.wg
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !10
  %.val70.i.i.i = load ptr, ptr %i.oc, align 8, !tbaa !37
  %.val71.i.i.i = load ptr, ptr %i.hf, align 8, !tbaa !37
  %.val72.i.i.i = load ptr, ptr %i.ky, align 8, !tbaa !37
  %i.wp = sext i32 %i.wo to i64
  %i.wq = getelementptr inbounds [4 x i8], ptr %.val71.i.i.i, i64 %i.wp
  %i.wr = sext i32 %i.wi to i64
  br label %bb.hd

bb.hd:                                            ; preds = %Cba_FonCopy.exit.i.i.i, %.lr.ph122.i.i.i
  %indvars.iv133.i.i.i = phi i64 [ %i.wr, %.lr.ph122.i.i.i ], [ %indvars.iv.next134.i.i.i, %Cba_FonCopy.exit.i.i.i ] ; 2 uses
  %.1120.i.i.i = phi i32 [ 0, %.lr.ph122.i.i.i ], [ %i.xd, %Cba_FonCopy.exit.i.i.i ] ; 2 uses
  %i.ws = getelementptr inbounds [4 x i8], ptr %.val70.i.i.i, i64 %indvars.iv133.i.i.i
  %i.wt = load i32, ptr %i.ws, align 4, !tbaa !10 ; 3 uses
  %i.wu = icmp slt i32 %i.wt, 1
  br i1 %i.wu, label %Cba_FonCopy.exit.i.i.i, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %.val.i94.i.i.i = load ptr, ptr %i.oa, align 8, !tbaa !37
  %i.wv = zext nneg i32 %i.wt to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %.val.i94.i.i.i, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !10
  br label %Cba_FonCopy.exit.i.i.i

Cba_FonCopy.exit.i.i.i:                           ; preds = %bb.he, %bb.hd
  %i.wy = phi i32 [ %i.wx, %bb.he ], [ %i.wt, %bb.hd ]
  %i.wz = load i32, ptr %i.wq, align 4, !tbaa !10
  %i.xa = add nsw i32 %i.wz, %.1120.i.i.i
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %.val72.i.i.i, i64 %i.xb
  store i32 %i.wy, ptr %i.xc, align 4, !tbaa !10
  %indvars.iv.next134.i.i.i = add nsw i64 %indvars.iv133.i.i.i, 1 ; 2 uses
  %i.xd = add nuw nsw i32 %.1120.i.i.i, 1
  %i.xe = load i32, ptr %i.wk, align 4, !tbaa !10
  %i.xf = sext i32 %i.xe to i64
  %i.xg = icmp slt i64 %indvars.iv.next134.i.i.i, %i.xf
  br i1 %i.xg, label %bb.hd, label %.critedge4.i.i.i, !llvm.loop !54

.critedge4.i.i.i:                                 ; preds = %Cba_FonCopy.exit.i.i.i, %Cba_ObjCopy.exit.i.i.i
  %i.xh = phi ptr [ %i.we, %Cba_ObjCopy.exit.i.i.i ], [ %.val.i.i92.i.i.i, %Cba_FonCopy.exit.i.i.i ]
  %i.xi = phi ptr [ %i.wf, %Cba_ObjCopy.exit.i.i.i ], [ %.val.i.i92.i.i.i, %Cba_FonCopy.exit.i.i.i ]
  %indvars.iv.next137.i.i.i = add nuw nsw i64 %indvars.iv136.i.i.i, 1 ; 2 uses
  %.val58.i.i.i = load i32, ptr %i.cd, align 4, !tbaa !36
  %i.xj = sext i32 %.val58.i.i.i to i64
  %i.xk = icmp slt i64 %indvars.iv.next137.i.i.i, %i.xj
  br i1 %i.xk, label %bb.gs, label %Cba_NtkDup.exit.i.i, !llvm.loop !55

Cba_NtkDup.exit.i.i:                              ; preds = %.critedge4.i.i.i, %.critedge.preheader.i.i.i, %Cba_NtkCleanFonCopies.exit.i.i.i
  %.val.i.i25.i = load i32, ptr %i.dj, align 8, !tbaa !45
  %i.xl = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i32 %.val.i.i25.i, ptr %i.xl, align 8, !tbaa !56
  %i.xm = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !37 ; 2 uses
  %.not.i.i26.i = icmp eq ptr %i.xn, null
  br i1 %.not.i.i26.i, label %Vec_IntFree.exit.i.i, label %bb.hf

bb.hf:                                            ; preds = %Cba_NtkDup.exit.i.i
  call void @free(ptr noundef nonnull %i.xn) #19
  br label %Vec_IntFree.exit.i.i

Vec_IntFree.exit.i.i:                             ; preds = %bb.hf, %Cba_NtkDup.exit.i.i
  call void @free(ptr noundef nonnull %i.cc) #19
  %.val23.i = load ptr, ptr %i.bk, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.val4.i.i = load ptr, ptr %i.di, align 8, !tbaa !47
  %.val5.i.i = load i32, ptr %i.ec, align 4, !tbaa !41
  %i.xo = getelementptr i8, ptr %.val4.i.i, i64 16
  %.val4.val.i.i = load ptr, ptr %i.xo, align 8, !tbaa !24
  %i.xp = call ptr @Abc_NamStr(ptr noundef %.val4.val.i.i, i32 noundef %.val5.i.i) #19
  %i.xq = call i32 @Abc_NamStrFindOrAdd(ptr noundef %.val23.i, ptr noundef %i.xp, ptr noundef nonnull %i.a) #19 ; 0 uses
  %i.xr = load i32, ptr %i.a, align 4, !tbaa !10
  %.not.i28.i = icmp eq i32 %i.xr, 0
  br i1 %.not.i28.i, label %Cba_NtkAdd.exit.i, label %bb.hg

bb.hg:                                            ; preds = %Vec_IntFree.exit.i.i
  %.val.i29.i = load ptr, ptr %i.di, align 8, !tbaa !47
  %.val3.i.i = load i32, ptr %i.ec, align 4, !tbaa !41
  %i.xs = getelementptr i8, ptr %.val.i29.i, i64 16
  %.val.val.i.i = load ptr, ptr %i.xs, align 8, !tbaa !24
  %i.xt = call ptr @Abc_NamStr(ptr noundef %.val.val.i.i, i32 noundef %.val3.i.i) #19
  %i.xu = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %i.xt) ; 0 uses
  br label %Cba_NtkAdd.exit.i

Cba_NtkAdd.exit.i:                                ; preds = %bb.hg, %Vec_IntFree.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.xv = getelementptr i8, ptr %i.cb, i64 60     ; 2 uses
  %.val35135.i.i = load i32, ptr %i.xv, align 4, !tbaa !36
  %i.xw = icmp sgt i32 %.val35135.i.i, 0
  br i1 %i.xw, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %Cba_NtkAdd.exit.i
  %i.xx = getelementptr i8, ptr %i.cb, i64 64
  %i.xy = getelementptr inbounds nuw i8, ptr %i.di, i64 56 ; 2 uses
  %i.xz = getelementptr i8, ptr %i.cb, i64 176    ; 5 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.di, i64 60 ; 3 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.di, i64 64 ; 4 uses
  br label %bb.hh

bb.hh:                                            ; preds = %Vec_IntPush.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %Vec_IntPush.exit.i.i ] ; 2 uses
  %.val36.i.i = load ptr, ptr %i.xx, align 8, !tbaa !37
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %.val36.i.i, i64 %indvars.iv.i.i
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !10 ; 6 uses
  %i.ye = add nsw i32 %i.yd, 1                    ; 5 uses
  %i.yf = load i32, ptr %i.na, align 4, !tbaa !36 ; 4 uses
  %.not.i.not.i.i.i.i = icmp slt i32 %i.yd, %i.yf
  br i1 %.not.i.not.i.i.i.i, label %Cba_ObjCopy.exit.i.i, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.yg = load i32, ptr %i.mm, align 8, !tbaa !46 ; 4 uses
  %i.yh = shl nsw i32 %i.yg, 1                    ; 2 uses
  %.not.i.i.i42.i = icmp slt i32 %i.yd, %i.yh
  %.not.i.i.not.i.i.i.i = icmp sgt i32 %i.yg, %i.yd ; 2 uses
  br i1 %.not.i.i.i42.i, label %bb.hn, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i46.i, label %bb.hk

bb.hk:                                            ; preds = %bb.hj
  %i.yi = load ptr, ptr %i.xz, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i.i.i.i43.i = icmp eq ptr %i.yi, null
  %i.yj = sext i32 %i.ye to i64
  %i.yk = shl nsw i64 %i.yj, 2                    ; 2 uses
  br i1 %.not9.i.i.i.i.i43.i, label %bb.hm, label %bb.hl

bb.hl:                                            ; preds = %bb.hk
  %i.yl = call ptr @realloc(ptr noundef nonnull %i.yi, i64 noundef %i.yk) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.hm:                                            ; preds = %bb.hk
  %i.ym = call noalias ptr @malloc(i64 noundef %i.yk) #22
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.hn:                                            ; preds = %bb.hi
  br i1 %.not.i.i.not.i.i.i.i, label %Vec_IntGrow.exit.i.i.i.i46.i, label %bb.ho

bb.ho:                                            ; preds = %bb.hn
  %i.yn = icmp slt i32 %i.yg, 1073741823
  %spec.select.i.i.i.i50.i = select i1 %i.yn, i32 %i.yh, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i.i.i = icmp slt i32 %i.yg, %spec.select.i.i.i.i50.i
  br i1 %.not.i22.i.i.i.i.i, label %bb.hp, label %Vec_IntGrow.exit.i.i.i.i46.i

bb.hp:                                            ; preds = %bb.ho
  %i.yo = load ptr, ptr %i.xz, align 8, !tbaa !37 ; 2 uses
  %.not9.i23.i.i.i.i.i = icmp eq ptr %i.yo, null
  %i.yp = sext i32 %spec.select.i.i.i.i50.i to i64
  %i.yq = shl nsw i64 %i.yp, 2                    ; 2 uses
  br i1 %.not9.i23.i.i.i.i.i, label %bb.hr, label %bb.hq

bb.hq:                                            ; preds = %bb.hp
  %i.yr = call ptr @realloc(ptr noundef nonnull %i.yo, i64 noundef %i.yq) #23
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

bb.hr:                                            ; preds = %bb.hp
  %i.ys = call noalias ptr @malloc(i64 noundef %i.yq) #22
  br label %Vec_IntGrow.exit.sink.split.i.i.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i.i.i:            ; preds = %bb.hr, %bb.hq, %bb.hm, %bb.hl
  %storemerge.i.i = phi ptr [ %i.ym, %bb.hm ], [ %i.yl, %bb.hl ], [ %i.yr, %bb.hq ], [ %i.ys, %bb.hr ]
  %spec.select.sink.i.i.i.i44.i = phi i32 [ %i.ye, %bb.hm ], [ %i.ye, %bb.hl ], [ %spec.select.i.i.i.i50.i, %bb.hq ], [ %spec.select.i.i.i.i50.i, %bb.hr ]
  store ptr %storemerge.i.i, ptr %i.xz, align 8, !tbaa !37
  store i32 %spec.select.sink.i.i.i.i44.i, ptr %i.mm, align 8, !tbaa !46
  %.pre.i.i.i45.i = load i32, ptr %i.na, align 4, !tbaa !36
  br label %Vec_IntGrow.exit.i.i.i.i46.i

Vec_IntGrow.exit.i.i.i.i46.i:                     ; preds = %Vec_IntGrow.exit.sink.split.i.i.i.i.i, %bb.ho, %bb.hn, %bb.hj
  %i.yt = phi i32 [ %.pre.i.i.i45.i, %Vec_IntGrow.exit.sink.split.i.i.i.i.i ], [ %i.yf, %bb.ho ], [ %i.yf, %bb.hn ], [ %i.yf, %bb.hj ] ; 2 uses
  %.not3.i.i.i.i = icmp sgt i32 %i.yt, %i.yd
  br i1 %.not3.i.i.i.i, label %._crit_edge.i.i.i.i49.i, label %.lr.ph.i.i.i.i47.i

.lr.ph.i.i.i.i47.i:                               ; preds = %Vec_IntGrow.exit.i.i.i.i46.i
  %i.yu = load ptr, ptr %i.xz, align 8, !tbaa !37
  %i.yv = sext i32 %i.yt to i64                   ; 2 uses
  %wide.trip.count.i.i.i.i48.i = sext i32 %i.ye to i64
  %i.yw = shl nsw i64 %i.yv, 2
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.yu, i64 %i.yw
  %i.yx = sub nsw i64 %wide.trip.count.i.i.i.i48.i, %i.yv
  %i.yy = shl nsw i64 %i.yx, 2
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i.i.i, i8 -1, i64 %i.yy, i1 false), !tbaa !10
  br label %._crit_edge.i.i.i.i49.i

._crit_edge.i.i.i.i49.i:                          ; preds = %.lr.ph.i.i.i.i47.i, %Vec_IntGrow.exit.i.i.i.i46.i
  store i32 %i.ye, ptr %i.na, align 4, !tbaa !36
  br label %Cba_ObjCopy.exit.i.i

Cba_ObjCopy.exit.i.i:                             ; preds = %._crit_edge.i.i.i.i49.i, %bb.hh
  %.val.i.i.i.i = load ptr, ptr %i.xz, align 8, !tbaa !37
  %i.yz = sext i32 %i.yd to i64
  %i.za = getelementptr inbounds [4 x i8], ptr %.val.i.i.i.i, i64 %i.yz
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !10
  %i.zc = load i32, ptr %i.ya, align 4, !tbaa !36 ; 7 uses
  %i.zd = load i32, ptr %i.xy, align 8, !tbaa !46
  %i.ze = icmp eq i32 %i.zc, %i.zd
  br i1 %i.ze, label %bb.hs, label %Cba_ObjCopy.exit.Vec_IntPush.exit_crit_edge.i.i

Cba_ObjCopy.exit.Vec_IntPush.exit_crit_edge.i.i:  ; preds = %Cba_ObjCopy.exit.i.i
  %.pre.i.i = load ptr, ptr %i.yb, align 8, !tbaa !37
  br label %Vec_IntPush.exit.i.i

bb.hs:                                            ; preds = %Cba_ObjCopy.exit.i.i
  %i.zf = icmp slt i32 %i.zc, 16
  br i1 %i.zf, label %bb.ht, label %bb.hw

bb.ht:                                            ; preds = %bb.hs
  %i.zg = load ptr, ptr %i.yb, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.zg, null
  br i1 %.not9.i.i.i.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.zh = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.zg, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.hv:                                            ; preds = %bb.ht
  %i.zi = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.hw:                                            ; preds = %bb.hs
  %i.zj = icmp samesign ult i32 %i.zc, 1073741823
  %i.zk = shl nuw nsw i32 %i.zc, 1
  %spec.select.i.i.i = select i1 %i.zj, i32 %i.zk, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.zc, %spec.select.i.i.i
  %.pre138.i.i = load ptr, ptr %i.yb, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.hx, label %Vec_IntPush.exit.i.i

bb.hx:                                            ; preds = %bb.hw
  %.not9.i10.i.i.i = icmp eq ptr %.pre138.i.i, null
  %i.zl = zext nneg i32 %spec.select.i.i.i to i64
  %i.zm = shl nuw nsw i64 %i.zl, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.hz, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.zn = call ptr @realloc(ptr noundef nonnull %.pre138.i.i, i64 noundef %i.zm) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.hz:                                            ; preds = %bb.hx
  %i.zo = call noalias ptr @malloc(i64 noundef %i.zm) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.hz, %bb.hy, %bb.hv, %bb.hu
  %i.zp = phi ptr [ %i.zi, %bb.hv ], [ %i.zh, %bb.hu ], [ %i.zn, %bb.hy ], [ %i.zo, %bb.hz ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.hv ], [ 16, %bb.hu ], [ %spec.select.i.i.i, %bb.hy ], [ %spec.select.i.i.i, %bb.hz ]
  store ptr %i.zp, ptr %i.yb, align 8, !tbaa !37
  store i32 %spec.select.sink.i.i.i, ptr %i.xy, align 8, !tbaa !46
  %.pre139.i.i = load i32, ptr %i.ya, align 4, !tbaa !36
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.hw, %Cba_ObjCopy.exit.Vec_IntPush.exit_crit_edge.i.i
  %i.zq = phi i32 [ %i.zc, %Cba_ObjCopy.exit.Vec_IntPush.exit_crit_edge.i.i ], [ %i.zc, %bb.hw ], [ %.pre139.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.zr = phi ptr [ %.pre.i.i, %Cba_ObjCopy.exit.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre138.i.i, %bb.hw ], [ %i.zp, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.zs = add nsw i32 %i.zq, 1
  store i32 %i.zs, ptr %i.ya, align 4, !tbaa !36
  %i.zt = sext i32 %i.zq to i64
  %i.zu = getelementptr inbounds [4 x i8], ptr %i.zr, i64 %i.zt
  store i32 %i.zb, ptr %i.zu, align 4, !tbaa !10
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val35.i.i = load i32, ptr %i.xv, align 4, !tbaa !36
  %i.zv = sext i32 %.val35.i.i to i64
  %i.zw = icmp slt i64 %indvars.iv.next.i.i, %i.zv
  br i1 %i.zw, label %bb.hh, label %.critedge.i.i, !llvm.loop !57

.critedge.i.i:                                    ; preds = %Vec_IntPush.exit.i.i, %Cba_NtkAdd.exit.i
  %i.zx = getelementptr inbounds nuw i8, ptr %i.di, i64 184 ; 2 uses
  %.val34.i.i = load i32, ptr %i.fe, align 4, !tbaa !49 ; 8 uses
  %i.zy = getelementptr i8, ptr %i.cb, i64 188    ; 2 uses
  %.val20.i.i.i = load i32, ptr %i.zy, align 4, !tbaa !36
  %i.zz = icmp eq i32 %.val20.i.i.i, 0
  br i1 %i.zz, label %Vec_IntRemapArray.exit.i.i, label %bb.ia

bb.ia:                                            ; preds = %.critedge.i.i
  %i.aaa = load i32, ptr %i.zx, align 8, !tbaa !46
  %.not.i.i.i.i30.i = icmp slt i32 %i.aaa, %.val34.i.i
  br i1 %.not.i.i.i.i30.i, label %bb.ib, label %Vec_IntGrow.exit.i.i.i31.i

bb.ib:                                            ; preds = %bb.ia
  %i.aab = getelementptr inbounds nuw i8, ptr %i.di, i64 192 ; 2 uses
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i.i.i41.i = icmp eq ptr %i.aac, null
  %i.aad = sext i32 %.val34.i.i to i64
  %i.aae = shl nsw i64 %i.aad, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i41.i, label %bb.id, label %bb.ic

bb.ic:                                            ; preds = %bb.ib
  %i.aaf = call ptr @realloc(ptr noundef nonnull %i.aac, i64 noundef %i.aae) #23
  br label %bb.ie

bb.id:                                            ; preds = %bb.ib
  %i.aag = call noalias ptr @malloc(i64 noundef %i.aae) #22
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %bb.ic
  %i.aah = phi ptr [ %i.aaf, %bb.ic ], [ %i.aag, %bb.id ]
  store ptr %i.aah, ptr %i.aab, align 8, !tbaa !37
  store i32 %.val34.i.i, ptr %i.zx, align 8, !tbaa !46
  br label %Vec_IntGrow.exit.i.i.i31.i

Vec_IntGrow.exit.i.i.i31.i:                       ; preds = %bb.ie, %bb.ia
  %i.aai = icmp sgt i32 %.val34.i.i, 0
  br i1 %i.aai, label %.lr.ph.i.i.i40.i, label %Vec_IntFill.exit.i.i.i

.lr.ph.i.i.i40.i:                                 ; preds = %Vec_IntGrow.exit.i.i.i31.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %i.di, i64 192
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !37
  %wide.trip.count.i.i.i.i = zext nneg i32 %.val34.i.i to i64
  %i.aal = shl nuw nsw i64 %wide.trip.count.i.i.i.i, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.aak, i8 0, i64 %i.aal, i1 false), !tbaa !10
  br label %Vec_IntFill.exit.i.i.i

Vec_IntFill.exit.i.i.i:                           ; preds = %.lr.ph.i.i.i40.i, %Vec_IntGrow.exit.i.i.i31.i
  %i.aam = getelementptr inbounds nuw i8, ptr %i.di, i64 188
  store i32 %.val34.i.i, ptr %i.aam, align 4, !tbaa !36
  %.val1925.i.i.i = load i32, ptr %i.na, align 4, !tbaa !36 ; 2 uses
  %i.aan = icmp sgt i32 %.val1925.i.i.i, 0
  br i1 %i.aan, label %.lr.ph.i.i35.i, label %Vec_IntRemapArray.exitthread-pre-split.i.i

.lr.ph.i.i35.i:                                   ; preds = %Vec_IntFill.exit.i.i.i
  %i.aao = getelementptr i8, ptr %i.cb, i64 176
  %.val23.i.i.i = load ptr, ptr %i.aao, align 8, !tbaa !37
  %i.aap = getelementptr i8, ptr %i.cb, i64 192
  %i.aaq = getelementptr i8, ptr %i.di, i64 192
  br label %bb.if

bb.if:                                            ; preds = %bb.ij, %.lr.ph.i.i35.i
  %.val1928.i.i.i = phi i32 [ %.val1925.i.i.i, %.lr.ph.i.i35.i ], [ %.val19.i.i.i, %bb.ij ] ; 3 uses
  %indvars.iv.i.i36.i = phi i64 [ 0, %.lr.ph.i.i35.i ], [ %indvars.iv.next.i.i37.i, %bb.ij ] ; 4 uses
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.val23.i.i.i, i64 %indvars.iv.i.i36.i
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !10 ; 3 uses
  %i.aat = icmp sgt i32 %i.aas, 0
  %i.aau = icmp slt i32 %i.aas, %.val34.i.i
  %or.cond.i.i.i = and i1 %i.aat, %i.aau
  br i1 %or.cond.i.i.i, label %bb.ig, label %bb.ij

bb.ig:                                            ; preds = %bb.if
  %.val.i.i38.i = load i32, ptr %i.zy, align 4, !tbaa !36
  %i.aav = sext i32 %.val.i.i38.i to i64
  %i.aaw = icmp slt i64 %indvars.iv.i.i36.i, %i.aav
  br i1 %i.aaw, label %bb.ih, label %bb.ij

bb.ih:                                            ; preds = %bb.ig
  %.val22.i.i.i = load ptr, ptr %i.aap, align 8, !tbaa !37
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.val22.i.i.i, i64 %indvars.iv.i.i36.i
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !10 ; 2 uses
  %.not.i.i39.i = icmp eq i32 %i.aay, 0
  br i1 %.not.i.i39.i, label %bb.ij, label %bb.ii

bb.ii:                                            ; preds = %bb.ih
  %.val24.i.i.i = load ptr, ptr %i.aaq, align 8, !tbaa !37
  %i.aaz = zext nneg i32 %i.aas to i64
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %.val24.i.i.i, i64 %i.aaz
  store i32 %i.aay, ptr %i.aba, align 4, !tbaa !10
  %.val19.pre.i.i.i = load i32, ptr %i.na, align 4, !tbaa !36
  br label %bb.ij

bb.ij:                                            ; preds = %bb.ii, %bb.ih, %bb.ig, %bb.if
  %.val19.i.i.i = phi i32 [ %.val1928.i.i.i, %bb.if ], [ %.val1928.i.i.i, %bb.ig ], [ %.val1928.i.i.i, %bb.ih ], [ %.val19.pre.i.i.i, %bb.ii ] ; 2 uses
  %indvars.iv.next.i.i37.i = add nuw nsw i64 %indvars.iv.i.i36.i, 1 ; 2 uses
  %i.abb = sext i32 %.val19.i.i.i to i64
  %i.abc = icmp slt i64 %indvars.iv.next.i.i37.i, %i.abb
  br i1 %i.abc, label %bb.if, label %Vec_IntRemapArray.exitthread-pre-split.i.i, !llvm.loop !58

Vec_IntRemapArray.exitthread-pre-split.i.i:       ; preds = %bb.ij, %Vec_IntFill.exit.i.i.i
  %.val33.pr.i.i = load i32, ptr %i.fe, align 4, !tbaa !49
  br label %Vec_IntRemapArray.exit.i.i

Vec_IntRemapArray.exit.i.i:                       ; preds = %Vec_IntRemapArray.exitthread-pre-split.i.i, %.critedge.i.i
  %.val33.i.i = phi i32 [ %.val33.pr.i.i, %Vec_IntRemapArray.exitthread-pre-split.i.i ], [ %.val34.i.i, %.critedge.i.i ] ; 7 uses
  %i.abd = getelementptr inbounds nuw i8, ptr %i.di, i64 200 ; 2 uses
  %i.abe = getelementptr i8, ptr %i.cb, i64 204   ; 2 uses
  %.val20.i39.i.i = load i32, ptr %i.abe, align 4, !tbaa !36
  %i.abf = icmp eq i32 %.val20.i39.i.i, 0
  br i1 %i.abf, label %Vec_IntRemapArray.exit59.i.i, label %bb.ik

bb.ik:                                            ; preds = %Vec_IntRemapArray.exit.i.i
  %i.abg = load i32, ptr %i.abd, align 8, !tbaa !46
  %.not.i.i.i40.i.i = icmp slt i32 %i.abg, %.val33.i.i
  br i1 %.not.i.i.i40.i.i, label %bb.il, label %Vec_IntGrow.exit.i.i41.i.i

bb.il:                                            ; preds = %bb.ik
  %i.abh = getelementptr inbounds nuw i8, ptr %i.di, i64 208 ; 2 uses
end_hunk_0
begin_hunk_1_@Cba_CommandRead:bb.a
bb.jv:                                            ; preds = %bb.ju
  %.val22.i115.i.i = load ptr, ptr %i.afn, align 8, !tbaa !37
  %i.afv = getelementptr inbounds nuw [4 x i8], ptr %.val22.i115.i.i, i64 %indvars.iv.i110.i.i
  %i.afw = load i32, ptr %i.afv, align 4, !tbaa !10 ; 2 uses
  %.not.i116.i.i = icmp eq i32 %i.afw, 0
  br i1 %.not.i116.i.i, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  %.val24.i117.i.i = load ptr, ptr %i.afo, align 8, !tbaa !37
  %i.afx = zext nneg i32 %i.afq to i64
  %i.afy = getelementptr inbounds nuw [4 x i8], ptr %.val24.i117.i.i, i64 %i.afx
  store i32 %i.afw, ptr %i.afy, align 4, !tbaa !10
  %.val19.pre.i118.i.i = load i32, ptr %i.np, align 4, !tbaa !36
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jw, %bb.jv, %bb.ju, %bb.jt
  %.val19.i112.i.i = phi i32 [ %.val1928.i109.i.i, %bb.jt ], [ %.val1928.i109.i.i, %bb.ju ], [ %.val1928.i109.i.i, %bb.jv ], [ %.val19.pre.i118.i.i, %bb.jw ] ; 2 uses
  %indvars.iv.next.i113.i.i = add nuw nsw i64 %indvars.iv.i110.i.i, 1 ; 2 uses
  %i.afz = sext i32 %.val19.i112.i.i to i64
  %i.aga = icmp slt i64 %indvars.iv.next.i113.i.i, %i.afz
  br i1 %i.aga, label %bb.jt, label %Vec_IntRemapArray.exit122.i.i, !llvm.loop !58

Vec_IntRemapArray.exit122.i.i:                    ; preds = %bb.jx, %Vec_IntFill.exit.i105.i.i, %Vec_IntRemapArray.exit101.i.i
  %i.agb = getelementptr inbounds nuw i8, ptr %i.di, i64 232 ; 2 uses
  %i.agc = getelementptr i8, ptr %i.cb, i64 236   ; 2 uses
  %.val7.i.i.i = load i32, ptr %i.agc, align 4, !tbaa !36
  %i.agd = icmp sgt i32 %.val7.i.i.i, 0
  br i1 %i.agd, label %.lr.ph.i123.i.i, label %Vec_IntAppend.exit.i.i

.lr.ph.i123.i.i:                                  ; preds = %Vec_IntRemapArray.exit122.i.i
  %i.age = getelementptr i8, ptr %i.cb, i64 240
  %i.agf = getelementptr inbounds nuw i8, ptr %i.di, i64 236 ; 3 uses
  %i.agg = getelementptr inbounds nuw i8, ptr %i.di, i64 240 ; 4 uses
  br label %bb.jy

bb.jy:                                            ; preds = %Vec_IntPush.exit.i.i.i, %.lr.ph.i123.i.i
  %indvars.iv.i124.i.i = phi i64 [ 0, %.lr.ph.i123.i.i ], [ %indvars.iv.next.i125.i.i, %Vec_IntPush.exit.i.i.i ] ; 2 uses
  %.val6.i.i.i = load ptr, ptr %i.age, align 8, !tbaa !37
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %.val6.i.i.i, i64 %indvars.iv.i124.i.i
  %i.agi = load i32, ptr %i.agh, align 4, !tbaa !10
  %i.agj = load i32, ptr %i.agf, align 4, !tbaa !36 ; 7 uses
  %i.agk = load i32, ptr %i.agb, align 8, !tbaa !46
  %i.agl = icmp eq i32 %i.agj, %i.agk
  br i1 %i.agl, label %bb.jz, label %.Vec_IntPush.exit_crit_edge.i.i.i

.Vec_IntPush.exit_crit_edge.i.i.i:                ; preds = %bb.jy
  %.pre.i.i34.i = load ptr, ptr %i.agg, align 8, !tbaa !37
  br label %Vec_IntPush.exit.i.i.i

bb.jz:                                            ; preds = %bb.jy
  %i.agm = icmp slt i32 %i.agj, 16
  br i1 %i.agm, label %bb.ka, label %bb.kd

bb.ka:                                            ; preds = %bb.jz
  %i.agn = load ptr, ptr %i.agg, align 8, !tbaa !37 ; 2 uses
  %.not9.i.i.i127.i.i = icmp eq ptr %i.agn, null
  br i1 %.not9.i.i.i127.i.i, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.ago = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.agn, i64 noundef 64) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.kc:                                            ; preds = %bb.ka
  %i.agp = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.kd:                                            ; preds = %bb.jz
  %i.agq = icmp samesign ult i32 %i.agj, 1073741823
  %i.agr = shl nuw nsw i32 %i.agj, 1
  %spec.select.i.i.i.i = select i1 %i.agq, i32 %i.agr, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i.i = icmp samesign ult i32 %i.agj, %spec.select.i.i.i.i
  %.pre10.i.i.i = load ptr, ptr %i.agg, align 8, !tbaa !37 ; 3 uses
  br i1 %.not.i9.i.i.i.i, label %bb.ke, label %Vec_IntPush.exit.i.i.i

bb.ke:                                            ; preds = %bb.kd
  %.not9.i10.i.i.i.i = icmp eq ptr %.pre10.i.i.i, null
  %i.ags = zext nneg i32 %spec.select.i.i.i.i to i64
  %i.agt = shl nuw nsw i64 %i.ags, 2              ; 2 uses
  br i1 %.not9.i10.i.i.i.i, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  %i.agu = call ptr @realloc(ptr noundef nonnull %.pre10.i.i.i, i64 noundef %i.agt) #23
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

bb.kg:                                            ; preds = %bb.ke
  %i.agv = call noalias ptr @malloc(i64 noundef %i.agt) #22
  br label %Vec_IntGrow.exit11.sink.split.i.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i.i:            ; preds = %bb.kg, %bb.kf, %bb.kc, %bb.kb
  %i.agw = phi ptr [ %i.agp, %bb.kc ], [ %i.ago, %bb.kb ], [ %i.agu, %bb.kf ], [ %i.agv, %bb.kg ] ; 2 uses
  %spec.select.sink.i.i.i.i = phi i32 [ 16, %bb.kc ], [ 16, %bb.kb ], [ %spec.select.i.i.i.i, %bb.kf ], [ %spec.select.i.i.i.i, %bb.kg ]
  store ptr %i.agw, ptr %i.agg, align 8, !tbaa !37
  store i32 %spec.select.sink.i.i.i.i, ptr %i.agb, align 8, !tbaa !46
  %.pre11.i.i.i = load i32, ptr %i.agf, align 4, !tbaa !36
  br label %Vec_IntPush.exit.i.i.i

Vec_IntPush.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i.i, %bb.kd, %.Vec_IntPush.exit_crit_edge.i.i.i
  %i.agx = phi i32 [ %i.agj, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %i.agj, %bb.kd ], [ %.pre11.i.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i.i ] ; 2 uses
  %i.agy = phi ptr [ %.pre.i.i34.i, %.Vec_IntPush.exit_crit_edge.i.i.i ], [ %.pre10.i.i.i, %bb.kd ], [ %i.agw, %Vec_IntGrow.exit11.sink.split.i.i.i.i ]
  %i.agz = add nsw i32 %i.agx, 1
  store i32 %i.agz, ptr %i.agf, align 4, !tbaa !36
  %i.aha = sext i32 %i.agx to i64
  %i.ahb = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.aha
  store i32 %i.agi, ptr %i.ahb, align 4, !tbaa !10
  %indvars.iv.next.i125.i.i = add nuw nsw i64 %indvars.iv.i124.i.i, 1 ; 2 uses
  %.val.i126.i.i = load i32, ptr %i.agc, align 4, !tbaa !36
  %i.ahc = sext i32 %.val.i126.i.i to i64
  %i.ahd = icmp slt i64 %indvars.iv.next.i125.i.i, %i.ahc
  br i1 %i.ahd, label %bb.jy, label %Vec_IntAppend.exit.i.i, !llvm.loop !59

Vec_IntAppend.exit.i.i:                           ; preds = %Vec_IntPush.exit.i.i.i, %Vec_IntRemapArray.exit122.i.i
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.cb, i64 392
  %i.ahf = load ptr, ptr %i.ahe, align 8, !tbaa !60 ; 3 uses
  %.not.i33.i = icmp eq ptr %i.ahf, null
  br i1 %.not.i33.i, label %Cba_NtkDupAttrs.exit.i, label %bb.kh

bb.kh:                                            ; preds = %Vec_IntAppend.exit.i.i
  %i.ahg = getelementptr i8, ptr %i.ahf, i64 4    ; 2 uses
  %.val8.i.i.i = load i32, ptr %i.ahg, align 4, !tbaa !61 ; 3 uses
  %i.ahh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 6 uses
  %i.ahi = add i32 %.val8.i.i.i, -1
  %or.cond.i.i.i.i = icmp ult i32 %i.ahi, 7
  %spec.store.select.i.i.i.i = select i1 %or.cond.i.i.i.i, i32 8, i32 %.val8.i.i.i ; 4 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahh, i64 4 ; 2 uses
  store i32 0, ptr %i.ahj, align 4, !tbaa !23
  store i32 %spec.store.select.i.i.i.i, ptr %i.ahh, align 8, !tbaa !33
  %.not.i.i128.i.i = icmp eq i32 %spec.store.select.i.i.i.i, 0
  br i1 %.not.i.i128.i.i, label %Vec_PtrAlloc.exit.i.i.i, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.ahk = sext i32 %spec.store.select.i.i.i.i to i64
  %i.ahl = shl nsw i64 %i.ahk, 3
  %i.ahm = call noalias ptr @malloc(i64 noundef %i.ahl) #22
  br label %Vec_PtrAlloc.exit.i.i.i

Vec_PtrAlloc.exit.i.i.i:                          ; preds = %bb.ki, %bb.kh
  %.promoted16.i.i.i = phi ptr [ %i.ahm, %bb.ki ], [ null, %bb.kh ] ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahh, i64 8 ; 2 uses
  store ptr %.promoted16.i.i.i, ptr %i.ahn, align 8, !tbaa !32
  %i.aho = icmp sgt i32 %.val8.i.i.i, 0
  br i1 %i.aho, label %.lr.ph.i129.i.i, label %Cba_NtkDupAttrs.exit.i

.lr.ph.i129.i.i:                                  ; preds = %Vec_PtrAlloc.exit.i.i.i
  %i.ahp = getelementptr i8, ptr %i.ahf, i64 8
  br label %bb.kj

bb.kj:                                            ; preds = %Vec_PtrPush.exit.i.i.i, %.lr.ph.i129.i.i
  %indvars.iv19.i.i.i = phi i64 [ 0, %.lr.ph.i129.i.i ], [ %indvars.iv.next20.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 7 uses
  %storemerge17.i.i.i = phi ptr [ %.promoted16.i.i.i, %.lr.ph.i129.i.i ], [ %storemerge18.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 6 uses
  %spec.select.sink.i15.i.i.i = phi i32 [ %spec.store.select.i.i.i.i, %.lr.ph.i129.i.i ], [ %spec.select.sink.i14.i.i.i, %Vec_PtrPush.exit.i.i.i ] ; 4 uses
  %.val9.i.i.i = load ptr, ptr %i.ahp, align 8, !tbaa !63
  %i.ahq = getelementptr inbounds nuw [8 x i8], ptr %.val9.i.i.i, i64 %indvars.iv19.i.i.i
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !34 ; 3 uses
  %i.ahs = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 4 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahr, i64 4
  %i.ahu = load i32, ptr %i.aht, align 4, !tbaa !23 ; 2 uses
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahs, i64 4
  store i32 %i.ahu, ptr %i.ahv, align 4, !tbaa !23
  %i.ahw = load i32, ptr %i.ahr, align 8, !tbaa !33 ; 3 uses
  store i32 %i.ahw, ptr %i.ahs, align 8, !tbaa !33
  %.not.i10.i.i.i = icmp eq i32 %i.ahw, 0
  br i1 %.not.i10.i.i.i, label %Vec_PtrDup.exit.i.i.i, label %bb.kk

bb.kk:                                            ; preds = %bb.kj
  %i.ahx = sext i32 %i.ahw to i64
  %i.ahy = shl nsw i64 %i.ahx, 3
  %i.ahz = call noalias ptr @malloc(i64 noundef %i.ahy) #22
  br label %Vec_PtrDup.exit.i.i.i

Vec_PtrDup.exit.i.i.i:                            ; preds = %bb.kk, %bb.kj
  %i.aia = phi ptr [ %i.ahz, %bb.kk ], [ null, %bb.kj ] ; 2 uses
  %i.aib = getelementptr inbounds nuw i8, ptr %i.ahs, i64 8
  store ptr %i.aia, ptr %i.aib, align 8, !tbaa !32
  %i.aic = getelementptr inbounds nuw i8, ptr %i.ahr, i64 8
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !32
  %i.aie = sext i32 %i.ahu to i64
  %i.aif = shl nsw i64 %i.aie, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.aia, ptr align 8 %i.aid, i64 %i.aif, i1 false)
  %i.aig = trunc nsw i64 %indvars.iv19.i.i.i to i32
  %i.aih = icmp eq i32 %spec.select.sink.i15.i.i.i, %i.aig
  br i1 %i.aih, label %bb.kl, label %Vec_PtrPush.exit.i.i.i

bb.kl:                                            ; preds = %Vec_PtrDup.exit.i.i.i
  %i.aii = icmp samesign ult i64 %indvars.iv19.i.i.i, 16
  br i1 %i.aii, label %bb.km, label %bb.kp

bb.km:                                            ; preds = %bb.kl
  %.not9.i.i.i134.i.i = icmp eq ptr %storemerge17.i.i.i, null
  br i1 %.not9.i.i.i134.i.i, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %bb.km
  %i.aij = call dereferenceable_or_null(128) ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef 128) #23
  br label %Vec_PtrPush.exit.i.i.i

bb.ko:                                            ; preds = %bb.km
  %i.aik = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #22
  br label %Vec_PtrPush.exit.i.i.i

bb.kp:                                            ; preds = %bb.kl
  %i.ail = icmp samesign ult i64 %indvars.iv19.i.i.i, 1073741823
  %i.aim = shl nsw i32 %spec.select.sink.i15.i.i.i, 1
  %spec.select.i.i133.i.i = select i1 %i.ail, i32 %i.aim, i32 2147483647 ; 4 uses
  %3 = sext i32 %spec.select.i.i133.i.i to i64
  %.not.i10.i.i.i.i = icmp samesign ult i64 %indvars.iv19.i.i.i, %3
  br i1 %.not.i10.i.i.i.i, label %bb.kq, label %Vec_PtrPush.exit.i.i.i

bb.kq:                                            ; preds = %bb.kp
  %.not9.i11.i.i.i.i = icmp eq ptr %storemerge17.i.i.i, null
  %4 = zext nneg i32 %spec.select.i.i133.i.i to i64
  %i.ain = shl nuw nsw i64 %4, 3                  ; 2 uses
  br i1 %.not9.i11.i.i.i.i, label %bb.ks, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.aio = call ptr @realloc(ptr noundef nonnull %storemerge17.i.i.i, i64 noundef %i.ain) #23
  br label %Vec_PtrPush.exit.i.i.i

bb.ks:                                            ; preds = %bb.kq
  %i.aip = call noalias ptr @malloc(i64 noundef %i.ain) #22
  br label %Vec_PtrPush.exit.i.i.i

Vec_PtrPush.exit.i.i.i:                           ; preds = %bb.ks, %bb.kr, %bb.kp, %bb.ko, %bb.kn, %Vec_PtrDup.exit.i.i.i
  %storemerge18.i.i.i = phi ptr [ %storemerge17.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %storemerge17.i.i.i, %bb.kp ], [ %i.aik, %bb.ko ], [ %i.aij, %bb.kn ], [ %i.aio, %bb.kr ], [ %i.aip, %bb.ks ] ; 3 uses
  %spec.select.sink.i14.i.i.i = phi i32 [ %spec.select.sink.i15.i.i.i, %Vec_PtrDup.exit.i.i.i ], [ %spec.select.sink.i15.i.i.i, %bb.kp ], [ 16, %bb.ko ], [ 16, %bb.kn ], [ %spec.select.i.i133.i.i, %bb.kr ], [ %spec.select.i.i133.i.i, %bb.ks ] ; 2 uses
  %indvars.iv.next20.i.i.i = add nuw nsw i64 %indvars.iv19.i.i.i, 1 ; 3 uses
  %i.aiq = getelementptr inbounds nuw [8 x i8], ptr %storemerge18.i.i.i, i64 %indvars.iv19.i.i.i
  store ptr %i.ahs, ptr %i.aiq, align 8, !tbaa !34
  %.val.i132.i.i = load i32, ptr %i.ahg, align 4, !tbaa !61
  %i.air = sext i32 %.val.i132.i.i to i64
  %i.ais = icmp slt i64 %indvars.iv.next20.i.i.i, %i.air
  br i1 %i.ais, label %bb.kj, label %..critedge_crit_edge.i.i.i, !llvm.loop !64

..critedge_crit_edge.i.i.i:                       ; preds = %Vec_PtrPush.exit.i.i.i
  %i.ait = trunc nsw i64 %indvars.iv.next20.i.i.i to i32
  store i32 %i.ait, ptr %i.ahj, align 4, !tbaa !23
  store i32 %spec.select.sink.i14.i.i.i, ptr %i.ahh, align 8
  store ptr %storemerge18.i.i.i, ptr %i.ahn, align 8
  br label %Cba_NtkDupAttrs.exit.i

Cba_NtkDupAttrs.exit.i:                           ; preds = %..critedge_crit_edge.i.i.i, %Vec_PtrAlloc.exit.i.i.i, %Vec_IntAppend.exit.i.i
  %i.aiu = phi ptr [ null, %Vec_IntAppend.exit.i.i ], [ %i.ahh, %Vec_PtrAlloc.exit.i.i.i ], [ %i.ahh, %..critedge_crit_edge.i.i.i ]
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.di, i64 392
  store ptr %i.aiu, ptr %i.aiv, align 8, !tbaa !60
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.val21.i = load i32, ptr %i.ah, align 4, !tbaa !23
  %i.aiw = sext i32 %.val21.i to i64
  %.not.not.i = icmp slt i64 %indvars.iv.next.i, %i.aiw
  br i1 %.not.not.i, label %Cba_ManNtk.exit.i, label %.critedge.loopexit.i, !llvm.loop !65

.critedge.loopexit.i:                             ; preds = %Cba_NtkDupAttrs.exit.i
  %.val.pre.i = load i32, ptr %i.bv, align 4, !tbaa !23
  %i.aix = add nsw i32 %.val.pre.i, -1
  br label %Cba_ManDup.exit

Cba_ManDup.exit:                                  ; preds = %Cba_ManAlloc.exit.i, %.critedge.loopexit.i
  %.val.i = phi i32 [ %i.aix, %.critedge.loopexit.i ], [ 0, %Cba_ManAlloc.exit.i ]
  store i32 %.val.i, ptr %i.bw, align 8, !tbaa !35
  call fastcc void @Cba_ManFree(ptr noundef nonnull %.037)
  br label %bb.kt

bb.kt:                                            ; preds = %Cba_ManDup.exit, %bb.u
  %.138 = phi ptr [ %i.au, %Cba_ManDup.exit ], [ %.037, %bb.u ]
  %i.aiy = getelementptr i8, ptr %0, i64 576      ; 2 uses
  %.val.i56 = load ptr, ptr %i.aiy, align 8, !tbaa !66 ; 2 uses
  %.not.i.i57 = icmp eq ptr %.val.i56, null
  br i1 %.not.i.i57, label %Cba_AbcUpdateMan.exit, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  call fastcc void @Cba_ManFree(ptr noundef nonnull %.val.i56)
  br label %Cba_AbcUpdateMan.exit

Cba_AbcUpdateMan.exit:                            ; preds = %bb.kt, %bb.ku
  store ptr %.138, ptr %i.aiy, align 8, !tbaa !66
  br label %bb.kw

bb.kv:                                            ; preds = %bb.b
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.24)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.25)
  %.not53 = icmp eq i32 %.035.ph, 0
  %i.aiz = select i1 %.not53, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.26, ptr noundef nonnull %i.aiz)
  %.not54 = icmp eq i32 %.033.ph209, 0
  %i.aja = select i1 %.not54, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.aja)
  %.not55 = icmp eq i32 %.032, 0
  %i.ajb = select i1 %.not55, ptr @.str.28, ptr @.str.27
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.ajb)
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef -2, ptr noundef nonnull @.str.31)
  br label %bb.kw

bb.kw:                                            ; preds = %bb.n, %bb.o, %bb.kv, %Cba_AbcUpdateMan.exit, %bb.t, %.tail.thread, %bb.k, %bb.g
  %.0 = phi i32 [ 1, %bb.kv ], [ 0, %bb.g ], [ 0, %bb.k ], [ 0, %.tail.thread ], [ 0, %Cba_AbcUpdateMan.exit ], [ 0, %bb.t ], [ 0, %bb.o ], [ 0, %bb.n ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @Cba_CommandWrite(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 576
  %.val = load ptr, ptr %i.a, align 8, !tbaa !66  ; 6 uses
  tail call void (...) @Extra_UtilGetoptReset() #19
  br label %.outer

.outer:                                           ; preds = %bb.c, %bb.a
  %.028.ph = phi i32 [ %i.c, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.0.ph = phi i32 [ %.0, %bb.c ], [ 0, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.d
  %.0 = phi i32 [ %i.d, %bb.d ], [ %.0.ph, %.outer ] ; 3 uses
  %i.b = tail call i32 @Extra_UtilGetopt(i32 noundef %1, ptr noundef %2, ptr noundef nonnull @.str.39) #19
  switch i32 %i.b, label %bb.s [
    i32 -1, label %bb.e
    i32 99, label %bb.c
    i32 118, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = xor i32 %.028.ph, 1
  br label %.outer, !llvm.loop !78

bb.d:                                             ; preds = %bb.b
  %i.d = xor i32 %.0, 1
  br label %bb.b, !llvm.loop !78

bb.e:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, ...) @Abc_Print(i32 noundef 1, ptr noundef nonnull @.str.40)
  br label %bb.t

bb.g:                                             ; preds = %bb.e
  %i.f = load i32, ptr @globalUtilOptind, align 4, !tbaa !10 ; 3 uses
  %i.g = add nsw i32 %i.f, 1
  %i.h = icmp eq i32 %1, %i.g
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %2, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.l = icmp eq i32 %1, %i.f
  br i1 %i.l, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr i8, ptr %.val, i64 8
  %.val44 = load ptr, ptr %i.m, align 8, !tbaa !14 ; 2 uses
  %.not35 = icmp eq ptr %.val44, null
  br i1 %.not35, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.val42 = load ptr, ptr %.val, align 8, !tbaa !30
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.n = phi ptr [ %.val42, %bb.k ], [ %.val44, %bb.j ]
  %i.o = tail call ptr @Extra_FileNameGenericAppend(ptr noundef %i.n, ptr noundef nonnull @.str.41) #19 ; 2 uses
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.42, ptr noundef %i.o) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.i
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  br label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.h
  %.030 = phi ptr [ %i.k, %bb.h ], [ %i.o, %bb.l ] ; 6 uses
  %i.q = tail call ptr @Extra_FileNameExtension(ptr noundef %.030) #19
  %i.r = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(5) @.str.20) #20
  %.not36 = icmp eq i32 %i.r, 0
  br i1 %.not36, label %bb.o, label %sub_0

bb.o:                                             ; preds = %bb.n
  tail call void @Cba_ManWriteBlif(ptr noundef %.030, ptr noundef nonnull %.val) #19
  br label %bb.t

sub_0:                                            ; preds = %bb.n
  %i.s = tail call ptr @Extra_FileNameExtension(ptr noundef %.030) #19 ; 2 uses
  %i.t = load i8, ptr %i.s, align 1
  %.not = icmp eq i8 %i.t, 118
  br i1 %.not, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = load i8, ptr %i.u, align 1
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %bb.p, label %.tail.thread

bb.p:                                             ; preds = %.tail
  tail call void @Cba_ManWriteVerilog(ptr noundef %.030, ptr noundef nonnull %.val, i32 noundef %.028.ph) #19
  br label %bb.t

.tail.thread:                                     ; preds = %sub_0, %.tail
  %i.x = tail call ptr @Extra_FileNameExtension(ptr noundef %.030) #19
  %i.y = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(4) @.str.23) #20
  %.not38 = icmp eq i32 %i.y, 0
  br i1 %.not38, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.tail.thread
  tail call void @Cba_ManWriteCba(ptr noundef %.030, ptr noundef nonnull %.val) #19
  br label %bb.t

bb.r:                                             ; preds = %.tail.thread
  %puts39 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  br label %bb.t

bb.s:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@Cba_ManWriteCba

declare void @Cba_NtkPrintStatsFull(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Cba_NtkPrintNodes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #13

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Cba_ManBoxNumRec_rec(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !45
  %i.b = sext i32 %.val to i64                    ; 2 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 6 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !10
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds [4 x i8], ptr %2, i64 %i.b ; 3 uses
  store i32 0, ptr %i.f, align 4, !tbaa !10
  store i32 0, ptr %i.c, align 4, !tbaa !10
  %i.g = getelementptr i8, ptr %0, i64 92         ; 2 uses
  %.val3034 = load i32, ptr %i.g, align 4, !tbaa !49
  %i.h = icmp sgt i32 %.val3034, 1
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 96
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %.val31 = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.j = getelementptr inbounds nuw i8, ptr %.val31, i64 %indvars.iv
  %i.k = load i8, ptr %i.j, align 1, !tbaa !39
  switch i8 %i.k, label %bb.f [
    i8 0, label %bb.g
    i8 3, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.l = trunc nuw nsw i64 %indvars.iv to i32     ; 3 uses
  %i.m = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.l) ; 3 uses
  %.val.i = load ptr, ptr %0, align 8, !tbaa !47  ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %Cba_ManNtkIsOk.exit.i.i.i, label %Cba_ObjNtk.exit

Cba_ManNtkIsOk.exit.i.i.i:                        ; preds = %bb.d
  %i.o = getelementptr i8, ptr %.val.i, i64 1564
  %.val.i.i.i.i = load i32, ptr %i.o, align 4, !tbaa !23
  %.not.i.i.i = icmp slt i32 %i.m, %.val.i.i.i.i
  br i1 %.not.i.i.i, label %bb.e, label %Cba_ObjNtk.exit

bb.e:                                             ; preds = %Cba_ManNtkIsOk.exit.i.i.i
  %i.p = getelementptr i8, ptr %.val.i, i64 1568
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !32
  %i.q = zext nneg i32 %i.m to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !34
  br label %Cba_ObjNtk.exit

Cba_ObjNtk.exit:                                  ; preds = %bb.d, %Cba_ManNtkIsOk.exit.i.i.i, %bb.e
  %i.t = phi ptr [ %i.s, %bb.e ], [ null, %Cba_ManNtkIsOk.exit.i.i.i ], [ null, %bb.d ]
  tail call fastcc void @Cba_ManBoxNumRec_rec(ptr noundef %i.t, ptr noundef %1, ptr noundef %2)
  %i.u = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.l)
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %1, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !10
  %i.y = load i32, ptr %i.c, align 4, !tbaa !10
  %i.z = add nsw i32 %i.y, %i.x
  store i32 %i.z, ptr %i.c, align 4, !tbaa !10
  %i.aa = tail call fastcc i32 @Cba_ObjNtkId(ptr noundef nonnull %0, i32 noundef %i.l)
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !10
  %i.ae = add nsw i32 %i.ad, 1
  %i.af = load i32, ptr %i.f, align 4, !tbaa !10
  %i.ag = add nsw i32 %i.ae, %i.af
  store i32 %i.ag, ptr %i.f, align 4, !tbaa !10
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.ah = load i32, ptr %i.c, align 4, !tbaa !10
  %i.ai = add nsw i32 %i.ah, 1
  store i32 %i.ai, ptr %i.c, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %Cba_ObjNtk.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val30 = load i32, ptr %i.g, align 4, !tbaa !49
  %i.aj = sext i32 %.val30 to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.c, label %.loopexit, !llvm.loop !111

.loopexit:                                        ; preds = %bb.g, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @Cba_ObjNtkId(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = getelementptr inbounds i8, ptr %.val, i64 %i.b
  %i.d = load i8, ptr %i.c, align 1, !tbaa !39
  %.not = icmp eq i8 %i.d, 3
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 188        ; 3 uses
  %.val5 = load i32, ptr %i.e, align 4, !tbaa !36 ; 4 uses
  %i.f = icmp slt i32 %.val5, 1
  br i1 %i.f, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.h = add nsw i32 %1, 1                        ; 4 uses
  %.not.i.not.i.i = icmp slt i32 %1, %.val5
  br i1 %.not.i.not.i.i, label %Cba_ObjFunc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i32, ptr %i.g, align 8, !tbaa !46   ; 4 uses
  %i.j = shl nsw i32 %i.i, 1                      ; 2 uses
  %.not.i.i = icmp slt i32 %1, %i.j
  br i1 %.not.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.l, null
  %i.m = zext nneg i32 %i.h to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  br i1 %.not9.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr @realloc(ptr noundef nonnull %i.l, i64 noundef %i.n) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.n) #22
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.q = phi ptr [ %i.o, %bb.f ], [ %i.p, %bb.g ]
  store ptr %i.q, ptr %i.k, align 8, !tbaa !37
  br label %Vec_IntGrow.exit.sink.split.i.i.i

bb.i:                                             ; preds = %bb.d
  %.not.i.i.not.i.i = icmp sgt i32 %i.i, %1
  br i1 %.not.i.i.not.i.i, label %Vec_IntGrow.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = icmp slt i32 %i.i, 1073741823
  %spec.select.i.i.i = select i1 %i.r, i32 %i.j, i32 2147483647 ; 3 uses
  %.not.i22.i.i.i = icmp slt i32 %i.i, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.k, label %Vec_IntGrow.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %.not9.i23.i.i.i = icmp eq ptr %i.t, null
  %i.u = zext nneg i32 %spec.select.i.i.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = tail call ptr @realloc(ptr noundef nonnull %i.t, i64 noundef %i.v) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #22
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.y = phi ptr [ %i.w, %bb.l ], [ %i.x, %bb.m ]
  store ptr %i.y, ptr %i.s, align 8, !tbaa !37
  br label %Vec_IntGrow.exit.sink.split.i.i.i

Vec_IntGrow.exit.sink.split.i.i.i:                ; preds = %bb.n, %bb.h
  %spec.select.sink.i.i.i = phi i32 [ %spec.select.i.i.i, %bb.n ], [ %i.h, %bb.h ]
  store i32 %spec.select.sink.i.i.i, ptr %i.g, align 8, !tbaa !46
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !36
  br label %Vec_IntGrow.exit.i.i.i

Vec_IntGrow.exit.i.i.i:                           ; preds = %Vec_IntGrow.exit.sink.split.i.i.i, %bb.j, %bb.i
  %i.z = phi i32 [ %.pre.i.i, %Vec_IntGrow.exit.sink.split.i.i.i ], [ %.val5, %bb.j ], [ %.val5, %bb.i ] ; 2 uses
  %.not3.i.i = icmp sgt i32 %i.z, %1
  br i1 %.not3.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit.i.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !37
  %i.ac = sext i32 %i.z to i64                    ; 2 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.h to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %scevgep.i.i = getelementptr i8, ptr %i.ab, i64 %i.ad
  %i.ae = sub nsw i64 %wide.trip.count.i.i.i, %i.ac
  %i.af = shl nsw i64 %i.ae, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep.i.i, i8 0, i64 %i.af, i1 false), !tbaa !10
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %Vec_IntGrow.exit.i.i.i
  store i32 %i.h, ptr %i.e, align 4, !tbaa !36
  br label %Cba_ObjFunc.exit

Cba_ObjFunc.exit:                                 ; preds = %bb.c, %._crit_edge.i.i.i
  %i.ag = getelementptr i8, ptr %0, i64 192
  %.val.i.i = load ptr, ptr %i.ag, align 8, !tbaa !37
  %i.ah = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.b
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.b, %Cba_ObjFunc.exit
  %i.aj = phi i32 [ %i.ai, %Cba_ObjFunc.exit ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %i.aj
}

declare i32 @Abc_NamMemUsed(ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManBlast(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @Abc_FrameUpdateGia(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManInsertAbc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManInsertGia(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Cba_ManCollapse(ptr noundef) local_unnamed_addr #1

declare void @Cec_ManCecSetDefaultParams(ptr noundef) local_unnamed_addr #1

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #1

declare ptr @Gia_ManMiter(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @Cec_ManVerify(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x double> @llvm.fmuladd.v16f64(<16 x double>, <16 x double>, <16 x double>) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind allocsize(0,1) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!5, !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 omnipotent char", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !12, i64 8}
!15 = !{!"Cba_Man_t_", !12, i64 0, !12, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !17, i64 40, !18, i64 48, !18, i64 64, !18, i64 80, !18, i64 96, !6, i64 112, !6, i64 832, !6, i64 1192, !5, i64 1552, !20, i64 1560, !5, i64 1576, !22, i64 1584, !22, i64 1600, !13, i64 1616}
!16 = !{!"p1 _ZTS10Abc_Nam_t_", !13, i64 0}
!17 = !{!"p1 _ZTS14Hash_IntMan_t_", !13, i64 0}
!18 = !{!"Vec_Int_t_", !5, i64 0, !5, i64 4, !19, i64 8}
!19 = !{!"p1 int", !13, i64 0}
!20 = !{!"Vec_Ptr_t_", !5, i64 0, !5, i64 4, !21, i64 8}
!21 = !{!"any p2 pointer", !13, i64 0}
!22 = !{!"Vec_Str_t_", !5, i64 0, !5, i64 4, !12, i64 8}
!23 = !{!20, !5, i64 4}
!24 = !{!15, !16, i64 16}
!25 = !{!15, !16, i64 24}
!26 = !{!15, !17, i64 40}
!27 = !{!28, !5, i64 16}
!28 = !{!"Hash_IntMan_t_", !29, i64 0, !29, i64 8, !5, i64 16}
!29 = !{!"p1 _ZTS10Vec_Int_t_", !13, i64 0}
!30 = !{!15, !12, i64 0}
!31 = !{!15, !16, i64 32}
!32 = !{!20, !21, i64 8}
!33 = !{!20, !5, i64 0}
!34 = !{!13, !13, i64 0}
!35 = !{!15, !5, i64 1552}
!36 = !{!18, !5, i64 4}
!37 = !{!18, !19, i64 8}
!38 = !{!22, !12, i64 8}
!39 = !{!6, !6, i64 0}
!40 = distinct !{!40, !9}
!41 = !{!42, !5, i64 12}
!42 = !{!"Cba_Ntk_t_", !43, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 20, !5, i64 20, !18, i64 24, !18, i64 40, !18, i64 56, !18, i64 72, !22, i64 88, !18, i64 104, !18, i64 120, !18, i64 136, !18, i64 152, !18, i64 168, !18, i64 184, !18, i64 200, !18, i64 216, !18, i64 232, !18, i64 248, !18, i64 264, !18, i64 280, !18, i64 296, !18, i64 312, !18, i64 328, !18, i64 344, !18, i64 360, !18, i64 376, !44, i64 392, !18, i64 400, !18, i64 416}
!43 = !{!"p1 _ZTS10Cba_Man_t_", !13, i64 0}
!44 = !{!"p1 _ZTS10Vec_Ptr_t_", !13, i64 0}
!45 = !{!42, !5, i64 8}
!46 = !{!18, !5, i64 0}
!47 = !{!42, !43, i64 0}
!48 = !{!22, !5, i64 0}
!49 = !{!22, !5, i64 4}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = !{!42, !5, i64 16}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = !{!42, !44, i64 392}
!61 = !{!62, !5, i64 4}
!62 = !{!"Vec_Vec_t_", !5, i64 0, !5, i64 4, !21, i64 8}
!63 = !{!62, !21, i64 8}
!64 = distinct !{!64, !9}
!65 = distinct !{!65, !9}
!66 = !{!67, !13, i64 576}
!67 = !{!"Abc_Frame_t_", !12, i64 0, !12, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !44, i64 40, !5, i64 48, !69, i64 56, !69, i64 64, !69, i64 72, !69, i64 80, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !69, i64 112, !70, i64 120, !70, i64 124, !5, i64 128, !5, i64 132, !71, i64 136, !71, i64 144, !71, i64 152, !72, i64 160, !72, i64 168, !44, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !6, i64 208, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !12, i64 296, !70, i64 304, !29, i64 312, !5, i64 320, !73, i64 328, !73, i64 336, !73, i64 344, !73, i64 352, !73, i64 360, !5, i64 368, !5, i64 372, !5, i64 376, !5, i64 380, !5, i64 384, !5, i64 388, !74, i64 392, !74, i64 400, !44, i64 408, !44, i64 416, !29, i64 424, !29, i64 432, !5, i64 440, !5, i64 444, !44, i64 448, !44, i64 456, !44, i64 464, !12, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !13, i64 520, !13, i64 528, !13, i64 536, !13, i64 544, !29, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !16, i64 592, !75, i64 600, !76, i64 608, !77, i64 616, !73, i64 624, !73, i64 632, !29, i64 640, !29, i64 648, !29, i64 656, !29, i64 664, !19, i64 672, !19, i64 680, !13, i64 688, !19, i64 696, !13, i64 704}
!68 = !{!"p1 _ZTS9st__table", !13, i64 0}
!69 = !{!"p1 _ZTS10Abc_Ntk_t_", !13, i64 0}
!70 = !{!"float", !6, i64 0}
!71 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!72 = !{!"double", !6, i64 0}
!73 = !{!"p1 _ZTS10Gia_Man_t_", !13, i64 0}
!74 = !{!"p1 _ZTS10Abc_Cex_t_", !13, i64 0}
!75 = !{!"p1 _ZTS10Vec_Wec_t_", !13, i64 0}
!76 = !{!"p1 _ZTS13Hsh_VecMan_t_", !13, i64 0}
!77 = !{!"p1 _ZTS9DdManager", !13, i64 0}
!78 = distinct !{!78, !9}
!79 = distinct !{null}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
!82 = distinct !{!82, !9}
!83 = distinct !{!83, !9, !84, !85}
!84 = !{!"llvm.loop.isvectorized", i32 1}
!85 = !{!"llvm.loop.unroll.runtime.disable"}
!86 = distinct !{!86, !9, !85, !84}
!87 = distinct !{!87, !9, !84, !85}
!88 = distinct !{!88, !9, !85, !84}
!89 = distinct !{!89, !9}
!90 = distinct !{!90, !9}
!91 = !{!67, !69, i64 56}
!92 = !{!67, !73, i64 328}
!93 = distinct !{!93, !9}
!94 = distinct !{!94, !9}
!95 = !{!96, !5, i64 32}
!96 = !{!"Cec_ParCec_t_", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !12, i64 40, !12, i64 48, !44, i64 56}
!97 = distinct !{!97, !9}
!98 = distinct !{!98, !9}
!99 = !{!67, !5, i64 440}
!100 = distinct !{!100, !9}
!101 = distinct !{!101, !9}
!102 = distinct !{!102, !9}
!103 = !{!15, !21, i64 1568}
!104 = !{!28, !29, i64 8}
!105 = !{!28, !29, i64 0}
!106 = !{!71, !71, i64 0}
!107 = !{!108}
!108 = distinct !{!108, !109, !"vprintf: argument 0"}
!109 = distinct !{!109, !"vprintf"}
!110 = distinct !{null}
end_hunk_2
