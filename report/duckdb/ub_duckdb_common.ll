Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_common?download=true
inline.NumInlined: 29984
inline.NumDeleted: 10453
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumRuntimeUnrolled: 387
loop-unroll.NumUnrolled: 433
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %.2.i = phi ptr [ %i.cq, %bb.h ], [ %.017.i, %bb.e ] ; 3 uses
  %.1.i = phi i32 [ %i.ch, %bb.h ], [ %spec.select23.i, %bb.e ]
  %i.cr = shl nuw nsw i32 %.1.i, 1
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !254
  %i.cv = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %i.cu, ptr %.2.i, align 1, !tbaa !254
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !254
  %i.cy = getelementptr inbounds nuw i8, ptr %.2.i, i64 2
  store i8 %i.cx, ptr %i.cv, align 1, !tbaa !254
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
  store i8 %i.dh, ptr %.2229, align 1, !tbaa !254
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3 = phi ptr [ %i.di, %bb.m ], [ %.2229, %bb.l ] ; 8 uses
  %.3314 = ptrtoaddr ptr %.3 to i64
  %i.dj = load i32, ptr %i.b, align 8, !tbaa !1982 ; 2 uses
  %i.dk = icmp slt i32 %.0105230, %i.dj
  br i1 %i.dk, label %iter.check330, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

iter.check330:                                    ; preds = %bb.n
  %i.dl = sub nsw i32 %i.dj, %.0105230            ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %storemerge228, i32 %i.dl) ; 5 uses
  %i.dm = load ptr, ptr %0, align 8, !tbaa !1981  ; 3 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64              ; 2 uses
  %i.do = sext i32 %.0105230 to i64               ; 4 uses
  %i.dp = getelementptr inbounds i8, ptr %i.dm, i64 %i.do ; 7 uses
  %i.dq = sext i32 %.sroa.speculated to i64       ; 7 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 %i.dq
  %min.iters.check316 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check316, label %.lr.ph.i.i135.preheader, label %vector.memcheck313

vector.memcheck313:                               ; preds = %iter.check330
  %i.ds = ptrtoaddr ptr %i.dm to i64
  %i.dt = add i64 %i.ds, %i.do
  %i.du = sub i64 %i.dt, %.3314
  %diff.check315 = icmp ugt i64 %i.du, -32
  br i1 %diff.check315, label %.lr.ph.i.i135.preheader, label %vector.main.loop.iter.check317

vector.main.loop.iter.check317:                   ; preds = %vector.memcheck313
  %min.iters.check318 = icmp ult i32 %.sroa.speculated, 32
  br i1 %min.iters.check318, label %vec.epilog.ph334, label %vector.ph319

vector.ph319:                                     ; preds = %vector.main.loop.iter.check317
  %n.vec320 = and i64 %i.dq, -32                  ; 5 uses
  %i.dv = getelementptr i8, ptr %i.dp, i64 %n.vec320
  %i.dw = getelementptr i8, ptr %.3, i64 %n.vec320 ; 2 uses
  br label %vector.body321

vector.body321:                                   ; preds = %vector.ph319, %vector.body321
  %index322 = phi i64 [ 0, %vector.ph319 ], [ %index.next327, %vector.body321 ] ; 3 uses
  %next.gep323 = getelementptr i8, ptr %i.dp, i64 %index322 ; 2 uses
  %next.gep324 = getelementptr i8, ptr %.3, i64 %index322 ; 2 uses
  %i.dx = getelementptr i8, ptr %next.gep323, i64 16
  %wide.load325 = load <16 x i8>, ptr %next.gep323, align 1, !tbaa !254
  %wide.load326 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !254
  %i.dy = getelementptr i8, ptr %next.gep324, i64 16
  store <16 x i8> %wide.load325, ptr %next.gep324, align 1, !tbaa !254
  store <16 x i8> %wide.load326, ptr %i.dy, align 1, !tbaa !254
  %index.next327 = add nuw i64 %index322, 32      ; 2 uses
  %i.dz = icmp eq i64 %index.next327, %n.vec320
  br i1 %i.dz, label %middle.block328, label %vector.body321, !llvm.loop !6111

