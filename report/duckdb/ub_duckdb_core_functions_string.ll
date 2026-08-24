Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_string?download=true
inline.NumInlined: 11296
inline.NumDeleted: 2901
loop-unroll.NumCompletelyUnrolled: 121
loop-unroll.NumRuntimeUnrolled: 169
loop-unroll.NumUnrolled: 290
begin_hunk_0_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyIPcEET_S6_:bb.a
  %i.nc = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 7
  %i.nd = load i8, ptr %i.nb, align 1, !tbaa !66
  store i8 %i.nd, ptr %i.nc, align 1, !tbaa !66
  %i.ne = getelementptr inbounds nuw i8, ptr %.011.i.i172, i64 8 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.0810.i.i173, i64 8 ; 2 uses
  %.not.i.i174.7 = icmp eq ptr %i.ne, %i.ll
  br i1 %.not.i.i174.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i171, !llvm.loop !3375

bb.ac:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit169
  %i.ng = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.nh = load i8, ptr %i.ng, align 8, !tbaa !3349
  %i.ni = getelementptr inbounds nuw i8, ptr %.11, i64 1 ; 7 uses
  store i8 %i.nh, ptr %.11, align 1, !tbaa !66
  %i.nj = load ptr, ptr %0, align 8, !tbaa !3343  ; 3 uses
  %i.nk = ptrtoaddr ptr %i.nj to i64              ; 2 uses
  %i.nl = load i32, ptr %i.b, align 8, !tbaa !3347 ; 2 uses
  %i.nm = sext i32 %i.nl to i64                   ; 3 uses
  %i.nn = getelementptr inbounds i8, ptr %i.nj, i64 %i.nm
  %.not9.i.i177 = icmp eq i32 %i.f, %i.nl
  br i1 %.not9.i.i177, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, label %iter.check441

iter.check441:                                    ; preds = %bb.ac
  %i.no = zext nneg i32 %i.f to i64               ; 3 uses
  %i.np = getelementptr inbounds nuw i8, ptr %i.nj, i64 %i.no ; 6 uses
  %i.nq = sub nsw i64 %i.nm, %i.no                ; 7 uses
  %min.iters.check425 = icmp ult i64 %i.nq, 4
  br i1 %min.iters.check425, label %.lr.ph.i.i178.preheader, label %vector.memcheck422

vector.memcheck422:                               ; preds = %iter.check441
  %i.nr = add i64 %i.nk, %i.no
  %i.ns = sub i64 %.11423, %i.nr
  %diff.check424 = icmp ult i64 %i.ns, 31
  br i1 %diff.check424, label %.lr.ph.i.i178.preheader, label %vector.main.loop.iter.check426

vector.main.loop.iter.check426:                   ; preds = %vector.memcheck422
  %min.iters.check427 = icmp ult i64 %i.nq, 32
  br i1 %min.iters.check427, label %vec.epilog.ph445, label %vector.ph428

vector.ph428:                                     ; preds = %vector.main.loop.iter.check426
  %i.nt = and i64 %i.nq, 28
  %n.vec429 = and i64 %i.nq, -32                  ; 5 uses
  %i.nu = getelementptr i8, ptr %i.np, i64 %n.vec429
  %i.nv = getelementptr i8, ptr %i.ni, i64 %n.vec429 ; 2 uses
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 3 uses
  %next.gep432 = getelementptr i8, ptr %i.np, i64 %index431 ; 2 uses
  %next.gep433 = getelementptr i8, ptr %i.ni, i64 %index431 ; 2 uses
  %i.nw = getelementptr i8, ptr %next.gep432, i64 16
  %wide.load434 = load <16 x i8>, ptr %next.gep432, align 1, !tbaa !66
  %wide.load435 = load <16 x i8>, ptr %i.nw, align 1, !tbaa !66
  %i.nx = getelementptr i8, ptr %next.gep433, i64 16
  store <16 x i8> %wide.load434, ptr %next.gep433, align 1, !tbaa !66
  store <16 x i8> %wide.load435, ptr %i.nx, align 1, !tbaa !66
  %index.next436 = add nuw i64 %index431, 32      ; 2 uses
  %i.ny = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.ny, label %middle.block437, label %vector.body430, !llvm.loop !3376

middle.block437:                                  ; preds = %vector.body430
  %cmp.n438 = icmp eq i64 %i.nq, %n.vec429
  br i1 %cmp.n438, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit, label %vec.epilog.iter.check443

vec.epilog.iter.check443:                         ; preds = %middle.block437
  %min.epilog.iters.check444 = icmp eq i64 %i.nt, 0
  br i1 %min.epilog.iters.check444, label %.lr.ph.i.i178.preheader, label %vec.epilog.ph445, !prof !2408

vec.epilog.ph445:                                 ; preds = %vector.main.loop.iter.check426, %vec.epilog.iter.check443
  %vec.epilog.resume.val439 = phi i64 [ %n.vec429, %vec.epilog.iter.check443 ], [ 0, %vector.main.loop.iter.check426 ]
  %n.vec446 = and i64 %i.nq, -4                   ; 4 uses
  %i.nz = getelementptr i8, ptr %i.np, i64 %n.vec446
  %i.oa = getelementptr i8, ptr %i.ni, i64 %n.vec446 ; 2 uses
  br label %vec.epilog.vector.body447

vec.epilog.vector.body447:                        ; preds = %vec.epilog.vector.body447, %vec.epilog.ph445
  %index448 = phi i64 [ %vec.epilog.resume.val439, %vec.epilog.ph445 ], [ %index.next452, %vec.epilog.vector.body447 ] ; 3 uses
  %next.gep449 = getelementptr i8, ptr %i.np, i64 %index448
  %next.gep450 = getelementptr i8, ptr %i.ni, i64 %index448
  %wide.load451 = load <4 x i8>, ptr %next.gep449, align 1, !tbaa !66
  store <4 x i8> %wide.load451, ptr %next.gep450, align 1, !tbaa !66
  %index.next452 = add nuw i64 %index448, 4       ; 2 uses
  %i.ob = icmp eq i64 %index.next452, %n.vec446
  br i1 %i.ob, label %vec.epilog.middle.block453, label %vec.epilog.vector.body447, !llvm.loop !3377

