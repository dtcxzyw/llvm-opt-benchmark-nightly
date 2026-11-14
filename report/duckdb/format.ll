Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/format?download=true
inline.NumInlined: 5789
inline.NumDeleted: 1347
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 158
loop-unroll.NumUnrolled: 176
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %.2.i = phi ptr [ %i.cq, %bb.h ], [ %.017.i, %bb.e ] ; 3 uses
  %.1.i = phi i32 [ %i.ch, %bb.h ], [ %spec.select23.i, %bb.e ]
  %i.cr = shl nuw nsw i32 %.1.i, 1
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 2, !tbaa !148
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cu, ptr %.2.i, align 1, !tbaa !148
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !148
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !148
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

bb.i:                                             ; preds = %bb.a
  %.not124 = icmp slt i32 %i.e, 0
  br i1 %.not124, label %bb.t, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cz = and i32 %i.i, 16711680
  %i.da = icmp ne i32 %i.cz, 0
  %i.db = icmp sgt i32 %i.f, 3
  %or.cond3 = select i1 %i.da, i1 %i.db, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.o

bb.k:                                             ; preds = %bb.j
  %i.dc = urem i32 %i.f, 3                        ; 2 uses
  %i.dd = icmp eq i32 %i.dc, 0
  %spec.select = select i1 %i.dd, i32 3, i32 %i.dc
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142
  %.0105230 = phi i32 [ 0, %bb.k ], [ %i.fq, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 5 uses
  %.2229 = phi ptr [ %1, %bb.k ], [ %.5, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 3 uses
  %storemerge228 = phi i32 [ %spec.select, %bb.k ], [ 3, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 5 uses
  %i.de = icmp sgt i32 %.0105230, 0
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.df = load i32, ptr %i.h, align 4
  %i.dg = lshr i32 %i.df, 16
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.2229, i64 1
  store i8 %i.dh, ptr %.2229, align 1, !tbaa !148
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.di, %bb.m ], [ %.2229, %bb.l ] ; 8 uses
  %.3316 = ptrtoaddr ptr %.3 to i64
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !470 ; 2 uses
  %i.dk = icmp slt i32 %.0105230, %i.dj
  br i1 %i.dk, label %iter.check333, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

iter.check333:                                    ; preds = %bb.n
  %i.dl = sub nsw i32 %i.dj, %.0105230            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge228, i32 %i.dl) ; 5 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !469   ; 3 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64              ; 2 uses
  %i.do = sext i32 %.0105230 to i64               ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.do ; 7 uses
  %i.dq = sext i32 %.sroa.speculated to i64       ; 7 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %min.iters.check317 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check317, label %.lr.ph.i.i135.preheader, label %vector.memcheck318

vector.memcheck318:                               ; preds = %iter.check333
  %i.ds = ptrtoaddr ptr %i.dm to i64
  %i.dt = add i64 %i.ds, %i.do
  %i.du = sub i64 %i.dt, %.3316
  %diff.check319 = icmp ugt i64 %i.du, -32
  br i1 %diff.check319, label %.lr.ph.i.i135.preheader, label %vector.main.loop.iter.check320

vector.main.loop.iter.check320:                   ; preds = %vector.memcheck318
  %min.iters.check321 = icmp ult i32 %.sroa.speculated, 32
  br i1 %min.iters.check321, label %vec.epilog.ph337, label %vector.ph322

vector.ph322:                                     ; preds = %vector.main.loop.iter.check320
  %n.vec323 = and i64 %i.dq, -32                  ; 5 uses
  %i.dv = getelementptr i8, ptr %i.dp, i64 %n.vec323
  %i.dw = getelementptr i8, ptr %.3, i64 %n.vec323 ; 2 uses
  br label %vector.body324

vector.body324:                                   ; preds = %vector.ph322, %vector.body324
  %index325 = phi i64 [ 0, %vector.ph322 ], [ %index.next330, %vector.body324 ] ; 3 uses
  %next.gep326 = getelementptr i8, ptr %i.dp, i64 %index325 ; 2 uses
  %next.gep327 = getelementptr i8, ptr %.3, i64 %index325 ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep326, i64 16
  %wide.load328 = load <16 x i8>, ptr %next.gep326, align 1, !tbaa !148
  %wide.load329 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !148
  %i.dy = getelementptr i8, ptr %next.gep327, i64 16
  store <16 x i8> %wide.load328, ptr %next.gep327, align 1, !tbaa !148
  store <16 x i8> %wide.load329, ptr %i.dy, align 1, !tbaa !148
  %index.next330 = add nuw i64 %index325, 32      ; 2 uses
  %i.dz = icmp eq i64 %index.next330, %n.vec323
  br i1 %i.dz, label %middle.block331, label %vector.body324, !llvm.loop !1740

middle.block331:                                  ; preds = %vector.body324
  %cmp.n332 = icmp eq i64 %n.vec323, %i.dq
  br i1 %cmp.n332, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %vec.epilog.iter.check334

vec.epilog.iter.check334:                         ; preds = %middle.block331
  %i.ea = and i32 %.sroa.speculated, 24
  %min.epilog.iters.check336 = icmp eq i32 %i.ea, 0
  br i1 %min.epilog.iters.check336, label %.lr.ph.i.i135.preheader, label %vec.epilog.ph337, !prof !152

vec.epilog.ph337:                                 ; preds = %vector.main.loop.iter.check320, %vec.epilog.iter.check334
  %vec.epilog.resume.val338 = phi i64 [ %n.vec323, %vec.epilog.iter.check334 ], [ 0, %vector.main.loop.iter.check320 ]
  %n.vec339 = and i64 %i.dq, -8                   ; 4 uses
  %i.eb = getelementptr i8, ptr %i.dp, i64 %n.vec339
  %i.ec = getelementptr i8, ptr %.3, i64 %n.vec339 ; 2 uses
  br label %vec.epilog.vector.body340

vec.epilog.vector.body340:                        ; preds = %vec.epilog.vector.body340, %vec.epilog.ph337
  %index341 = phi i64 [ %vec.epilog.resume.val338, %vec.epilog.ph337 ], [ %index.next345, %vec.epilog.vector.body340 ] ; 3 uses
  %next.gep342 = getelementptr i8, ptr %i.dp, i64 %index341
  %next.gep343 = getelementptr i8, ptr %.3, i64 %index341
  %wide.load344 = load <8 x i8>, ptr %next.gep342, align 1, !tbaa !148
  store <8 x i8> %wide.load344, ptr %next.gep343, align 1, !tbaa !148
  %index.next345 = add nuw i64 %index341, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next345, %n.vec339
  br i1 %i.ed, label %vec.epilog.middle.block346, label %vec.epilog.vector.body340, !llvm.loop !1741

vec.epilog.middle.block346:                       ; preds = %vec.epilog.vector.body340
  %cmp.n347 = icmp eq i64 %n.vec339, %i.dq
  br i1 %cmp.n347, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135.preheader

.lr.ph.i.i135.preheader:                          ; preds = %iter.check333, %vector.memcheck318, %vec.epilog.iter.check334, %vec.epilog.middle.block346
  %.011.i.i136.ph = phi ptr [ %i.dp, %iter.check333 ], [ %i.dp, %vector.memcheck318 ], [ %i.dv, %vec.epilog.iter.check334 ], [ %i.eb, %vec.epilog.middle.block346 ] ; 3 uses
  %.0810.i.i137.ph = phi ptr [ %.3, %iter.check333 ], [ %.3, %vector.memcheck318 ], [ %i.dw, %vec.epilog.iter.check334 ], [ %i.ec, %vec.epilog.middle.block346 ] ; 2 uses
  %i.ee = add i64 %i.dn, %i.dq
  %i.ef = add i64 %i.ee, %i.do
  %.011.i.i136.ph548 = ptrtoaddr ptr %.011.i.i136.ph to i64 ; 2 uses
  %i.eg = sub i64 %i.ef, %.011.i.i136.ph548
  %i.eh = add i64 %i.dn, -1
  %i.ei = add i64 %i.eh, %i.dq
  %i.ej = add i64 %i.ei, %i.do
  %i.ek = sub i64 %i.ej, %.011.i.i136.ph548
  %xtraiter549 = and i64 %i.eg, 7                 ; 2 uses
  %lcmp.mod550.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod550.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol

.lr.ph.i.i135.prol:                               ; preds = %.lr.ph.i.i135.preheader, %.lr.ph.i.i135.prol
  %.011.i.i136.prol = phi ptr [ %i.em, %.lr.ph.i.i135.prol ], [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ] ; 2 uses
  %.0810.i.i137.prol = phi ptr [ %i.en, %.lr.ph.i.i135.prol ], [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ] ; 2 uses
  %prol.iter551 = phi i64 [ %prol.iter551.next, %.lr.ph.i.i135.prol ], [ 0, %.lr.ph.i.i135.preheader ]
  %i.el = load i8, ptr %.011.i.i136.prol, align 1, !tbaa !148
  store i8 %i.el, ptr %.0810.i.i137.prol, align 1, !tbaa !148
  %i.em = getelementptr inbounds nuw i8, ptr %.011.i.i136.prol, i64 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0810.i.i137.prol, i64 1 ; 3 uses
  %prol.iter551.next = add i64 %prol.iter551, 1   ; 2 uses
  %prol.iter551.cmp.not = icmp eq i64 %prol.iter551.next, %xtraiter549
  br i1 %prol.iter551.cmp.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol, !llvm.loop !1742

.lr.ph.i.i135.prol.loopexit:                      ; preds = %.lr.ph.i.i135.prol, %.lr.ph.i.i135.preheader
  %.lcssa545.unr = phi ptr [ poison, %.lr.ph.i.i135.preheader ], [ %i.en, %.lr.ph.i.i135.prol ]
  %.011.i.i136.unr = phi ptr [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ], [ %i.em, %.lr.ph.i.i135.prol ]
  %.0810.i.i137.unr = phi ptr [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ], [ %i.en, %.lr.ph.i.i135.prol ]
  %i.eo = icmp ult i64 %i.ek, 7
  br i1 %i.eo, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135
  %.011.i.i136 = phi ptr [ %i.fl, %.lr.ph.i.i135 ], [ %.011.i.i136.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %.0810.i.i137 = phi ptr [ %i.fm, %.lr.ph.i.i135 ], [ %.0810.i.i137.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %i.ep = load i8, ptr %.011.i.i136, align 1, !tbaa !148
  store i8 %i.ep, ptr %.0810.i.i137, align 1, !tbaa !148
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 1
  %i.es = load i8, ptr %i.eq, align 1, !tbaa !148
  store i8 %i.es, ptr %i.er, align 1, !tbaa !148
  %i.et = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 2
  %i.ev = load i8, ptr %i.et, align 1, !tbaa !148
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !148
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 3
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !148
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !148
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 4
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !148
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !148
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 5
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 5
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !148
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !148
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 6
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 6
  %i.fh = load i8, ptr %i.ff, align 1, !tbaa !148
  store i8 %i.fh, ptr %i.fg, align 1, !tbaa !148
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 7
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 7
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !148
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !148
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 8 ; 2 uses
  %.not.i.i138.7 = icmp eq ptr %i.fl, %i.dr
  br i1 %.not.i.i138.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135, !llvm.loop !1743

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140: ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135, %vec.epilog.middle.block346, %middle.block331
  %.lcssa300 = phi ptr [ %i.ec, %vec.epilog.middle.block346 ], [ %i.dw, %middle.block331 ], [ %.lcssa545.unr, %.lr.ph.i.i135.prol.loopexit ], [ %i.fm, %.lr.ph.i.i135 ] ; 2 uses
  %2 = icmp sge i32 %i.dl, %storemerge228
  %3 = sub nsw i32 %storemerge228, %.sroa.speculated ; 2 uses
  %i.fn = icmp slt i32 %3, 1
  %or.cond289 = select i1 %2, i1 true, i1 %i.fn
  br i1 %or.cond289, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split: ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, %bb.n
  %.sink287 = phi i32 [ %3, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ], [ %storemerge228, %bb.n ]
  %.lcssa283.sink285 = phi ptr [ %.lcssa300, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ], [ %.3, %bb.n ] ; 2 uses
  %i.fo = zext nneg i32 %.sink287 to i64          ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.lcssa283.sink285, i64 %i.fo
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.lcssa283.sink285, i8 48, i64 %i.fo, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142:           ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140
  %.5 = phi ptr [ %i.fp, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split ], [ %.lcssa300, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ] ; 2 uses
  %i.fq = add nsw i32 %.0105230, %storemerge228   ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %i.f
  br i1 %i.fr, label %bb.l, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, !llvm.loop !1744

bb.o:                                             ; preds = %bb.j
  %i.fs = load ptr, ptr %0, align 8, !tbaa !469   ; 7 uses
  %i.ft = sext i32 %i.c to i64                    ; 6 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %i.ft
  %.not9.i.i145 = icmp eq i32 %i.c, 0
  br i1 %.not9.i.i145, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151, label %iter.check

iter.check:                                       ; preds = %bb.o
  %i.fv = ptrtoaddr ptr %i.fs to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  %i.fw = sub i64 %i.fv, %i.a
  %diff.check = icmp ugt i64 %i.fw, -32
  %or.cond531.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond531.a, label %.lr.ph.i.i146.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check302 = icmp ult i32 %i.c, 32
  br i1 %min.iters.check302, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.ft, -32                     ; 5 uses
  %i.fx = getelementptr i8, ptr %i.fs, i64 %n.vec
  %i.fy = getelementptr i8, ptr %1, i64 %n.vec    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.fs, i64 %index ; 2 uses
  %next.gep303 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.fz = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !148
  %wide.load304 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !148
  %i.ga = getelementptr i8, ptr %next.gep303, i64 16
  store <16 x i8> %wide.load, ptr %next.gep303, align 1, !tbaa !148
  store <16 x i8> %wide.load304, ptr %i.ga, align 1, !tbaa !148
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !1745

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ft
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.gc = and i32 %i.c, 24
  %min.epilog.iters.check = icmp eq i32 %i.gc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i146.preheader, label %vec.epilog.ph, !prof !152

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec305 = and i64 %i.ft, -8                   ; 4 uses
  %i.gd = getelementptr i8, ptr %i.fs, i64 %n.vec305
  %i.ge = getelementptr i8, ptr %1, i64 %n.vec305 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index306 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next310, %vec.epilog.vector.body ] ; 3 uses
  %next.gep307 = getelementptr i8, ptr %i.fs, i64 %index306
  %next.gep308 = getelementptr i8, ptr %1, i64 %index306
  %wide.load309 = load <8 x i8>, ptr %next.gep307, align 1, !tbaa !148
  store <8 x i8> %wide.load309, ptr %next.gep308, align 1, !tbaa !148
  %index.next310 = add nuw i64 %index306, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.gf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1746

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n311 = icmp eq i64 %n.vec305, %i.ft
  br i1 %cmp.n311, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i147.ph = phi ptr [ %i.fs, %iter.check ], [ %i.fx, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i148.ph = phi ptr [ %1, %iter.check ], [ %i.fy, %vec.epilog.iter.check ], [ %i.ge, %vec.epilog.middle.block ] ; 2 uses
  %i.gg = add i64 %i.fv, %i.ft                    ; 2 uses
  %.011.i.i147.ph547 = ptrtoaddr ptr %.011.i.i147.ph to i64 ; 2 uses
  %i.gh = sub i64 %i.gg, %.011.i.i147.ph547
  %xtraiter = and i64 %i.gh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol

.lr.ph.i.i146.prol:                               ; preds = %.lr.ph.i.i146.preheader, %.lr.ph.i.i146.prol
  %.011.i.i147.prol = phi ptr [ %i.gj, %.lr.ph.i.i146.prol ], [ %.011.i.i147.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %.0810.i.i148.prol = phi ptr [ %i.gk, %.lr.ph.i.i146.prol ], [ %.0810.i.i148.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i146.prol ], [ 0, %.lr.ph.i.i146.preheader ]
  %i.gi = load i8, ptr %.011.i.i147.prol, align 1, !tbaa !148
  store i8 %i.gi, ptr %.0810.i.i148.prol, align 1, !tbaa !148
  %i.gj = getelementptr inbounds nuw i8, ptr %.011.i.i147.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i.i148.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol, !llvm.loop !1747

.lr.ph.i.i146.prol.loopexit:                      ; preds = %.lr.ph.i.i146.prol, %.lr.ph.i.i146.preheader
  %.lcssa546.unr = phi ptr [ poison, %.lr.ph.i.i146.preheader ], [ %i.gk, %.lr.ph.i.i146.prol ]
  %.011.i.i147.unr = phi ptr [ %.011.i.i147.ph, %.lr.ph.i.i146.preheader ], [ %i.gj, %.lr.ph.i.i146.prol ]
  %.0810.i.i148.unr = phi ptr [ %.0810.i.i148.ph, %.lr.ph.i.i146.preheader ], [ %i.gk, %.lr.ph.i.i146.prol ]
  %i.gl = sub i64 %.011.i.i147.ph547, %i.gg
  %i.gm = icmp ugt i64 %i.gl, -8
  br i1 %i.gm, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146
  %.011.i.i147 = phi ptr [ %i.hj, %.lr.ph.i.i146 ], [ %.011.i.i147.unr, %.lr.ph.i.i146.prol.loopexit ] ; 9 uses
  %.0810.i.i148 = phi ptr [ %i.hk, %.lr.ph.i.i146 ], [ %.0810.i.i148.unr, %.lr.ph.i.i146.prol.loopexit ] ; 9 uses
  %i.gn = load i8, ptr %.011.i.i147, align 1, !tbaa !148
  store i8 %i.gn, ptr %.0810.i.i148, align 1, !tbaa !148
  %i.go = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 1
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !148
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !148
  %i.gr = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 2
  %i.gt = load i8, ptr %i.gr, align 1, !tbaa !148
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !148
  %i.gu = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 3
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !148
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !148
  %i.gx = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 4
  %i.gz = load i8, ptr %i.gx, align 1, !tbaa !148
  store i8 %i.gz, ptr %i.gy, align 1, !tbaa !148
  %i.ha = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 5
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 5
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !148
  store i8 %i.hc, ptr %i.hb, align 1, !tbaa !148
  %i.hd = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 6
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 6
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !148
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !148
  %i.hg = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 7
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !148
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !148
  %i.hj = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 8 ; 2 uses
  %.not.i.i149.7 = icmp eq ptr %i.hj, %i.fu
  br i1 %.not.i.i149.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146, !llvm.loop !1748

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit: ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146, %vec.epilog.middle.block, %middle.block
  %.lcssa301 = phi ptr [ %i.ge, %vec.epilog.middle.block ], [ %i.fy, %middle.block ], [ %.lcssa546.unr, %.lr.ph.i.i146.prol.loopexit ], [ %i.hk, %.lr.ph.i.i146 ]
  %.pre = load i32, ptr %i.b, align 8, !tbaa !470
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151: ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, %bb.o
  %i.hl = phi i32 [ 0, %bb.o ], [ %.pre, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit ]
  %.08.lcssa.i.i150 = phi ptr [ %1, %bb.o ], [ %.lcssa301, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit ] ; 3 uses
  %i.hm = sub nsw i32 %i.f, %i.hl                 ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 1
  br i1 %i.hn, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, label %bb.p

bb.p:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151
  %i.ho = zext nneg i32 %i.hm to i64              ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i150, i64 %i.ho
  tail call void @llvm.memset.p0.i64(ptr align 1 %.08.lcssa.i.i150, i8 48, i64 %i.ho, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153:           ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142, %bb.p, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151
  %.6 = phi ptr [ %i.hp, %bb.p ], [ %.08.lcssa.i.i150, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151 ], [ %.5, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142 ] ; 4 uses
  %i.hq = load i32, ptr %i.h, align 4
  %i.hr = and i32 %i.hq, 536870912
  %.not127 = icmp eq i32 %i.hr, 0
  br i1 %.not127, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %bb.q

bb.q:                                             ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !472
  %i.hu = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 4 uses
  store i8 %i.ht, ptr %.6, align 1, !tbaa !148
  %i.hv = load i32, ptr %i.g, align 8, !tbaa !474
  %i.hw = sub nsw i32 %i.hv, %i.f                 ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, 0
  br i1 %i.hx, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.hy = load i32, ptr %i.h, align 4
  %i.hz = and i32 %i.hy, 255
  %.not128 = icmp eq i32 %i.hz, 2
  br i1 %.not128, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ia = getelementptr inbounds nuw i8, ptr %.6, i64 2
  store i8 48, ptr %i.hu, align 1, !tbaa !148
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155:           ; preds = %bb.q
  %i.ib = zext nneg i32 %i.hw to i64              ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.ib
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hu, i8 48, i64 %i.ib, i1 false)
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

bb.t:                                             ; preds = %bb.i
  %i.id = icmp sgt i32 %i.f, 0
  br i1 %i.id, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ie = and i32 %i.i, 16711680
  %i.if = icmp ne i32 %i.ie, 0
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %or.cond534 = select i1 %min.iters.check354, i1 true, i1 %diff.check356
  br i1 %or.cond534, label %.lr.ph.i.i189.preheader, label %vector.main.loop.iter.check357

vector.main.loop.iter.check357:                   ; preds = %iter.check370
  %min.iters.check358 = icmp ult i32 %.1216, 32
  br i1 %min.iters.check358, label %vec.epilog.ph374, label %vector.ph359

vector.ph359:                                     ; preds = %vector.main.loop.iter.check357
  %n.vec360 = and i64 %i.qj, -32                  ; 5 uses
  %i.qn = getelementptr i8, ptr %i.qi, i64 %n.vec360
  %i.qo = getelementptr i8, ptr %.0.i.i186, i64 %n.vec360 ; 2 uses
  br label %vector.body361

vector.body361:                                   ; preds = %vector.ph359, %vector.body361
  %index362 = phi i64 [ 0, %vector.ph359 ], [ %index.next367, %vector.body361 ] ; 3 uses
  %next.gep363 = getelementptr i8, ptr %i.qi, i64 %index362 ; 2 uses
  %next.gep364 = getelementptr i8, ptr %.0.i.i186, i64 %index362 ; 2 uses
  %i.qp = getelementptr i8, ptr %next.gep363, i64 16
  %wide.load365 = load <16 x i8>, ptr %next.gep363, align 1, !tbaa !148
  %wide.load366 = load <16 x i8>, ptr %i.qp, align 1, !tbaa !148
  %i.qq = getelementptr i8, ptr %next.gep364, i64 16
  store <16 x i8> %wide.load365, ptr %next.gep364, align 1, !tbaa !148
  store <16 x i8> %wide.load366, ptr %i.qq, align 1, !tbaa !148
  %index.next367 = add nuw i64 %index362, 32      ; 2 uses
  %i.qr = icmp eq i64 %index.next367, %n.vec360
  br i1 %i.qr, label %middle.block368, label %vector.body361, !llvm.loop !1764

middle.block368:                                  ; preds = %vector.body361
  %cmp.n369 = icmp eq i64 %n.vec360, %i.qj
  br i1 %cmp.n369, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check371

vec.epilog.iter.check371:                         ; preds = %middle.block368
  %i.qs = and i32 %.1216, 24
  %min.epilog.iters.check373 = icmp eq i32 %i.qs, 0
  br i1 %min.epilog.iters.check373, label %.lr.ph.i.i189.preheader, label %vec.epilog.ph374, !prof !152

vec.epilog.ph374:                                 ; preds = %vector.main.loop.iter.check357, %vec.epilog.iter.check371
  %vec.epilog.resume.val375 = phi i64 [ %n.vec360, %vec.epilog.iter.check371 ], [ 0, %vector.main.loop.iter.check357 ]
  %n.vec376 = and i64 %i.qj, -8                   ; 4 uses
  %i.qt = getelementptr i8, ptr %i.qi, i64 %n.vec376
  %i.qu = getelementptr i8, ptr %.0.i.i186, i64 %n.vec376 ; 2 uses
  br label %vec.epilog.vector.body377

vec.epilog.vector.body377:                        ; preds = %vec.epilog.vector.body377, %vec.epilog.ph374
  %index378 = phi i64 [ %vec.epilog.resume.val375, %vec.epilog.ph374 ], [ %index.next382, %vec.epilog.vector.body377 ] ; 3 uses
  %next.gep379 = getelementptr i8, ptr %i.qi, i64 %index378
  %next.gep380 = getelementptr i8, ptr %.0.i.i186, i64 %index378
  %wide.load381 = load <8 x i8>, ptr %next.gep379, align 1, !tbaa !148
  store <8 x i8> %wide.load381, ptr %next.gep380, align 1, !tbaa !148
  %index.next382 = add nuw i64 %index378, 8       ; 2 uses
  %i.qv = icmp eq i64 %index.next382, %n.vec376
  br i1 %i.qv, label %vec.epilog.middle.block383, label %vec.epilog.vector.body377, !llvm.loop !1765

vec.epilog.middle.block383:                       ; preds = %vec.epilog.vector.body377
  %cmp.n384 = icmp eq i64 %n.vec376, %i.qj
  br i1 %cmp.n384, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %iter.check370, %vec.epilog.iter.check371, %vec.epilog.middle.block383
  %.011.i.i190.ph = phi ptr [ %i.qi, %iter.check370 ], [ %i.qn, %vec.epilog.iter.check371 ], [ %i.qt, %vec.epilog.middle.block383 ] ; 3 uses
  %.0810.i.i191.ph = phi ptr [ %.0.i.i186, %iter.check370 ], [ %i.qo, %vec.epilog.iter.check371 ], [ %i.qu, %vec.epilog.middle.block383 ] ; 2 uses
  %i.qw = add i64 %i.ql, %i.qj                    ; 2 uses
  %.011.i.i190.ph552 = ptrtoaddr ptr %.011.i.i190.ph to i64 ; 2 uses
  %i.qx = sub i64 %i.qw, %.011.i.i190.ph552
  %xtraiter553 = and i64 %i.qx, 7                 ; 2 uses
  %lcmp.mod554.not = icmp eq i64 %xtraiter553, 0
  br i1 %lcmp.mod554.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.011.i.i190.prol = phi ptr [ %i.qz, %.lr.ph.i.i189.prol ], [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %.0810.i.i191.prol = phi ptr [ %i.ra, %.lr.ph.i.i189.prol ], [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter555 = phi i64 [ %prol.iter555.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.qy = load i8, ptr %.011.i.i190.prol, align 1, !tbaa !148
  store i8 %i.qy, ptr %.0810.i.i191.prol, align 1, !tbaa !148
  %i.qz = getelementptr inbounds nuw i8, ptr %.011.i.i190.prol, i64 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0810.i.i191.prol, i64 1 ; 3 uses
  %prol.iter555.next = add i64 %prol.iter555, 1   ; 2 uses
  %prol.iter555.cmp.not = icmp eq i64 %prol.iter555.next, %xtraiter553
  br i1 %prol.iter555.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !1766

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa543.unr = phi ptr [ poison, %.lr.ph.i.i189.preheader ], [ %i.ra, %.lr.ph.i.i189.prol ]
  %.011.i.i190.unr = phi ptr [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ], [ %i.qz, %.lr.ph.i.i189.prol ]
  %.0810.i.i191.unr = phi ptr [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ], [ %i.ra, %.lr.ph.i.i189.prol ]
  %i.rb = sub i64 %.011.i.i190.ph552, %i.qw
  %i.rc = icmp ugt i64 %i.rb, -8
  br i1 %i.rc, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.011.i.i190 = phi ptr [ %i.rz, %.lr.ph.i.i189 ], [ %.011.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %.0810.i.i191 = phi ptr [ %i.sa, %.lr.ph.i.i189 ], [ %.0810.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.rd = load i8, ptr %.011.i.i190, align 1, !tbaa !148
  store i8 %i.rd, ptr %.0810.i.i191, align 1, !tbaa !148
  %i.re = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 1
  %i.rg = load i8, ptr %i.re, align 1, !tbaa !148
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !148
  %i.rh = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 2
  %i.ri = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 2
  %i.rj = load i8, ptr %i.rh, align 1, !tbaa !148
  store i8 %i.rj, ptr %i.ri, align 1, !tbaa !148
  %i.rk = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 3
  %i.rl = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 3
  %i.rm = load i8, ptr %i.rk, align 1, !tbaa !148
  store i8 %i.rm, ptr %i.rl, align 1, !tbaa !148
  %i.rn = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 4
  %i.ro = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 4
  %i.rp = load i8, ptr %i.rn, align 1, !tbaa !148
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !148
  %i.rq = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 5
  %i.rr = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 5
  %i.rs = load i8, ptr %i.rq, align 1, !tbaa !148
  store i8 %i.rs, ptr %i.rr, align 1, !tbaa !148
  %i.rt = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 6
  %i.ru = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 6
  %i.rv = load i8, ptr %i.rt, align 1, !tbaa !148
  store i8 %i.rv, ptr %i.ru, align 1, !tbaa !148
  %i.rw = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 7
  %i.rx = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 7
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !148
  store i8 %i.ry, ptr %i.rx, align 1, !tbaa !148
  %i.rz = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 8 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.rz, %i.qk
  br i1 %.not.i.i192.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189, !llvm.loop !1767

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.ab, %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block368, %vec.epilog.middle.block383, %middle.block475, %vec.epilog.middle.block490, %.critedge, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, %bb.s, %bb.r, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, %bb.ad, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cy, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit ], [ %i.pl, %.critedge7 ], [ %i.ia, %bb.s ], [ %.6, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153 ], [ %i.hu, %bb.r ], [ %.08.lcssa.i.i182, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183 ], [ %i.pk, %bb.ad ], [ %i.nd, %.lr.ph.i.i171 ], [ %.11, %bb.ab ], [ %.0.i.i186, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187 ], [ %i.ic, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155 ], [ %.11, %.critedge ], [ %i.lx, %vec.epilog.middle.block490 ], [ %i.ls, %middle.block475 ], [ %i.qu, %vec.epilog.middle.block383 ], [ %i.qo, %middle.block368 ], [ %.lcssa535.unr.a, %.lr.ph.i.i171.prol.loopexit ], [ %.lcssa543.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.sa, %.lr.ph.i.i189 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #9 comdat align 2 !guid !1773 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !470  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !471  ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !474
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0186.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0186.0 = add i64 %.sroa.0186.0.v, %1
  %i.r = sext i32 %i.b to i64
  %gepdiff227 = add i64 %.sroa.0186.0, %i.r
  %i.s = add nsw i32 %i.l, -1
  %i.t = zext nneg i32 %i.s to i64
  %.sroa.0186.1.v = select i1 %i.p, i64 %i.t, i64 -1
  %.sroa.0186.1 = add i64 %gepdiff227, %.sroa.0186.1.v ; 2 uses
  %i.u = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0186.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.u, i1 true) ; 2 uses
  %i.v = icmp samesign ugt i32 %.0.i, 99
  %i.w = icmp samesign ugt i32 %.0.i, 999
  %i.x = add i64 %.sroa.0186.1, 3
  %spec.select.i = select i1 %i.w, i64 %i.x, i64 %.sroa.028.0.i
  %i.y = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.v, i64 %i.y, i64 %.sroa.028.0.i
  %i.z = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = and i32 %i.h, 16711680
  %i.ab = icmp ne i32 %i.aa, 0
  %i.ac = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.ad = urem i32 %i.e, 3                        ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %spec.select = select i1 %i.ae, i32 3, i32 %i.ad ; 5 uses
  %i.af = icmp sgt i32 %i.b, 0
  br i1 %i.af, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ag = zext nneg i32 %spec.select to i64
  %i.ah = add i64 %1, %i.ag
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ai = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 3 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = sub nsw i32 %spec.select, %i.ai            ; 2 uses
  %3 = icmp sgt i32 %2, 0
  %i.al = add nsw i32 %2, -1
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.ao = add i64 %i.an, %i.am
  %.sroa.02.0.lcssa.i.i.i134.peel = select i1 %3, i64 %i.ao, i64 %.sroa.05.0.lcssa.i.i133.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i134.peel, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102233 = phi i32 [ %i.ay, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0186.2231 = phi i64 [ %.sroa.0186.4, %bb.k ], [ %.sroa.0186.2231.ph, %.peel.next.preheader ] ; 2 uses
  %i.ap = icmp slt i32 %.0102233, %i.b
  br i1 %i.ap, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select220 = add i64 %.sroa.0186.2231, 1
  %i.aq = sub nsw i32 %i.b, %.0102233             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.aq, i32 3) ; 2 uses
  %i.ar = zext nneg i32 %.sroa.speculated to i64
  %.sroa.05.0.lcssa.i.i133 = add i64 %spec.select220, %i.ar ; 2 uses
  %i.as = icmp slt i32 %i.aq, 3
  br i1 %i.as, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.at = sub i32 2, %.sroa.speculated
  %i.au = zext nneg i32 %i.at to i64
  %i.av = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.aw = add i64 %i.av, %i.au
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.ax = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.aw, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.ax, %bb.j ] ; 2 uses
  %i.ay = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.e
  br i1 %i.az, label %.peel.next, label %.loopexit229, !llvm.loop !1769

bb.l:                                             ; preds = %bb.d
  %i.ba = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.ba    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bb = add nsw i32 %i.d, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.be = add i64 %i.bd, %i.bc
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.be
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bf = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bf, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !474
  %i.bh = sub nsw i32 %i.bg, %i.e                 ; 2 uses
  %i.bi = icmp sgt i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bj = add nsw i32 %i.bh, -1
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = add i64 %.sroa.0186.5, 2
  %i.bm = add i64 %i.bl, %i.bk
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bn = icmp sgt i32 %i.e, 0
  br i1 %i.bn, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bo = and i32 %i.h, 16711680
  %i.bp = icmp ne i32 %i.bo, 0
  %i.bq = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.bp, i1 %i.bq, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.br = urem i32 %i.e, 3                        ; 2 uses
  %i.bs = icmp eq i32 %i.br, 0
  %spec.select126 = select i1 %i.bs, i32 3, i32 %i.br ; 4 uses
  %i.bt = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bt ; 2 uses
  %i.bu = add i32 %i.b, %i.d
  %i.bv = xor i32 %spec.select126, -1
  %i.bw = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = udiv i32 %i.bw, 3
  %i.by = add nuw nsw i32 %i.bx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bw, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.by, 2147483644              ; 3 uses
  %i.bz = mul i32 %n.vec, 3
  %i.ca = or disjoint i32 %spec.select126, %i.bz
  %i.cb = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cb, %vector.ph ], [ %i.cc, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cd, %vector.body ]
  %i.cc = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cd = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ce = icmp eq i32 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1770

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cd, %i.cc
  %i.cf = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.ca, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.cf, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.cg, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.cg = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.ch = icmp slt i32 %i.cg, %i.e
  br i1 %i.ch, label %scalar.ph, label %.loopexit, !llvm.loop !1771

bb.r:                                             ; preds = %bb.q
  %i.ci = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ci
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.cf, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cj = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cj, 0
  %i.ck = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cl = load ptr, ptr %0, align 8, !tbaa !469
  %i.cm = zext nneg i32 %i.e to i64
  %i.cn = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cn)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !148
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next, %i.cm
  br i1 %i.cs, label %bb.s, label %.critedge, !llvm.loop !1772

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.ct = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.ct, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 2 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e    ; 2 uses
  %i.cu = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.cu
  %i.cv = zext nneg i32 %i.e to i64
  %i.cw = sext i32 %.0105.lcssa.ph to i64
  %gepdiff226 = sub nsw i64 %i.cw, %i.cv
  %i.cx = select i1 %.not122, i64 %gepdiff226, i64 0
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cx
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.cy = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.ck, %i.cy
  %i.cz = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.cz, %.sroa.0186.10 ; 2 uses
  %i.da = load i32, ptr %i.f, align 8, !tbaa !474 ; 2 uses
  %i.db = icmp sgt i32 %i.da, %i.b
  br i1 %i.db, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.dc = xor i32 %i.b, -1
  %i.dd = add i32 %i.da, %i.dc
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.dg = add i64 %i.df, %i.de
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dh = add i64 %1, 1
  %i.di = sub nsw i32 0, %i.e                     ; 5 uses
  %i.dj = icmp eq i32 %i.b, 0
end_hunk_1
begin_hunk_2_@_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_:bb.a
  %min.iters.check557 = icmp ult i64 %i.ax, 28
  br i1 %min.iters.check557, label %.lr.ph.i.i.i.i.preheader, label %vector.ph558

vector.ph558:                                     ; preds = %bb.d
  %n.vec559 = and i64 %i.az, 9223372036854775800  ; 3 uses
  %i.ba = shl i64 %n.vec559, 2
  %i.bb = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %i.ba
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph558
  %index561 = phi i64 [ 0, %vector.ph558 ], [ %index.next563, %vector.body560 ] ; 2 uses
  %i.bc = shl i64 %index561, 2
  %next.gep562 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep562, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep562, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.bd, align 4, !tbaa !196
  %index.next563 = add nuw i64 %index561, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next563, %n.vec559
  br i1 %i.be, label %middle.block564, label %vector.body560, !llvm.loop !3755

middle.block564:                                  ; preds = %vector.body560
  %cmp.n565 = icmp eq i64 %i.az, %n.vec559
  br i1 %cmp.n565, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.d, %middle.block564
  %.06.i.i.i.i.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %bb.d ], [ %i.bb, %middle.block564 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i ], [ %.06.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i, align 4, !tbaa !196
  %i.bf = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bf, %i.aw
  br i1 %.not.i.i.i.i, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !3756

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit:              ; preds = %.lr.ph.i.i.i.i, %middle.block564, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit
  %.1108 = phi ptr [ %.08.lcssa.i.i.i.i.i.i, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit ], [ %i.aw, %middle.block564 ], [ %i.aw, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.bg = load i32, ptr %i.g, align 4
  %i.bh = and i32 %i.bg, 16777216
  %.not129 = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %.not129, i32 101, i32 69
  %i.bj = getelementptr inbounds nuw i8, ptr %.1108, i64 4
  store i32 %i.bi, ptr %.1108, align 4, !tbaa !196
  %i.bk = add nsw i32 %i.e, -1
  %i.bl = icmp slt i32 %i.e, 1
  %spec.select.i = select i1 %i.bl, i32 45, i32 43
  %spec.select23.i = tail call i32 @llvm.abs.i32(i32 %i.bk, i1 true) ; 5 uses
  store i32 %spec.select.i, ptr %i.bj, align 4, !tbaa !196
  %.017.i = getelementptr inbounds nuw i8, ptr %.1108, i64 8 ; 3 uses
  %i.bm = icmp samesign ugt i32 %spec.select23.i, 99
  br i1 %i.bm, label %bb.e, label %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit

bb.e:                                             ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit
  %i.bn = udiv i32 %spec.select23.i, 100
  %i.bo = urem i32 %spec.select23.i, 100
  %i.bp = shl nuw nsw i32 %i.bn, 1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.bq ; 2 uses
  %i.bs = icmp samesign ugt i32 %spec.select23.i, 999
  br i1 %i.bs, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bt = load i8, ptr %i.br, align 2, !tbaa !148
  %i.bu = sext i8 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %.1108, i64 12
  store i32 %i.bu, ptr %.017.i, align 4, !tbaa !196
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.118.i = phi ptr [ %i.bv, %bb.f ], [ %.017.i, %bb.e ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !148
  %i.by = sext i8 %i.bx to i32
  %i.bz = getelementptr inbounds nuw i8, ptr %.118.i, i64 4
  store i32 %i.by, ptr %.118.i, align 4, !tbaa !196
  br label %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit

_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit: ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit, %bb.g
  %.2.i = phi ptr [ %i.bz, %bb.g ], [ %.017.i, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit ] ; 3 uses
  %.1.i = phi i32 [ %i.bo, %bb.g ], [ %spec.select23.i, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit ]
  %i.ca = shl nuw nsw i32 %.1.i, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cb ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 2, !tbaa !148
  %i.ce = sext i8 %i.cd to i32
  %i.cf = getelementptr inbounds nuw i8, ptr %.2.i, i64 4
  store i32 %i.ce, ptr %.2.i, align 4, !tbaa !196
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !148
  %i.ci = sext i8 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %.2.i, i64 8
  store i32 %i.ci, ptr %i.cf, align 4, !tbaa !196
  br label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.h:                                             ; preds = %bb.a
  %.not124 = icmp slt i32 %i.d, 0
  br i1 %.not124, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = and i32 %i.h, 16711680
  %i.cl = icmp ne i32 %i.ck, 0
  %i.cm = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond3, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.cn = urem i32 %i.e, 3                        ; 2 uses
  %i.co = icmp eq i32 %i.cn, 0
  %spec.select = select i1 %i.co, i32 3, i32 %i.cn
  %i.cp = load ptr, ptr %0, align 8               ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145
  %.0105254 = phi i32 [ 0, %bb.j ], [ %i.er, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 5 uses
  %.2253 = phi ptr [ %1, %bb.j ], [ %.5, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 3 uses
  %storemerge252 = phi i32 [ %spec.select, %bb.j ], [ 3, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ] ; 5 uses
  %i.cq = icmp sgt i32 %.0105254, 0
  br i1 %i.cq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cr = load i32, ptr %i.g, align 4
  %i.cs = shl i32 %i.cr, 8
  %i.ct = ashr i32 %i.cs, 24
  %i.cu = getelementptr inbounds nuw i8, ptr %.2253, i64 4
  store i32 %i.ct, ptr %.2253, align 4, !tbaa !196
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3 = phi ptr [ %i.cu, %bb.l ], [ %.2253, %bb.k ] ; 10 uses
  %i.cv = icmp slt i32 %.0105254, %i.b
  br i1 %i.cv, label %.lr.ph.i.i.i.i.i.i135.preheader, label %bb.o

.lr.ph.i.i.i.i.i.i135.preheader:                  ; preds = %bb.m
  %i.cw = sub i32 %i.b, %.0105254                 ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge252, i32 %i.cw) ; 3 uses
  %i.cx = sext i32 %.0105254 to i64               ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cp, i64 %i.cx  ; 5 uses
  %i.cz = sext i32 %.sroa.speculated to i64       ; 7 uses
  %min.iters.check362 = icmp ult i32 %.sroa.speculated, 12
  br i1 %min.iters.check362, label %.lr.ph.i.i.i.i.i.i135.preheader582, label %vector.memcheck363

vector.memcheck363:                               ; preds = %.lr.ph.i.i.i.i.i.i135.preheader
  %i.da = shl nsw i64 %i.cz, 2
  %i.db = getelementptr i8, ptr %.3, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.cp, i64 %i.cz
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.cx
  %bound0364 = icmp ult ptr %.3, %i.dd
  %bound1365 = icmp ult ptr %i.cy, %i.db
  %found.conflict366 = and i1 %bound0364, %bound1365
  br i1 %found.conflict366, label %.lr.ph.i.i.i.i.i.i135.preheader582, label %vector.ph367

vector.ph367:                                     ; preds = %vector.memcheck363
  %n.vec368 = and i64 %i.cz, -8                   ; 4 uses
  %i.de = and i64 %i.cz, 7
  %i.df = shl nsw i64 %n.vec368, 2
  %i.dg = getelementptr i8, ptr %.3, i64 %i.df    ; 2 uses
  %i.dh = getelementptr i8, ptr %i.cy, i64 %n.vec368
  br label %vector.body369

vector.body369:                                   ; preds = %vector.body369, %vector.ph367
  %index370 = phi i64 [ 0, %vector.ph367 ], [ %index.next375, %vector.body369 ] ; 3 uses
  %i.di = shl i64 %index370, 2
  %next.gep371.a = getelementptr i8, ptr %.3, i64 %i.di ; 2 uses
  %next.gep372 = getelementptr i8, ptr %i.cy, i64 %index370 ; 2 uses
  %i.dj = getelementptr i8, ptr %next.gep372, i64 4
  %wide.load373.a = load <4 x i8>, ptr %next.gep372, align 1, !tbaa !148, !alias.scope !3805
  %wide.load374 = load <4 x i8>, ptr %i.dj, align 1, !tbaa !148, !alias.scope !3805
  %i.dk = sext <4 x i8> %wide.load373.a to <4 x i32>
  %i.dl = sext <4 x i8> %wide.load374 to <4 x i32>
  %i.dm = getelementptr i8, ptr %next.gep371.a, i64 16
  store <4 x i32> %i.dk, ptr %next.gep371.a, align 4, !tbaa !196, !alias.scope !3806, !noalias !3805
  store <4 x i32> %i.dl, ptr %i.dm, align 4, !tbaa !196, !alias.scope !3806, !noalias !3805
  %index.next375 = add nuw i64 %index370, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next375, %n.vec368
  br i1 %i.dn, label %middle.block376, label %vector.body369, !llvm.loop !3760

middle.block376:                                  ; preds = %vector.body369
  %cmp.n377 = icmp eq i64 %n.vec368, %i.cz
  br i1 %cmp.n377, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit, label %.lr.ph.i.i.i.i.i.i135.preheader582

.lr.ph.i.i.i.i.i.i135.preheader582:               ; preds = %vector.memcheck363, %.lr.ph.i.i.i.i.i.i135.preheader, %middle.block376
  %.012.i.i.i.i.i.i136.ph = phi i64 [ %i.cz, %vector.memcheck363 ], [ %i.cz, %.lr.ph.i.i.i.i.i.i135.preheader ], [ %i.de, %middle.block376 ]
  %.0811.i.i.i.i.i.i137.ph = phi ptr [ %.3, %vector.memcheck363 ], [ %.3, %.lr.ph.i.i.i.i.i.i135.preheader ], [ %i.dg, %middle.block376 ]
  %.0910.i.i.i.i.i.i138.ph = phi ptr [ %i.cy, %vector.memcheck363 ], [ %i.cy, %.lr.ph.i.i.i.i.i.i135.preheader ], [ %i.dh, %middle.block376 ]
  br label %.lr.ph.i.i.i.i.i.i135

.lr.ph.i.i.i.i.i.i135:                            ; preds = %.lr.ph.i.i.i.i.i.i135.preheader582, %.lr.ph.i.i.i.i.i.i135
  %.012.i.i.i.i.i.i136 = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.i135 ], [ %.012.i.i.i.i.i.i136.ph, %.lr.ph.i.i.i.i.i.i135.preheader582 ] ; 2 uses
  %.0811.i.i.i.i.i.i137 = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i.i135 ], [ %.0811.i.i.i.i.i.i137.ph, %.lr.ph.i.i.i.i.i.i135.preheader582 ] ; 2 uses
  %.0910.i.i.i.i.i.i138 = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i.i135 ], [ %.0910.i.i.i.i.i.i138.ph, %.lr.ph.i.i.i.i.i.i135.preheader582 ] ; 2 uses
  %i.do = load i8, ptr %.0910.i.i.i.i.i.i138, align 1, !tbaa !148
  %i.dp = sext i8 %i.do to i32
  store i32 %i.dp, ptr %.0811.i.i.i.i.i.i137, align 4, !tbaa !196
  %i.dq = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i138, i64 1
  %i.dr = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i137, i64 4 ; 2 uses
  %i.ds = add nsw i64 %.012.i.i.i.i.i.i136, -1
  %i.dt = icmp samesign ugt i64 %.012.i.i.i.i.i.i136, 1
  br i1 %i.dt, label %.lr.ph.i.i.i.i.i.i135, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit, !llvm.loop !3761

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i135, %middle.block376
  %.lcssa325 = phi ptr [ %i.dg, %middle.block376 ], [ %i.dr, %.lr.ph.i.i.i.i.i.i135 ] ; 6 uses
  %i.du = icmp slt i32 %i.cw, %storemerge252
  br i1 %i.du, label %2, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145

2:                                                ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit
  %3 = sub nsw i32 %storemerge252, %.sroa.speculated ; 2 uses
  %4 = icmp slt i32 %3, 1
  br i1 %4, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %bb.n

bb.n:                                             ; preds = %2
  %i.dv = zext nneg i32 %3 to i64
  %.idx.i.i140 = shl nuw nsw i64 %i.dv, 2         ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.lcssa325, i64 %.idx.i.i140 ; 3 uses
  %i.dx = add nsw i64 %.idx.i.i140, -4            ; 2 uses
  %i.dy = lshr exact i64 %i.dx, 2
  %i.dz = add nuw nsw i64 %i.dy, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %i.dx, 28
  br i1 %min.iters.check344, label %.lr.ph.i.i.i.i141.preheader, label %vector.ph345

vector.ph345:                                     ; preds = %bb.n
  %n.vec346 = and i64 %i.dz, 9223372036854775800  ; 3 uses
  %i.ea = shl i64 %n.vec346, 2
  %i.eb = getelementptr i8, ptr %.lcssa325, i64 %i.ea
  br label %vector.body347

vector.body347:                                   ; preds = %vector.body347, %vector.ph345
  %index348 = phi i64 [ 0, %vector.ph345 ], [ %index.next350, %vector.body347 ] ; 2 uses
  %i.ec = shl i64 %index348, 2
  %next.gep349 = getelementptr i8, ptr %.lcssa325, i64 %i.ec ; 2 uses
  %i.ed = getelementptr i8, ptr %next.gep349, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep349, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.ed, align 4, !tbaa !196
  %index.next350 = add nuw i64 %index348, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next350, %n.vec346
  br i1 %i.ee, label %middle.block351, label %vector.body347, !llvm.loop !3762

middle.block351:                                  ; preds = %vector.body347
  %cmp.n352 = icmp eq i64 %i.dz, %n.vec346
  br i1 %cmp.n352, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i141.preheader

.lr.ph.i.i.i.i141.preheader:                      ; preds = %bb.n, %middle.block351
  %.06.i.i.i.i142.ph = phi ptr [ %.lcssa325, %bb.n ], [ %i.eb, %middle.block351 ]
  br label %.lr.ph.i.i.i.i141

.lr.ph.i.i.i.i141:                                ; preds = %.lr.ph.i.i.i.i141.preheader, %.lr.ph.i.i.i.i141
  %.06.i.i.i.i142 = phi ptr [ %i.ef, %.lr.ph.i.i.i.i141 ], [ %.06.i.i.i.i142.ph, %.lr.ph.i.i.i.i141.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i142, align 4, !tbaa !196
  %i.ef = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i142, i64 4 ; 2 uses
  %.not.i.i.i.i143 = icmp eq ptr %i.ef, %i.dw
  br i1 %.not.i.i.i.i143, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i141, !llvm.loop !3763

bb.o:                                             ; preds = %bb.m
  %i.eg = zext nneg i32 %storemerge252 to i64
  %.idx.i.i146 = shl nuw nsw i64 %i.eg, 2         ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.3, i64 %.idx.i.i146 ; 3 uses
  %i.ei = add nsw i64 %.idx.i.i146, -4            ; 2 uses
  %i.ej = lshr exact i64 %i.ei, 2
  %i.ek = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %min.iters.check382 = icmp ult i64 %i.ei, 28
  br i1 %min.iters.check382, label %.lr.ph.i.i.i.i147.preheader, label %vector.ph383

vector.ph383:                                     ; preds = %bb.o
  %n.vec384 = and i64 %i.ek, 9223372036854775800  ; 3 uses
  %i.el = shl i64 %n.vec384, 2
  %i.em = getelementptr i8, ptr %.3, i64 %i.el
  br label %vector.body385

vector.body385:                                   ; preds = %vector.body385, %vector.ph383
  %index386 = phi i64 [ 0, %vector.ph383 ], [ %index.next388, %vector.body385 ] ; 2 uses
  %i.en = shl i64 %index386, 2
  %next.gep387 = getelementptr i8, ptr %.3, i64 %i.en ; 2 uses
  %i.eo = getelementptr i8, ptr %next.gep387, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep387, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.eo, align 4, !tbaa !196
  %index.next388 = add nuw i64 %index386, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next388, %n.vec384
  br i1 %i.ep, label %middle.block389, label %vector.body385, !llvm.loop !3764

middle.block389:                                  ; preds = %vector.body385
  %cmp.n390 = icmp eq i64 %i.ek, %n.vec384
  br i1 %cmp.n390, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i147.preheader

.lr.ph.i.i.i.i147.preheader:                      ; preds = %bb.o, %middle.block389
  %.06.i.i.i.i148.ph = phi ptr [ %.3, %bb.o ], [ %i.em, %middle.block389 ]
  br label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %.lr.ph.i.i.i.i147.preheader, %.lr.ph.i.i.i.i147
  %.06.i.i.i.i148 = phi ptr [ %i.eq, %.lr.ph.i.i.i.i147 ], [ %.06.i.i.i.i148.ph, %.lr.ph.i.i.i.i147.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i148, align 4, !tbaa !196
  %i.eq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i148, i64 4 ; 2 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.eq, %i.eh
  br i1 %.not.i.i.i.i149, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, label %.lr.ph.i.i.i.i147, !llvm.loop !3765

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145:           ; preds = %.lr.ph.i.i.i.i147, %.lr.ph.i.i.i.i141, %middle.block389, %middle.block351, %2, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit
  %.5 = phi ptr [ %i.dw, %middle.block351 ], [ %.lcssa325, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit139.loopexit ], [ %.lcssa325, %2 ], [ %i.eh, %middle.block389 ], [ %i.dw, %.lr.ph.i.i.i.i141 ], [ %i.eh, %.lr.ph.i.i.i.i147 ] ; 2 uses
  %i.er = add nsw i32 %.0105254, %storemerge252   ; 2 uses
  %i.es = icmp slt i32 %i.er, %i.e
  br i1 %i.es, label %bb.k, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, !llvm.loop !3766

bb.p:                                             ; preds = %bb.i
  %i.et = icmp sgt i32 %i.b, 0
  br i1 %i.et, label %.lr.ph.i.i.i.i.i.i153.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157

.lr.ph.i.i.i.i.i.i153.preheader:                  ; preds = %bb.p
  %i.eu = zext nneg i32 %i.b to i64               ; 7 uses
  %i.ev = load ptr, ptr %0, align 8, !tbaa !737   ; 6 uses
  %min.iters.check = icmp ult i32 %i.b, 12
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i153.preheader586, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i153.preheader
  %i.ew = shl nuw nsw i64 %i.eu, 2
  %i.ex = getelementptr i8, ptr %1, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ev, i64 %i.eu
  %bound0 = icmp ult ptr %1, %i.ey
  %bound1 = icmp ult ptr %i.ev, %i.ex
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i153.preheader586, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.eu, 2147483640              ; 4 uses
  %i.ez = and i64 %i.eu, 7
  %i.fa = shl nuw nsw i64 %n.vec, 2
  %i.fb = getelementptr i8, ptr %1, i64 %i.fa     ; 2 uses
  %i.fc = getelementptr i8, ptr %i.ev, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fd = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.fd ; 2 uses
  %next.gep328 = getelementptr i8, ptr %i.ev, i64 %index ; 2 uses
  %i.fe = getelementptr i8, ptr %next.gep328, i64 4
  %wide.load = load <4 x i8>, ptr %next.gep328, align 1, !tbaa !148, !alias.scope !3807
  %wide.load329 = load <4 x i8>, ptr %i.fe, align 1, !tbaa !148, !alias.scope !3807
  %i.ff = sext <4 x i8> %wide.load to <4 x i32>
  %i.fg = sext <4 x i8> %wide.load329 to <4 x i32>
  %i.fh = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.ff, ptr %next.gep, align 4, !tbaa !196, !alias.scope !3808, !noalias !3807
  store <4 x i32> %i.fg, ptr %i.fh, align 4, !tbaa !196, !alias.scope !3808, !noalias !3807
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !3770

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.eu
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157, label %.lr.ph.i.i.i.i.i.i153.preheader586

.lr.ph.i.i.i.i.i.i153.preheader586:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i153.preheader, %middle.block
  %.012.i.i.i.i.i.i154.ph = phi i64 [ %i.eu, %vector.memcheck ], [ %i.eu, %.lr.ph.i.i.i.i.i.i153.preheader ], [ %i.ez, %middle.block ]
  %.0811.i.i.i.i.i.i155.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.i.i.i.i.i153.preheader ], [ %i.fb, %middle.block ]
  %.0910.i.i.i.i.i.i156.ph = phi ptr [ %i.ev, %vector.memcheck ], [ %i.ev, %.lr.ph.i.i.i.i.i.i153.preheader ], [ %i.fc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i153

.lr.ph.i.i.i.i.i.i153:                            ; preds = %.lr.ph.i.i.i.i.i.i153.preheader586, %.lr.ph.i.i.i.i.i.i153
  %.012.i.i.i.i.i.i154 = phi i64 [ %i.fn, %.lr.ph.i.i.i.i.i.i153 ], [ %.012.i.i.i.i.i.i154.ph, %.lr.ph.i.i.i.i.i.i153.preheader586 ] ; 2 uses
  %.0811.i.i.i.i.i.i155 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i153 ], [ %.0811.i.i.i.i.i.i155.ph, %.lr.ph.i.i.i.i.i.i153.preheader586 ] ; 2 uses
  %.0910.i.i.i.i.i.i156 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i153 ], [ %.0910.i.i.i.i.i.i156.ph, %.lr.ph.i.i.i.i.i.i153.preheader586 ] ; 2 uses
  %i.fj = load i8, ptr %.0910.i.i.i.i.i.i156, align 1, !tbaa !148
  %i.fk = sext i8 %i.fj to i32
  store i32 %i.fk, ptr %.0811.i.i.i.i.i.i155, align 4, !tbaa !196
  %i.fl = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i156, i64 1
  %i.fm = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i155, i64 4 ; 2 uses
  %i.fn = add nsw i64 %.012.i.i.i.i.i.i154, -1
  %i.fo = icmp samesign ugt i64 %.012.i.i.i.i.i.i154, 1
  br i1 %i.fo, label %.lr.ph.i.i.i.i.i.i153, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157, !llvm.loop !3771

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157: ; preds = %.lr.ph.i.i.i.i.i.i153, %middle.block, %bb.p
  %.08.lcssa.i.i.i.i.i.i152 = phi ptr [ %1, %bb.p ], [ %i.fb, %middle.block ], [ %i.fm, %.lr.ph.i.i.i.i.i.i153 ] ; 5 uses
  %i.fp = icmp eq i32 %i.d, 0
  br i1 %i.fp, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, label %bb.q

bb.q:                                             ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157
  %i.fq = zext nneg i32 %i.d to i64
  %.idx.i.i158 = shl nuw nsw i64 %i.fq, 2         ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i.i.i.i.i152, i64 %.idx.i.i158 ; 3 uses
  %i.fs = add nsw i64 %.idx.i.i158, -4            ; 2 uses
  %i.ft = lshr exact i64 %i.fs, 2
  %i.fu = add nuw nsw i64 %i.ft, 1                ; 2 uses
  %min.iters.check333 = icmp ult i64 %i.fs, 28
  br i1 %min.iters.check333, label %.lr.ph.i.i.i.i159.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %bb.q
  %n.vec335 = and i64 %i.fu, 9223372036854775800  ; 3 uses
  %i.fv = shl i64 %n.vec335, 2
  %i.fw = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i152, i64 %i.fv
  br label %vector.body336

vector.body336:                                   ; preds = %vector.body336, %vector.ph334
  %index337 = phi i64 [ 0, %vector.ph334 ], [ %index.next339, %vector.body336 ] ; 2 uses
  %i.fx = shl i64 %index337, 2
  %next.gep338 = getelementptr i8, ptr %.08.lcssa.i.i.i.i.i.i152, i64 %i.fx ; 2 uses
  %i.fy = getelementptr i8, ptr %next.gep338, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep338, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.fy, align 4, !tbaa !196
  %index.next339 = add nuw i64 %index337, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next339, %n.vec335
  br i1 %i.fz, label %middle.block340, label %vector.body336, !llvm.loop !3772

middle.block340:                                  ; preds = %vector.body336
  %cmp.n341 = icmp eq i64 %i.fu, %n.vec335
  br i1 %cmp.n341, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, label %.lr.ph.i.i.i.i159.preheader

.lr.ph.i.i.i.i159.preheader:                      ; preds = %bb.q, %middle.block340
  %.06.i.i.i.i160.ph = phi ptr [ %.08.lcssa.i.i.i.i.i.i152, %bb.q ], [ %i.fw, %middle.block340 ]
  br label %.lr.ph.i.i.i.i159

.lr.ph.i.i.i.i159:                                ; preds = %.lr.ph.i.i.i.i159.preheader, %.lr.ph.i.i.i.i159
  %.06.i.i.i.i160 = phi ptr [ %i.ga, %.lr.ph.i.i.i.i159 ], [ %.06.i.i.i.i160.ph, %.lr.ph.i.i.i.i159.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i160, align 4, !tbaa !196
  %i.ga = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i160, i64 4 ; 2 uses
  %.not.i.i.i.i161 = icmp eq ptr %i.ga, %i.fr
  br i1 %.not.i.i.i.i161, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, label %.lr.ph.i.i.i.i159, !llvm.loop !3773

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163:           ; preds = %.lr.ph.i.i.i.i159, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145, %middle.block340, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157
  %.6 = phi ptr [ %i.fr, %middle.block340 ], [ %.08.lcssa.i.i.i.i.i.i152, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit157 ], [ %.5, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit145 ], [ %i.fr, %.lr.ph.i.i.i.i159 ] ; 4 uses
  %i.gb = load i32, ptr %i.g, align 4
  %i.gc = and i32 %i.gb, 536870912
  %.not127 = icmp eq i32 %i.gc, 0
  br i1 %.not127, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %bb.r

bb.r:                                             ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !740
  %i.gf = getelementptr inbounds nuw i8, ptr %.6, i64 4 ; 6 uses
  store i32 %i.ge, ptr %.6, align 4, !tbaa !196
  %i.gg = load i32, ptr %i.f, align 8, !tbaa !742
  %i.gh = sub nsw i32 %i.gg, %i.e                 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gj = load i32, ptr %i.g, align 4
  %i.gk = and i32 %i.gj, 255
  %.not128 = icmp eq i32 %i.gk, 2
  br i1 %.not128, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.gl = getelementptr inbounds nuw i8, ptr %.6, i64 8
  store i32 48, ptr %i.gf, align 4, !tbaa !196
  br label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

bb.u:                                             ; preds = %bb.r
  %i.gm = zext nneg i32 %i.gh to i64
  %.idx.i.i164 = shl nuw nsw i64 %i.gm, 2         ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i.i164 ; 3 uses
  %i.go = add nsw i64 %.idx.i.i164, -4            ; 2 uses
  %i.gp = lshr exact i64 %i.go, 2
  %i.gq = add nuw nsw i64 %i.gp, 1                ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.go, 28
  br i1 %min.iters.check393, label %.lr.ph.i.i.i.i165.preheader, label %vector.ph394

vector.ph394:                                     ; preds = %bb.u
  %n.vec395 = and i64 %i.gq, 9223372036854775800  ; 3 uses
  %i.gr = shl i64 %n.vec395, 2
  %i.gs = getelementptr i8, ptr %i.gf, i64 %i.gr
  br label %vector.body396

vector.body396:                                   ; preds = %vector.body396, %vector.ph394
  %index397 = phi i64 [ 0, %vector.ph394 ], [ %index.next399, %vector.body396 ] ; 2 uses
  %i.gt = shl i64 %index397, 2
  %next.gep398 = getelementptr i8, ptr %i.gf, i64 %i.gt ; 2 uses
  %i.gu = getelementptr i8, ptr %next.gep398, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep398, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.gu, align 4, !tbaa !196
  %index.next399 = add nuw i64 %index397, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next399, %n.vec395
  br i1 %i.gv, label %middle.block400, label %vector.body396, !llvm.loop !3774

middle.block400:                                  ; preds = %vector.body396
  %cmp.n401 = icmp eq i64 %i.gq, %n.vec395
  br i1 %cmp.n401, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i165.preheader

.lr.ph.i.i.i.i165.preheader:                      ; preds = %bb.u, %middle.block400
  %.06.i.i.i.i166.ph = phi ptr [ %i.gf, %bb.u ], [ %i.gs, %middle.block400 ]
  br label %.lr.ph.i.i.i.i165

.lr.ph.i.i.i.i165:                                ; preds = %.lr.ph.i.i.i.i165.preheader, %.lr.ph.i.i.i.i165
  %.06.i.i.i.i166 = phi ptr [ %i.gw, %.lr.ph.i.i.i.i165 ], [ %.06.i.i.i.i166.ph, %.lr.ph.i.i.i.i165.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i166, align 4, !tbaa !196
  %i.gw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i166, i64 4 ; 2 uses
  %.not.i.i.i.i167 = icmp eq ptr %i.gw, %i.gn
  br i1 %.not.i.i.i.i167, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i165, !llvm.loop !3775

bb.v:                                             ; preds = %bb.h
  %i.gx = icmp sgt i32 %i.e, 0
  br i1 %i.gx, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.gy = and i32 %i.h, 16711680
  %i.gz = icmp ne i32 %i.gy, 0
  %i.ha = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.gz, i1 %i.ha, i1 false
  br i1 %or.cond5, label %.peel.begin, label %bb.x

.peel.begin:                                      ; preds = %bb.w
end_hunk_2
begin_hunk_3_@_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyIPwEET_S6_:bb.a
  %.099228 = phi i32 [ %spec.select133, %.thread ], [ %i.mq, %bb.ag ] ; 2 uses
  %.not234 = icmp eq i32 %.099228, 0
  br i1 %.not234, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.af, %bb.ae, %.critedge7
  %.1233 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.ae ], [ %.0, %bb.af ] ; 3 uses
  %.099228232 = phi i32 [ %.099228, %.critedge7 ], [ %i.mq, %bb.ae ], [ %i.mq, %bb.af ] ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !740
  %i.nh = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  store i32 %i.ng, ptr %i.mp, align 4, !tbaa !196
  %i.ni = icmp slt i32 %.099228232, 1
  br i1 %i.ni, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %bb.ah

bb.ah:                                            ; preds = %.critedge7.thread
  %i.nj = zext nneg i32 %.099228232 to i64
  %.idx.i.i200 = shl nuw nsw i64 %i.nj, 2         ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.idx.i.i200 ; 3 uses
  %i.nl = add nsw i64 %.idx.i.i200, -4            ; 2 uses
  %i.nm = lshr exact i64 %i.nl, 2
  %i.nn = add nuw nsw i64 %i.nm, 1                ; 2 uses
  %min.iters.check404 = icmp ult i64 %i.nl, 28
  br i1 %min.iters.check404, label %.lr.ph.i.i.i.i201.preheader, label %vector.ph405

vector.ph405:                                     ; preds = %bb.ah
  %n.vec406 = and i64 %i.nn, 9223372036854775800  ; 3 uses
  %i.no = shl i64 %n.vec406, 2
  %i.np = getelementptr i8, ptr %i.nh, i64 %i.no
  br label %vector.body407

vector.body407:                                   ; preds = %vector.body407, %vector.ph405
  %index408 = phi i64 [ 0, %vector.ph405 ], [ %index.next410, %vector.body407 ] ; 2 uses
  %i.nq = shl i64 %index408, 2
  %next.gep409 = getelementptr i8, ptr %i.nh, i64 %i.nq ; 2 uses
  %i.nr = getelementptr i8, ptr %next.gep409, i64 16
  store <4 x i32> splat (i32 48), ptr %next.gep409, align 4, !tbaa !196
  store <4 x i32> splat (i32 48), ptr %i.nr, align 4, !tbaa !196
  %index.next410 = add nuw i64 %index408, 8       ; 2 uses
  %i.ns = icmp eq i64 %index.next410, %n.vec406
  br i1 %i.ns, label %middle.block411, label %vector.body407, !llvm.loop !3795

middle.block411:                                  ; preds = %vector.body407
  %cmp.n412 = icmp eq i64 %i.nn, %n.vec406
  br i1 %cmp.n412, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %.lr.ph.i.i.i.i201.preheader

.lr.ph.i.i.i.i201.preheader:                      ; preds = %bb.ah, %middle.block411
  %.06.i.i.i.i202.ph = phi ptr [ %i.nh, %bb.ah ], [ %i.np, %middle.block411 ]
  br label %.lr.ph.i.i.i.i201

.lr.ph.i.i.i.i201:                                ; preds = %.lr.ph.i.i.i.i201.preheader, %.lr.ph.i.i.i.i201
  %.06.i.i.i.i202 = phi ptr [ %i.nt, %.lr.ph.i.i.i.i201 ], [ %.06.i.i.i.i202.ph, %.lr.ph.i.i.i.i201.preheader ] ; 2 uses
  store i32 48, ptr %.06.i.i.i.i202, align 4, !tbaa !196
  %i.nt = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i202, i64 4 ; 2 uses
  %.not.i.i.i.i203 = icmp eq ptr %i.nt, %i.nk
  br i1 %.not.i.i.i.i203, label %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, label %.lr.ph.i.i.i.i201, !llvm.loop !3796

_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205:           ; preds = %.lr.ph.i.i.i.i201, %middle.block411, %.critedge7.thread
  %.0.i.i204 = phi ptr [ %i.nh, %.critedge7.thread ], [ %i.nk, %middle.block411 ], [ %i.nk, %.lr.ph.i.i.i.i201 ] ; 7 uses
  %i.nu = icmp sgt i32 %.1233, 0
  br i1 %i.nu, label %.lr.ph.i.i.i.i.i.i207.preheader, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187

.lr.ph.i.i.i.i.i.i207.preheader:                  ; preds = %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205
  %i.nv = zext nneg i32 %.1233 to i64             ; 7 uses
  %i.nw = load ptr, ptr %0, align 8, !tbaa !737   ; 6 uses
  %min.iters.check421 = icmp ult i32 %.1233, 12
  br i1 %min.iters.check421, label %.lr.ph.i.i.i.i.i.i207.preheader577, label %vector.memcheck422

vector.memcheck422:                               ; preds = %.lr.ph.i.i.i.i.i.i207.preheader
  %i.nx = shl nuw nsw i64 %i.nv, 2
  %i.ny = getelementptr i8, ptr %.0.i.i204, i64 %i.nx
  %i.nz = getelementptr i8, ptr %i.nw, i64 %i.nv
  %bound0423 = icmp ult ptr %.0.i.i204, %i.nz
  %bound1424 = icmp ult ptr %i.nw, %i.ny
  %found.conflict425 = and i1 %bound0423, %bound1424
  br i1 %found.conflict425, label %.lr.ph.i.i.i.i.i.i207.preheader577, label %vector.ph426

vector.ph426:                                     ; preds = %vector.memcheck422
  %n.vec427 = and i64 %i.nv, 2147483640           ; 4 uses
  %i.oa = and i64 %i.nv, 7
  %i.ob = shl nuw nsw i64 %n.vec427, 2
  %i.oc = getelementptr i8, ptr %.0.i.i204, i64 %i.ob ; 2 uses
  %i.od = getelementptr i8, ptr %i.nw, i64 %n.vec427
  br label %vector.body428

vector.body428:                                   ; preds = %vector.body428, %vector.ph426
  %index429 = phi i64 [ 0, %vector.ph426 ], [ %index.next434, %vector.body428 ] ; 3 uses
  %i.oe = shl i64 %index429, 2
  %next.gep430.a = getelementptr i8, ptr %.0.i.i204, i64 %i.oe ; 2 uses
  %next.gep431 = getelementptr i8, ptr %i.nw, i64 %index429 ; 2 uses
  %i.of = getelementptr i8, ptr %next.gep431, i64 4
  %wide.load432.a = load <4 x i8>, ptr %next.gep431, align 1, !tbaa !148, !alias.scope !3815
  %wide.load433 = load <4 x i8>, ptr %i.of, align 1, !tbaa !148, !alias.scope !3815
  %i.og = sext <4 x i8> %wide.load432.a to <4 x i32>
  %i.oh = sext <4 x i8> %wide.load433 to <4 x i32>
  %i.oi = getelementptr i8, ptr %next.gep430.a, i64 16
  store <4 x i32> %i.og, ptr %next.gep430.a, align 4, !tbaa !196, !alias.scope !3816, !noalias !3815
  store <4 x i32> %i.oh, ptr %i.oi, align 4, !tbaa !196, !alias.scope !3816, !noalias !3815
  %index.next434 = add nuw i64 %index429, 8       ; 2 uses
  %i.oj = icmp eq i64 %index.next434, %n.vec427
  br i1 %i.oj, label %middle.block435, label %vector.body428, !llvm.loop !3800

middle.block435:                                  ; preds = %vector.body428
  %cmp.n436 = icmp eq i64 %n.vec427, %i.nv
  br i1 %cmp.n436, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, label %.lr.ph.i.i.i.i.i.i207.preheader577

.lr.ph.i.i.i.i.i.i207.preheader577:               ; preds = %vector.memcheck422, %.lr.ph.i.i.i.i.i.i207.preheader, %middle.block435
  %.012.i.i.i.i.i.i208.ph = phi i64 [ %i.nv, %vector.memcheck422 ], [ %i.nv, %.lr.ph.i.i.i.i.i.i207.preheader ], [ %i.oa, %middle.block435 ]
  %.0811.i.i.i.i.i.i209.ph = phi ptr [ %.0.i.i204, %vector.memcheck422 ], [ %.0.i.i204, %.lr.ph.i.i.i.i.i.i207.preheader ], [ %i.oc, %middle.block435 ]
  %.0910.i.i.i.i.i.i210.ph = phi ptr [ %i.nw, %vector.memcheck422 ], [ %i.nw, %.lr.ph.i.i.i.i.i.i207.preheader ], [ %i.od, %middle.block435 ]
  br label %.lr.ph.i.i.i.i.i.i207

.lr.ph.i.i.i.i.i.i207:                            ; preds = %.lr.ph.i.i.i.i.i.i207.preheader577, %.lr.ph.i.i.i.i.i.i207
  %.012.i.i.i.i.i.i208 = phi i64 [ %i.oo, %.lr.ph.i.i.i.i.i.i207 ], [ %.012.i.i.i.i.i.i208.ph, %.lr.ph.i.i.i.i.i.i207.preheader577 ] ; 2 uses
  %.0811.i.i.i.i.i.i209 = phi ptr [ %i.on, %.lr.ph.i.i.i.i.i.i207 ], [ %.0811.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i207.preheader577 ] ; 2 uses
  %.0910.i.i.i.i.i.i210 = phi ptr [ %i.om, %.lr.ph.i.i.i.i.i.i207 ], [ %.0910.i.i.i.i.i.i210.ph, %.lr.ph.i.i.i.i.i.i207.preheader577 ] ; 2 uses
  %i.ok = load i8, ptr %.0910.i.i.i.i.i.i210, align 1, !tbaa !148
  %i.ol = sext i8 %i.ok to i32
  store i32 %i.ol, ptr %.0811.i.i.i.i.i.i209, align 4, !tbaa !196
  %i.om = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i210, i64 1
  %i.on = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i209, i64 4 ; 2 uses
  %i.oo = add nsw i64 %.012.i.i.i.i.i.i208, -1
  %i.op = icmp samesign ugt i64 %.012.i.i.i.i.i.i208, 1
  br i1 %i.op, label %.lr.ph.i.i.i.i.i.i207, label %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187, !llvm.loop !3801

_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit187: ; preds = %.lr.ph.i.i.i.i165, %.lr.ph.i.i.i.i.i.i207, %.lr.ph.i.i.i.i195, %.lr.ph.i.i.i.i.i.i183, %middle.block400, %middle.block435, %middle.block500, %middle.block524, %bb.t, %bb.s, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205, %bb.ab, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cj, %_ZN10duckdb_fmt2v68internal14write_exponentIwPwEET0_iS4_.exit ], [ %i.mp, %.critedge7 ], [ %i.gn, %middle.block400 ], [ %.6, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit163 ], [ %i.mf, %middle.block500 ], [ %.lcssa320, %_ZN10duckdb_fmt2v68internal8copy_strIwPKcPwTnNSt9enable_ifIXntsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit193 ], [ %i.gl, %bb.t ], [ %.12, %bb.ab ], [ %i.kq, %.lr.ph.i.i.i.i.i.i183 ], [ %.0.i.i204, %_ZSt6fill_nIPwiwET_S1_T0_RKT1_.exit205 ], [ %i.gf, %bb.s ], [ %i.kf, %middle.block524 ], [ %i.on, %.lr.ph.i.i.i.i.i.i207 ], [ %i.oc, %middle.block435 ], [ %i.mf, %.lr.ph.i.i.i.i195 ], [ %i.gn, %.lr.ph.i.i.i.i165 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIwE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #9 comdat align 2 !guid !3821 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !738  ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !739  ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !742
  %i.l = sub nsw i32 %i.k, %i.b                   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = and i32 %i.h, 536870912
  %i.o = icmp ne i32 %i.n, 0
  %i.p = and i1 %i.o, %i.m                        ; 2 uses
  %i.q = icmp sgt i32 %i.b, 1
  %or.cond = select i1 %i.q, i1 true, i1 %i.p
  %.sroa.0179.0.v = select i1 %or.cond, i64 2, i64 1
  %.sroa.0179.0 = add i64 %.sroa.0179.0.v, %1
  %i.r = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %i.s = zext nneg i32 %i.r to i64
  %i.t = add i64 %.sroa.0179.0, %i.s
  %i.u = add nsw i32 %i.l, -1
  %i.v = zext nneg i32 %i.u to i64
  %.sroa.0179.1.v = select i1 %i.p, i64 %i.v, i64 -1
  %.sroa.0179.1 = add i64 %i.t, %.sroa.0179.1.v   ; 2 uses
  %i.w = add nsw i32 %i.e, -1
  %.sroa.028.0.i = add i64 %.sroa.0179.1, 2       ; 2 uses
  %.0.i = tail call i32 @llvm.abs.i32(i32 %i.w, i1 true) ; 2 uses
  %i.x = icmp samesign ugt i32 %.0.i, 99
  %i.y = icmp samesign ugt i32 %.0.i, 999
  %i.z = add i64 %.sroa.0179.1, 3
  %spec.select.i = select i1 %i.y, i64 %i.z, i64 %.sroa.028.0.i
  %i.aa = add i64 %spec.select.i, 1
  %.sroa.028.2.i = select i1 %i.x, i64 %i.aa, i64 %.sroa.028.0.i
  %i.ab = add i64 %.sroa.028.2.i, 2
  br label %.thread

bb.c:                                             ; preds = %bb.a
  %.not120 = icmp slt i32 %i.d, 0
  br i1 %.not120, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = and i32 %i.h, 16711680
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = icmp sgt i32 %i.e, 3
  %or.cond3 = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond3, label %.peel.begin, label %bb.l

.peel.begin:                                      ; preds = %bb.d
  %i.af = urem i32 %i.e, 3                        ; 2 uses
  %i.ag = icmp eq i32 %i.af, 0
  %spec.select = select i1 %i.ag, i32 3, i32 %i.af ; 5 uses
  %i.ah = icmp sgt i32 %i.b, 0
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.ai = zext nneg i32 %spec.select to i64
  %i.aj = add i64 %1, %i.ai
  br label %.peel.next.preheader

bb.f:                                             ; preds = %.peel.begin
  %i.ak = tail call i32 @llvm.umin.i32(i32 %spec.select, i32 %i.b) ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel = add i64 %1, %i.al ; 3 uses
  %i.am = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.am, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = sub nsw i32 %spec.select, %i.ak            ; 2 uses
  %3 = icmp sgt i32 %2, 0
  %i.an = add nsw i32 %2, -1
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel, 1
  %i.aq = add i64 %i.ap, %i.ao
  %.sroa.02.0.lcssa.i.i.i133.peel = select i1 %3, i64 %i.aq, i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0179.2224.ph = phi i64 [ %.sroa.02.0.lcssa.i.i.i133.peel, %bb.g ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i132.peel, %bb.f ], [ %i.aj, %bb.e ]
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.k
  %.0102226 = phi i32 [ %i.ba, %bb.k ], [ %spec.select, %.peel.next.preheader ] ; 3 uses
  %.sroa.0179.2224 = phi i64 [ %.sroa.0179.4, %bb.k ], [ %.sroa.0179.2224.ph, %.peel.next.preheader ] ; 2 uses
  %i.ar = icmp slt i32 %.0102226, %i.b
  br i1 %i.ar, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.peel.next
  %spec.select213 = add i64 %.sroa.0179.2224, 1
  %i.as = sub nsw i32 %i.b, %.0102226             ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.as, i32 3) ; 2 uses
  %i.at = zext nneg i32 %.sroa.speculated to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i132 = add i64 %spec.select213, %i.at ; 2 uses
  %i.au = icmp slt i32 %i.as, 3
  br i1 %i.au, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.av = sub i32 2, %.sroa.speculated
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i132, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0179.2224, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0179.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i132, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102226, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit222, !llvm.loop !3817

bb.l:                                             ; preds = %bb.d
  %i.bc = tail call i32 @llvm.smax.i32(i32 %i.b, i32 0)
  %i.bd = zext nneg i32 %i.bc to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i135 = add i64 %1, %i.bd ; 2 uses
  %.not217 = icmp eq i32 %i.d, 0
  %i.be = add nsw i32 %i.d, -1
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i135, 1
  %i.bh = add i64 %i.bg, %i.bf
  %.sroa.02.0.lcssa.i.i.i136 = select i1 %.not217, i64 %.sroa.06.0.lcssa.i.i.i.i.i.i135, i64 %i.bh
  br label %.loopexit222

.loopexit222:                                     ; preds = %bb.k, %bb.l
  %.sroa.0179.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i136, %bb.l ], [ %.sroa.0179.4, %bb.k ] ; 3 uses
  %i.bi = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bi, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit222
  %i.bj = load i32, ptr %i.f, align 8, !tbaa !742
  %i.bk = sub nsw i32 %i.bj, %i.e                 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select214.v = select i1 %.not124, i64 1, i64 2
  %spec.select214 = add i64 %.sroa.0179.5, %spec.select214.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bm = add nsw i32 %i.bk, -1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = add i64 %.sroa.0179.5, 2
  %i.bp = add i64 %i.bo, %i.bn
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bq = icmp sgt i32 %i.e, 0
  br i1 %i.bq, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.br = and i32 %i.h, 16711680
  %i.bs = icmp ne i32 %i.br, 0
  %i.bt = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond5, label %.peel.next236, label %bb.r

.peel.next236:                                    ; preds = %bb.q
  %i.bu = urem i32 %i.e, 3                        ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  %spec.select126 = select i1 %i.bv, i32 3, i32 %i.bu ; 4 uses
  %i.bw = zext nneg i32 %spec.select126 to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i141.peel = add i64 %1, %i.bw ; 2 uses
  %i.bx = add i32 %i.b, %i.d
  %i.by = xor i32 %spec.select126, -1
  %i.bz = add i32 %i.bx, %i.by                    ; 2 uses
  %i.ca = udiv i32 %i.bz, 3
  %i.cb = add nuw nsw i32 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.bz, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next236
  %n.vec = and i32 %i.cb, 2147483644              ; 3 uses
  %i.cc = mul i32 %n.vec, 3
  %i.cd = or disjoint i32 %spec.select126, %i.cc
  %i.ce = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.06.0.lcssa.i.i.i.i.i.i141.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.ce, %vector.ph ], [ %i.cf, %vector.body ]
  %vec.phi253 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cg, %vector.body ]
  %i.cf = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cg = add <2 x i64> %vec.phi253, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.ch = icmp eq i32 %index.next, %n.vec
  br i1 %i.ch, label %middle.block, label %vector.body, !llvm.loop !3818

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cg, %i.cf
  %i.ci = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.cb, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next236, %middle.block
  %.0104228.ph = phi i32 [ %spec.select126, %.peel.next236 ], [ %i.cd, %middle.block ]
  %.sroa.0179.8227.ph = phi i64 [ %.sroa.06.0.lcssa.i.i.i.i.i.i141.peel, %.peel.next236 ], [ %i.ci, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104228 = phi i32 [ %i.cj, %scalar.ph ], [ %.0104228.ph, %scalar.ph.preheader ]
  %.sroa.0179.8227 = phi i64 [ %.sroa.06.0.lcssa.i.i.i.i.i.i141, %scalar.ph ], [ %.sroa.0179.8227.ph, %scalar.ph.preheader ]
  %.sroa.06.0.lcssa.i.i.i.i.i.i141 = add i64 %.sroa.0179.8227, 4 ; 2 uses
  %i.cj = add nuw nsw i32 %.0104228, 3            ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.e
  br i1 %i.ck, label %scalar.ph, label %.loopexit, !llvm.loop !3819

bb.r:                                             ; preds = %bb.q
  %i.cl = zext nneg i32 %i.e to i64
  %.sroa.06.0.lcssa.i.i.i.i.i.i142 = add i64 %1, %i.cl
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0179.10 = phi i64 [ %.sroa.06.0.lcssa.i.i.i.i.i.i142, %bb.r ], [ %i.ci, %middle.block ], [ %.sroa.06.0.lcssa.i.i.i.i.i.i141, %scalar.ph ] ; 2 uses
  %i.cm = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cm, 0
  %i.cn = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.co = load ptr, ptr %0, align 8, !tbaa !737
  %i.cp = zext nneg i32 %i.e to i64
  %i.cq = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cq)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.cn, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.cr = getelementptr i8, ptr %i.co, i64 %indvars.iv
  %i.cs = getelementptr i8, ptr %i.cr, i64 -1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !148
  %i.cu = icmp eq i8 %i.ct, 48
  br i1 %i.cu, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cv = icmp sgt i64 %indvars.iv.next, %i.cp
  br i1 %i.cv, label %bb.s, label %.critedge, !llvm.loop !3820

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.cw = trunc nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.cw, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 2 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.cx = zext i1 %.not122 to i64
  %spec.select216 = add i64 %.sroa.0179.10, %i.cx
  %i.cy = zext nneg i32 %i.e to i64
  %i.cz = sext i32 %.0105.lcssa.ph to i64
  %gepdiff219 = sub nsw i64 %i.cz, %i.cy
  %i.da = tail call i64 @llvm.smax.i64(i64 %gepdiff219, i64 0)
  %.sroa.06.0.lcssa.i.i.i.i.i.i144 = add i64 %spec.select216, %i.da
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.db = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.cn, %i.db
  %i.dc = add nsw i64 %gepdiff, 1
  %.sroa.06.0.lcssa.i.i.i.i.i.i146 = add i64 %i.dc, %.sroa.0179.10 ; 2 uses
  %i.dd = load i32, ptr %i.f, align 8, !tbaa !742 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, %i.b
  br i1 %i.de, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.df = xor i32 %i.b, -1
  %i.dg = add i32 %i.dd, %i.df
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = add i64 %.sroa.06.0.lcssa.i.i.i.i.i.i146, 1
  %i.dj = add i64 %i.di, %i.dh
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dk = add i64 %1, 1
  %i.dl = sub nsw i32 0, %i.e                     ; 5 uses
end_hunk_3