middle.block328:                                  ; preds = %vector.body321
  %cmp.n329 = icmp eq i64 %n.vec320, %i.dq
  br i1 %cmp.n329, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %vec.epilog.iter.check331

vec.epilog.iter.check331:                         ; preds = %middle.block328
  %i.ea = and i32 %.sroa.speculated, 24
  %min.epilog.iters.check333 = icmp eq i32 %i.ea, 0
  br i1 %min.epilog.iters.check333, label %.lr.ph.i.i135.preheader, label %vec.epilog.ph334, !prof !515

vec.epilog.ph334:                                 ; preds = %vector.main.loop.iter.check317, %vec.epilog.iter.check331
  %vec.epilog.resume.val335 = phi i64 [ %n.vec320, %vec.epilog.iter.check331 ], [ 0, %vector.main.loop.iter.check317 ]
  %n.vec336 = and i64 %i.dq, -8                   ; 4 uses
  %i.eb = getelementptr i8, ptr %i.dp, i64 %n.vec336
  %i.ec = getelementptr i8, ptr %.3, i64 %n.vec336 ; 2 uses
  br label %vec.epilog.vector.body337

vec.epilog.vector.body337:                        ; preds = %vec.epilog.vector.body337, %vec.epilog.ph334
  %index338 = phi i64 [ %vec.epilog.resume.val335, %vec.epilog.ph334 ], [ %index.next342, %vec.epilog.vector.body337 ] ; 3 uses
  %next.gep339 = getelementptr i8, ptr %i.dp, i64 %index338
  %next.gep340 = getelementptr i8, ptr %.3, i64 %index338
  %wide.load341 = load <8 x i8>, ptr %next.gep339, align 1, !tbaa !254
  store <8 x i8> %wide.load341, ptr %next.gep340, align 1, !tbaa !254
  %index.next342 = add nuw i64 %index338, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next342, %n.vec336
  br i1 %i.ed, label %vec.epilog.middle.block343, label %vec.epilog.vector.body337, !llvm.loop !6112

vec.epilog.middle.block343:                       ; preds = %vec.epilog.vector.body337
  %cmp.n344 = icmp eq i64 %n.vec336, %i.dq
  br i1 %cmp.n344, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135.preheader

.lr.ph.i.i135.preheader:                          ; preds = %iter.check330, %vector.memcheck313, %vec.epilog.iter.check331, %vec.epilog.middle.block343
  %.011.i.i136.ph = phi ptr [ %i.dp, %iter.check330 ], [ %i.dp, %vector.memcheck313 ], [ %i.dv, %vec.epilog.iter.check331 ], [ %i.eb, %vec.epilog.middle.block343 ] ; 3 uses
  %.0810.i.i137.ph = phi ptr [ %.3, %iter.check330 ], [ %.3, %vector.memcheck313 ], [ %i.dw, %vec.epilog.iter.check331 ], [ %i.ec, %vec.epilog.middle.block343 ] ; 2 uses
  %i.ee = add i64 %i.dn, %i.dq
  %i.ef = add i64 %i.ee, %i.do
  %.011.i.i136.ph545 = ptrtoaddr ptr %.011.i.i136.ph to i64 ; 2 uses
  %i.eg = sub i64 %i.ef, %.011.i.i136.ph545
  %i.eh = add i64 %i.dn, -1
  %i.ei = add i64 %i.eh, %i.dq
  %i.ej = add i64 %i.ei, %i.do
  %i.ek = sub i64 %i.ej, %.011.i.i136.ph545
  %xtraiter546 = and i64 %i.eg, 7                 ; 2 uses
  %lcmp.mod547.not = icmp eq i64 %xtraiter546, 0
  br i1 %lcmp.mod547.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol

.lr.ph.i.i135.prol:                               ; preds = %.lr.ph.i.i135.preheader, %.lr.ph.i.i135.prol
  %.011.i.i136.prol = phi ptr [ %i.em, %.lr.ph.i.i135.prol ], [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ] ; 2 uses
  %.0810.i.i137.prol = phi ptr [ %i.en, %.lr.ph.i.i135.prol ], [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ] ; 2 uses
  %prol.iter548 = phi i64 [ %prol.iter548.next, %.lr.ph.i.i135.prol ], [ 0, %.lr.ph.i.i135.preheader ]
  %i.el = load i8, ptr %.011.i.i136.prol, align 1, !tbaa !254
  store i8 %i.el, ptr %.0810.i.i137.prol, align 1, !tbaa !254
  %i.em = getelementptr inbounds nuw i8, ptr %.011.i.i136.prol, i64 1 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0810.i.i137.prol, i64 1 ; 3 uses
  %prol.iter548.next = add i64 %prol.iter548, 1   ; 2 uses
  %prol.iter548.cmp.not = icmp eq i64 %prol.iter548.next, %xtraiter546
  br i1 %prol.iter548.cmp.not, label %.lr.ph.i.i135.prol.loopexit, label %.lr.ph.i.i135.prol, !llvm.loop !6113

.lr.ph.i.i135.prol.loopexit:                      ; preds = %.lr.ph.i.i135.prol, %.lr.ph.i.i135.preheader
  %.lcssa542.unr = phi ptr [ poison, %.lr.ph.i.i135.preheader ], [ %i.en, %.lr.ph.i.i135.prol ]
  %.011.i.i136.unr = phi ptr [ %.011.i.i136.ph, %.lr.ph.i.i135.preheader ], [ %i.em, %.lr.ph.i.i135.prol ]
  %.0810.i.i137.unr = phi ptr [ %.0810.i.i137.ph, %.lr.ph.i.i135.preheader ], [ %i.en, %.lr.ph.i.i135.prol ]
  %i.eo = icmp ult i64 %i.ek, 7
  br i1 %i.eo, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135