vec.epilog.middle.block453:                       ; preds = %vec.epilog.vector.body447
  %cmp.n454 = icmp eq i64 %i.nq, %n.vec446
  br i1 %cmp.n454, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit, label %.lr.ph.i.i178.preheader

.lr.ph.i.i178.preheader:                          ; preds = %vector.memcheck422, %iter.check441, %vec.epilog.iter.check443, %vec.epilog.middle.block453
  %.011.i.i179.ph = phi ptr [ %i.np, %iter.check441 ], [ %i.np, %vector.memcheck422 ], [ %i.nu, %vec.epilog.iter.check443 ], [ %i.nz, %vec.epilog.middle.block453 ] ; 3 uses
  %.0810.i.i180.ph = phi ptr [ %i.ni, %iter.check441 ], [ %i.ni, %vector.memcheck422 ], [ %i.nv, %vec.epilog.iter.check443 ], [ %i.oa, %vec.epilog.middle.block453 ] ; 2 uses
  %i.oc = add i64 %i.nk, %i.nm                    ; 2 uses
  %.011.i.i179.ph558 = ptrtoaddr ptr %.011.i.i179.ph to i64 ; 2 uses
  %i.od = sub i64 %i.oc, %.011.i.i179.ph558
  %xtraiter559 = and i64 %i.od, 7                 ; 2 uses
  %lcmp.mod560.not = icmp eq i64 %xtraiter559, 0
  br i1 %lcmp.mod560.not, label %.lr.ph.i.i178.prol.loopexit, label %.lr.ph.i.i178.prol

.lr.ph.i.i178.prol:                               ; preds = %.lr.ph.i.i178.preheader, %.lr.ph.i.i178.prol
  %.011.i.i179.prol = phi ptr [ %i.of, %.lr.ph.i.i178.prol ], [ %.011.i.i179.ph, %.lr.ph.i.i178.preheader ] ; 2 uses
  %.0810.i.i180.prol = phi ptr [ %i.og, %.lr.ph.i.i178.prol ], [ %.0810.i.i180.ph, %.lr.ph.i.i178.preheader ] ; 2 uses
  %prol.iter561 = phi i64 [ %prol.iter561.next, %.lr.ph.i.i178.prol ], [ 0, %.lr.ph.i.i178.preheader ]
  %i.oe = load i8, ptr %.011.i.i179.prol, align 1, !tbaa !66
  store i8 %i.oe, ptr %.0810.i.i180.prol, align 1, !tbaa !66
  %i.of = getelementptr inbounds nuw i8, ptr %.011.i.i179.prol, i64 1 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0810.i.i180.prol, i64 1 ; 3 uses
  %prol.iter561.next = add i64 %prol.iter561, 1   ; 2 uses
  %prol.iter561.cmp.not = icmp eq i64 %prol.iter561.next, %xtraiter559
  br i1 %prol.iter561.cmp.not, label %.lr.ph.i.i178.prol.loopexit, label %.lr.ph.i.i178.prol, !llvm.loop !3378

.lr.ph.i.i178.prol.loopexit:                      ; preds = %.lr.ph.i.i178.prol, %.lr.ph.i.i178.preheader
  %.lcssa533.unr = phi ptr [ poison, %.lr.ph.i.i178.preheader ], [ %i.og, %.lr.ph.i.i178.prol ]
  %.011.i.i179.unr = phi ptr [ %.011.i.i179.ph, %.lr.ph.i.i178.preheader ], [ %i.of, %.lr.ph.i.i178.prol ]
  %.0810.i.i180.unr = phi ptr [ %.0810.i.i180.ph, %.lr.ph.i.i178.preheader ], [ %i.og, %.lr.ph.i.i178.prol ]
  %i.oh = sub i64 %.011.i.i179.ph558, %i.oc
  %i.oi = icmp ugt i64 %i.oh, -8
  br i1 %i.oi, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit, label %.lr.ph.i.i178

.lr.ph.i.i178:                                    ; preds = %.lr.ph.i.i178.prol.loopexit, %.lr.ph.i.i178
  %.011.i.i179 = phi ptr [ %i.pf, %.lr.ph.i.i178 ], [ %.011.i.i179.unr, %.lr.ph.i.i178.prol.loopexit ] ; 9 uses
  %.0810.i.i180 = phi ptr [ %i.pg, %.lr.ph.i.i178 ], [ %.0810.i.i180.unr, %.lr.ph.i.i178.prol.loopexit ] ; 9 uses
  %i.oj = load i8, ptr %.011.i.i179, align 1, !tbaa !66
  store i8 %i.oj, ptr %.0810.i.i180, align 1, !tbaa !66
  %i.ok = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 1
  %i.ol = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 1
  %i.om = load i8, ptr %i.ok, align 1, !tbaa !66
  store i8 %i.om, ptr %i.ol, align 1, !tbaa !66
  %i.on = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 2
  %i.oo = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 2
  %i.op = load i8, ptr %i.on, align 1, !tbaa !66
  store i8 %i.op, ptr %i.oo, align 1, !tbaa !66
  %i.oq = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 3
  %i.or = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 3
  %i.os = load i8, ptr %i.oq, align 1, !tbaa !66
  store i8 %i.os, ptr %i.or, align 1, !tbaa !66
  %i.ot = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 4
  %i.ou = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 4
  %i.ov = load i8, ptr %i.ot, align 1, !tbaa !66
  store i8 %i.ov, ptr %i.ou, align 1, !tbaa !66
  %i.ow = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 5
  %i.ox = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 5
  %i.oy = load i8, ptr %i.ow, align 1, !tbaa !66
  store i8 %i.oy, ptr %i.ox, align 1, !tbaa !66
  %i.oz = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 6
  %i.pa = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 6
  %i.pb = load i8, ptr %i.oz, align 1, !tbaa !66
  store i8 %i.pb, ptr %i.pa, align 1, !tbaa !66
  %i.pc = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 7
  %i.pd = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 7
  %i.pe = load i8, ptr %i.pc, align 1, !tbaa !66
  store i8 %i.pe, ptr %i.pd, align 1, !tbaa !66
  %i.pf = getelementptr inbounds nuw i8, ptr %.011.i.i179, i64 8 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %.0810.i.i180, i64 8 ; 2 uses
  %.not.i.i181.7 = icmp eq ptr %i.pf, %i.nn
  br i1 %.not.i.i181.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit, label %.lr.ph.i.i178, !llvm.loop !3379

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit: ; preds = %.lr.ph.i.i178.prol.loopexit, %.lr.ph.i.i178, %vec.epilog.middle.block453, %middle.block437
  %.lcssa295 = phi ptr [ %i.oa, %vec.epilog.middle.block453 ], [ %i.nv, %middle.block437 ], [ %.lcssa533.unr, %.lr.ph.i.i178.prol.loopexit ], [ %i.pg, %.lr.ph.i.i178 ]
  %.pre248 = load i32, ptr %i.b, align 8, !tbaa !3347
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183: ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit, %bb.ac
  %i.ph = phi i32 [ %i.f, %bb.ac ], [ %.pre248, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit ] ; 2 uses
  %.08.lcssa.i.i182 = phi ptr [ %i.ni, %bb.ac ], [ %.lcssa295, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183.loopexit ] ; 3 uses
  %i.pi = load i32, ptr %i.g, align 8, !tbaa !3351 ; 2 uses
  %i.pj = icmp sgt i32 %i.pi, %i.ph
  br i1 %i.pj, label %bb.ad, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