.lr.ph.i.i135:                                    ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135
  %.011.i.i136 = phi ptr [ %i.fl, %.lr.ph.i.i135 ], [ %.011.i.i136.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %.0810.i.i137 = phi ptr [ %i.fm, %.lr.ph.i.i135 ], [ %.0810.i.i137.unr, %.lr.ph.i.i135.prol.loopexit ] ; 9 uses
  %i.ep = load i8, ptr %.011.i.i136, align 1, !tbaa !254
  store i8 %i.ep, ptr %.0810.i.i137, align 1, !tbaa !254
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 1
  %i.er = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 1
  %i.es = load i8, ptr %i.eq, align 1, !tbaa !254
  store i8 %i.es, ptr %i.er, align 1, !tbaa !254
  %i.et = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 2
  %i.eu = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 2
  %i.ev = load i8, ptr %i.et, align 1, !tbaa !254
  store i8 %i.ev, ptr %i.eu, align 1, !tbaa !254
  %i.ew = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 3
  %i.ex = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 3
  %i.ey = load i8, ptr %i.ew, align 1, !tbaa !254
  store i8 %i.ey, ptr %i.ex, align 1, !tbaa !254
  %i.ez = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 4
  %i.fb = load i8, ptr %i.ez, align 1, !tbaa !254
  store i8 %i.fb, ptr %i.fa, align 1, !tbaa !254
  %i.fc = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 5
  %i.fd = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 5
  %i.fe = load i8, ptr %i.fc, align 1, !tbaa !254
  store i8 %i.fe, ptr %i.fd, align 1, !tbaa !254
  %i.ff = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 6
  %i.fg = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 6
  %i.fh = load i8, ptr %i.ff, align 1, !tbaa !254
  store i8 %i.fh, ptr %i.fg, align 1, !tbaa !254
  %i.fi = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 7
  %i.fj = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 7
  %i.fk = load i8, ptr %i.fi, align 1, !tbaa !254
  store i8 %i.fk, ptr %i.fj, align 1, !tbaa !254
  %i.fl = getelementptr inbounds nuw i8, ptr %.011.i.i136, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0810.i.i137, i64 8 ; 2 uses
  %.not.i.i138.7 = icmp eq ptr %i.fl, %i.dr
  br i1 %.not.i.i138.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140, label %.lr.ph.i.i135, !llvm.loop !6114

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140: ; preds = %.lr.ph.i.i135.prol.loopexit, %.lr.ph.i.i135, %vec.epilog.middle.block343, %middle.block328
  %.lcssa300 = phi ptr [ %i.ec, %vec.epilog.middle.block343 ], [ %i.dw, %middle.block328 ], [ %.lcssa542.unr, %.lr.ph.i.i135.prol.loopexit ], [ %i.fm, %.lr.ph.i.i135 ] ; 2 uses
  %i.fn = icmp slt i32 %i.dl, %storemerge228
  br i1 %i.fn, label %2, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142

2:                                                ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140
  %3 = sub nsw i32 %storemerge228, %.sroa.speculated
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split: ; preds = %bb.n, %2
  %.sink287 = phi i32 [ %3, %2 ], [ %storemerge228, %bb.n ]
  %.lcssa283.sink285 = phi ptr [ %.lcssa300, %2 ], [ %.3, %bb.n ] ; 2 uses
  %i.fo = zext nneg i32 %.sink287 to i64          ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.lcssa283.sink285, i64 %i.fo
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.lcssa283.sink285, i8 48, i64 %i.fo, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142:           ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140
  %.5 = phi ptr [ %.lcssa300, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit140 ], [ %i.fp, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit142.sink.split ] ; 2 uses
  %i.fq = add nsw i32 %.0105230, %storemerge228   ; 2 uses
  %i.fr = icmp slt i32 %i.fq, %i.f
  br i1 %i.fr, label %bb.l, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, !llvm.loop !6115

bb.o:                                             ; preds = %bb.j
  %i.fs = load ptr, ptr %0, align 8, !tbaa !1981  ; 7 uses
  %i.ft = sext i32 %i.c to i64                    ; 6 uses
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 %i.ft
  %.not9.i.i145 = icmp eq i32 %i.c, 0
  br i1 %.not9.i.i145, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151, label %iter.check

iter.check:                                       ; preds = %bb.o
  %i.fv = ptrtoaddr ptr %i.fs to i64              ; 2 uses
  %min.iters.check = icmp ult i32 %i.c, 8
  %i.fw = sub i64 %i.fv, %i.a
  %diff.check = icmp ugt i64 %i.fw, -32
  %or.cond528.a = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond528.a, label %.lr.ph.i.i146.preheader, label %vector.main.loop.iter.check

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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !254
  %wide.load304 = load <16 x i8>, ptr %i.fz, align 1, !tbaa !254
  %i.ga = getelementptr i8, ptr %next.gep303, i64 16
  store <16 x i8> %wide.load, ptr %next.gep303, align 1, !tbaa !254
  store <16 x i8> %wide.load304, ptr %i.ga, align 1, !tbaa !254
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.gb = icmp eq i64 %index.next, %n.vec
  br i1 %i.gb, label %middle.block, label %vector.body, !llvm.loop !6116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ft
  br i1 %cmp.n, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.gc = and i32 %i.c, 24
  %min.epilog.iters.check = icmp eq i32 %i.gc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i146.preheader, label %vec.epilog.ph, !prof !515

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
  %wide.load309 = load <8 x i8>, ptr %next.gep307, align 1, !tbaa !254
  store <8 x i8> %wide.load309, ptr %next.gep308, align 1, !tbaa !254
  %index.next310 = add nuw i64 %index306, 8       ; 2 uses
  %i.gf = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.gf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6117

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n311 = icmp eq i64 %n.vec305, %i.ft
  br i1 %cmp.n311, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146.preheader

.lr.ph.i.i146.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.011.i.i147.ph = phi ptr [ %i.fs, %iter.check ], [ %i.fx, %vec.epilog.iter.check ], [ %i.gd, %vec.epilog.middle.block ] ; 3 uses
  %.0810.i.i148.ph = phi ptr [ %1, %iter.check ], [ %i.fy, %vec.epilog.iter.check ], [ %i.ge, %vec.epilog.middle.block ] ; 2 uses
  %i.gg = add i64 %i.fv, %i.ft                    ; 2 uses
  %.011.i.i147.ph544 = ptrtoaddr ptr %.011.i.i147.ph to i64 ; 2 uses
  %i.gh = sub i64 %i.gg, %.011.i.i147.ph544
  %xtraiter = and i64 %i.gh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol

.lr.ph.i.i146.prol:                               ; preds = %.lr.ph.i.i146.preheader, %.lr.ph.i.i146.prol
  %.011.i.i147.prol = phi ptr [ %i.gj, %.lr.ph.i.i146.prol ], [ %.011.i.i147.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %.0810.i.i148.prol = phi ptr [ %i.gk, %.lr.ph.i.i146.prol ], [ %.0810.i.i148.ph, %.lr.ph.i.i146.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i146.prol ], [ 0, %.lr.ph.i.i146.preheader ]
  %i.gi = load i8, ptr %.011.i.i147.prol, align 1, !tbaa !254
  store i8 %i.gi, ptr %.0810.i.i148.prol, align 1, !tbaa !254
  %i.gj = getelementptr inbounds nuw i8, ptr %.011.i.i147.prol, i64 1 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0810.i.i148.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i146.prol.loopexit, label %.lr.ph.i.i146.prol, !llvm.loop !6118

.lr.ph.i.i146.prol.loopexit:                      ; preds = %.lr.ph.i.i146.prol, %.lr.ph.i.i146.preheader
  %.lcssa543.unr = phi ptr [ poison, %.lr.ph.i.i146.preheader ], [ %i.gk, %.lr.ph.i.i146.prol ]
  %.011.i.i147.unr = phi ptr [ %.011.i.i147.ph, %.lr.ph.i.i146.preheader ], [ %i.gj, %.lr.ph.i.i146.prol ]
  %.0810.i.i148.unr = phi ptr [ %.0810.i.i148.ph, %.lr.ph.i.i146.preheader ], [ %i.gk, %.lr.ph.i.i146.prol ]
  %i.gl = sub i64 %.011.i.i147.ph544, %i.gg
  %i.gm = icmp ugt i64 %i.gl, -8
  br i1 %i.gm, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146

.lr.ph.i.i146:                                    ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146
  %.011.i.i147 = phi ptr [ %i.hj, %.lr.ph.i.i146 ], [ %.011.i.i147.unr, %.lr.ph.i.i146.prol.loopexit ] ; 9 uses
  %.0810.i.i148 = phi ptr [ %i.hk, %.lr.ph.i.i146 ], [ %.0810.i.i148.unr, %.lr.ph.i.i146.prol.loopexit ] ; 9 uses
  %i.gn = load i8, ptr %.011.i.i147, align 1, !tbaa !254
  store i8 %i.gn, ptr %.0810.i.i148, align 1, !tbaa !254
  %i.go = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 1
  %i.gp = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 1
  %i.gq = load i8, ptr %i.go, align 1, !tbaa !254
  store i8 %i.gq, ptr %i.gp, align 1, !tbaa !254
  %i.gr = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 2
  %i.gs = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 2
  %i.gt = load i8, ptr %i.gr, align 1, !tbaa !254
  store i8 %i.gt, ptr %i.gs, align 1, !tbaa !254
  %i.gu = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 3
  %i.gv = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 3
  %i.gw = load i8, ptr %i.gu, align 1, !tbaa !254
  store i8 %i.gw, ptr %i.gv, align 1, !tbaa !254
  %i.gx = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 4
  %i.gz = load i8, ptr %i.gx, align 1, !tbaa !254
  store i8 %i.gz, ptr %i.gy, align 1, !tbaa !254
  %i.ha = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 5
  %i.hb = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 5
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !254
  store i8 %i.hc, ptr %i.hb, align 1, !tbaa !254
  %i.hd = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 6
  %i.he = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 6
  %i.hf = load i8, ptr %i.hd, align 1, !tbaa !254
  store i8 %i.hf, ptr %i.he, align 1, !tbaa !254
  %i.hg = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 7
  %i.hh = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 7
  %i.hi = load i8, ptr %i.hg, align 1, !tbaa !254
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !254
  %i.hj = getelementptr inbounds nuw i8, ptr %.011.i.i147, i64 8 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0810.i.i148, i64 8 ; 2 uses
  %.not.i.i149.7 = icmp eq ptr %i.hj, %i.fu
  br i1 %.not.i.i149.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit, label %.lr.ph.i.i146, !llvm.loop !6119

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit151.loopexit: ; preds = %.lr.ph.i.i146.prol.loopexit, %.lr.ph.i.i146, %vec.epilog.middle.block, %middle.block
  %.lcssa301 = phi ptr [ %i.ge, %vec.epilog.middle.block ], [ %i.fy, %middle.block ], [ %.lcssa543.unr, %.lr.ph.i.i146.prol.loopexit ], [ %i.hk, %.lr.ph.i.i146 ]
  %.pre = load i32, ptr %i.b, align 8, !tbaa !1982
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
  %i.ht = load i8, ptr %i.hs, align 8, !tbaa !1984
  %i.hu = getelementptr inbounds nuw i8, ptr %.6, i64 1 ; 4 uses
  store i8 %i.ht, ptr %.6, align 1, !tbaa !254
  %i.hv = load i32, ptr %i.g, align 8, !tbaa !1986
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
  store i8 48, ptr %i.hu, align 1, !tbaa !254
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
  %or.cond531 = select i1 %min.iters.check351, i1 true, i1 %diff.check353
  br i1 %or.cond531, label %.lr.ph.i.i189.preheader, label %vector.main.loop.iter.check354

vector.main.loop.iter.check354:                   ; preds = %iter.check367
  %min.iters.check355 = icmp ult i32 %.1216, 32
  br i1 %min.iters.check355, label %vec.epilog.ph371, label %vector.ph356

vector.ph356:                                     ; preds = %vector.main.loop.iter.check354
  %n.vec357 = and i64 %i.qj, -32                  ; 5 uses
  %i.qn = getelementptr i8, ptr %i.qi, i64 %n.vec357
  %i.qo = getelementptr i8, ptr %.0.i.i186, i64 %n.vec357 ; 2 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.ph356, %vector.body358
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body358 ] ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.qi, i64 %index359 ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.0.i.i186, i64 %index359 ; 2 uses
  %i.qp = getelementptr i8, ptr %next.gep360, i64 16
  %wide.load362 = load <16 x i8>, ptr %next.gep360, align 1, !tbaa !254
  %wide.load363 = load <16 x i8>, ptr %i.qp, align 1, !tbaa !254
  %i.qq = getelementptr i8, ptr %next.gep361, i64 16
  store <16 x i8> %wide.load362, ptr %next.gep361, align 1, !tbaa !254
  store <16 x i8> %wide.load363, ptr %i.qq, align 1, !tbaa !254
  %index.next364 = add nuw i64 %index359, 32      ; 2 uses
  %i.qr = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.qr, label %middle.block365, label %vector.body358, !llvm.loop !6135

middle.block365:                                  ; preds = %vector.body358
  %cmp.n366 = icmp eq i64 %n.vec357, %i.qj
  br i1 %cmp.n366, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check368

vec.epilog.iter.check368:                         ; preds = %middle.block365
  %i.qs = and i32 %.1216, 24
  %min.epilog.iters.check370 = icmp eq i32 %i.qs, 0
  br i1 %min.epilog.iters.check370, label %.lr.ph.i.i189.preheader, label %vec.epilog.ph371, !prof !515

vec.epilog.ph371:                                 ; preds = %vector.main.loop.iter.check354, %vec.epilog.iter.check368
  %vec.epilog.resume.val372 = phi i64 [ %n.vec357, %vec.epilog.iter.check368 ], [ 0, %vector.main.loop.iter.check354 ]
  %n.vec373 = and i64 %i.qj, -8                   ; 4 uses
  %i.qt = getelementptr i8, ptr %i.qi, i64 %n.vec373
  %i.qu = getelementptr i8, ptr %.0.i.i186, i64 %n.vec373 ; 2 uses
  br label %vec.epilog.vector.body374

vec.epilog.vector.body374:                        ; preds = %vec.epilog.vector.body374, %vec.epilog.ph371
  %index375 = phi i64 [ %vec.epilog.resume.val372, %vec.epilog.ph371 ], [ %index.next379, %vec.epilog.vector.body374 ] ; 3 uses
  %next.gep376 = getelementptr i8, ptr %i.qi, i64 %index375
  %next.gep377 = getelementptr i8, ptr %.0.i.i186, i64 %index375
  %wide.load378 = load <8 x i8>, ptr %next.gep376, align 1, !tbaa !254
  store <8 x i8> %wide.load378, ptr %next.gep377, align 1, !tbaa !254
  %index.next379 = add nuw i64 %index375, 8       ; 2 uses
  %i.qv = icmp eq i64 %index.next379, %n.vec373
  br i1 %i.qv, label %vec.epilog.middle.block380, label %vec.epilog.vector.body374, !llvm.loop !6136

vec.epilog.middle.block380:                       ; preds = %vec.epilog.vector.body374
  %cmp.n381 = icmp eq i64 %n.vec373, %i.qj
  br i1 %cmp.n381, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %iter.check367, %vec.epilog.iter.check368, %vec.epilog.middle.block380
  %.011.i.i190.ph = phi ptr [ %i.qi, %iter.check367 ], [ %i.qn, %vec.epilog.iter.check368 ], [ %i.qt, %vec.epilog.middle.block380 ] ; 3 uses
  %.0810.i.i191.ph = phi ptr [ %.0.i.i186, %iter.check367 ], [ %i.qo, %vec.epilog.iter.check368 ], [ %i.qu, %vec.epilog.middle.block380 ] ; 2 uses
  %i.qw = add i64 %i.ql, %i.qj                    ; 2 uses
  %.011.i.i190.ph549 = ptrtoaddr ptr %.011.i.i190.ph to i64 ; 2 uses
  %i.qx = sub i64 %i.qw, %.011.i.i190.ph549
  %xtraiter550 = and i64 %i.qx, 7                 ; 2 uses
  %lcmp.mod551.not = icmp eq i64 %xtraiter550, 0
  br i1 %lcmp.mod551.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.011.i.i190.prol = phi ptr [ %i.qz, %.lr.ph.i.i189.prol ], [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %.0810.i.i191.prol = phi ptr [ %i.ra, %.lr.ph.i.i189.prol ], [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter552 = phi i64 [ %prol.iter552.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.qy = load i8, ptr %.011.i.i190.prol, align 1, !tbaa !254
  store i8 %i.qy, ptr %.0810.i.i191.prol, align 1, !tbaa !254
  %i.qz = getelementptr inbounds nuw i8, ptr %.011.i.i190.prol, i64 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0810.i.i191.prol, i64 1 ; 3 uses
  %prol.iter552.next = add i64 %prol.iter552, 1   ; 2 uses
  %prol.iter552.cmp.not = icmp eq i64 %prol.iter552.next, %xtraiter550
  br i1 %prol.iter552.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !6137

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa540.unr = phi ptr [ poison, %.lr.ph.i.i189.preheader ], [ %i.ra, %.lr.ph.i.i189.prol ]
  %.011.i.i190.unr = phi ptr [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ], [ %i.qz, %.lr.ph.i.i189.prol ]
  %.0810.i.i191.unr = phi ptr [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ], [ %i.ra, %.lr.ph.i.i189.prol ]
  %i.rb = sub i64 %.011.i.i190.ph549, %i.qw
  %i.rc = icmp ugt i64 %i.rb, -8
  br i1 %i.rc, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.011.i.i190 = phi ptr [ %i.rz, %.lr.ph.i.i189 ], [ %.011.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %.0810.i.i191 = phi ptr [ %i.sa, %.lr.ph.i.i189 ], [ %.0810.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.rd = load i8, ptr %.011.i.i190, align 1, !tbaa !254
  store i8 %i.rd, ptr %.0810.i.i191, align 1, !tbaa !254
  %i.re = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 1
  %i.rg = load i8, ptr %i.re, align 1, !tbaa !254
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !254
  %i.rh = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 2
  %i.ri = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 2
  %i.rj = load i8, ptr %i.rh, align 1, !tbaa !254
  store i8 %i.rj, ptr %i.ri, align 1, !tbaa !254
  %i.rk = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 3
  %i.rl = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 3
  %i.rm = load i8, ptr %i.rk, align 1, !tbaa !254
  store i8 %i.rm, ptr %i.rl, align 1, !tbaa !254
  %i.rn = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 4
  %i.ro = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 4
  %i.rp = load i8, ptr %i.rn, align 1, !tbaa !254
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !254
  %i.rq = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 5
  %i.rr = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 5
  %i.rs = load i8, ptr %i.rq, align 1, !tbaa !254
  store i8 %i.rs, ptr %i.rr, align 1, !tbaa !254
  %i.rt = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 6
  %i.ru = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 6
  %i.rv = load i8, ptr %i.rt, align 1, !tbaa !254
  store i8 %i.rv, ptr %i.ru, align 1, !tbaa !254
  %i.rw = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 7
  %i.rx = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 7
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !254
  store i8 %i.ry, ptr %i.rx, align 1, !tbaa !254
  %i.rz = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 8 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.rz, %i.qk
  br i1 %.not.i.i192.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189, !llvm.loop !6138

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.ab, %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block365, %vec.epilog.middle.block380, %middle.block472, %vec.epilog.middle.block487, %.critedge, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, %bb.s, %bb.r, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, %bb.ad, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cy, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit ], [ %i.pl, %.critedge7 ], [ %i.ia, %bb.s ], [ %.6, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153 ], [ %i.hu, %bb.r ], [ %.08.lcssa.i.i182, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183 ], [ %i.pk, %bb.ad ], [ %i.nd, %.lr.ph.i.i171 ], [ %.11, %bb.ab ], [ %.0.i.i186, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187 ], [ %i.ic, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155 ], [ %.11, %.critedge ], [ %i.lx, %vec.epilog.middle.block487 ], [ %i.ls, %middle.block472 ], [ %i.qu, %vec.epilog.middle.block380 ], [ %i.qo, %middle.block365 ], [ %.lcssa532.unr.a, %.lr.ph.i.i171.prol.loopexit ], [ %.lcssa540.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.sa, %.lr.ph.i.i189 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !1982 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !1983 ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !1986
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
  %.sroa.05.0.lcssa.i.i133.peel = add i64 %1, %i.aj ; 2 uses
  %i.ak = icmp samesign ult i32 %i.b, %spec.select
  br i1 %i.ak, label %bb.g, label %.peel.next.preheader

bb.g:                                             ; preds = %bb.f
  %2 = xor i32 %i.ai, -1
  %i.al = add nsw i32 %spec.select, %2
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add i64 %.sroa.05.0.lcssa.i.i133.peel, 1
  %i.ao = add i64 %i.an, %i.am
  br label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.e, %bb.f, %bb.g
  %.sroa.0186.2231.ph = phi i64 [ %i.ao, %bb.g ], [ %.sroa.05.0.lcssa.i.i133.peel, %bb.f ], [ %i.ah, %bb.e ]
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
  br i1 %i.az, label %.peel.next, label %.loopexit229, !llvm.loop !6139

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
  %i.bg = load i32, ptr %i.f, align 8, !tbaa !1986
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
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !6140

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
  br i1 %i.ch, label %scalar.ph, label %.loopexit, !llvm.loop !6141

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
  %i.cl = load ptr, ptr %0, align 8, !tbaa !1981
  %i.cm = zext nneg i32 %i.e to i64
  %i.cn = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cn)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.ck, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 3 uses
  %i.co = getelementptr i8, ptr %i.cl, i64 %indvars.iv
  %i.cp = getelementptr i8, ptr %i.co, i64 -1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !254
  %i.cr = icmp eq i8 %i.cq, 48
  br i1 %i.cr, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.cs = icmp sgt i64 %indvars.iv.next, %i.cm
  br i1 %i.cs, label %bb.s, label %.critedge, !llvm.loop !6142

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
  %i.da = load i32, ptr %i.f, align 8, !tbaa !1986 ; 2 uses
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