bb.ad:                                            ; preds = %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183
  %i.pk = sub nsw i32 %i.pi, %i.ph
  %i.pl = zext nneg i32 %i.pk to i64              ; 2 uses
  %i.pm = getelementptr inbounds nuw i8, ptr %.08.lcssa.i.i182, i64 %i.pl
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %.08.lcssa.i.i182, i8 48, i64 %i.pl, i1 false)
  br label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176

bb.ae:                                            ; preds = %bb.t
  %i.pn = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  store i8 48, ptr %1, align 1, !tbaa !66
  %i.po = sub nsw i32 0, %i.f                     ; 5 uses
  %i.pp = load i32, ptr %i.b, align 8, !tbaa !3347 ; 4 uses
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %.thread, label %bb.af

.thread:                                          ; preds = %bb.ae
  %i.pr = load i32, ptr %i.g, align 8, !tbaa !3351 ; 2 uses
  %i.ps = tail call i32 @llvm.smin.i32(i32 %i.pr, i32 %i.po)
  %i.pt = icmp slt i32 %i.pr, 0
  %spec.select133 = select i1 %i.pt, i32 %i.po, i32 %i.ps
  br label %.critedge7

bb.af:                                            ; preds = %bb.ae
  %i.pu = load i32, ptr %i.h, align 4
  %i.pv = and i32 %i.pu, 536870912
  %.not125 = icmp eq i32 %i.pv, 0
  %i.pw = icmp sgt i32 %i.pp, 0
  %or.cond11 = and i1 %i.pw, %.not125
  br i1 %or.cond11, label %.preheader, label %.critedge7.thread

.preheader:                                       ; preds = %bb.af
  %i.px = load ptr, ptr %0, align 8, !tbaa !3343
  br label %bb.ag

bb.ag:                                            ; preds = %.preheader, %bb.ah
  %.0 = phi i32 [ %3, %bb.ah ], [ %i.pp, %.preheader ] ; 4 uses
  %2 = zext nneg i32 %.0 to i64
  %i.py = getelementptr i8, ptr %i.px, i64 %2
  %i.pz = getelementptr i8, ptr %i.py, i64 -1
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !66
  %i.qb = icmp eq i8 %i.qa, 48
  br i1 %i.qb, label %bb.ah, label %.critedge7.thread

bb.ah:                                            ; preds = %bb.ag
  %3 = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.ag, label %.critedge7

.critedge7:                                       ; preds = %bb.ah, %.thread
  %.099211 = phi i32 [ %spec.select133, %.thread ], [ %i.po, %bb.ah ] ; 2 uses
  %.not217 = icmp eq i32 %.099211, 0
  br i1 %.not217, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.ag, %bb.af, %.critedge7
  %.1216 = phi i32 [ 0, %.critedge7 ], [ %i.pp, %bb.af ], [ %.0, %bb.ag ] ; 5 uses
  %.099211215 = phi i32 [ %.099211, %.critedge7 ], [ %i.po, %bb.af ], [ %i.po, %bb.ag ] ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qd = load i8, ptr %i.qc, align 8, !tbaa !3349
  %i.qe = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  store i8 %i.qd, ptr %i.pn, align 1, !tbaa !66
  %i.qf = icmp slt i32 %.099211215, 1
  br i1 %i.qf, label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, label %bb.ai

bb.ai:                                            ; preds = %.critedge7.thread
  %i.qg = zext nneg i32 %.099211215 to i64        ; 2 uses
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.qg
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.qe, i8 48, i64 %i.qg, i1 false)
  br label %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187

_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187:           ; preds = %.critedge7.thread, %bb.ai
  %.0.i.i186 = phi ptr [ %i.qe, %.critedge7.thread ], [ %i.qh, %bb.ai ] ; 7 uses
  %i.qi = load ptr, ptr %0, align 8, !tbaa !3343  ; 7 uses
  %i.qj = sext i32 %.1216 to i64                  ; 6 uses
  %i.qk = getelementptr inbounds i8, ptr %i.qi, i64 %i.qj
  %.not9.i.i188 = icmp eq i32 %.1216, 0
  br i1 %.not9.i.i188, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %iter.check369

iter.check369:                                    ; preds = %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187
  %i.ql = ptrtoaddr ptr %i.qi to i64              ; 2 uses
  %.0.i.i186351 = ptrtoaddr ptr %.0.i.i186 to i64
  %min.iters.check353 = icmp ult i32 %.1216, 4
  %i.qm = sub i64 %i.ql, %.0.i.i186351
  %diff.check352 = icmp ugt i64 %i.qm, -32
  %or.cond529 = select i1 %min.iters.check353, i1 true, i1 %diff.check352
  br i1 %or.cond529, label %.lr.ph.i.i189.preheader, label %vector.main.loop.iter.check354

vector.main.loop.iter.check354:                   ; preds = %iter.check369
  %min.iters.check355 = icmp ult i32 %.1216, 32
  br i1 %min.iters.check355, label %vec.epilog.ph373, label %vector.ph356

vector.ph356:                                     ; preds = %vector.main.loop.iter.check354
  %n.vec357 = and i64 %i.qj, -32                  ; 5 uses
  %i.qn = getelementptr i8, ptr %i.qi, i64 %n.vec357
  %i.qo = getelementptr i8, ptr %.0.i.i186, i64 %n.vec357 ; 2 uses
  br label %vector.body358

vector.body358:                                   ; preds = %vector.body358, %vector.ph356
  %index359 = phi i64 [ 0, %vector.ph356 ], [ %index.next364, %vector.body358 ] ; 3 uses
  %next.gep360 = getelementptr i8, ptr %i.qi, i64 %index359 ; 2 uses
  %next.gep361 = getelementptr i8, ptr %.0.i.i186, i64 %index359 ; 2 uses
  %i.qp = getelementptr i8, ptr %next.gep360, i64 16
  %wide.load362 = load <16 x i8>, ptr %next.gep360, align 1, !tbaa !66
  %wide.load363 = load <16 x i8>, ptr %i.qp, align 1, !tbaa !66
  %i.qq = getelementptr i8, ptr %next.gep361, i64 16
  store <16 x i8> %wide.load362, ptr %next.gep361, align 1, !tbaa !66
  store <16 x i8> %wide.load363, ptr %i.qq, align 1, !tbaa !66
  %index.next364 = add nuw i64 %index359, 32      ; 2 uses
  %i.qr = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.qr, label %middle.block365, label %vector.body358, !llvm.loop !3380

middle.block365:                                  ; preds = %vector.body358
  %cmp.n366 = icmp eq i64 %n.vec357, %i.qj
  br i1 %cmp.n366, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %vec.epilog.iter.check371

vec.epilog.iter.check371:                         ; preds = %middle.block365
  %i.qs = and i32 %.1216, 28
  %min.epilog.iters.check372 = icmp eq i32 %i.qs, 0
  br i1 %min.epilog.iters.check372, label %.lr.ph.i.i189.preheader, label %vec.epilog.ph373, !prof !2408

vec.epilog.ph373:                                 ; preds = %vector.main.loop.iter.check354, %vec.epilog.iter.check371
  %vec.epilog.resume.val367 = phi i64 [ %n.vec357, %vec.epilog.iter.check371 ], [ 0, %vector.main.loop.iter.check354 ]
  %n.vec374 = and i64 %i.qj, -4                   ; 4 uses
  %i.qt = getelementptr i8, ptr %i.qi, i64 %n.vec374
  %i.qu = getelementptr i8, ptr %.0.i.i186, i64 %n.vec374 ; 2 uses
  br label %vec.epilog.vector.body375

vec.epilog.vector.body375:                        ; preds = %vec.epilog.vector.body375, %vec.epilog.ph373
  %index376 = phi i64 [ %vec.epilog.resume.val367, %vec.epilog.ph373 ], [ %index.next380, %vec.epilog.vector.body375 ] ; 3 uses
  %next.gep377 = getelementptr i8, ptr %i.qi, i64 %index376
  %next.gep378 = getelementptr i8, ptr %.0.i.i186, i64 %index376
  %wide.load379 = load <4 x i8>, ptr %next.gep377, align 1, !tbaa !66
  store <4 x i8> %wide.load379, ptr %next.gep378, align 1, !tbaa !66
  %index.next380 = add nuw i64 %index376, 4       ; 2 uses
  %i.qv = icmp eq i64 %index.next380, %n.vec374
  br i1 %i.qv, label %vec.epilog.middle.block381, label %vec.epilog.vector.body375, !llvm.loop !3381

vec.epilog.middle.block381:                       ; preds = %vec.epilog.vector.body375
  %cmp.n382 = icmp eq i64 %n.vec374, %i.qj
  br i1 %cmp.n382, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189.preheader

.lr.ph.i.i189.preheader:                          ; preds = %iter.check369, %vec.epilog.iter.check371, %vec.epilog.middle.block381
  %.011.i.i190.ph = phi ptr [ %i.qi, %iter.check369 ], [ %i.qn, %vec.epilog.iter.check371 ], [ %i.qt, %vec.epilog.middle.block381 ] ; 3 uses
  %.0810.i.i191.ph = phi ptr [ %.0.i.i186, %iter.check369 ], [ %i.qo, %vec.epilog.iter.check371 ], [ %i.qu, %vec.epilog.middle.block381 ] ; 2 uses
  %i.qw = add i64 %i.ql, %i.qj                    ; 2 uses
  %.011.i.i190.ph547 = ptrtoaddr ptr %.011.i.i190.ph to i64 ; 2 uses
  %i.qx = sub i64 %i.qw, %.011.i.i190.ph547
  %xtraiter548 = and i64 %i.qx, 7                 ; 2 uses
  %lcmp.mod549.not = icmp eq i64 %xtraiter548, 0
  br i1 %lcmp.mod549.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol

.lr.ph.i.i189.prol:                               ; preds = %.lr.ph.i.i189.preheader, %.lr.ph.i.i189.prol
  %.011.i.i190.prol = phi ptr [ %i.qz, %.lr.ph.i.i189.prol ], [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %.0810.i.i191.prol = phi ptr [ %i.ra, %.lr.ph.i.i189.prol ], [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ] ; 2 uses
  %prol.iter550 = phi i64 [ %prol.iter550.next, %.lr.ph.i.i189.prol ], [ 0, %.lr.ph.i.i189.preheader ]
  %i.qy = load i8, ptr %.011.i.i190.prol, align 1, !tbaa !66
  store i8 %i.qy, ptr %.0810.i.i191.prol, align 1, !tbaa !66
  %i.qz = getelementptr inbounds nuw i8, ptr %.011.i.i190.prol, i64 1 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.0810.i.i191.prol, i64 1 ; 3 uses
  %prol.iter550.next = add i64 %prol.iter550, 1   ; 2 uses
  %prol.iter550.cmp.not = icmp eq i64 %prol.iter550.next, %xtraiter548
  br i1 %prol.iter550.cmp.not, label %.lr.ph.i.i189.prol.loopexit, label %.lr.ph.i.i189.prol, !llvm.loop !3382

.lr.ph.i.i189.prol.loopexit:                      ; preds = %.lr.ph.i.i189.prol, %.lr.ph.i.i189.preheader
  %.lcssa538.unr = phi ptr [ poison, %.lr.ph.i.i189.preheader ], [ %i.ra, %.lr.ph.i.i189.prol ]
  %.011.i.i190.unr = phi ptr [ %.011.i.i190.ph, %.lr.ph.i.i189.preheader ], [ %i.qz, %.lr.ph.i.i189.prol ]
  %.0810.i.i191.unr = phi ptr [ %.0810.i.i191.ph, %.lr.ph.i.i189.preheader ], [ %i.ra, %.lr.ph.i.i189.prol ]
  %i.rb = sub i64 %.011.i.i190.ph547, %i.qw
  %i.rc = icmp ugt i64 %i.rb, -8
  br i1 %i.rc, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189

.lr.ph.i.i189:                                    ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189
  %.011.i.i190 = phi ptr [ %i.rz, %.lr.ph.i.i189 ], [ %.011.i.i190.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %.0810.i.i191 = phi ptr [ %i.sa, %.lr.ph.i.i189 ], [ %.0810.i.i191.unr, %.lr.ph.i.i189.prol.loopexit ] ; 9 uses
  %i.rd = load i8, ptr %.011.i.i190, align 1, !tbaa !66
  store i8 %i.rd, ptr %.0810.i.i191, align 1, !tbaa !66
  %i.re = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 1
  %i.rf = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 1
  %i.rg = load i8, ptr %i.re, align 1, !tbaa !66
  store i8 %i.rg, ptr %i.rf, align 1, !tbaa !66
  %i.rh = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 2
  %i.ri = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 2
  %i.rj = load i8, ptr %i.rh, align 1, !tbaa !66
  store i8 %i.rj, ptr %i.ri, align 1, !tbaa !66
  %i.rk = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 3
  %i.rl = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 3
  %i.rm = load i8, ptr %i.rk, align 1, !tbaa !66
  store i8 %i.rm, ptr %i.rl, align 1, !tbaa !66
  %i.rn = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 4
  %i.ro = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 4
  %i.rp = load i8, ptr %i.rn, align 1, !tbaa !66
  store i8 %i.rp, ptr %i.ro, align 1, !tbaa !66
  %i.rq = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 5
  %i.rr = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 5
  %i.rs = load i8, ptr %i.rq, align 1, !tbaa !66
  store i8 %i.rs, ptr %i.rr, align 1, !tbaa !66
  %i.rt = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 6
  %i.ru = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 6
  %i.rv = load i8, ptr %i.rt, align 1, !tbaa !66
  store i8 %i.rv, ptr %i.ru, align 1, !tbaa !66
  %i.rw = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 7
  %i.rx = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 7
  %i.ry = load i8, ptr %i.rw, align 1, !tbaa !66
  store i8 %i.ry, ptr %i.rx, align 1, !tbaa !66
  %i.rz = getelementptr inbounds nuw i8, ptr %.011.i.i190, i64 8 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %.0810.i.i191, i64 8 ; 2 uses
  %.not.i.i192.7 = icmp eq ptr %i.rz, %i.qk
  br i1 %.not.i.i192.7, label %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176, label %.lr.ph.i.i189, !llvm.loop !3383

_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit176: ; preds = %.lr.ph.i.i189.prol.loopexit, %.lr.ph.i.i189, %bb.ab, %.lr.ph.i.i171.prol.loopexit, %.lr.ph.i.i171, %middle.block365, %vec.epilog.middle.block381, %middle.block471, %vec.epilog.middle.block487, %.critedge, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155, %bb.s, %bb.r, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187, %bb.ad, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183, %.critedge7, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit
  %.1101 = phi ptr [ %i.cy, %_ZN10duckdb_fmt2v68internal14write_exponentIcPcEET0_iS4_.exit ], [ %i.pn, %.critedge7 ], [ %i.ic, %bb.s ], [ %.6, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit153 ], [ %i.hw, %bb.r ], [ %.08.lcssa.i.i182, %_ZN10duckdb_fmt2v68internal8copy_strIcPKcPcTnNSt9enable_ifIXsr16needs_conversionIT0_T_EE5valueEiE4typeELi0EEET1_S7_S7_SB_.exit183 ], [ %i.pm, %bb.ad ], [ %i.nf, %.lr.ph.i.i171 ], [ %.11, %bb.ab ], [ %.0.i.i186, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit187 ], [ %i.ie, %_ZSt6fill_nIPcicET_S1_T0_RKT1_.exit155 ], [ %.11, %.critedge ], [ %i.lz, %vec.epilog.middle.block487 ], [ %i.lu, %middle.block471 ], [ %i.qu, %vec.epilog.middle.block381 ], [ %i.qo, %middle.block365 ], [ %.lcssa530.unr, %.lr.ph.i.i171.prol.loopexit ], [ %.lcssa538.unr, %.lr.ph.i.i189.prol.loopexit ], [ %i.sa, %.lr.ph.i.i189 ]
  ret ptr %.1101
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_(ptr noundef nonnull align 8 dereferenceable(33) %0, i64 %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !3347 ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3348 ; 5 uses
  %i.e = add i32 %i.d, %i.b                       ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.h = load i32, ptr %i.g, align 4              ; 7 uses
  %i.i = and i32 %i.h, 255                        ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.f, align 8, !tbaa !3351
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
end_hunk_0
begin_hunk_1_@_ZNK10duckdb_fmt2v68internal12float_writerIcE8prettifyINS1_17counting_iteratorEEET_S6_:bb.a
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = add i64 %.sroa.05.0.lcssa.i.i133, 1
  %i.ay = add i64 %i.ax, %i.aw
  br label %bb.k

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.0186.2231, 4
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.sroa.0186.4 = phi i64 [ %i.ay, %bb.i ], [ %.sroa.05.0.lcssa.i.i133, %bb.h ], [ %i.az, %bb.j ] ; 2 uses
  %i.ba = add nuw nsw i32 %.0102233, 3            ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.e
  br i1 %i.bb, label %.peel.next, label %.loopexit229, !llvm.loop !3384

bb.l:                                             ; preds = %bb.d
  %i.bc = sext i32 %i.b to i64
  %.sroa.05.0.lcssa.i.i137 = add i64 %1, %i.bc    ; 2 uses
  %.not224 = icmp eq i32 %i.d, 0
  %i.bd = add nsw i32 %i.d, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = add i64 %.sroa.05.0.lcssa.i.i137, 1
  %i.bg = add i64 %i.bf, %i.be
  %.sroa.02.0.lcssa.i.i.i138 = select i1 %.not224, i64 %.sroa.05.0.lcssa.i.i137, i64 %i.bg
  br label %.loopexit229

.loopexit229:                                     ; preds = %bb.k, %bb.l
  %.sroa.0186.5 = phi i64 [ %.sroa.02.0.lcssa.i.i.i138, %bb.l ], [ %.sroa.0186.4, %bb.k ] ; 3 uses
  %i.bh = and i32 %i.h, 536870912
  %.not123 = icmp eq i32 %i.bh, 0
  br i1 %.not123, label %.thread, label %bb.m

bb.m:                                             ; preds = %.loopexit229
  %i.bi = load i32, ptr %i.f, align 8, !tbaa !3351
  %i.bj = sub nsw i32 %i.bi, %i.e                 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not124 = icmp eq i32 %i.i, 2
  %spec.select221.v = select i1 %.not124, i64 1, i64 2
  %spec.select221 = add i64 %.sroa.0186.5, %spec.select221.v
  br label %.thread

bb.o:                                             ; preds = %bb.m
  %i.bl = add nsw i32 %i.bj, -1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = add i64 %.sroa.0186.5, 2
  %i.bo = add i64 %i.bn, %i.bm
  br label %.thread

bb.p:                                             ; preds = %bb.c
  %i.bp = icmp sgt i32 %i.e, 0
  br i1 %i.bp, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bq = and i32 %i.h, 16711680
  %i.br = icmp ne i32 %i.bq, 0
  %i.bs = icmp samesign ugt i32 %i.e, 3
  %or.cond5 = select i1 %i.br, i1 %i.bs, i1 false
  br i1 %or.cond5, label %.peel.next243, label %bb.r

.peel.next243:                                    ; preds = %bb.q
  %i.bt = urem i32 %i.e, 3                        ; 2 uses
  %i.bu = icmp eq i32 %i.bt, 0
  %spec.select126 = select i1 %i.bu, i32 3, i32 %i.bt ; 4 uses
  %i.bv = zext nneg i32 %spec.select126 to i64
  %.sroa.05.0.lcssa.i.i144.peel = add i64 %1, %i.bv ; 2 uses
  %i.bw = add i32 %i.d, %i.b
  %i.bx = xor i32 %spec.select126, -1
  %i.by = add i32 %i.bw, %i.bx                    ; 2 uses
  %i.bz = udiv i32 %i.by, 3
  %i.ca = add nuw nsw i32 %i.bz, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.by, 9
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.peel.next243
  %n.vec = and i32 %i.ca, 2147483644              ; 3 uses
  %i.cb = mul i32 %n.vec, 3
  %i.cc = or disjoint i32 %spec.select126, %i.cb
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.sroa.05.0.lcssa.i.i144.peel, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i64> [ %i.cd, %vector.ph ], [ %i.ce, %vector.body ]
  %vec.phi260 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.cf, %vector.body ]
  %i.ce = add <2 x i64> %vec.phi, splat (i64 4)   ; 2 uses
  %i.cf = add <2 x i64> %vec.phi260, splat (i64 4) ; 2 uses
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %i.cg = icmp eq i32 %index.next, %n.vec
  br i1 %i.cg, label %middle.block, label %vector.body, !llvm.loop !3386

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.cf, %i.ce
  %i.ch = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.ca, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.peel.next243, %middle.block
  %.0104235.ph = phi i32 [ %spec.select126, %.peel.next243 ], [ %i.cc, %middle.block ]
  %.sroa.0186.8234.ph = phi i64 [ %.sroa.05.0.lcssa.i.i144.peel, %.peel.next243 ], [ %i.ch, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0104235 = phi i32 [ %i.ci, %scalar.ph ], [ %.0104235.ph, %scalar.ph.preheader ]
  %.sroa.0186.8234 = phi i64 [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ], [ %.sroa.0186.8234.ph, %scalar.ph.preheader ]
  %.sroa.05.0.lcssa.i.i144 = add i64 %.sroa.0186.8234, 4 ; 2 uses
  %i.ci = add nuw nsw i32 %.0104235, 3            ; 2 uses
  %i.cj = icmp slt i32 %i.ci, %i.e
  br i1 %i.cj, label %scalar.ph, label %.loopexit, !llvm.loop !3387

bb.r:                                             ; preds = %bb.q
  %i.ck = zext nneg i32 %i.e to i64
  %.sroa.05.0.lcssa.i.i146 = add i64 %1, %i.ck
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.r
  %.sroa.0186.10 = phi i64 [ %.sroa.05.0.lcssa.i.i146, %bb.r ], [ %i.ch, %middle.block ], [ %.sroa.05.0.lcssa.i.i144, %scalar.ph ] ; 2 uses
  %i.cl = and i32 %i.h, 536870912
  %.not = icmp eq i32 %i.cl, 0
  %i.cm = sext i32 %i.b to i64                    ; 2 uses
  br i1 %.not, label %.lr.ph, label %bb.u

.lr.ph:                                           ; preds = %.loopexit
  %i.cn = load ptr, ptr %0, align 8, !tbaa !3343
  %i.co = zext nneg i32 %i.e to i64
  %i.cp = add i32 %i.b, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.e, i32 %i.cp)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv.a = phi i64 [ %i.cm, %.lr.ph ], [ %indvars.iv.next.a, %bb.t ] ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cn, i64 %indvars.iv.a
  %i.cr = getelementptr i8, ptr %i.cq, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !66
  %i.ct = icmp eq i8 %i.cs, 48
  br i1 %i.ct, label %bb.t, label %.critedge.split.loop.exit

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 2 uses
  %i.cu = icmp sgt i64 %indvars.iv.next.a, %i.co
  br i1 %i.cu, label %bb.s, label %.critedge, !llvm.loop !3388

.critedge.split.loop.exit:                        ; preds = %bb.s
  %i.cv = trunc nsw i64 %indvars.iv.a to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.t, %.critedge.split.loop.exit
  %.0105.lcssa.ph = phi i32 [ %i.cv, %.critedge.split.loop.exit ], [ %smin, %bb.t ] ; 3 uses
  %.not122 = icmp ne i32 %.0105.lcssa.ph, %i.e
  %i.cw = zext i1 %.not122 to i64
  %spec.select223 = add i64 %.sroa.0186.10, %i.cw
  %i.cx = zext nneg i32 %i.e to i64
  %i.cy = sext i32 %.0105.lcssa.ph to i64
  %.not7.i.i148 = icmp eq i32 %i.e, %.0105.lcssa.ph
  %gepdiff226 = sub nsw i64 %i.cy, %i.cx
  %i.cz = select i1 %.not7.i.i148, i64 0, i64 %gepdiff226
  %.sroa.05.0.lcssa.i.i149 = add i64 %spec.select223, %i.cz
  br label %.thread

bb.u:                                             ; preds = %.loopexit
  %i.da = zext nneg i32 %i.e to i64
  %gepdiff = sub nsw i64 %i.cm, %i.da
  %i.db = add nsw i64 %gepdiff, 1
  %.sroa.05.0.lcssa.i.i152 = add i64 %i.db, %.sroa.0186.10 ; 2 uses
  %i.dc = load i32, ptr %i.f, align 8, !tbaa !3351 ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, %i.b
  br i1 %i.dd, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.de = xor i32 %i.b, -1
  %i.df = add i32 %i.dc, %i.de
  %i.dg = zext nneg i32 %i.df to i64
  %i.dh = add i64 %.sroa.05.0.lcssa.i.i152, 1
  %i.di = add i64 %i.dh, %i.dg
  br label %.thread

bb.w:                                             ; preds = %bb.p
  %i.dj = add i64 %1, 1
  %i.dk = sub nsw i32 0, %i.e                     ; 5 uses
  %i.dl = icmp eq i32 %i.b, 0
  br i1 %i.dl, label %.thread210, label %bb.x

.thread210:                                       ; preds = %bb.w
  %i.dm = load i32, ptr %i.f, align 8, !tbaa !3351 ; 2 uses
  %i.dn = tail call i32 @llvm.smin.i32(i32 %i.dm, i32 %i.dk)
  %i.do = icmp slt i32 %i.dm, 0
  %spec.select128 = select i1 %i.do, i32 %i.dk, i32 %i.dn
  br label %.critedge7

bb.x:                                             ; preds = %bb.w
  %i.dp = and i32 %i.h, 536870912
  %.not121 = icmp eq i32 %i.dp, 0
  %i.dq = icmp sgt i32 %i.b, 0
  %or.cond11 = select i1 %.not121, i1 %i.dq, i1 false
  br i1 %or.cond11, label %.preheader228, label %.critedge7.thread

.preheader228:                                    ; preds = %bb.x
  %i.dr = load ptr, ptr %0, align 8, !tbaa !3343
  br label %bb.y

bb.y:                                             ; preds = %.preheader228, %bb.z
  %.0 = phi i32 [ %3, %bb.z ], [ %i.b, %.preheader228 ] ; 4 uses
  %2 = zext nneg i32 %.0 to i64
  %i.ds = getelementptr i8, ptr %i.dr, i64 %2
  %i.dt = getelementptr i8, ptr %i.ds, i64 -1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !66
  %i.dv = icmp eq i8 %i.du, 48
  br i1 %i.dv, label %bb.z, label %.critedge7.thread

bb.z:                                             ; preds = %bb.y
  %3 = add nsw i32 %.0, -1
  %.old10 = icmp sgt i32 %.0, 1
  br i1 %.old10, label %bb.y, label %.critedge7

.critedge7:                                       ; preds = %bb.z, %.thread210
  %.0100214 = phi i32 [ %spec.select128, %.thread210 ], [ %i.dk, %bb.z ] ; 2 uses
  %.not225 = icmp eq i32 %.0100214, 0
  br i1 %.not225, label %.thread, label %.critedge7.thread

.critedge7.thread:                                ; preds = %bb.y, %bb.x, %.critedge7
  %.1219 = phi i32 [ 0, %.critedge7 ], [ %i.b, %bb.x ], [ %.0, %bb.y ]
  %.0100214218 = phi i32 [ %.0100214, %.critedge7 ], [ %i.dk, %bb.x ], [ %i.dk, %bb.y ] ; 2 uses
  %i.dw = add i64 %1, 2
  %i.dx = icmp sgt i32 %.0100214218, 0
  %i.dy = add nsw i32 %.0100214218, -1
  %i.dz = zext nneg i32 %i.dy to i64
  %i.ea = add i64 %1, 3
  %i.eb = add i64 %i.ea, %i.dz
  %.sroa.02.0.lcssa.i.i.i156 = select i1 %i.dx, i64 %i.eb, i64 %i.dw
  %i.ec = sext i32 %.1219 to i64
  %.sroa.05.0.lcssa.i.i158 = add i64 %.sroa.02.0.lcssa.i.i.i156, %i.ec
  br label %.thread

.thread:                                          ; preds = %bb.n, %.loopexit229, %bb.u, %bb.v, %.critedge7, %.critedge7.thread, %bb.o, %.critedge, %bb.b
  %.sroa.098.1 = phi i64 [ %i.z, %bb.b ], [ %.sroa.05.0.lcssa.i.i149, %.critedge ], [ %i.bo, %bb.o ], [ %i.di, %bb.v ], [ %.sroa.05.0.lcssa.i.i152, %bb.u ], [ %.sroa.05.0.lcssa.i.i158, %.critedge7.thread ], [ %i.dj, %.critedge7 ], [ %.sroa.0186.5, %.loopexit229 ], [ %spec.select221, %bb.n ]
  ret i64 %.sroa.098.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE5writeIdTnNSt9enable_ifIXsr3std17is_floating_pointIT_EE5valueEiE4typeELi0EEEvS8_NS0_18basic_format_specsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %0, double noundef %1, ptr noundef byval(%"struct.duckdb_fmt::v6::basic_format_specs") align 8 %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb_fmt::v6::internal::error_handler", align 1 ; 3 uses
  %4 = alloca %"struct.duckdb_fmt::v6::internal::nonfinite_writer", align 8 ; 5 uses
  %5 = alloca %"class.duckdb_fmt::v6::basic_memory_buffer", align 8 ; 12 uses
  %6 = alloca %"struct.duckdb_fmt::v6::internal::basic_writer<duckdb_fmt::v6::buffer_range<char>>::str_writer", align 8 ; 6 uses
  %7 = alloca %"class.duckdb_fmt::v6::internal::float_writer", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = call i64 @_ZN10duckdb_fmt2v68internal21parse_float_type_specINS1_13error_handlerEcEENS1_11float_specsERKNS0_18basic_format_specsIT0_EEOT_(ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) ; 3 uses
  %.sroa.8.0.extract.shift = lshr i64 %i.a, 32
  %.sroa.8.0.extract.trunc = trunc nuw i64 %.sroa.8.0.extract.shift to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 9 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1               ; 3 uses
  %i.d = and i32 %.sroa.8.0.extract.trunc, -65281 ; 2 uses
  %i.e = bitcast double %1 to i64
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = or disjoint i32 %i.d, 256
  %i.h = fneg double %1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = lshr i8 %i.c, 4
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %i.k = zext nneg i8 %i.j to i32
  %i.l = shl nuw nsw i32 %i.k, 8
  %i.m = icmp eq i8 %i.j, 1
  %i.n = select i1 %i.m, i32 0, i32 %i.l
  %spec.select = or disjoint i32 %i.n, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.8.0 = phi i32 [ %i.g, %bb.b ], [ %spec.select, %bb.c ] ; 7 uses
  %.0 = phi double [ %i.h, %bb.b ], [ %1, %bb.c ] ; 4 uses
  %i.o = fcmp ueq double %.0, +inf
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = fcmp oeq double %.0, +inf
  %i.q = and i32 %.sroa.8.0, 16777216
  %.not69 = icmp eq i32 %i.q, 0                   ; 2 uses
  %.str.79..str.80 = select i1 %.not69, ptr @.str.80, ptr @.str.79
  %.str.81..str.82 = select i1 %.not69, ptr @.str.82, ptr @.str.81
  %i.r = select i1 %i.p, ptr %.str.79..str.80, ptr %.str.81..str.82
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.s = lshr i32 %.sroa.8.0, 8
  %i.t = and i32 %i.s, 255
  store i32 %i.t, ptr %4, align 8, !tbaa !3340
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.r, ptr %i.u, align 8, !tbaa !3342
  call void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS1_16nonfinite_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.v = and i8 %i.c, 15
  switch i8 %i.v, label %bb.l [
    i8 0, label %.sink.split
    i8 4, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = lshr i32 %.sroa.8.0, 8
  %i.x = and i32 %i.w, 255                        ; 2 uses
  %.not70 = icmp eq i32 %i.x, 0
  br i1 %.not70, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.0.0.copyload.i.i = load ptr, ptr %0, align 8 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 16 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !2284 ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !2275
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %.sroa.0.0.copyload.i.i, align 8, !tbaa !59
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i.i, i64 noundef %i.aa), !inline_history !2456
  br label %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit

_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit: ; preds = %bb.h, %bb.i
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !2284
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !2273
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.z
  %i.aj = zext nneg i32 %i.x to i64
  %i.ak = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !66
  store i8 %i.al, ptr %i.ai, align 1, !tbaa !66
  %i.am = and i32 %.sroa.8.0, -65281              ; 2 uses
  %i.an = load i32, ptr %2, align 8, !tbaa !2291  ; 2 uses
  %.not71 = icmp eq i32 %i.an, 0
  br i1 %.not71, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit
  %i.ao = add nsw i32 %i.an, -1
  store i32 %i.ao, ptr %2, align 8, !tbaa !2291
  br label %bb.k

bb.k:                                             ; preds = %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit, %bb.j, %bb.g
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.g ], [ %i.am, %bb.j ], [ %i.am, %_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE7reserveEm.exit ]
  %i.ap = load i8, ptr %i.b, align 1
  %i.aq = and i8 %i.ap, -16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.k
  %.sink102 = phi i8 [ %i.aq, %bb.k ], [ %i.c, %bb.f ]
  %.sroa.8.2.ph = phi i32 [ %.sroa.8.1, %bb.k ], [ %.sroa.8.0, %bb.f ]
  %i.ar = or disjoint i8 %.sink102, 2
  store i8 %i.ar, ptr %i.b, align 1
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.f
  %.sroa.8.2 = phi i32 [ %.sroa.8.0, %bb.f ], [ %.sroa.8.2.ph, %.sink.split ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store i64 0, ptr %i.au, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10duckdb_fmt2v619basic_memory_bufferIcLm500ESaIcEEE, i64 16), ptr %5, align 8, !tbaa !59
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  store ptr %i.av, ptr %i.as, align 8, !tbaa !2273
  store i64 500, ptr %i.at, align 8, !tbaa !2275
  %i.aw = trunc i32 %.sroa.8.2 to i8              ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 3
  br i1 %i.ax, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.ay = lshr i32 %.sroa.8.2, 8
  %i.az = and i32 %i.ay, 255                      ; 2 uses
  %.not79 = icmp eq i32 %i.az, 0
  br i1 %.not79, label %bb.o, label %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit

_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit: ; preds = %bb.m
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE5signsE, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !66
  store i64 1, ptr %i.au, align 8, !tbaa !2284
  store i8 %i.bc, ptr %i.av, align 8, !tbaa !66
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.o:                                             ; preds = %_ZN10duckdb_fmt2v68internal6bufferIcE9push_backERKc.exit, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !2296
  %.sroa.8.0.insert.ext25 = zext i32 %.sroa.8.2 to i64
  %.sroa.8.0.insert.shift26 = shl nuw i64 %.sroa.8.0.insert.ext25, 32
  %.sroa.014.0.insert.ext18 = and i64 %i.a, 4294967295
  %.sroa.014.0.insert.insert20 = or disjoint i64 %.sroa.8.0.insert.shift26, %.sroa.014.0.insert.ext18
  %i.bg = invoke noundef i32 @_ZN10duckdb_fmt2v68internal14snprintf_floatIdEEiT_iNS1_11float_specsERNS1_6bufferIcEE(double noundef %.0, i32 noundef %i.bf, i64 %.sroa.014.0.insert.insert20, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.p unwind label %bb.n       ; 0 uses

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.bh = load ptr, ptr %i.as, align 8, !tbaa !2273
  store ptr %i.bh, ptr %6, align 8, !tbaa !2336
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bj = load i64, ptr %i.au, align 8, !tbaa !2284
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !2338
  invoke void @_ZN10duckdb_fmt2v68internal12basic_writerINS0_12buffer_rangeIcEEE12write_paddedINS5_10str_writerIcEEEEvRKNS0_18basic_format_specsIcEEOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ad

bb.r:                                             ; preds = %bb.p
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %bb.ah

bb.s:                                             ; preds = %bb.l
end_hunk_1
