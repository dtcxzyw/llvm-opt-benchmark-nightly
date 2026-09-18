Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/devector_test?download=true
inline.NumInlined: 42022
inline.NumDeleted: 5232
loop-unroll.NumCompletelyUnrolled: 330
loop-unroll.NumRuntimeUnrolled: 853
loop-unroll.NumUnrolled: 1191
begin_hunk_0_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_8devectorINS1_11movable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.ae = add i32 %_ZN5boost9container4test11movable_int5countE.promoted.i.i, 100
  store i32 %i.ae, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259, !noalias !3465
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !620
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !619 ; 6 uses
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !618 ; 4 uses
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !617 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 32, i1 false)
  %i.aj = shl i64 %i.af, 2
  %i.ak = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !600
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !349 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not.i476 = icmp eq i64 %i.ak, %i.aq
  br i1 %.not.i476, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit
  %.idx23.i = shl nuw nsw i64 %i.ah, 2            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ai, 2              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx23.i
  %i.as = ashr exact i64 %gepdiff.i, 2
  %.not19.i = icmp eq i64 %i.as, %i.ak
  br i1 %.not19.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %bb.e
  %.not2124.i = icmp samesign eq i64 %.idx23.i, %.idx.i
  br i1 %.not2124.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01826.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.025.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.am, %.lr.ph.preheader.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %i.av = load i32, ptr %.01826.i, align 4, !tbaa !612
  %i.aw = icmp eq i32 %i.av, %i.au                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  %.not21.i = icmp ne ptr %i.ax, %i.ar
  %or.cond.not = select i1 %i.aw, i1 %.not21.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !85

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit, %bb.e, %.preheader.i
  %.2.i788 = phi i1 [ false, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvEaSEOS5_.exit ], [ true, %.preheader.i ], [ false, %bb.e ], [ %i.aw, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %.not5.i.i.i.i.i = icmp samesign eq i64 %i.ah, %i.ai
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i, align 4, !tbaa !612
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i478 = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i478, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !86

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %.not.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i1.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #30
  br label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i

_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, %bb.g
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !619 ; 4 uses
  %i.bg = load i64, ptr %i.aa, align 8, !tbaa !618 ; 2 uses
  %i.bh = load i64, ptr %i.ab, align 8, !tbaa !617 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bh
  %.not5.i.i.i.i.i480 = icmp samesign eq i64 %i.bg, %i.bh
  br i1 %.not5.i.i.i.i.i480, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485, label %.lr.ph.i.preheader.i.i.i.i481

.lr.ph.i.preheader.i.i.i.i481:                    ; preds = %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  br label %.lr.ph.i.i.i.i.i482

.lr.ph.i.i.i.i.i482:                              ; preds = %.lr.ph.i.i.i.i.i482, %.lr.ph.i.preheader.i.i.i.i481
  %.06.i.i.i.i.i483 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i482 ], [ %i.bj, %.lr.ph.i.preheader.i.i.i.i481 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i483, align 4, !tbaa !612
  %i.bk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i483, i64 4 ; 2 uses
  %.not.i.i.i.i.i484 = icmp eq ptr %i.bm, %i.bi
  br i1 %.not.i.i.i.i.i484, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485, label %.lr.ph.i.i.i.i.i482, !llvm.loop !86

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485: ; preds = %.lr.ph.i.i.i.i.i482, %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i
  %.not.i1.i.i.i.i486 = icmp eq ptr %i.bf, null
  br i1 %.not.i1.i.i.i.i486, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !620
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bo) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !350
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #30
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i788, label %bb.k, label %bb.iw

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  %i.bu = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !3466 ; 108 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i8 0, i64 40, i1 false), !noalias !3466
  store ptr %i.bu, ptr %1, align 8, !tbaa !615, !alias.scope !3466
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3467)
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.l unwind label %bb.w       ; 90 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !3467
  store ptr %i.bv, ptr %2, align 8, !tbaa !603, !alias.scope !3467
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 28 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !617 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 22 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !618 ; 3 uses
  %i.ca = sub i64 %i.bx, %i.bz                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 100
  %i.cc = sub i64 100, %i.ca                      ; 5 uses
  br i1 %i.cb, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !620
  %i.cf = sub i64 %i.ce, %i.bz
  %.not.i.i.i496 = icmp ult i64 %i.cf, 100
  br i1 %.not.i.i.i496, label %bb.p, label %.lr.ph.i.i.i.i.i497

.lr.ph.i.i.i.i.i497:                              ; preds = %bb.m
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !619, !nonnull !269, !noundef !269
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bx ; 5 uses
  %i.ci = add i64 %i.bz, 99
  %i.cj = sub i64 %i.ci, %i.bx
  %xtraiter = and i64 %i.cc, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.i.i.i.i.i497.new

.lr.ph.i.i.i.i.i497.new:                          ; preds = %.lr.ph.i.i.i.i.i497
  %unroll_iter = and i64 %i.cc, -4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i497.new
  %.06.i.i.i.i.i498 = phi i64 [ 0, %.lr.ph.i.i.i.i.i497.new ], [ %i.da, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i497.new ], [ %niter.next.3, %bb.n ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  store i32 0, ptr %i.cl, align 4, !tbaa !612
  %i.cm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 0, ptr %i.cp, align 4, !tbaa !612
  %i.cq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %i.ct, align 4, !tbaa !612
  %i.cu = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !612
  %i.cy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.da = add nuw i64 %.06.i.i.i.i.i498, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.n, !llvm.loop !113

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i497
  %.06.i.i.i.i.i498.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i497 ], [ %i.da, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1033 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1033)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.06.i.i.i.i.i498.epil = phi i64 [ %.06.i.i.i.i.i498.epil.init, %.epil.preheader ], [ %i.de, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498.epil
  store i32 0, ptr %i.db, align 4, !tbaa !612
  %i.dc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.de = add nuw i64 %.06.i.i.i.i.i498.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.o, !llvm.loop !3459

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.df = add i64 %i.cc, %i.bx
  store i64 %i.df, ptr %i.bw, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef 100, i64 noundef %i.cc)
          to label %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit_crit_edge unwind label %bb.x

._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit_crit_edge: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre880 = load ptr, ptr %i.bv, align 8, !tbaa !349
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit

bb.q:                                             ; preds = %bb.l
  %i.dg = add i64 %i.cc, %i.bx                    ; 2 uses
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !619 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.bx
  %.not5.i.i.i.i491 = icmp eq i64 %i.ca, 100
  br i1 %.not5.i.i.i.i491, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i492

.lr.ph.i.preheader.i.i.i492:                      ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  br label %.lr.ph.i.i.i.i493

.lr.ph.i.i.i.i493:                                ; preds = %.lr.ph.i.i.i.i493, %.lr.ph.i.preheader.i.i.i492
  %.06.i.i.i.i494 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i493 ], [ %i.dj, %.lr.ph.i.preheader.i.i.i492 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i494, align 4, !tbaa !612
  %i.dk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i494, i64 4 ; 2 uses
  %.not.i.i.i.i495 = icmp eq ptr %i.dm, %i.di
  br i1 %.not.i.i.i.i495, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i493, !llvm.loop !86

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i493, %bb.q
  store i64 %i.dg, ptr %i.bw, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i
  %i.dn = phi ptr [ %.pre880, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 5 uses
  %i.do = phi ptr [ %.pre, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 42 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dn to i64               ; 4 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = ashr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 100
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit
  %i.dv = sub nuw nsw i64 100, %i.dt
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.dv)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.x

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.r
  %.pre881 = load ptr, ptr %i.dp, align 8, !tbaa !600
  %.pre882 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre890 = ptrtoint ptr %.pre882 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.s:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit
  %.not795 = icmp eq i64 %i.ds, 400
  br i1 %.not795, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.do, %i.dw
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %.pre-phi = phi i64 [ %.pre890, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dr, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ] ; 3 uses
  %i.dx = phi ptr [ %.pre882, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dn, %bb.t ], [ %i.dn, %bb.s ] ; 3 uses
  %i.dy = phi ptr [ %.pre881, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.do, %bb.t ], [ %i.do, %bb.s ] ; 3 uses
  %i.dz = load i64, ptr %i.bw, align 8, !tbaa !617 ; 7 uses
  %i.ea = load i64, ptr %i.by, align 8, !tbaa !618 ; 4 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 5 uses
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.ec, %.pre-phi                ; 3 uses
  %i.ee = ashr exact i64 %i.ed, 2                 ; 3 uses
  %.not.i501 = icmp eq i64 %i.eb, %i.ee
  br i1 %.not.i501, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ef = load ptr, ptr %i.bu, align 8, !tbaa !619 ; 5 uses
  %.idx23.i503 = shl nuw nsw i64 %i.ea, 2         ; 3 uses
  %.idx.i504 = shl nuw nsw i64 %i.dz, 2           ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i504
  %gepdiff.i505 = sub nsw i64 %.idx.i504, %.idx23.i503
  %i.eh = ashr exact i64 %gepdiff.i505, 2
  %.not19.i506 = icmp eq i64 %i.eh, %i.eb
  br i1 %.not19.i506, label %.preheader.i507, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

.preheader.i507:                                  ; preds = %bb.u
  %.not2124.i508 = icmp samesign eq i64 %.idx23.i503, %.idx.i504
  br i1 %.not2124.i508, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514, label %.lr.ph.preheader.i509

.lr.ph.preheader.i509:                            ; preds = %.preheader.i507
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx23.i503
  br label %.lr.ph.i510

.lr.ph.i510:                                      ; preds = %bb.v, %.lr.ph.preheader.i509
  %.01826.i511 = phi ptr [ %i.em, %bb.v ], [ %i.ei, %.lr.ph.preheader.i509 ] ; 2 uses
  %.sroa.0.025.i512 = phi ptr [ %i.en, %bb.v ], [ %i.dx, %.lr.ph.preheader.i509 ] ; 2 uses
  %i.ej = load i32, ptr %.sroa.0.025.i512, align 4, !tbaa !259
  %i.ek = load i32, ptr %.01826.i511, align 4, !tbaa !612
  %i.el = icmp eq i32 %i.ek, %i.ej
  br i1 %i.el, label %bb.v, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.v:                                             ; preds = %.lr.ph.i510
  %i.em = getelementptr inbounds nuw i8, ptr %.01826.i511, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i512, i64 4
  %.not21.i513 = icmp eq ptr %i.em, %i.eg
  br i1 %.not21.i513, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514, label %.lr.ph.i510, !llvm.loop !85

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.az, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.w:                                             ; preds = %bb.k
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.iv

bb.x:                                             ; preds = %bb.ad, %bb.ab, %bb.r, %bb.p
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.iu

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514: ; preds = %bb.v, %.preheader.i507
  %i.eq = icmp ult i64 %i.eb, 200
  %i.er = sub i64 200, %i.eb                      ; 5 uses
  br i1 %i.eq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !620
  %i.eu = sub i64 %i.et, %i.ea
  %.not.i.i.i521 = icmp ult i64 %i.eu, 200
  br i1 %.not.i.i.i521, label %bb.ab, label %.lr.ph.i.i.i.i.i522

.lr.ph.i.i.i.i.i522:                              ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz ; 5 uses
  %i.ew = add i64 %i.ea, 199
  %i.ex = sub i64 %i.ew, %i.dz
  %xtraiter1035 = and i64 %i.er, 3                ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 3
  br i1 %i.ey, label %.epil.preheader1034, label %.lr.ph.i.i.i.i.i522.new

.lr.ph.i.i.i.i.i522.new:                          ; preds = %.lr.ph.i.i.i.i.i522
  %unroll_iter1039 = and i64 %i.er, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i522.new
  %.06.i.i.i.i.i523 = phi i64 [ 0, %.lr.ph.i.i.i.i.i522.new ], [ %i.fo, %bb.z ] ; 5 uses
  %niter1040 = phi i64 [ 0, %.lr.ph.i.i.i.i.i522.new ], [ %niter1040.next.3, %bb.z ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  store i32 0, ptr %i.ez, align 4, !tbaa !612
  %i.fa = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 0, ptr %i.fd, align 4, !tbaa !612
  %i.fe = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 0, ptr %i.fh, align 4, !tbaa !612
  %i.fi = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !612
  %i.fm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fo = add nuw i64 %.06.i.i.i.i.i523, 4        ; 2 uses
  %niter1040.next.3 = add i64 %niter1040, 4       ; 2 uses
  %niter1040.ncmp.3 = icmp eq i64 %niter1040.next.3, %unroll_iter1039
  br i1 %niter1040.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa, label %bb.z, !llvm.loop !113

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa: ; preds = %bb.z
  %lcmp.mod1037.not = icmp eq i64 %xtraiter1035, 0
  br i1 %lcmp.mod1037.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525, label %.epil.preheader1034

.epil.preheader1034:                              ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa, %.lr.ph.i.i.i.i.i522
  %.06.i.i.i.i.i523.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i522 ], [ %i.fo, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa ]
  %lcmp.mod1038 = icmp ne i64 %xtraiter1035, 0
  tail call void @llvm.assume(i1 %lcmp.mod1038)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader1034
  %.06.i.i.i.i.i523.epil = phi i64 [ %.06.i.i.i.i.i523.epil.init, %.epil.preheader1034 ], [ %i.fs, %bb.aa ] ; 2 uses
  %epil.iter1036 = phi i64 [ 0, %.epil.preheader1034 ], [ %epil.iter1036.next, %bb.aa ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523.epil
  store i32 0, ptr %i.fp, align 4, !tbaa !612
  %i.fq = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fs = add nuw i64 %.06.i.i.i.i.i523.epil, 1
  %epil.iter1036.next = add i64 %epil.iter1036, 1 ; 2 uses
  %epil.iter1036.cmp.not = icmp eq i64 %epil.iter1036.next, %xtraiter1035
  br i1 %epil.iter1036.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525, label %bb.aa, !llvm.loop !3460

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525: ; preds = %bb.aa, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa
  %i.ft = add i64 %i.er, %i.dz
  store i64 %i.ft, ptr %i.bw, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527

bb.ab:                                            ; preds = %bb.y
  invoke void @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef 200, i64 noundef %i.er)
          to label %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge unwind label %bb.x

._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge: ; preds = %bb.ab
  %.pre883 = load ptr, ptr %i.dp, align 8, !tbaa !600 ; 2 uses
  %.pre884 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre891 = ptrtoint ptr %.pre883 to i64
  %.pre893 = ptrtoint ptr %.pre884 to i64         ; 2 uses
  %.pre895 = sub i64 %.pre891, %.pre893           ; 2 uses
  %.pre897 = ashr exact i64 %.pre895, 2
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527

bb.ac:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514
  %i.fu = add i64 %i.er, %i.dz                    ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz
  %.not5.i.i.i.i515 = icmp eq i64 %i.eb, 200
  br i1 %.not5.i.i.i.i515, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, label %.lr.ph.i.preheader.i.i.i516

.lr.ph.i.preheader.i.i.i516:                      ; preds = %bb.ac
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fu
  br label %.lr.ph.i.i.i.i517

.lr.ph.i.i.i.i517:                                ; preds = %.lr.ph.i.i.i.i517, %.lr.ph.i.preheader.i.i.i516
  %.06.i.i.i.i518 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i517 ], [ %i.fw, %.lr.ph.i.preheader.i.i.i516 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i518, align 4, !tbaa !612
  %i.fx = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i518, i64 4 ; 2 uses
  %.not.i.i.i.i519 = icmp eq ptr %i.fz, %i.fv
  br i1 %.not.i.i.i.i519, label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, label %.lr.ph.i.i.i.i517, !llvm.loop !86

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520: ; preds = %.lr.ph.i.i.i.i517, %bb.ac
  store i64 %i.fu, ptr %i.bw, align 8, !tbaa !608
  br label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527: ; preds = %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525
  %.pre-phi898 = phi i64 [ %.pre897, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 2 uses
  %.pre-phi896 = phi i64 [ %.pre895, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.ed, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.ed, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ]
  %.pre-phi894 = phi i64 [ %.pre893, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 3 uses
  %i.ga = phi ptr [ %.pre884, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.dx, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.dx, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 4 uses
  %i.gb = phi ptr [ %.pre883, %._ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.dy, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.dy, %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 3 uses
  %i.gc = icmp ult i64 %.pre-phi898, 200
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527
  %i.gd = sub nuw nsw i64 200, %.pre-phi898
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.gd)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge unwind label %bb.x

._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge: ; preds = %bb.ad
  %.pre885 = load ptr, ptr %i.dp, align 8, !tbaa !600
  %.pre886 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre899 = ptrtoint ptr %.pre886 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531

bb.ae:                                            ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6resizeEm.exit527
  %.not796 = icmp eq i64 %.pre-phi896, 800
  br i1 %.not796, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 800 ; 3 uses
  %.not.i.i528 = icmp eq ptr %i.gb, %i.ge
  br i1 %.not.i.i528, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529:     ; preds = %bb.af
  store ptr %i.ge, ptr %i.dp, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531

_ZNSt6vectorIiSaIiEE6resizeEm.exit531:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529, %bb.af, %bb.ae
  %.pre-phi900 = phi i64 [ %.pre899, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %.pre-phi894, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %.pre-phi894, %bb.af ], [ %.pre-phi894, %bb.ae ]
  %i.gf = phi ptr [ %.pre886, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %i.ga, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %i.ga, %bb.af ], [ %i.ga, %bb.ae ] ; 3 uses
  %i.gg = phi ptr [ %.pre885, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %i.ge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %i.gb, %bb.af ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gh = load i64, ptr %i.bw, align 8, !tbaa !617 ; 4 uses
  %i.gi = load i64, ptr %i.by, align 8, !tbaa !618 ; 6 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gk, %.pre-phi900
  %i.gm = ashr exact i64 %i.gl, 2
  %.not.i532 = icmp eq i64 %i.gj, %i.gm
  br i1 %.not.i532, label %bb.ag, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit531
  %i.gn = load ptr, ptr %i.bu, align 8, !tbaa !619 ; 5 uses
  %.idx23.i534 = shl nuw nsw i64 %i.gi, 2         ; 3 uses
  %.idx.i535 = shl nuw nsw i64 %i.gh, 2           ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i535
  %gepdiff.i536 = sub nsw i64 %.idx.i535, %.idx23.i534
  %i.gp = ashr exact i64 %gepdiff.i536, 2
  %.not19.i537 = icmp eq i64 %i.gp, %i.gj
  br i1 %.not19.i537, label %.preheader.i538, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

.preheader.i538:                                  ; preds = %bb.ag
  %.not2124.i539 = icmp samesign eq i64 %.idx23.i534, %.idx.i535
  br i1 %.not2124.i539, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545, label %.lr.ph.preheader.i540

.lr.ph.preheader.i540:                            ; preds = %.preheader.i538
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx23.i534
  br label %.lr.ph.i541

.lr.ph.i541:                                      ; preds = %bb.ah, %.lr.ph.preheader.i540
  %.01826.i542 = phi ptr [ %i.gu, %bb.ah ], [ %i.gq, %.lr.ph.preheader.i540 ] ; 2 uses
  %.sroa.0.025.i543 = phi ptr [ %i.gv, %bb.ah ], [ %i.gf, %.lr.ph.preheader.i540 ] ; 2 uses
  %i.gr = load i32, ptr %.sroa.0.025.i543, align 4, !tbaa !259
  %i.gs = load i32, ptr %.01826.i542, align 4, !tbaa !612
  %i.gt = icmp eq i32 %i.gs, %i.gr
  br i1 %i.gt, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.ah:                                            ; preds = %.lr.ph.i541
  %i.gu = getelementptr inbounds nuw i8, ptr %.01826.i542, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i543, i64 4
  %.not21.i544 = icmp eq ptr %i.gu, %i.go
  br i1 %.not21.i544, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545, label %.lr.ph.i541, !llvm.loop !85

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545: ; preds = %bb.ah, %.preheader.i538
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gh
  %.not5.i.i.i.i546 = icmp eq i64 %i.gh, %i.gi
  br i1 %.not5.i.i.i.i546, label %.loopexit807, label %.lr.ph.i.preheader.i.i.i547

.lr.ph.i.preheader.i.i.i547:                      ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gi
  br label %.lr.ph.i.i.i.i548

.lr.ph.i.i.i.i548:                                ; preds = %.lr.ph.i.i.i.i548, %.lr.ph.i.preheader.i.i.i547
  %.06.i.i.i.i549 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i548 ], [ %i.gx, %.lr.ph.i.preheader.i.i.i547 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i549, align 4, !tbaa !612
  %i.gy = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gz = add i32 %i.gy, -1
  store i32 %i.gz, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ha = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i549, i64 4 ; 2 uses
  %.not.i.i.i.i550 = icmp eq ptr %i.ha, %i.gw
  br i1 %.not.i.i.i.i550, label %.loopexit807, label %.lr.ph.i.i.i.i548, !llvm.loop !86

.loopexit807:                                     ; preds = %.lr.ph.i.i.i.i548, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545
  store i64 %i.gi, ptr %i.bw, align 8, !tbaa !608
  %.not.i.i558 = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i558, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559:     ; preds = %.loopexit807
  store ptr %i.gf, ptr %i.dp, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574: ; preds = %.loopexit807, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %.pre887 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.hb = add i32 %.pre887, 1
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574, %.loopexit805
  %i.hc = phi i64 [ %i.gi, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.hj, %.loopexit805 ]
  %i.hd = phi ptr [ %i.gn, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.hs, %.loopexit805 ]
  %i.he = phi i32 [ %i.hb, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.id, %.loopexit805 ]
  %storemerge811 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.ig, %.loopexit805 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %storemerge811, ptr %3, align 4, !tbaa !612
  store i32 %i.he, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hc
  %i.hg = invoke noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6insertEPKS3_OS3_.exit470 unwind label %bb.am ; 0 uses

_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6insertEPKS3_OS3_.exit470: ; preds = %bb.ai
  %i.hh = load ptr, ptr %i.dp, align 8, !tbaa !270
  %i.hi = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aj unwind label %bb.an     ; 0 uses

bb.aj:                                            ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intESaIS3_EvE6insertEPKS3_OS3_.exit470
  %i.hj = load i64, ptr %i.bw, align 8, !tbaa !617 ; 3 uses
  %i.hk = load i64, ptr %i.by, align 8, !tbaa !618 ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = load ptr, ptr %i.dp, align 8, !tbaa !600
  %i.hn = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 4 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2
  %.not.i576 = icmp eq i64 %i.hl, %i.hr
  br i1 %.not.i576, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hs = load ptr, ptr %i.bu, align 8, !tbaa !619 ; 5 uses
  %.idx23.i578 = shl nuw nsw i64 %i.hk, 2         ; 4 uses
  %.idx.i579 = shl nuw nsw i64 %i.hj, 2           ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx.i579 ; 2 uses
  %gepdiff.i580 = sub nsw i64 %.idx.i579, %.idx23.i578
  %i.hu = ashr exact i64 %gepdiff.i580, 2
  %.not19.i581 = icmp eq i64 %i.hu, %i.hl
  br i1 %.not19.i581, label %.preheader.i582, label %.loopexit

.preheader.i582:                                  ; preds = %bb.ak
end_hunk_0
begin_hunk_1_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.ae = add i32 %_ZN5boost9container4test24movable_and_copyable_int5countE.promoted.i.i, 100
  store i32 %i.ae, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259, !noalias !4089
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !637
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !636 ; 6 uses
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !635 ; 4 uses
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !634 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 32, i1 false)
  %i.aj = shl i64 %i.af, 2
  %i.ak = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !600
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !349 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not.i476 = icmp eq i64 %i.ak, %i.aq
  br i1 %.not.i476, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit
  %.idx23.i = shl nuw nsw i64 %i.ah, 2            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ai, 2              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx23.i
  %i.as = ashr exact i64 %gepdiff.i, 2
  %.not19.i = icmp eq i64 %i.as, %i.ak
  br i1 %.not19.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %bb.e
  %.not2124.i = icmp samesign eq i64 %.idx23.i, %.idx.i
  br i1 %.not2124.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01826.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.025.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.am, %.lr.ph.preheader.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %i.av = load i32, ptr %.01826.i, align 4, !tbaa !629
  %i.aw = icmp eq i32 %i.av, %i.au                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  %.not21.i = icmp ne ptr %i.ax, %i.ar
  %or.cond.not = select i1 %i.aw, i1 %.not21.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !87

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit, %bb.e, %.preheader.i
  %.2.i788 = phi i1 [ false, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvEaSEOS5_.exit ], [ true, %.preheader.i ], [ false, %bb.e ], [ %i.aw, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %.not5.i.i.i.i.i = icmp samesign eq i64 %i.ah, %i.ai
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i, align 4, !tbaa !629
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i478 = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i478, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %.not.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i1.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #30
  br label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i

_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, %bb.g
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !636 ; 4 uses
  %i.bg = load i64, ptr %i.aa, align 8, !tbaa !635 ; 2 uses
  %i.bh = load i64, ptr %i.ab, align 8, !tbaa !634 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bh
  %.not5.i.i.i.i.i480 = icmp samesign eq i64 %i.bg, %i.bh
  br i1 %.not5.i.i.i.i.i480, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485, label %.lr.ph.i.preheader.i.i.i.i481

.lr.ph.i.preheader.i.i.i.i481:                    ; preds = %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  br label %.lr.ph.i.i.i.i.i482

.lr.ph.i.i.i.i.i482:                              ; preds = %.lr.ph.i.i.i.i.i482, %.lr.ph.i.preheader.i.i.i.i481
  %.06.i.i.i.i.i483 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i482 ], [ %i.bj, %.lr.ph.i.preheader.i.i.i.i481 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i483, align 4, !tbaa !629
  %i.bk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i483, i64 4 ; 2 uses
  %.not.i.i.i.i.i484 = icmp eq ptr %i.bm, %i.bi
  br i1 %.not.i.i.i.i.i484, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485, label %.lr.ph.i.i.i.i.i482, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485: ; preds = %.lr.ph.i.i.i.i.i482, %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i
  %.not.i1.i.i.i.i486 = icmp eq ptr %i.bf, null
  br i1 %.not.i1.i.i.i.i486, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !637
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bo) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !350
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #30
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i788, label %bb.k, label %bb.iz

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4090)
  %i.bu = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !4090 ; 109 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i8 0, i64 40, i1 false), !noalias !4090
  store ptr %i.bu, ptr %1, align 8, !tbaa !632, !alias.scope !4090
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4091)
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.l unwind label %bb.w       ; 91 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !4091
  store ptr %i.bv, ptr %2, align 8, !tbaa !603, !alias.scope !4091
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 28 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !634 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 22 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !635 ; 3 uses
  %i.ca = sub i64 %i.bx, %i.bz                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 100
  %i.cc = sub i64 100, %i.ca                      ; 5 uses
  br i1 %i.cb, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !637
  %i.cf = sub i64 %i.ce, %i.bz
  %.not.i.i.i496 = icmp ult i64 %i.cf, 100
  br i1 %.not.i.i.i496, label %bb.p, label %.lr.ph.i.i.i.i.i497

.lr.ph.i.i.i.i.i497:                              ; preds = %bb.m
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !636, !nonnull !269, !noundef !269
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bx ; 5 uses
  %i.ci = add i64 %i.bz, 99
  %i.cj = sub i64 %i.ci, %i.bx
  %xtraiter = and i64 %i.cc, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.i.i.i.i.i497.new

.lr.ph.i.i.i.i.i497.new:                          ; preds = %.lr.ph.i.i.i.i.i497
  %unroll_iter = and i64 %i.cc, -4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i497.new
  %.06.i.i.i.i.i498 = phi i64 [ 0, %.lr.ph.i.i.i.i.i497.new ], [ %i.da, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i497.new ], [ %niter.next.3, %bb.n ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  store i32 0, ptr %i.cl, align 4, !tbaa !629
  %i.cm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 0, ptr %i.cp, align 4, !tbaa !629
  %i.cq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %i.ct, align 4, !tbaa !629
  %i.cu = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !629
  %i.cy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.da = add nuw i64 %.06.i.i.i.i.i498, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.n, !llvm.loop !135

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i497
  %.06.i.i.i.i.i498.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i497 ], [ %i.da, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1033 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1033)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.06.i.i.i.i.i498.epil = phi i64 [ %.06.i.i.i.i.i498.epil.init, %.epil.preheader ], [ %i.de, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498.epil
  store i32 0, ptr %i.db, align 4, !tbaa !629
  %i.dc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.de = add nuw i64 %.06.i.i.i.i.i498.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.o, !llvm.loop !4083

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.df = add i64 %i.cc, %i.bx
  store i64 %i.df, ptr %i.bw, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef 100, i64 noundef %i.cc)
          to label %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit_crit_edge unwind label %bb.x

._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit_crit_edge: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre880 = load ptr, ptr %i.bv, align 8, !tbaa !349
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit

bb.q:                                             ; preds = %bb.l
  %i.dg = add i64 %i.cc, %i.bx                    ; 2 uses
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !636 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.bx
  %.not5.i.i.i.i491 = icmp eq i64 %i.ca, 100
  br i1 %.not5.i.i.i.i491, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i492

.lr.ph.i.preheader.i.i.i492:                      ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  br label %.lr.ph.i.i.i.i493

.lr.ph.i.i.i.i493:                                ; preds = %.lr.ph.i.i.i.i493, %.lr.ph.i.preheader.i.i.i492
  %.06.i.i.i.i494 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i493 ], [ %i.dj, %.lr.ph.i.preheader.i.i.i492 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i494, align 4, !tbaa !629
  %i.dk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i494, i64 4 ; 2 uses
  %.not.i.i.i.i495 = icmp eq ptr %i.dm, %i.di
  br i1 %.not.i.i.i.i495, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i493, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i493, %bb.q
  store i64 %i.dg, ptr %i.bw, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i
  %i.dn = phi ptr [ %.pre880, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 5 uses
  %i.do = phi ptr [ %.pre, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 42 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dn to i64               ; 4 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = ashr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 100
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit
  %i.dv = sub nuw nsw i64 100, %i.dt
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.dv)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.x

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.r
  %.pre881 = load ptr, ptr %i.dp, align 8, !tbaa !600
  %.pre882 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre890 = ptrtoint ptr %.pre882 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.s:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit
  %.not795 = icmp eq i64 %i.ds, 400
  br i1 %.not795, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.do, %i.dw
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %.pre-phi = phi i64 [ %.pre890, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dr, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ] ; 3 uses
  %i.dx = phi ptr [ %.pre882, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dn, %bb.t ], [ %i.dn, %bb.s ] ; 3 uses
  %i.dy = phi ptr [ %.pre881, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.do, %bb.t ], [ %i.do, %bb.s ] ; 3 uses
  %i.dz = load i64, ptr %i.bw, align 8, !tbaa !634 ; 7 uses
  %i.ea = load i64, ptr %i.by, align 8, !tbaa !635 ; 4 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 5 uses
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.ec, %.pre-phi                ; 3 uses
  %i.ee = ashr exact i64 %i.ed, 2                 ; 3 uses
  %.not.i501 = icmp eq i64 %i.eb, %i.ee
  br i1 %.not.i501, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ef = load ptr, ptr %i.bu, align 8, !tbaa !636 ; 5 uses
  %.idx23.i503 = shl nuw nsw i64 %i.ea, 2         ; 3 uses
  %.idx.i504 = shl nuw nsw i64 %i.dz, 2           ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i504
  %gepdiff.i505 = sub nsw i64 %.idx.i504, %.idx23.i503
  %i.eh = ashr exact i64 %gepdiff.i505, 2
  %.not19.i506 = icmp eq i64 %i.eh, %i.eb
  br i1 %.not19.i506, label %.preheader.i507, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

.preheader.i507:                                  ; preds = %bb.u
  %.not2124.i508 = icmp samesign eq i64 %.idx23.i503, %.idx.i504
  br i1 %.not2124.i508, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514, label %.lr.ph.preheader.i509

.lr.ph.preheader.i509:                            ; preds = %.preheader.i507
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx23.i503
  br label %.lr.ph.i510

.lr.ph.i510:                                      ; preds = %bb.v, %.lr.ph.preheader.i509
  %.01826.i511 = phi ptr [ %i.em, %bb.v ], [ %i.ei, %.lr.ph.preheader.i509 ] ; 2 uses
  %.sroa.0.025.i512 = phi ptr [ %i.en, %bb.v ], [ %i.dx, %.lr.ph.preheader.i509 ] ; 2 uses
  %i.ej = load i32, ptr %.sroa.0.025.i512, align 4, !tbaa !259
  %i.ek = load i32, ptr %.01826.i511, align 4, !tbaa !629
  %i.el = icmp eq i32 %i.ek, %i.ej
  br i1 %i.el, label %bb.v, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.v:                                             ; preds = %.lr.ph.i510
  %i.em = getelementptr inbounds nuw i8, ptr %.01826.i511, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i512, i64 4
  %.not21.i513 = icmp eq ptr %i.em, %i.eg
  br i1 %.not21.i513, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514, label %.lr.ph.i510, !llvm.loop !87

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.az, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.w:                                             ; preds = %bb.k
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.x:                                             ; preds = %bb.ad, %bb.ab, %bb.r, %bb.p
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514: ; preds = %bb.v, %.preheader.i507
  %i.eq = icmp ult i64 %i.eb, 200
  %i.er = sub i64 200, %i.eb                      ; 5 uses
  br i1 %i.eq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !637
  %i.eu = sub i64 %i.et, %i.ea
  %.not.i.i.i521 = icmp ult i64 %i.eu, 200
  br i1 %.not.i.i.i521, label %bb.ab, label %.lr.ph.i.i.i.i.i522

.lr.ph.i.i.i.i.i522:                              ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz ; 5 uses
  %i.ew = add i64 %i.ea, 199
  %i.ex = sub i64 %i.ew, %i.dz
  %xtraiter1035 = and i64 %i.er, 3                ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 3
  br i1 %i.ey, label %.epil.preheader1034, label %.lr.ph.i.i.i.i.i522.new

.lr.ph.i.i.i.i.i522.new:                          ; preds = %.lr.ph.i.i.i.i.i522
  %unroll_iter1039 = and i64 %i.er, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i522.new
  %.06.i.i.i.i.i523 = phi i64 [ 0, %.lr.ph.i.i.i.i.i522.new ], [ %i.fo, %bb.z ] ; 5 uses
  %niter1040 = phi i64 [ 0, %.lr.ph.i.i.i.i.i522.new ], [ %niter1040.next.3, %bb.z ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  store i32 0, ptr %i.ez, align 4, !tbaa !629
  %i.fa = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 0, ptr %i.fd, align 4, !tbaa !629
  %i.fe = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 0, ptr %i.fh, align 4, !tbaa !629
  %i.fi = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !629
  %i.fm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fo = add nuw i64 %.06.i.i.i.i.i523, 4        ; 2 uses
  %niter1040.next.3 = add i64 %niter1040, 4       ; 2 uses
  %niter1040.ncmp.3 = icmp eq i64 %niter1040.next.3, %unroll_iter1039
  br i1 %niter1040.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa, label %bb.z, !llvm.loop !135

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa: ; preds = %bb.z
  %lcmp.mod1037.not = icmp eq i64 %xtraiter1035, 0
  br i1 %lcmp.mod1037.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525, label %.epil.preheader1034

.epil.preheader1034:                              ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa, %.lr.ph.i.i.i.i.i522
  %.06.i.i.i.i.i523.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i522 ], [ %i.fo, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa ]
  %lcmp.mod1038 = icmp ne i64 %xtraiter1035, 0
  tail call void @llvm.assume(i1 %lcmp.mod1038)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader1034
  %.06.i.i.i.i.i523.epil = phi i64 [ %.06.i.i.i.i.i523.epil.init, %.epil.preheader1034 ], [ %i.fs, %bb.aa ] ; 2 uses
  %epil.iter1036 = phi i64 [ 0, %.epil.preheader1034 ], [ %epil.iter1036.next, %bb.aa ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523.epil
  store i32 0, ptr %i.fp, align 4, !tbaa !629
  %i.fq = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fs = add nuw i64 %.06.i.i.i.i.i523.epil, 1
  %epil.iter1036.next = add i64 %epil.iter1036, 1 ; 2 uses
  %epil.iter1036.cmp.not = icmp eq i64 %epil.iter1036.next, %xtraiter1035
  br i1 %epil.iter1036.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525, label %bb.aa, !llvm.loop !4084

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525: ; preds = %bb.aa, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa
  %i.ft = add i64 %i.er, %i.dz
  store i64 %i.ft, ptr %i.bw, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527

bb.ab:                                            ; preds = %bb.y
  invoke void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef 200, i64 noundef %i.er)
          to label %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge unwind label %bb.x

._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge: ; preds = %bb.ab
  %.pre883 = load ptr, ptr %i.dp, align 8, !tbaa !600 ; 2 uses
  %.pre884 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre891 = ptrtoint ptr %.pre883 to i64
  %.pre893 = ptrtoint ptr %.pre884 to i64         ; 2 uses
  %.pre895 = sub i64 %.pre891, %.pre893           ; 2 uses
  %.pre897 = ashr exact i64 %.pre895, 2
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527

bb.ac:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514
  %i.fu = add i64 %i.er, %i.dz                    ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz
  %.not5.i.i.i.i515 = icmp eq i64 %i.eb, 200
  br i1 %.not5.i.i.i.i515, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, label %.lr.ph.i.preheader.i.i.i516

.lr.ph.i.preheader.i.i.i516:                      ; preds = %bb.ac
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fu
  br label %.lr.ph.i.i.i.i517

.lr.ph.i.i.i.i517:                                ; preds = %.lr.ph.i.i.i.i517, %.lr.ph.i.preheader.i.i.i516
  %.06.i.i.i.i518 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i517 ], [ %i.fw, %.lr.ph.i.preheader.i.i.i516 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i518, align 4, !tbaa !629
  %i.fx = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i518, i64 4 ; 2 uses
  %.not.i.i.i.i519 = icmp eq ptr %i.fz, %i.fv
  br i1 %.not.i.i.i.i519, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, label %.lr.ph.i.i.i.i517, !llvm.loop !88

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520: ; preds = %.lr.ph.i.i.i.i517, %bb.ac
  store i64 %i.fu, ptr %i.bw, align 8, !tbaa !625
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527: ; preds = %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525
  %.pre-phi898 = phi i64 [ %.pre897, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 2 uses
  %.pre-phi896 = phi i64 [ %.pre895, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.ed, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.ed, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ]
  %.pre-phi894 = phi i64 [ %.pre893, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 3 uses
  %i.ga = phi ptr [ %.pre884, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.dx, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.dx, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 4 uses
  %i.gb = phi ptr [ %.pre883, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.dy, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.dy, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 3 uses
  %i.gc = icmp ult i64 %.pre-phi898, 200
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527
  %i.gd = sub nuw nsw i64 200, %.pre-phi898
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.gd)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge unwind label %bb.x

._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge: ; preds = %bb.ad
  %.pre885 = load ptr, ptr %i.dp, align 8, !tbaa !600
  %.pre886 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre899 = ptrtoint ptr %.pre886 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531

bb.ae:                                            ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6resizeEm.exit527
  %.not796 = icmp eq i64 %.pre-phi896, 800
  br i1 %.not796, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 800 ; 3 uses
  %.not.i.i528 = icmp eq ptr %i.gb, %i.ge
  br i1 %.not.i.i528, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529:     ; preds = %bb.af
  store ptr %i.ge, ptr %i.dp, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531

_ZNSt6vectorIiSaIiEE6resizeEm.exit531:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529, %bb.af, %bb.ae
  %.pre-phi900 = phi i64 [ %.pre899, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %.pre-phi894, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %.pre-phi894, %bb.af ], [ %.pre-phi894, %bb.ae ]
  %i.gf = phi ptr [ %.pre886, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %i.ga, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %i.ga, %bb.af ], [ %i.ga, %bb.ae ] ; 3 uses
  %i.gg = phi ptr [ %.pre885, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %i.ge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %i.gb, %bb.af ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gh = load i64, ptr %i.bw, align 8, !tbaa !634 ; 4 uses
  %i.gi = load i64, ptr %i.by, align 8, !tbaa !635 ; 6 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gk, %.pre-phi900
  %i.gm = ashr exact i64 %i.gl, 2
  %.not.i532 = icmp eq i64 %i.gj, %i.gm
  br i1 %.not.i532, label %bb.ag, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit531
  %i.gn = load ptr, ptr %i.bu, align 8, !tbaa !636 ; 5 uses
  %.idx23.i534 = shl nuw nsw i64 %i.gi, 2         ; 3 uses
  %.idx.i535 = shl nuw nsw i64 %i.gh, 2           ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i535
  %gepdiff.i536 = sub nsw i64 %.idx.i535, %.idx23.i534
  %i.gp = ashr exact i64 %gepdiff.i536, 2
  %.not19.i537 = icmp eq i64 %i.gp, %i.gj
  br i1 %.not19.i537, label %.preheader.i538, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

.preheader.i538:                                  ; preds = %bb.ag
  %.not2124.i539 = icmp samesign eq i64 %.idx23.i534, %.idx.i535
  br i1 %.not2124.i539, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545, label %.lr.ph.preheader.i540

.lr.ph.preheader.i540:                            ; preds = %.preheader.i538
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx23.i534
  br label %.lr.ph.i541

.lr.ph.i541:                                      ; preds = %bb.ah, %.lr.ph.preheader.i540
  %.01826.i542 = phi ptr [ %i.gu, %bb.ah ], [ %i.gq, %.lr.ph.preheader.i540 ] ; 2 uses
  %.sroa.0.025.i543 = phi ptr [ %i.gv, %bb.ah ], [ %i.gf, %.lr.ph.preheader.i540 ] ; 2 uses
  %i.gr = load i32, ptr %.sroa.0.025.i543, align 4, !tbaa !259
  %i.gs = load i32, ptr %.01826.i542, align 4, !tbaa !629
  %i.gt = icmp eq i32 %i.gs, %i.gr
  br i1 %i.gt, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.ah:                                            ; preds = %.lr.ph.i541
  %i.gu = getelementptr inbounds nuw i8, ptr %.01826.i542, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i543, i64 4
  %.not21.i544 = icmp eq ptr %i.gu, %i.go
  br i1 %.not21.i544, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545, label %.lr.ph.i541, !llvm.loop !87

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545: ; preds = %bb.ah, %.preheader.i538
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gh
  %.not5.i.i.i.i546 = icmp eq i64 %i.gh, %i.gi
  br i1 %.not5.i.i.i.i546, label %.loopexit807, label %.lr.ph.i.preheader.i.i.i547

.lr.ph.i.preheader.i.i.i547:                      ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gi
  br label %.lr.ph.i.i.i.i548

.lr.ph.i.i.i.i548:                                ; preds = %.lr.ph.i.i.i.i548, %.lr.ph.i.preheader.i.i.i547
  %.06.i.i.i.i549 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i548 ], [ %i.gx, %.lr.ph.i.preheader.i.i.i547 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i549, align 4, !tbaa !629
  %i.gy = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gz = add i32 %i.gy, -1
  store i32 %i.gz, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ha = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i549, i64 4 ; 2 uses
  %.not.i.i.i.i550 = icmp eq ptr %i.ha, %i.gw
  br i1 %.not.i.i.i.i550, label %.loopexit807, label %.lr.ph.i.i.i.i548, !llvm.loop !88

.loopexit807:                                     ; preds = %.lr.ph.i.i.i.i548, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545
  store i64 %i.gi, ptr %i.bw, align 8, !tbaa !625
  %.not.i.i558 = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i558, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559:     ; preds = %.loopexit807
  store ptr %i.gf, ptr %i.dp, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574: ; preds = %.loopexit807, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %.pre887 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.hb = add i32 %.pre887, 1
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574, %.loopexit805
  %i.hc = phi i64 [ %i.gi, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.hj, %.loopexit805 ]
  %i.hd = phi ptr [ %i.gn, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.hs, %.loopexit805 ]
  %i.he = phi i32 [ %i.hb, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.id, %.loopexit805 ]
  %storemerge811 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.ig, %.loopexit805 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %storemerge811, ptr %3, align 4, !tbaa !629
  store i32 %i.he, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hc
  %i.hg = invoke noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6insertEPKS3_OS3_.exit470 unwind label %bb.am ; 0 uses

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6insertEPKS3_OS3_.exit470: ; preds = %bb.ai
  %i.hh = load ptr, ptr %i.dp, align 8, !tbaa !270
  %i.hi = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aj unwind label %bb.an     ; 0 uses

bb.aj:                                            ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intESaIS3_EvE6insertEPKS3_OS3_.exit470
  %i.hj = load i64, ptr %i.bw, align 8, !tbaa !634 ; 3 uses
  %i.hk = load i64, ptr %i.by, align 8, !tbaa !635 ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = load ptr, ptr %i.dp, align 8, !tbaa !600
  %i.hn = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 4 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2
  %.not.i576 = icmp eq i64 %i.hl, %i.hr
  br i1 %.not.i576, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hs = load ptr, ptr %i.bu, align 8, !tbaa !636 ; 5 uses
  %.idx23.i578 = shl nuw nsw i64 %i.hk, 2         ; 4 uses
  %.idx.i579 = shl nuw nsw i64 %i.hj, 2           ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx.i579 ; 2 uses
  %gepdiff.i580 = sub nsw i64 %.idx.i579, %.idx23.i578
  %i.hu = ashr exact i64 %gepdiff.i580, 2
  %.not19.i581 = icmp eq i64 %i.hu, %i.hl
  br i1 %.not19.i581, label %.preheader.i582, label %.loopexit

.preheader.i582:                                  ; preds = %bb.ak
end_hunk_1
begin_hunk_2_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_8devectorINS1_12copyable_intESaIS4_EvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
  %i.ae = add i32 %_ZN5boost9container4test12copyable_int5countE.promoted.i.i, 100
  store i32 %i.ae, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259, !noalias !5096
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !654
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !653 ; 6 uses
  %i.ah = load i64, ptr %i.aa, align 8, !tbaa !652 ; 4 uses
  %i.ai = load i64, ptr %i.ab, align 8, !tbaa !651 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.x, i8 0, i64 32, i1 false)
  %i.aj = shl i64 %i.af, 2
  %i.ak = sub i64 %i.ai, %i.ah                    ; 2 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !600
  %i.am = load ptr, ptr %i.r, align 8, !tbaa !349 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 2
  %.not.i476 = icmp eq i64 %i.ak, %i.aq
  br i1 %.not.i476, label %bb.e, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

bb.e:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit
  %.idx23.i = shl nuw nsw i64 %i.ah, 2            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ai, 2              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx23.i
  %i.as = ashr exact i64 %gepdiff.i, 2
  %.not19.i = icmp eq i64 %i.as, %i.ak
  br i1 %.not19.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %bb.e
  %.not2124.i = icmp samesign eq i64 %.idx23.i, %.idx.i
  br i1 %.not2124.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01826.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.025.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.am, %.lr.ph.preheader.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %i.av = load i32, ptr %.01826.i, align 4, !tbaa !646
  %i.aw = icmp eq i32 %i.av, %i.au                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  %.not21.i = icmp ne ptr %i.ax, %i.ar
  %or.cond.not = select i1 %i.aw, i1 %.not21.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !89

bb.f:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit, %bb.e, %.preheader.i
  %.2.i788 = phi i1 [ false, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvEaSEOS5_.exit ], [ true, %.preheader.i ], [ false, %bb.e ], [ %i.aw, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %.not5.i.i.i.i.i = icmp samesign eq i64 %i.ah, %i.ai
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i, align 4, !tbaa !646
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i478 = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i478, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %.not.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i1.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ag, i64 noundef %i.aj) #30
  br label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i

_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i, %bb.g
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !653 ; 4 uses
  %i.bg = load i64, ptr %i.aa, align 8, !tbaa !652 ; 2 uses
  %i.bh = load i64, ptr %i.ab, align 8, !tbaa !651 ; 2 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bh
  %.not5.i.i.i.i.i480 = icmp samesign eq i64 %i.bg, %i.bh
  br i1 %.not5.i.i.i.i.i480, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485, label %.lr.ph.i.preheader.i.i.i.i481

.lr.ph.i.preheader.i.i.i.i481:                    ; preds = %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bg
  br label %.lr.ph.i.i.i.i.i482

.lr.ph.i.i.i.i.i482:                              ; preds = %.lr.ph.i.i.i.i.i482, %.lr.ph.i.preheader.i.i.i.i481
  %.06.i.i.i.i.i483 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i482 ], [ %i.bj, %.lr.ph.i.preheader.i.i.i.i481 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i483, align 4, !tbaa !646
  %i.bk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bl = add i32 %i.bk, -1
  store i32 %i.bl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i483, i64 4 ; 2 uses
  %.not.i.i.i.i.i484 = icmp eq ptr %i.bm, %i.bi
  br i1 %.not.i.i.i.i.i484, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485, label %.lr.ph.i.i.i.i.i482, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485: ; preds = %.lr.ph.i.i.i.i.i482, %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intESaIS5_EvEEEclIS7_EENS_8move_upd18enable_defdel_callIT_S7_vE4typeEPSC_.exit.i
  %.not.i1.i.i.i.i486 = icmp eq ptr %i.bf, null
  br i1 %.not.i1.i.i.i.i486, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485
  %i.bn = load i64, ptr %i.ac, align 8, !tbaa !654
  %i.bo = shl i64 %i.bn, 2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bo) #30
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i.i485
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30
  %i.bp = load ptr, ptr %i.r, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bp, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.v, align 8, !tbaa !350
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bp to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bp, i64 noundef %i.bt) #30
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i788, label %bb.k, label %bb.iz

bb.k:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5097)
  %i.bu = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !5097 ; 109 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i8 0, i64 40, i1 false), !noalias !5097
  store ptr %i.bu, ptr %1, align 8, !tbaa !649, !alias.scope !5097
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5098)
  %i.bv = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.l unwind label %bb.w       ; 91 uses

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i8 0, i64 24, i1 false), !noalias !5098
  store ptr %i.bv, ptr %2, align 8, !tbaa !603, !alias.scope !5098
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16 ; 28 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !651 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 22 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !652 ; 3 uses
  %i.ca = sub i64 %i.bx, %i.bz                    ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 100
  %i.cc = sub i64 100, %i.ca                      ; 5 uses
  br i1 %i.cb, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !654
  %i.cf = sub i64 %i.ce, %i.bz
  %.not.i.i.i496 = icmp ult i64 %i.cf, 100
  br i1 %.not.i.i.i496, label %bb.p, label %.lr.ph.i.i.i.i.i497

.lr.ph.i.i.i.i.i497:                              ; preds = %bb.m
  %i.cg = load ptr, ptr %i.bu, align 8, !tbaa !653, !nonnull !269, !noundef !269
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.bx ; 5 uses
  %i.ci = add i64 %i.bz, 99
  %i.cj = sub i64 %i.ci, %i.bx
  %xtraiter = and i64 %i.cc, 3                    ; 3 uses
  %i.ck = icmp ult i64 %i.cj, 3
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.i.i.i.i.i497.new

.lr.ph.i.i.i.i.i497.new:                          ; preds = %.lr.ph.i.i.i.i.i497
  %unroll_iter = and i64 %i.cc, -4
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph.i.i.i.i.i497.new
  %.06.i.i.i.i.i498 = phi i64 [ 0, %.lr.ph.i.i.i.i.i497.new ], [ %i.da, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i497.new ], [ %niter.next.3, %bb.n ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  store i32 0, ptr %i.cl, align 4, !tbaa !646
  %i.cm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cn = add i32 %i.cm, 1
  store i32 %i.cn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 0, ptr %i.cp, align 4, !tbaa !646
  %i.cq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cr = add i32 %i.cq, 1
  store i32 %i.cr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  store i32 0, ptr %i.ct, align 4, !tbaa !646
  %i.cu = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 12
  store i32 0, ptr %i.cx, align 4, !tbaa !646
  %i.cy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cz = add i32 %i.cy, 1
  store i32 %i.cz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.da = add nuw i64 %.06.i.i.i.i.i498, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.n, !llvm.loop !158

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i497
  %.06.i.i.i.i.i498.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i497 ], [ %i.da, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1033 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1033)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %.06.i.i.i.i.i498.epil = phi i64 [ %.06.i.i.i.i.i498.epil.init, %.epil.preheader ], [ %i.de, %bb.o ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ch, i64 %.06.i.i.i.i.i498.epil
  store i32 0, ptr %i.db, align 4, !tbaa !646
  %i.dc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dd = add i32 %i.dc, 1
  store i32 %i.dd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.de = add nuw i64 %.06.i.i.i.i.i498.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.o, !llvm.loop !5090

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.df = add i64 %i.cc, %i.bx
  store i64 %i.df, ptr %i.bw, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit

bb.p:                                             ; preds = %bb.m
  invoke void @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef 100, i64 noundef %i.cc)
          to label %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit_crit_edge unwind label %bb.x

._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit_crit_edge: ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre880 = load ptr, ptr %i.bv, align 8, !tbaa !349
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit

bb.q:                                             ; preds = %bb.l
  %i.dg = add i64 %i.cc, %i.bx                    ; 2 uses
  %i.dh = load ptr, ptr %i.bu, align 8, !tbaa !653 ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.bx
  %.not5.i.i.i.i491 = icmp eq i64 %i.ca, 100
  br i1 %.not5.i.i.i.i491, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i492

.lr.ph.i.preheader.i.i.i492:                      ; preds = %bb.q
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dg
  br label %.lr.ph.i.i.i.i493

.lr.ph.i.i.i.i493:                                ; preds = %.lr.ph.i.i.i.i493, %.lr.ph.i.preheader.i.i.i492
  %.06.i.i.i.i494 = phi ptr [ %i.dm, %.lr.ph.i.i.i.i493 ], [ %i.dj, %.lr.ph.i.preheader.i.i.i492 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i494, align 4, !tbaa !646
  %i.dk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dl = add i32 %i.dk, -1
  store i32 %i.dl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i494, i64 4 ; 2 uses
  %.not.i.i.i.i495 = icmp eq ptr %i.dm, %i.di
  br i1 %.not.i.i.i.i495, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, label %.lr.ph.i.i.i.i493, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i493, %bb.q
  store i64 %i.dg, ptr %i.bw, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i
  %i.dn = phi ptr [ %.pre880, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 5 uses
  %i.do = phi ptr [ %.pre, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 42 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dn to i64               ; 4 uses
  %i.ds = sub i64 %i.dq, %i.dr                    ; 2 uses
  %i.dt = ashr exact i64 %i.ds, 2                 ; 2 uses
  %i.du = icmp ult i64 %i.dt, 100
  br i1 %i.du, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit
  %i.dv = sub nuw nsw i64 100, %i.dt
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.dv)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.x

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.r
  %.pre881 = load ptr, ptr %i.dp, align 8, !tbaa !600
  %.pre882 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre890 = ptrtoint ptr %.pre882 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.s:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit
  %.not795 = icmp eq i64 %i.ds, 400
  br i1 %.not795, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.do, %i.dw
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.t
  store ptr %i.dw, ptr %i.dp, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.t, %bb.s
  %.pre-phi = phi i64 [ %.pre890, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dr, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dr, %bb.t ], [ %i.dr, %bb.s ] ; 3 uses
  %i.dx = phi ptr [ %.pre882, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dn, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dn, %bb.t ], [ %i.dn, %bb.s ] ; 3 uses
  %i.dy = phi ptr [ %.pre881, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dw, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.do, %bb.t ], [ %i.do, %bb.s ] ; 3 uses
  %i.dz = load i64, ptr %i.bw, align 8, !tbaa !651 ; 7 uses
  %i.ea = load i64, ptr %i.by, align 8, !tbaa !652 ; 4 uses
  %i.eb = sub i64 %i.dz, %i.ea                    ; 5 uses
  %i.ec = ptrtoint ptr %i.dy to i64
  %i.ed = sub i64 %i.ec, %.pre-phi                ; 3 uses
  %i.ee = ashr exact i64 %i.ed, 2                 ; 3 uses
  %.not.i501 = icmp eq i64 %i.eb, %i.ee
  br i1 %.not.i501, label %bb.u, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.ef = load ptr, ptr %i.bu, align 8, !tbaa !653 ; 5 uses
  %.idx23.i503 = shl nuw nsw i64 %i.ea, 2         ; 3 uses
  %.idx.i504 = shl nuw nsw i64 %i.dz, 2           ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx.i504
  %gepdiff.i505 = sub nsw i64 %.idx.i504, %.idx23.i503
  %i.eh = ashr exact i64 %gepdiff.i505, 2
  %.not19.i506 = icmp eq i64 %i.eh, %i.eb
  br i1 %.not19.i506, label %.preheader.i507, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

.preheader.i507:                                  ; preds = %bb.u
  %.not2124.i508 = icmp samesign eq i64 %.idx23.i503, %.idx.i504
  br i1 %.not2124.i508, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514, label %.lr.ph.preheader.i509

.lr.ph.preheader.i509:                            ; preds = %.preheader.i507
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.idx23.i503
  br label %.lr.ph.i510

.lr.ph.i510:                                      ; preds = %bb.v, %.lr.ph.preheader.i509
  %.01826.i511 = phi ptr [ %i.em, %bb.v ], [ %i.ei, %.lr.ph.preheader.i509 ] ; 2 uses
  %.sroa.0.025.i512 = phi ptr [ %i.en, %bb.v ], [ %i.dx, %.lr.ph.preheader.i509 ] ; 2 uses
  %i.ej = load i32, ptr %.sroa.0.025.i512, align 4, !tbaa !259
  %i.ek = load i32, ptr %.01826.i511, align 4, !tbaa !646
  %i.el = icmp eq i32 %i.ek, %i.ej
  br i1 %i.el, label %bb.v, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.v:                                             ; preds = %.lr.ph.i510
  %i.em = getelementptr inbounds nuw i8, ptr %.01826.i511, i64 4 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i512, i64 4
  %.not21.i513 = icmp eq ptr %i.em, %i.eg
  br i1 %.not21.i513, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514, label %.lr.ph.i510, !llvm.loop !89

.body:                                            ; preds = %bb.f, %bb.d
  %.pn.pn = phi { ptr, i32 } [ %i.z, %bb.d ], [ %i.az, %bb.f ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.w:                                             ; preds = %bb.k
  %i.eo = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.x:                                             ; preds = %bb.ad, %bb.ab, %bb.r, %bb.p
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.ix

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514: ; preds = %bb.v, %.preheader.i507
  %i.eq = icmp ult i64 %i.eb, 200
  %i.er = sub i64 200, %i.eb                      ; 5 uses
  br i1 %i.eq, label %bb.y, label %bb.ac

bb.y:                                             ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514
  %i.es = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.et = load i64, ptr %i.es, align 8, !tbaa !654
  %i.eu = sub i64 %i.et, %i.ea
  %.not.i.i.i521 = icmp ult i64 %i.eu, 200
  br i1 %.not.i.i.i521, label %bb.ab, label %.lr.ph.i.i.i.i.i522

.lr.ph.i.i.i.i.i522:                              ; preds = %bb.y
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz ; 5 uses
  %i.ew = add i64 %i.ea, 199
  %i.ex = sub i64 %i.ew, %i.dz
  %xtraiter1035 = and i64 %i.er, 3                ; 3 uses
  %i.ey = icmp ult i64 %i.ex, 3
  br i1 %i.ey, label %.epil.preheader1034, label %.lr.ph.i.i.i.i.i522.new

.lr.ph.i.i.i.i.i522.new:                          ; preds = %.lr.ph.i.i.i.i.i522
  %unroll_iter1039 = and i64 %i.er, -4
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i.i.i.i.i522.new
  %.06.i.i.i.i.i523 = phi i64 [ 0, %.lr.ph.i.i.i.i.i522.new ], [ %i.fo, %bb.z ] ; 5 uses
  %niter1040 = phi i64 [ 0, %.lr.ph.i.i.i.i.i522.new ], [ %niter1040.next.3, %bb.z ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  store i32 0, ptr %i.ez, align 4, !tbaa !646
  %i.fa = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fb = add i32 %i.fa, 1
  store i32 %i.fb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i32 0, ptr %i.fd, align 4, !tbaa !646
  %i.fe = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  store i32 0, ptr %i.fh, align 4, !tbaa !646
  %i.fi = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fj = add i32 %i.fi, 1
  store i32 %i.fj, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i32 0, ptr %i.fl, align 4, !tbaa !646
  %i.fm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fn = add i32 %i.fm, 1
  store i32 %i.fn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fo = add nuw i64 %.06.i.i.i.i.i523, 4        ; 2 uses
  %niter1040.next.3 = add i64 %niter1040, 4       ; 2 uses
  %niter1040.ncmp.3 = icmp eq i64 %niter1040.next.3, %unroll_iter1039
  br i1 %niter1040.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa, label %bb.z, !llvm.loop !158

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa: ; preds = %bb.z
  %lcmp.mod1037.not = icmp eq i64 %xtraiter1035, 0
  br i1 %lcmp.mod1037.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525, label %.epil.preheader1034

.epil.preheader1034:                              ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa, %.lr.ph.i.i.i.i.i522
  %.06.i.i.i.i.i523.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i522 ], [ %i.fo, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa ]
  %lcmp.mod1038 = icmp ne i64 %xtraiter1035, 0
  tail call void @llvm.assume(i1 %lcmp.mod1038)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %.epil.preheader1034
  %.06.i.i.i.i.i523.epil = phi i64 [ %.06.i.i.i.i.i523.epil.init, %.epil.preheader1034 ], [ %i.fs, %bb.aa ] ; 2 uses
  %epil.iter1036 = phi i64 [ 0, %.epil.preheader1034 ], [ %epil.iter1036.next, %bb.aa ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %.06.i.i.i.i.i523.epil
  store i32 0, ptr %i.fp, align 4, !tbaa !646
  %i.fq = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fr = add i32 %i.fq, 1
  store i32 %i.fr, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fs = add nuw i64 %.06.i.i.i.i.i523.epil, 1
  %epil.iter1036.next = add i64 %epil.iter1036, 1 ; 2 uses
  %epil.iter1036.cmp.not = icmp eq i64 %epil.iter1036.next, %xtraiter1035
  br i1 %epil.iter1036.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525, label %bb.aa, !llvm.loop !5091

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525: ; preds = %bb.aa, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525.unr-lcssa
  %i.ft = add i64 %i.er, %i.dz
  store i64 %i.ft, ptr %i.bw, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527

bb.ab:                                            ; preds = %bb.y
  invoke void @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, i64 noundef 200, i64 noundef %i.er)
          to label %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge unwind label %bb.x

._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge: ; preds = %bb.ab
  %.pre883 = load ptr, ptr %i.dp, align 8, !tbaa !600 ; 2 uses
  %.pre884 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre891 = ptrtoint ptr %.pre883 to i64
  %.pre893 = ptrtoint ptr %.pre884 to i64         ; 2 uses
  %.pre895 = sub i64 %.pre891, %.pre893           ; 2 uses
  %.pre897 = ashr exact i64 %.pre895, 2
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527

bb.ac:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514
  %i.fu = add i64 %i.er, %i.dz                    ; 2 uses
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.dz
  %.not5.i.i.i.i515 = icmp eq i64 %i.eb, 200
  br i1 %.not5.i.i.i.i515, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, label %.lr.ph.i.preheader.i.i.i516

.lr.ph.i.preheader.i.i.i516:                      ; preds = %bb.ac
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.ef, i64 %i.fu
  br label %.lr.ph.i.i.i.i517

.lr.ph.i.i.i.i517:                                ; preds = %.lr.ph.i.i.i.i517, %.lr.ph.i.preheader.i.i.i516
  %.06.i.i.i.i518 = phi ptr [ %i.fz, %.lr.ph.i.i.i.i517 ], [ %i.fw, %.lr.ph.i.preheader.i.i.i516 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i518, align 4, !tbaa !646
  %i.fx = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fy = add i32 %i.fx, -1
  store i32 %i.fy, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i518, i64 4 ; 2 uses
  %.not.i.i.i.i519 = icmp eq ptr %i.fz, %i.fv
  br i1 %.not.i.i.i.i519, label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, label %.lr.ph.i.i.i.i517, !llvm.loop !90

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520: ; preds = %.lr.ph.i.i.i.i517, %bb.ac
  store i64 %i.fu, ptr %i.bw, align 8, !tbaa !642
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527: ; preds = %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525
  %.pre-phi898 = phi i64 [ %.pre897, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.ee, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 2 uses
  %.pre-phi896 = phi i64 [ %.pre895, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.ed, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.ed, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ]
  %.pre-phi894 = phi i64 [ %.pre893, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 3 uses
  %i.ga = phi ptr [ %.pre884, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.dx, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.dx, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 4 uses
  %i.gb = phi ptr [ %.pre883, %._ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527_crit_edge ], [ %i.dy, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE16destroy_elementsEPS3_S6_.exit.i.i.i520 ], [ %i.dy, %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i525 ] ; 3 uses
  %i.gc = icmp ult i64 %.pre-phi898, 200
  br i1 %i.gc, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527
  %i.gd = sub nuw nsw i64 200, %.pre-phi898
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 noundef %i.gd)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge unwind label %bb.x

._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge: ; preds = %bb.ad
  %.pre885 = load ptr, ptr %i.dp, align 8, !tbaa !600
  %.pre886 = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 2 uses
  %.pre899 = ptrtoint ptr %.pre886 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531

bb.ae:                                            ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6resizeEm.exit527
  %.not796 = icmp eq i64 %.pre-phi896, 800
  br i1 %.not796, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ga, i64 800 ; 3 uses
  %.not.i.i528 = icmp eq ptr %i.gb, %i.ge
  br i1 %.not.i.i528, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529:     ; preds = %bb.af
  store ptr %i.ge, ptr %i.dp, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit531

_ZNSt6vectorIiSaIiEE6resizeEm.exit531:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529, %bb.af, %bb.ae
  %.pre-phi900 = phi i64 [ %.pre899, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %.pre-phi894, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %.pre-phi894, %bb.af ], [ %.pre-phi894, %bb.ae ]
  %i.gf = phi ptr [ %.pre886, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %i.ga, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %i.ga, %bb.af ], [ %i.ga, %bb.ae ] ; 3 uses
  %i.gg = phi ptr [ %.pre885, %._ZNSt6vectorIiSaIiEE6resizeEm.exit531_crit_edge ], [ %i.ge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i529 ], [ %i.gb, %bb.af ], [ %i.gb, %bb.ae ] ; 2 uses
  %i.gh = load i64, ptr %i.bw, align 8, !tbaa !651 ; 4 uses
  %i.gi = load i64, ptr %i.by, align 8, !tbaa !652 ; 6 uses
  %i.gj = sub i64 %i.gh, %i.gi                    ; 2 uses
  %i.gk = ptrtoint ptr %i.gg to i64
  %i.gl = sub i64 %i.gk, %.pre-phi900
  %i.gm = ashr exact i64 %i.gl, 2
  %.not.i532 = icmp eq i64 %i.gj, %i.gm
  br i1 %.not.i532, label %bb.ag, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit531
  %i.gn = load ptr, ptr %i.bu, align 8, !tbaa !653 ; 5 uses
  %.idx23.i534 = shl nuw nsw i64 %i.gi, 2         ; 3 uses
  %.idx.i535 = shl nuw nsw i64 %i.gh, 2           ; 3 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx.i535
  %gepdiff.i536 = sub nsw i64 %.idx.i535, %.idx23.i534
  %i.gp = ashr exact i64 %gepdiff.i536, 2
  %.not19.i537 = icmp eq i64 %i.gp, %i.gj
  br i1 %.not19.i537, label %.preheader.i538, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

.preheader.i538:                                  ; preds = %bb.ag
  %.not2124.i539 = icmp samesign eq i64 %.idx23.i534, %.idx.i535
  br i1 %.not2124.i539, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545, label %.lr.ph.preheader.i540

.lr.ph.preheader.i540:                            ; preds = %.preheader.i538
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.idx23.i534
  br label %.lr.ph.i541

.lr.ph.i541:                                      ; preds = %bb.ah, %.lr.ph.preheader.i540
  %.01826.i542 = phi ptr [ %i.gu, %bb.ah ], [ %i.gq, %.lr.ph.preheader.i540 ] ; 2 uses
  %.sroa.0.025.i543 = phi ptr [ %i.gv, %bb.ah ], [ %i.gf, %.lr.ph.preheader.i540 ] ; 2 uses
  %i.gr = load i32, ptr %.sroa.0.025.i543, align 4, !tbaa !259
  %i.gs = load i32, ptr %.01826.i542, align 4, !tbaa !646
  %i.gt = icmp eq i32 %i.gs, %i.gr
  br i1 %i.gt, label %bb.ah, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit514.thread

bb.ah:                                            ; preds = %.lr.ph.i541
  %i.gu = getelementptr inbounds nuw i8, ptr %.01826.i542, i64 4 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i543, i64 4
  %.not21.i544 = icmp eq ptr %i.gu, %i.go
  br i1 %.not21.i544, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545, label %.lr.ph.i541, !llvm.loop !89

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545: ; preds = %bb.ah, %.preheader.i538
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gh
  %.not5.i.i.i.i546 = icmp eq i64 %i.gh, %i.gi
  br i1 %.not5.i.i.i.i546, label %.loopexit807, label %.lr.ph.i.preheader.i.i.i547

.lr.ph.i.preheader.i.i.i547:                      ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %i.gi
  br label %.lr.ph.i.i.i.i548

.lr.ph.i.i.i.i548:                                ; preds = %.lr.ph.i.i.i.i548, %.lr.ph.i.preheader.i.i.i547
  %.06.i.i.i.i549 = phi ptr [ %i.ha, %.lr.ph.i.i.i.i548 ], [ %i.gx, %.lr.ph.i.preheader.i.i.i547 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i549, align 4, !tbaa !646
  %i.gy = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gz = add i32 %i.gy, -1
  store i32 %i.gz, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ha = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i549, i64 4 ; 2 uses
  %.not.i.i.i.i550 = icmp eq ptr %i.ha, %i.gw
  br i1 %.not.i.i.i.i550, label %.loopexit807, label %.lr.ph.i.i.i.i548, !llvm.loop !90

.loopexit807:                                     ; preds = %.lr.ph.i.i.i.i548, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit545
  store i64 %i.gi, ptr %i.bw, align 8, !tbaa !642
  %.not.i.i558 = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i.i558, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559:     ; preds = %.loopexit807
  store ptr %i.gf, ptr %i.dp, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574: ; preds = %.loopexit807, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i559
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %.pre887 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hb = add i32 %.pre887, 1
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574, %.loopexit805
  %i.hc = phi i64 [ %i.gi, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.hj, %.loopexit805 ]
  %i.hd = phi ptr [ %i.gn, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.hs, %.loopexit805 ]
  %i.he = phi i32 [ %i.hb, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.id, %.loopexit805 ]
  %storemerge811 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intESaIS4_EvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit574 ], [ %i.ig, %.loopexit805 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %storemerge811, ptr %3, align 4, !tbaa !646
  store i32 %i.he, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.hd, i64 %i.hc
  %i.hg = invoke noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bu, ptr noundef %i.hf, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6insertEPKS3_OS3_.exit470 unwind label %bb.am ; 0 uses

_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6insertEPKS3_OS3_.exit470: ; preds = %bb.ai
  %i.hh = load ptr, ptr %i.dp, align 8, !tbaa !270
  %i.hi = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.aj unwind label %bb.an     ; 0 uses

bb.aj:                                            ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intESaIS3_EvE6insertEPKS3_OS3_.exit470
  %i.hj = load i64, ptr %i.bw, align 8, !tbaa !651 ; 3 uses
  %i.hk = load i64, ptr %i.by, align 8, !tbaa !652 ; 3 uses
  %i.hl = sub i64 %i.hj, %i.hk                    ; 2 uses
  %i.hm = load ptr, ptr %i.dp, align 8, !tbaa !600
  %i.hn = load ptr, ptr %i.bv, align 8, !tbaa !349 ; 4 uses
  %i.ho = ptrtoint ptr %i.hm to i64
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = sub i64 %i.ho, %i.hp
  %i.hr = ashr exact i64 %i.hq, 2
  %.not.i576 = icmp eq i64 %i.hl, %i.hr
  br i1 %.not.i576, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %bb.aj
  %i.hs = load ptr, ptr %i.bu, align 8, !tbaa !653 ; 5 uses
  %.idx23.i578 = shl nuw nsw i64 %i.hk, 2         ; 4 uses
  %.idx.i579 = shl nuw nsw i64 %i.hj, 2           ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.idx.i579 ; 2 uses
  %gepdiff.i580 = sub nsw i64 %.idx.i579, %.idx23.i578
  %i.hu = ashr exact i64 %gepdiff.i580, 2
  %.not19.i581 = icmp eq i64 %i.hu, %i.hl
  br i1 %.not19.i581, label %.preheader.i582, label %.loopexit

.preheader.i582:                                  ; preds = %bb.ak
end_hunk_2
begin_hunk_3_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
bb.e:                                             ; preds = %bb.d, %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30, !noalias !6236
  br label %.body

bb.f:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i
  %.idx23.i = shl nuw nsw i64 %i.ah, 2            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ai, 2              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx23.i
  %i.as = ashr exact i64 %gepdiff.i, 2
  %.not19.i = icmp eq i64 %i.as, %i.aj
  br i1 %.not19.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %bb.f
  %.not2124.i = icmp samesign eq i64 %.idx23.i, %.idx.i
  br i1 %.not2124.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01826.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.025.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.al, %.lr.ph.preheader.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %i.av = load i32, ptr %.01826.i, align 4, !tbaa !612
  %i.aw = icmp eq i32 %i.av, %i.au                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  %.not21.i = icmp ne ptr %i.ax, %i.ar
  %or.cond.not = select i1 %i.aw, i1 %.not21.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !180

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i, %bb.f, %.preheader.i
  %.2.i791 = phi i1 [ false, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i ], [ true, %.preheader.i ], [ false, %bb.f ], [ %i.aw, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %.not5.i.i.i.i.i = icmp samesign eq i64 %i.ah, %i.ai
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i, align 4, !tbaa !612
  %i.bc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i480 = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i480, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !181

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %.not.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i1.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.ag)
          to label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, %bb.h
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !741 ; 4 uses
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !740 ; 2 uses
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !739 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  %.not5.i.i.i.i.i482 = icmp samesign eq i64 %i.bi, %i.bj
  br i1 %.not5.i.i.i.i.i482, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487, label %.lr.ph.i.preheader.i.i.i.i483

.lr.ph.i.preheader.i.i.i.i483:                    ; preds = %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  br label %.lr.ph.i.i.i.i.i484

.lr.ph.i.i.i.i.i484:                              ; preds = %.lr.ph.i.i.i.i.i484, %.lr.ph.i.preheader.i.i.i.i483
  %.06.i.i.i.i.i485 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i484 ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i483 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i485, align 4, !tbaa !612
  %i.bm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i485, i64 4 ; 2 uses
  %.not.i.i.i.i.i486 = icmp eq ptr %i.bo, %i.bk
  br i1 %.not.i.i.i.i.i486, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487, label %.lr.ph.i.i.i.i.i484, !llvm.loop !181

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487: ; preds = %.lr.ph.i.i.i.i.i484, %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test11movable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i
  %.not.i1.i.i.i.i488 = icmp eq ptr %i.bh, null
  br i1 %.not.i1.i.i.i.i488, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.bh)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #31
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i492 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i492, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !350
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #30
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.l, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i791, label %bb.n, label %bb.ja

bb.n:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6237)
  %i.bw = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !6237 ; 108 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i8 0, i64 40, i1 false), !noalias !6237
  store ptr %i.bw, ptr %1, align 8, !tbaa !737, !alias.scope !6237
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6238)
  %i.bx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.o unwind label %bb.z       ; 90 uses

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false), !noalias !6238
  store ptr %i.bx, ptr %2, align 8, !tbaa !603, !alias.scope !6238
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 28 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !739 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 22 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !740 ; 3 uses
  %i.cc = sub i64 %i.bz, %i.cb                    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 100
  %i.ce = sub i64 100, %i.cc                      ; 5 uses
  br i1 %i.cd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !786
  %i.ch = sub i64 %i.cg, %i.cb
  %.not.i.i.i499 = icmp ult i64 %i.ch, 100
  br i1 %.not.i.i.i499, label %bb.s, label %.lr.ph.i.i.i.i.i500

.lr.ph.i.i.i.i.i500:                              ; preds = %bb.p
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !741, !nonnull !269, !noundef !269
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bz ; 5 uses
  %i.ck = add i64 %i.cb, 99
  %i.cl = sub i64 %i.ck, %i.bz
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.i.i.i.i500.new

.lr.ph.i.i.i.i.i500.new:                          ; preds = %.lr.ph.i.i.i.i.i500
  %unroll_iter = and i64 %i.ce, -4
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i500.new
  %.06.i.i.i.i.i501 = phi i64 [ 0, %.lr.ph.i.i.i.i.i500.new ], [ %i.dc, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i500.new ], [ %niter.next.3, %bb.q ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  store i32 0, ptr %i.cn, align 4, !tbaa !612
  %i.co = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 0, ptr %i.cr, align 4, !tbaa !612
  %i.cs = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 0, ptr %i.cv, align 4, !tbaa !612
  %i.cw = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !612
  %i.da = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dc = add nuw i64 %.06.i.i.i.i.i501, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.q, !llvm.loop !192

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i500
  %.06.i.i.i.i.i501.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i500 ], [ %i.dc, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1044 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1044)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %.06.i.i.i.i.i501.epil = phi i64 [ %.06.i.i.i.i.i501.epil.init, %.epil.preheader ], [ %i.dg, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501.epil
  store i32 0, ptr %i.dd, align 4, !tbaa !612
  %i.de = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dg = add nuw i64 %.06.i.i.i.i.i501.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.r, !llvm.loop !6230

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.r, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.dh = add i64 %i.ce, %i.bz
  store i64 %i.dh, ptr %i.by, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 noundef 100, i64 noundef %i.ce)
          to label %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge: ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.pre883 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre884 = load ptr, ptr %i.bx, align 8, !tbaa !349
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

bb.t:                                             ; preds = %bb.o
  %i.di = add i64 %i.ce, %i.bz                    ; 2 uses
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !741 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.bz
  %.not5.i.i.i.i494 = icmp eq i64 %i.cc, 100
  br i1 %.not5.i.i.i.i494, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i495

.lr.ph.i.preheader.i.i.i495:                      ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.di
  br label %.lr.ph.i.i.i.i496

.lr.ph.i.i.i.i496:                                ; preds = %.lr.ph.i.i.i.i496, %.lr.ph.i.preheader.i.i.i495
  %.06.i.i.i.i497 = phi ptr [ %i.do, %.lr.ph.i.i.i.i496 ], [ %i.dl, %.lr.ph.i.preheader.i.i.i495 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i497, align 4, !tbaa !612
  %i.dm = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i497, i64 4 ; 2 uses
  %.not.i.i.i.i498 = icmp eq ptr %i.do, %i.dk
  br i1 %.not.i.i.i.i498, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i496, !llvm.loop !181

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i496, %bb.t
  store i64 %i.di, ptr %i.by, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i
  %i.dp = phi ptr [ %.pre884, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 5 uses
  %i.dq = phi ptr [ %.pre883, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 42 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dp to i64               ; 4 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 2                 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 100
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %i.dx = sub nuw nsw i64 100, %i.dv
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.dx)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.u
  %.pre885 = load ptr, ptr %i.dr, align 8, !tbaa !600
  %.pre886 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre894 = ptrtoint ptr %.pre886 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %.not798 = icmp eq i64 %i.du, 400
  br i1 %.not798, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dq, %i.dy
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dy, ptr %i.dr, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre894, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dt, %bb.w ], [ %i.dt, %bb.v ] ; 3 uses
  %i.dz = phi ptr [ %.pre886, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dp, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dp, %bb.w ], [ %i.dp, %bb.v ] ; 3 uses
  %i.ea = phi ptr [ %.pre885, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ] ; 3 uses
  %i.eb = load i64, ptr %i.by, align 8, !tbaa !739 ; 7 uses
  %i.ec = load i64, ptr %i.ca, align 8, !tbaa !740 ; 4 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 5 uses
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ee, %.pre-phi                ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.not.i504 = icmp eq i64 %i.ed, %i.eg
  br i1 %.not.i504, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.eh = load ptr, ptr %i.bw, align 8, !tbaa !741 ; 5 uses
  %.idx23.i506 = shl nuw nsw i64 %i.ec, 2         ; 3 uses
  %.idx.i507 = shl nuw nsw i64 %i.eb, 2           ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i507
  %gepdiff.i508 = sub nsw i64 %.idx.i507, %.idx23.i506
  %i.ej = ashr exact i64 %gepdiff.i508, 2
  %.not19.i509 = icmp eq i64 %i.ej, %i.ed
  br i1 %.not19.i509, label %.preheader.i510, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

.preheader.i510:                                  ; preds = %bb.x
  %.not2124.i511 = icmp samesign eq i64 %.idx23.i506, %.idx.i507
  br i1 %.not2124.i511, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517, label %.lr.ph.preheader.i512

.lr.ph.preheader.i512:                            ; preds = %.preheader.i510
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx23.i506
  br label %.lr.ph.i513

.lr.ph.i513:                                      ; preds = %bb.y, %.lr.ph.preheader.i512
  %.01826.i514 = phi ptr [ %i.eo, %bb.y ], [ %i.ek, %.lr.ph.preheader.i512 ] ; 2 uses
  %.sroa.0.025.i515 = phi ptr [ %i.ep, %bb.y ], [ %i.dz, %.lr.ph.preheader.i512 ] ; 2 uses
  %i.el = load i32, ptr %.sroa.0.025.i515, align 4, !tbaa !259
  %i.em = load i32, ptr %.01826.i514, align 4, !tbaa !612
  %i.en = icmp eq i32 %i.em, %i.el
  br i1 %i.en, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.y:                                             ; preds = %.lr.ph.i513
  %i.eo = getelementptr inbounds nuw i8, ptr %.01826.i514, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i515, i64 4
  %.not21.i516 = icmp eq ptr %i.eo, %i.ei
  br i1 %.not21.i516, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517, label %.lr.ph.i513, !llvm.loop !180

.body:                                            ; preds = %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.az, %bb.g ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.z:                                             ; preds = %bb.n
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.iz

bb.aa:                                            ; preds = %bb.ag, %bb.ae, %bb.u, %bb.s
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517: ; preds = %bb.y, %.preheader.i510
  %i.es = icmp ult i64 %i.ed, 200
  %i.et = sub i64 200, %i.ed                      ; 5 uses
  br i1 %i.es, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !786
  %i.ew = sub i64 %i.ev, %i.ec
  %.not.i.i.i524 = icmp ult i64 %i.ew, 200
  br i1 %.not.i.i.i524, label %bb.ae, label %.lr.ph.i.i.i.i.i525

.lr.ph.i.i.i.i.i525:                              ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eb ; 5 uses
  %i.ey = add i64 %i.ec, 199
  %i.ez = sub i64 %i.ey, %i.eb
  %xtraiter1046 = and i64 %i.et, 3                ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %.epil.preheader1045, label %.lr.ph.i.i.i.i.i525.new

.lr.ph.i.i.i.i.i525.new:                          ; preds = %.lr.ph.i.i.i.i.i525
  %unroll_iter1050 = and i64 %i.et, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i525.new
  %.06.i.i.i.i.i526 = phi i64 [ 0, %.lr.ph.i.i.i.i.i525.new ], [ %i.fq, %bb.ac ] ; 5 uses
  %niter1051 = phi i64 [ 0, %.lr.ph.i.i.i.i.i525.new ], [ %niter1051.next.3, %bb.ac ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  store i32 0, ptr %i.fb, align 4, !tbaa !612
  %i.fc = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 0, ptr %i.ff, align 4, !tbaa !612
  %i.fg = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fj, align 4, !tbaa !612
  %i.fk = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !612
  %i.fo = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fq = add nuw i64 %.06.i.i.i.i.i526, 4        ; 2 uses
  %niter1051.next.3 = add i64 %niter1051, 4       ; 2 uses
  %niter1051.ncmp.3 = icmp eq i64 %niter1051.next.3, %unroll_iter1050
  br i1 %niter1051.ncmp.3, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa, label %bb.ac, !llvm.loop !192

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1046, 0
  br i1 %lcmp.mod1048.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528, label %.epil.preheader1045

.epil.preheader1045:                              ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa, %.lr.ph.i.i.i.i.i525
  %.06.i.i.i.i.i526.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i525 ], [ %i.fq, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa ]
  %lcmp.mod1049 = icmp ne i64 %xtraiter1046, 0
  tail call void @llvm.assume(i1 %lcmp.mod1049)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader1045
  %.06.i.i.i.i.i526.epil = phi i64 [ %.06.i.i.i.i.i526.epil.init, %.epil.preheader1045 ], [ %i.fu, %bb.ad ] ; 2 uses
  %epil.iter1047 = phi i64 [ 0, %.epil.preheader1045 ], [ %epil.iter1047.next, %bb.ad ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526.epil
  store i32 0, ptr %i.fr, align 4, !tbaa !612
  %i.fs = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.fu = add nuw i64 %.06.i.i.i.i.i526.epil, 1
  %epil.iter1047.next = add i64 %epil.iter1047, 1 ; 2 uses
  %epil.iter1047.cmp.not = icmp eq i64 %epil.iter1047.next, %xtraiter1046
  br i1 %epil.iter1047.cmp.not, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528, label %bb.ad, !llvm.loop !6231

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528: ; preds = %bb.ad, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa
  %i.fv = add i64 %i.et, %i.eb
  store i64 %i.fv, ptr %i.by, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 noundef 200, i64 noundef %i.et)
          to label %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge unwind label %bb.aa

._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge: ; preds = %bb.ae
  %.pre887 = load ptr, ptr %i.dr, align 8, !tbaa !600 ; 2 uses
  %.pre888 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre895 = ptrtoint ptr %.pre887 to i64
  %.pre897 = ptrtoint ptr %.pre888 to i64         ; 2 uses
  %.pre899 = sub i64 %.pre895, %.pre897           ; 2 uses
  %.pre901 = ashr exact i64 %.pre899, 2
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

bb.af:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517
  %i.fw = add i64 %i.et, %i.eb                    ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eb
  %.not5.i.i.i.i518 = icmp eq i64 %i.ed, 200
  br i1 %.not5.i.i.i.i518, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, label %.lr.ph.i.preheader.i.i.i519

.lr.ph.i.preheader.i.i.i519:                      ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fw
  br label %.lr.ph.i.i.i.i520

.lr.ph.i.i.i.i520:                                ; preds = %.lr.ph.i.i.i.i520, %.lr.ph.i.preheader.i.i.i519
  %.06.i.i.i.i521 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i520 ], [ %i.fy, %.lr.ph.i.preheader.i.i.i519 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i521, align 4, !tbaa !612
  %i.fz = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.gb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i521, i64 4 ; 2 uses
  %.not.i.i.i.i522 = icmp eq ptr %i.gb, %i.fx
  br i1 %.not.i.i.i.i522, label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, label %.lr.ph.i.i.i.i520, !llvm.loop !181

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523: ; preds = %.lr.ph.i.i.i.i520, %bb.af
  store i64 %i.fw, ptr %i.by, align 8, !tbaa !732
  br label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530: ; preds = %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528
  %.pre-phi902 = phi i64 [ %.pre901, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.eg, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.eg, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 2 uses
  %.pre-phi900 = phi i64 [ %.pre899, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.ef, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.ef, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ]
  %.pre-phi898 = phi i64 [ %.pre897, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 3 uses
  %i.gc = phi ptr [ %.pre888, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.dz, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.dz, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 4 uses
  %i.gd = phi ptr [ %.pre887, %._ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.ea, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.ea, %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 3 uses
  %i.ge = icmp ult i64 %.pre-phi902, 200
  br i1 %i.ge, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530
  %i.gf = sub nuw nsw i64 200, %.pre-phi902
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.gf)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge: ; preds = %bb.ag
  %.pre889 = load ptr, ptr %i.dr, align 8, !tbaa !600
  %.pre890 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre903 = ptrtoint ptr %.pre890 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534

bb.ah:                                            ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530
  %.not799 = icmp eq i64 %.pre-phi900, 800
  br i1 %.not799, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 800 ; 3 uses
  %.not.i.i531 = icmp eq ptr %i.gd, %i.gg
  br i1 %.not.i.i531, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532:     ; preds = %bb.ai
  store ptr %i.gg, ptr %i.dr, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534

_ZNSt6vectorIiSaIiEE6resizeEm.exit534:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532, %bb.ai, %bb.ah
  %.pre-phi904 = phi i64 [ %.pre903, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %.pre-phi898, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %.pre-phi898, %bb.ai ], [ %.pre-phi898, %bb.ah ]
  %i.gh = phi ptr [ %.pre890, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %i.gc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ] ; 3 uses
  %i.gi = phi ptr [ %.pre889, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %i.gg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %i.gd, %bb.ai ], [ %i.gd, %bb.ah ] ; 2 uses
  %i.gj = load i64, ptr %i.by, align 8, !tbaa !739 ; 4 uses
  %i.gk = load i64, ptr %i.ca, align 8, !tbaa !740 ; 6 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 2 uses
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gm, %.pre-phi904
  %i.go = ashr exact i64 %i.gn, 2
  %.not.i535 = icmp eq i64 %i.gl, %i.go
  br i1 %.not.i535, label %bb.aj, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit534
  %i.gp = load ptr, ptr %i.bw, align 8, !tbaa !741 ; 5 uses
  %.idx23.i537 = shl nuw nsw i64 %i.gk, 2         ; 3 uses
  %.idx.i538 = shl nuw nsw i64 %i.gj, 2           ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i538
  %gepdiff.i539 = sub nsw i64 %.idx.i538, %.idx23.i537
  %i.gr = ashr exact i64 %gepdiff.i539, 2
  %.not19.i540 = icmp eq i64 %i.gr, %i.gl
  br i1 %.not19.i540, label %.preheader.i541, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

.preheader.i541:                                  ; preds = %bb.aj
  %.not2124.i542 = icmp samesign eq i64 %.idx23.i537, %.idx.i538
  br i1 %.not2124.i542, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548, label %.lr.ph.preheader.i543

.lr.ph.preheader.i543:                            ; preds = %.preheader.i541
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx23.i537
  br label %.lr.ph.i544

.lr.ph.i544:                                      ; preds = %bb.ak, %.lr.ph.preheader.i543
  %.01826.i545 = phi ptr [ %i.gw, %bb.ak ], [ %i.gs, %.lr.ph.preheader.i543 ] ; 2 uses
  %.sroa.0.025.i546 = phi ptr [ %i.gx, %bb.ak ], [ %i.gh, %.lr.ph.preheader.i543 ] ; 2 uses
  %i.gt = load i32, ptr %.sroa.0.025.i546, align 4, !tbaa !259
  %i.gu = load i32, ptr %.01826.i545, align 4, !tbaa !612
  %i.gv = icmp eq i32 %i.gu, %i.gt
  br i1 %i.gv, label %bb.ak, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.ak:                                            ; preds = %.lr.ph.i544
  %i.gw = getelementptr inbounds nuw i8, ptr %.01826.i545, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i546, i64 4
  %.not21.i547 = icmp eq ptr %i.gw, %i.gq
  br i1 %.not21.i547, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548, label %.lr.ph.i544, !llvm.loop !180

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548: ; preds = %bb.ak, %.preheader.i541
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gj
  %.not5.i.i.i.i549 = icmp eq i64 %i.gj, %i.gk
  br i1 %.not5.i.i.i.i549, label %.loopexit810, label %.lr.ph.i.preheader.i.i.i550

.lr.ph.i.preheader.i.i.i550:                      ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gk
  br label %.lr.ph.i.i.i.i551

.lr.ph.i.i.i.i551:                                ; preds = %.lr.ph.i.i.i.i551, %.lr.ph.i.preheader.i.i.i550
  %.06.i.i.i.i552 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i551 ], [ %i.gz, %.lr.ph.i.preheader.i.i.i550 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i552, align 4, !tbaa !612
  %i.ha = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.hb = add i32 %i.ha, -1
  store i32 %i.hb, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.hc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i552, i64 4 ; 2 uses
  %.not.i.i.i.i553 = icmp eq ptr %i.hc, %i.gy
  br i1 %.not.i.i.i.i553, label %.loopexit810, label %.lr.ph.i.i.i.i551, !llvm.loop !181

.loopexit810:                                     ; preds = %.lr.ph.i.i.i.i551, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548
  store i64 %i.gk, ptr %i.by, align 8, !tbaa !732
  %.not.i.i561 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i561, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562:     ; preds = %.loopexit810
  store ptr %i.gh, ptr %i.dr, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577: ; preds = %.loopexit810, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %.pre891 = load i32, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.hd = add i32 %.pre891, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577, %.loopexit808
  %i.he = phi i64 [ %i.gk, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.hl, %.loopexit808 ]
  %i.hf = phi ptr [ %i.gp, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.hu, %.loopexit808 ]
  %i.hg = phi i32 [ %i.hd, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.if, %.loopexit808 ]
  %storemerge814 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_11movable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.ii, %.loopexit808 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %storemerge814, ptr %3, align 4, !tbaa !612
  store i32 %i.hg, ptr @_ZN5boost9container4test11movable_int5countE, align 4, !tbaa !259
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.he
  %i.hi = invoke noundef ptr @_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470 unwind label %bb.ap ; 0 uses

_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470: ; preds = %bb.al
  %i.hj = load ptr, ptr %i.dr, align 8, !tbaa !270
  %i.hk = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr %i.hj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.am unwind label %bb.aq     ; 0 uses

bb.am:                                            ; preds = %_ZN5boost9container8devectorINS0_4test11movable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !739 ; 3 uses
  %i.hm = load i64, ptr %i.ca, align 8, !tbaa !740 ; 3 uses
  %i.hn = sub i64 %i.hl, %i.hm                    ; 2 uses
  %i.ho = load ptr, ptr %i.dr, align 8, !tbaa !600
  %i.hp = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 4 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 2
  %.not.i579 = icmp eq i64 %i.hn, %i.ht
  br i1 %.not.i579, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.hu = load ptr, ptr %i.bw, align 8, !tbaa !741 ; 5 uses
  %.idx23.i581 = shl nuw nsw i64 %i.hm, 2         ; 4 uses
  %.idx.i582 = shl nuw nsw i64 %i.hl, 2           ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx.i582 ; 2 uses
  %gepdiff.i583 = sub nsw i64 %.idx.i582, %.idx23.i581
  %i.hw = ashr exact i64 %gepdiff.i583, 2
  %.not19.i584 = icmp eq i64 %i.hw, %i.hn
  br i1 %.not19.i584, label %.preheader.i585, label %.loopexit

.preheader.i585:                                  ; preds = %bb.an
end_hunk_3
begin_hunk_4_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
bb.e:                                             ; preds = %bb.d, %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30, !noalias !6859
  br label %.body

bb.f:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i
  %.idx23.i = shl nuw nsw i64 %i.ah, 2            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ai, 2              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx23.i
  %i.as = ashr exact i64 %gepdiff.i, 2
  %.not19.i = icmp eq i64 %i.as, %i.aj
  br i1 %.not19.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %bb.f
  %.not2124.i = icmp samesign eq i64 %.idx23.i, %.idx.i
  br i1 %.not2124.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01826.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.025.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.al, %.lr.ph.preheader.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %i.av = load i32, ptr %.01826.i, align 4, !tbaa !629
  %i.aw = icmp eq i32 %i.av, %i.au                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  %.not21.i = icmp ne ptr %i.ax, %i.ar
  %or.cond.not = select i1 %i.aw, i1 %.not21.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !182

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i, %bb.f, %.preheader.i
  %.2.i791 = phi i1 [ false, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i ], [ true, %.preheader.i ], [ false, %bb.f ], [ %i.aw, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %.not5.i.i.i.i.i = icmp samesign eq i64 %i.ah, %i.ai
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i, align 4, !tbaa !629
  %i.bc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i480 = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i480, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !183

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %.not.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i1.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.ag)
          to label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, %bb.h
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !754 ; 4 uses
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !753 ; 2 uses
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !752 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  %.not5.i.i.i.i.i482 = icmp samesign eq i64 %i.bi, %i.bj
  br i1 %.not5.i.i.i.i.i482, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487, label %.lr.ph.i.preheader.i.i.i.i483

.lr.ph.i.preheader.i.i.i.i483:                    ; preds = %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  br label %.lr.ph.i.i.i.i.i484

.lr.ph.i.i.i.i.i484:                              ; preds = %.lr.ph.i.i.i.i.i484, %.lr.ph.i.preheader.i.i.i.i483
  %.06.i.i.i.i.i485 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i484 ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i483 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i485, align 4, !tbaa !629
  %i.bm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i485, i64 4 ; 2 uses
  %.not.i.i.i.i.i486 = icmp eq ptr %i.bo, %i.bk
  br i1 %.not.i.i.i.i.i486, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487, label %.lr.ph.i.i.i.i.i484, !llvm.loop !183

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487: ; preds = %.lr.ph.i.i.i.i.i484, %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test24movable_and_copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i
  %.not.i1.i.i.i.i488 = icmp eq ptr %i.bh, null
  br i1 %.not.i1.i.i.i.i488, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.bh)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #31
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i492 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i492, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !350
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #30
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.l, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i791, label %bb.n, label %bb.jd

bb.n:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6860)
  %i.bw = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !6860 ; 109 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i8 0, i64 40, i1 false), !noalias !6860
  store ptr %i.bw, ptr %1, align 8, !tbaa !750, !alias.scope !6860
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6861)
  %i.bx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.o unwind label %bb.z       ; 91 uses

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false), !noalias !6861
  store ptr %i.bx, ptr %2, align 8, !tbaa !603, !alias.scope !6861
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 28 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !752 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 22 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !753 ; 3 uses
  %i.cc = sub i64 %i.bz, %i.cb                    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 100
  %i.ce = sub i64 100, %i.cc                      ; 5 uses
  br i1 %i.cd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !790
  %i.ch = sub i64 %i.cg, %i.cb
  %.not.i.i.i499 = icmp ult i64 %i.ch, 100
  br i1 %.not.i.i.i499, label %bb.s, label %.lr.ph.i.i.i.i.i500

.lr.ph.i.i.i.i.i500:                              ; preds = %bb.p
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !754, !nonnull !269, !noundef !269
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bz ; 5 uses
  %i.ck = add i64 %i.cb, 99
  %i.cl = sub i64 %i.ck, %i.bz
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.i.i.i.i500.new

.lr.ph.i.i.i.i.i500.new:                          ; preds = %.lr.ph.i.i.i.i.i500
  %unroll_iter = and i64 %i.ce, -4
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i500.new
  %.06.i.i.i.i.i501 = phi i64 [ 0, %.lr.ph.i.i.i.i.i500.new ], [ %i.dc, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i500.new ], [ %niter.next.3, %bb.q ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  store i32 0, ptr %i.cn, align 4, !tbaa !629
  %i.co = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 0, ptr %i.cr, align 4, !tbaa !629
  %i.cs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 0, ptr %i.cv, align 4, !tbaa !629
  %i.cw = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !629
  %i.da = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dc = add nuw i64 %.06.i.i.i.i.i501, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.q, !llvm.loop !204

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i500
  %.06.i.i.i.i.i501.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i500 ], [ %i.dc, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1044 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1044)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %.06.i.i.i.i.i501.epil = phi i64 [ %.06.i.i.i.i.i501.epil.init, %.epil.preheader ], [ %i.dg, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501.epil
  store i32 0, ptr %i.dd, align 4, !tbaa !629
  %i.de = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dg = add nuw i64 %.06.i.i.i.i.i501.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.r, !llvm.loop !6853

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.r, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.dh = add i64 %i.ce, %i.bz
  store i64 %i.dh, ptr %i.by, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 noundef 100, i64 noundef %i.ce)
          to label %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge: ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.pre883 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre884 = load ptr, ptr %i.bx, align 8, !tbaa !349
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

bb.t:                                             ; preds = %bb.o
  %i.di = add i64 %i.ce, %i.bz                    ; 2 uses
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !754 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.bz
  %.not5.i.i.i.i494 = icmp eq i64 %i.cc, 100
  br i1 %.not5.i.i.i.i494, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i495

.lr.ph.i.preheader.i.i.i495:                      ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.di
  br label %.lr.ph.i.i.i.i496

.lr.ph.i.i.i.i496:                                ; preds = %.lr.ph.i.i.i.i496, %.lr.ph.i.preheader.i.i.i495
  %.06.i.i.i.i497 = phi ptr [ %i.do, %.lr.ph.i.i.i.i496 ], [ %i.dl, %.lr.ph.i.preheader.i.i.i495 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i497, align 4, !tbaa !629
  %i.dm = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i497, i64 4 ; 2 uses
  %.not.i.i.i.i498 = icmp eq ptr %i.do, %i.dk
  br i1 %.not.i.i.i.i498, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i496, !llvm.loop !183

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i496, %bb.t
  store i64 %i.di, ptr %i.by, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i
  %i.dp = phi ptr [ %.pre884, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 5 uses
  %i.dq = phi ptr [ %.pre883, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 42 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dp to i64               ; 4 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 2                 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 100
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %i.dx = sub nuw nsw i64 100, %i.dv
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.dx)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.u
  %.pre885 = load ptr, ptr %i.dr, align 8, !tbaa !600
  %.pre886 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre894 = ptrtoint ptr %.pre886 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %.not798 = icmp eq i64 %i.du, 400
  br i1 %.not798, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dq, %i.dy
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dy, ptr %i.dr, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre894, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dt, %bb.w ], [ %i.dt, %bb.v ] ; 3 uses
  %i.dz = phi ptr [ %.pre886, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dp, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dp, %bb.w ], [ %i.dp, %bb.v ] ; 3 uses
  %i.ea = phi ptr [ %.pre885, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ] ; 3 uses
  %i.eb = load i64, ptr %i.by, align 8, !tbaa !752 ; 7 uses
  %i.ec = load i64, ptr %i.ca, align 8, !tbaa !753 ; 4 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 5 uses
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ee, %.pre-phi                ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.not.i504 = icmp eq i64 %i.ed, %i.eg
  br i1 %.not.i504, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.eh = load ptr, ptr %i.bw, align 8, !tbaa !754 ; 5 uses
  %.idx23.i506 = shl nuw nsw i64 %i.ec, 2         ; 3 uses
  %.idx.i507 = shl nuw nsw i64 %i.eb, 2           ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i507
  %gepdiff.i508 = sub nsw i64 %.idx.i507, %.idx23.i506
  %i.ej = ashr exact i64 %gepdiff.i508, 2
  %.not19.i509 = icmp eq i64 %i.ej, %i.ed
  br i1 %.not19.i509, label %.preheader.i510, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

.preheader.i510:                                  ; preds = %bb.x
  %.not2124.i511 = icmp samesign eq i64 %.idx23.i506, %.idx.i507
  br i1 %.not2124.i511, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517, label %.lr.ph.preheader.i512

.lr.ph.preheader.i512:                            ; preds = %.preheader.i510
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx23.i506
  br label %.lr.ph.i513

.lr.ph.i513:                                      ; preds = %bb.y, %.lr.ph.preheader.i512
  %.01826.i514 = phi ptr [ %i.eo, %bb.y ], [ %i.ek, %.lr.ph.preheader.i512 ] ; 2 uses
  %.sroa.0.025.i515 = phi ptr [ %i.ep, %bb.y ], [ %i.dz, %.lr.ph.preheader.i512 ] ; 2 uses
  %i.el = load i32, ptr %.sroa.0.025.i515, align 4, !tbaa !259
  %i.em = load i32, ptr %.01826.i514, align 4, !tbaa !629
  %i.en = icmp eq i32 %i.em, %i.el
  br i1 %i.en, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.y:                                             ; preds = %.lr.ph.i513
  %i.eo = getelementptr inbounds nuw i8, ptr %.01826.i514, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i515, i64 4
  %.not21.i516 = icmp eq ptr %i.eo, %i.ei
  br i1 %.not21.i516, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517, label %.lr.ph.i513, !llvm.loop !182

.body:                                            ; preds = %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.az, %bb.g ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.z:                                             ; preds = %bb.n
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.aa:                                            ; preds = %bb.ag, %bb.ae, %bb.u, %bb.s
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517: ; preds = %bb.y, %.preheader.i510
  %i.es = icmp ult i64 %i.ed, 200
  %i.et = sub i64 200, %i.ed                      ; 5 uses
  br i1 %i.es, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !790
  %i.ew = sub i64 %i.ev, %i.ec
  %.not.i.i.i524 = icmp ult i64 %i.ew, 200
  br i1 %.not.i.i.i524, label %bb.ae, label %.lr.ph.i.i.i.i.i525

.lr.ph.i.i.i.i.i525:                              ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eb ; 5 uses
  %i.ey = add i64 %i.ec, 199
  %i.ez = sub i64 %i.ey, %i.eb
  %xtraiter1046 = and i64 %i.et, 3                ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %.epil.preheader1045, label %.lr.ph.i.i.i.i.i525.new

.lr.ph.i.i.i.i.i525.new:                          ; preds = %.lr.ph.i.i.i.i.i525
  %unroll_iter1050 = and i64 %i.et, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i525.new
  %.06.i.i.i.i.i526 = phi i64 [ 0, %.lr.ph.i.i.i.i.i525.new ], [ %i.fq, %bb.ac ] ; 5 uses
  %niter1051 = phi i64 [ 0, %.lr.ph.i.i.i.i.i525.new ], [ %niter1051.next.3, %bb.ac ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  store i32 0, ptr %i.fb, align 4, !tbaa !629
  %i.fc = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 0, ptr %i.ff, align 4, !tbaa !629
  %i.fg = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fj, align 4, !tbaa !629
  %i.fk = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !629
  %i.fo = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fq = add nuw i64 %.06.i.i.i.i.i526, 4        ; 2 uses
  %niter1051.next.3 = add i64 %niter1051, 4       ; 2 uses
  %niter1051.ncmp.3 = icmp eq i64 %niter1051.next.3, %unroll_iter1050
  br i1 %niter1051.ncmp.3, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa, label %bb.ac, !llvm.loop !204

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1046, 0
  br i1 %lcmp.mod1048.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528, label %.epil.preheader1045

.epil.preheader1045:                              ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa, %.lr.ph.i.i.i.i.i525
  %.06.i.i.i.i.i526.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i525 ], [ %i.fq, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa ]
  %lcmp.mod1049 = icmp ne i64 %xtraiter1046, 0
  tail call void @llvm.assume(i1 %lcmp.mod1049)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader1045
  %.06.i.i.i.i.i526.epil = phi i64 [ %.06.i.i.i.i.i526.epil.init, %.epil.preheader1045 ], [ %i.fu, %bb.ad ] ; 2 uses
  %epil.iter1047 = phi i64 [ 0, %.epil.preheader1045 ], [ %epil.iter1047.next, %bb.ad ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526.epil
  store i32 0, ptr %i.fr, align 4, !tbaa !629
  %i.fs = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.fu = add nuw i64 %.06.i.i.i.i.i526.epil, 1
  %epil.iter1047.next = add i64 %epil.iter1047, 1 ; 2 uses
  %epil.iter1047.cmp.not = icmp eq i64 %epil.iter1047.next, %xtraiter1046
  br i1 %epil.iter1047.cmp.not, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528, label %bb.ad, !llvm.loop !6854

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528: ; preds = %bb.ad, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa
  %i.fv = add i64 %i.et, %i.eb
  store i64 %i.fv, ptr %i.by, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 noundef 200, i64 noundef %i.et)
          to label %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge unwind label %bb.aa

._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge: ; preds = %bb.ae
  %.pre887 = load ptr, ptr %i.dr, align 8, !tbaa !600 ; 2 uses
  %.pre888 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre895 = ptrtoint ptr %.pre887 to i64
  %.pre897 = ptrtoint ptr %.pre888 to i64         ; 2 uses
  %.pre899 = sub i64 %.pre895, %.pre897           ; 2 uses
  %.pre901 = ashr exact i64 %.pre899, 2
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

bb.af:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517
  %i.fw = add i64 %i.et, %i.eb                    ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eb
  %.not5.i.i.i.i518 = icmp eq i64 %i.ed, 200
  br i1 %.not5.i.i.i.i518, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, label %.lr.ph.i.preheader.i.i.i519

.lr.ph.i.preheader.i.i.i519:                      ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fw
  br label %.lr.ph.i.i.i.i520

.lr.ph.i.i.i.i520:                                ; preds = %.lr.ph.i.i.i.i520, %.lr.ph.i.preheader.i.i.i519
  %.06.i.i.i.i521 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i520 ], [ %i.fy, %.lr.ph.i.preheader.i.i.i519 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i521, align 4, !tbaa !629
  %i.fz = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.gb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i521, i64 4 ; 2 uses
  %.not.i.i.i.i522 = icmp eq ptr %i.gb, %i.fx
  br i1 %.not.i.i.i.i522, label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, label %.lr.ph.i.i.i.i520, !llvm.loop !183

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523: ; preds = %.lr.ph.i.i.i.i520, %bb.af
  store i64 %i.fw, ptr %i.by, align 8, !tbaa !745
  br label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530: ; preds = %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528
  %.pre-phi902 = phi i64 [ %.pre901, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.eg, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.eg, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 2 uses
  %.pre-phi900 = phi i64 [ %.pre899, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.ef, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.ef, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ]
  %.pre-phi898 = phi i64 [ %.pre897, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 3 uses
  %i.gc = phi ptr [ %.pre888, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.dz, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.dz, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 4 uses
  %i.gd = phi ptr [ %.pre887, %._ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.ea, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.ea, %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 3 uses
  %i.ge = icmp ult i64 %.pre-phi902, 200
  br i1 %i.ge, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530
  %i.gf = sub nuw nsw i64 200, %.pre-phi902
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.gf)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge: ; preds = %bb.ag
  %.pre889 = load ptr, ptr %i.dr, align 8, !tbaa !600
  %.pre890 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre903 = ptrtoint ptr %.pre890 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534

bb.ah:                                            ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530
  %.not799 = icmp eq i64 %.pre-phi900, 800
  br i1 %.not799, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 800 ; 3 uses
  %.not.i.i531 = icmp eq ptr %i.gd, %i.gg
  br i1 %.not.i.i531, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532:     ; preds = %bb.ai
  store ptr %i.gg, ptr %i.dr, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534

_ZNSt6vectorIiSaIiEE6resizeEm.exit534:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532, %bb.ai, %bb.ah
  %.pre-phi904 = phi i64 [ %.pre903, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %.pre-phi898, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %.pre-phi898, %bb.ai ], [ %.pre-phi898, %bb.ah ]
  %i.gh = phi ptr [ %.pre890, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %i.gc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ] ; 3 uses
  %i.gi = phi ptr [ %.pre889, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %i.gg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %i.gd, %bb.ai ], [ %i.gd, %bb.ah ] ; 2 uses
  %i.gj = load i64, ptr %i.by, align 8, !tbaa !752 ; 4 uses
  %i.gk = load i64, ptr %i.ca, align 8, !tbaa !753 ; 6 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 2 uses
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gm, %.pre-phi904
  %i.go = ashr exact i64 %i.gn, 2
  %.not.i535 = icmp eq i64 %i.gl, %i.go
  br i1 %.not.i535, label %bb.aj, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit534
  %i.gp = load ptr, ptr %i.bw, align 8, !tbaa !754 ; 5 uses
  %.idx23.i537 = shl nuw nsw i64 %i.gk, 2         ; 3 uses
  %.idx.i538 = shl nuw nsw i64 %i.gj, 2           ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i538
  %gepdiff.i539 = sub nsw i64 %.idx.i538, %.idx23.i537
  %i.gr = ashr exact i64 %gepdiff.i539, 2
  %.not19.i540 = icmp eq i64 %i.gr, %i.gl
  br i1 %.not19.i540, label %.preheader.i541, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

.preheader.i541:                                  ; preds = %bb.aj
  %.not2124.i542 = icmp samesign eq i64 %.idx23.i537, %.idx.i538
  br i1 %.not2124.i542, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548, label %.lr.ph.preheader.i543

.lr.ph.preheader.i543:                            ; preds = %.preheader.i541
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx23.i537
  br label %.lr.ph.i544

.lr.ph.i544:                                      ; preds = %bb.ak, %.lr.ph.preheader.i543
  %.01826.i545 = phi ptr [ %i.gw, %bb.ak ], [ %i.gs, %.lr.ph.preheader.i543 ] ; 2 uses
  %.sroa.0.025.i546 = phi ptr [ %i.gx, %bb.ak ], [ %i.gh, %.lr.ph.preheader.i543 ] ; 2 uses
  %i.gt = load i32, ptr %.sroa.0.025.i546, align 4, !tbaa !259
  %i.gu = load i32, ptr %.01826.i545, align 4, !tbaa !629
  %i.gv = icmp eq i32 %i.gu, %i.gt
  br i1 %i.gv, label %bb.ak, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.ak:                                            ; preds = %.lr.ph.i544
  %i.gw = getelementptr inbounds nuw i8, ptr %.01826.i545, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i546, i64 4
  %.not21.i547 = icmp eq ptr %i.gw, %i.gq
  br i1 %.not21.i547, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548, label %.lr.ph.i544, !llvm.loop !182

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548: ; preds = %bb.ak, %.preheader.i541
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gj
  %.not5.i.i.i.i549 = icmp eq i64 %i.gj, %i.gk
  br i1 %.not5.i.i.i.i549, label %.loopexit810, label %.lr.ph.i.preheader.i.i.i550

.lr.ph.i.preheader.i.i.i550:                      ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gk
  br label %.lr.ph.i.i.i.i551

.lr.ph.i.i.i.i551:                                ; preds = %.lr.ph.i.i.i.i551, %.lr.ph.i.preheader.i.i.i550
  %.06.i.i.i.i552 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i551 ], [ %i.gz, %.lr.ph.i.preheader.i.i.i550 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i552, align 4, !tbaa !629
  %i.ha = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.hb = add i32 %i.ha, -1
  store i32 %i.hb, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.hc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i552, i64 4 ; 2 uses
  %.not.i.i.i.i553 = icmp eq ptr %i.hc, %i.gy
  br i1 %.not.i.i.i.i553, label %.loopexit810, label %.lr.ph.i.i.i.i551, !llvm.loop !183

.loopexit810:                                     ; preds = %.lr.ph.i.i.i.i551, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548
  store i64 %i.gk, ptr %i.by, align 8, !tbaa !745
  %.not.i.i561 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i561, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562:     ; preds = %.loopexit810
  store ptr %i.gh, ptr %i.dr, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577: ; preds = %.loopexit810, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %.pre891 = load i32, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.hd = add i32 %.pre891, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577, %.loopexit808
  %i.he = phi i64 [ %i.gk, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.hl, %.loopexit808 ]
  %i.hf = phi ptr [ %i.gp, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.hu, %.loopexit808 ]
  %i.hg = phi i32 [ %i.hd, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.if, %.loopexit808 ]
  %storemerge814 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_24movable_and_copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.ii, %.loopexit808 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %storemerge814, ptr %3, align 4, !tbaa !629
  store i32 %i.hg, ptr @_ZN5boost9container4test24movable_and_copyable_int5countE, align 4, !tbaa !259
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.he
  %i.hi = invoke noundef ptr @_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470 unwind label %bb.ap ; 0 uses

_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470: ; preds = %bb.al
  %i.hj = load ptr, ptr %i.dr, align 8, !tbaa !270
  %i.hk = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr %i.hj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.am unwind label %bb.aq     ; 0 uses

bb.am:                                            ; preds = %_ZN5boost9container8devectorINS0_4test24movable_and_copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !752 ; 3 uses
  %i.hm = load i64, ptr %i.ca, align 8, !tbaa !753 ; 3 uses
  %i.hn = sub i64 %i.hl, %i.hm                    ; 2 uses
  %i.ho = load ptr, ptr %i.dr, align 8, !tbaa !600
  %i.hp = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 4 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 2
  %.not.i579 = icmp eq i64 %i.hn, %i.ht
  br i1 %.not.i579, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.hu = load ptr, ptr %i.bw, align 8, !tbaa !754 ; 5 uses
  %.idx23.i581 = shl nuw nsw i64 %i.hm, 2         ; 4 uses
  %.idx.i582 = shl nuw nsw i64 %i.hl, 2           ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx.i582 ; 2 uses
  %gepdiff.i583 = sub nsw i64 %.idx.i582, %.idx23.i581
  %i.hw = ashr exact i64 %gepdiff.i583, 2
  %.not19.i584 = icmp eq i64 %i.hw, %i.hn
  br i1 %.not19.i584, label %.preheader.i585, label %.loopexit

.preheader.i585:                                  ; preds = %bb.an
end_hunk_4
begin_hunk_5_@_ZN5boost9container4test27vector_move_assignable_onlyINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEEEEiNS_11move_detail17integral_constantIbLb1EEE:bb.a
bb.e:                                             ; preds = %bb.d, %.noexc
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30, !noalias !7755
  br label %.body

bb.f:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i
  %.idx23.i = shl nuw nsw i64 %i.ah, 2            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ai, 2              ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx.i
  %gepdiff.i = sub nsw i64 %.idx.i, %.idx23.i
  %i.as = ashr exact i64 %gepdiff.i, 2
  %.not19.i = icmp eq i64 %i.as, %i.aj
  br i1 %.not19.i, label %.preheader.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread

.preheader.i:                                     ; preds = %bb.f
  %.not2124.i = icmp samesign eq i64 %.idx23.i, %.idx.i
  br i1 %.not2124.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 %.idx23.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.01826.i = phi ptr [ %i.ax, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ] ; 2 uses
  %.sroa.0.025.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.al, %.lr.ph.preheader.i ] ; 2 uses
  %i.au = load i32, ptr %.sroa.0.025.i, align 4, !tbaa !259
  %i.av = load i32, ptr %.01826.i, align 4, !tbaa !646
  %i.aw = icmp eq i32 %i.av, %i.au                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01826.i, i64 4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i, i64 4
  %.not21.i = icmp ne ptr %i.ax, %i.ar
  %or.cond.not = select i1 %i.aw, i1 %.not21.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread, !llvm.loop !184

bb.g:                                             ; preds = %_ZN5boost7movelib11make_uniqueISt6vectorIiSaIiEEJjEEENS_9move_upmu13unique_ptr_ifIT_E14t_is_not_arrayEDpOT0_.exit
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread: ; preds = %.lr.ph.i, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i, %bb.f, %.preheader.i
  %.2.i791 = phi i1 [ false, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE4implC2ENS0_23reserve_uninitialized_tERKS5_m.exit.i.i ], [ true, %.preheader.i ], [ false, %bb.f ], [ %i.aw, %.lr.ph.i ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ai
  %.not5.i.i.i.i.i = icmp samesign eq i64 %i.ah, %i.ai
  br i1 %.not5.i.i.i.i.i, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i

.lr.ph.i.preheader.i.i.i.i:                       ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.ah
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i
  %.06.i.i.i.i.i = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.lr.ph.i.preheader.i.i.i.i ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i, align 4, !tbaa !646
  %i.bc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bd = add i32 %i.bc, -1
  store i32 %i.bd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.be = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i480 = icmp eq ptr %i.be, %i.ba
  br i1 %.not.i.i.i.i.i480, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit.thread
  %.not.i1.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i1.i.i.i.i, label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.ag)
          to label %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  tail call void @__clang_call_terminate(ptr %i.bg) #31
  unreachable

_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i: ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i, %bb.h
  %i.bh = load ptr, ptr %i.x, align 8, !tbaa !767 ; 4 uses
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !766 ; 2 uses
  %i.bj = load i64, ptr %i.aa, align 8, !tbaa !765 ; 2 uses
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bj
  %.not5.i.i.i.i.i482 = icmp samesign eq i64 %i.bi, %i.bj
  br i1 %.not5.i.i.i.i.i482, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487, label %.lr.ph.i.preheader.i.i.i.i483

.lr.ph.i.preheader.i.i.i.i483:                    ; preds = %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.bi
  br label %.lr.ph.i.i.i.i.i484

.lr.ph.i.i.i.i.i484:                              ; preds = %.lr.ph.i.i.i.i.i484, %.lr.ph.i.preheader.i.i.i.i483
  %.06.i.i.i.i.i485 = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i484 ], [ %i.bl, %.lr.ph.i.preheader.i.i.i.i483 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i.i485, align 4, !tbaa !646
  %i.bm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bn = add i32 %i.bm, -1
  store i32 %i.bn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.bo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i485, i64 4 ; 2 uses
  %.not.i.i.i.i.i486 = icmp eq ptr %i.bo, %i.bk
  br i1 %.not.i.i.i.i.i486, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487, label %.lr.ph.i.i.i.i.i484, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487: ; preds = %.lr.ph.i.i.i.i.i484, %_ZNK5boost7movelib14default_deleteINS_9container8devectorINS2_4test12copyable_intENS2_9allocatorIS5_Lj2ELj0EEEvEEEclIS8_EENS_8move_upd18enable_defdel_callIT_S8_vE4typeEPSD_.exit.i
  %.not.i1.i.i.i.i488 = icmp eq ptr %i.bh, null
  br i1 %.not.i1.i.i.i.i488, label %bb.l, label %bb.j

bb.j:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487
  invoke void @_ZN5boost9container13dlmalloc_freeEPv(ptr noundef nonnull %i.bh)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  tail call void @__clang_call_terminate(ptr %i.bq) #31
  unreachable

bb.l:                                             ; preds = %bb.j, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i.i487
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 40) #30
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !349 ; 3 uses
  %.not.i.i.i.i.i.i492 = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i492, label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = load ptr, ptr %i.v, align 8, !tbaa !350
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.br to i64
  %i.bv = sub i64 %i.bt, %i.bu
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef %i.bv) #30
  br label %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit

_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit: ; preds = %bb.l, %bb.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 24) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br i1 %.2.i791, label %bb.n, label %bb.jd

bb.n:                                             ; preds = %_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7756)
  %i.bw = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !7756 ; 109 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i8 0, i64 40, i1 false), !noalias !7756
  store ptr %i.bw, ptr %1, align 8, !tbaa !763, !alias.scope !7756
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7757)
  %i.bx = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #29
          to label %bb.o unwind label %bb.z       ; 91 uses

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i8 0, i64 24, i1 false), !noalias !7757
  store ptr %i.bx, ptr %2, align 8, !tbaa !603, !alias.scope !7757
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 28 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !765 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 22 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !766 ; 3 uses
  %i.cc = sub i64 %i.bz, %i.cb                    ; 3 uses
  %i.cd = icmp ult i64 %i.cc, 100
  %i.ce = sub i64 100, %i.cc                      ; 5 uses
  br i1 %i.cd, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !794
  %i.ch = sub i64 %i.cg, %i.cb
  %.not.i.i.i499 = icmp ult i64 %i.ch, 100
  br i1 %.not.i.i.i499, label %bb.s, label %.lr.ph.i.i.i.i.i500

.lr.ph.i.i.i.i.i500:                              ; preds = %bb.p
  %i.ci = load ptr, ptr %i.bw, align 8, !tbaa !767, !nonnull !269, !noundef !269
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.bz ; 5 uses
  %i.ck = add i64 %i.cb, 99
  %i.cl = sub i64 %i.ck, %i.bz
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 3
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph.i.i.i.i.i500.new

.lr.ph.i.i.i.i.i500.new:                          ; preds = %.lr.ph.i.i.i.i.i500
  %unroll_iter = and i64 %i.ce, -4
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.lr.ph.i.i.i.i.i500.new
  %.06.i.i.i.i.i501 = phi i64 [ 0, %.lr.ph.i.i.i.i.i500.new ], [ %i.dc, %bb.q ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i500.new ], [ %niter.next.3, %bb.q ]
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  store i32 0, ptr %i.cn, align 4, !tbaa !646
  %i.co = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 0, ptr %i.cr, align 4, !tbaa !646
  %i.cs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ct = add i32 %i.cs, 1
  store i32 %i.ct, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i32 0, ptr %i.cv, align 4, !tbaa !646
  %i.cw = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cx = add i32 %i.cw, 1
  store i32 %i.cx, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  store i32 0, ptr %i.cz, align 4, !tbaa !646
  %i.da = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dc = add nuw i64 %.06.i.i.i.i.i501, 4        ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, label %bb.q, !llvm.loop !222

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa: ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa, %.lr.ph.i.i.i.i.i500
  %.06.i.i.i.i.i501.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i500 ], [ %i.dc, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa ]
  %lcmp.mod1044 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1044)
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.epil.preheader
  %.06.i.i.i.i.i501.epil = phi i64 [ %.06.i.i.i.i.i501.epil.init, %.epil.preheader ], [ %i.dg, %bb.r ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.r ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.06.i.i.i.i.i501.epil
  store i32 0, ptr %i.dd, align 4, !tbaa !646
  %i.de = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.df = add i32 %i.de, 1
  store i32 %i.df, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dg = add nuw i64 %.06.i.i.i.i.i501.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i, label %bb.r, !llvm.loop !7749

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i: ; preds = %bb.r, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i.unr-lcssa
  %i.dh = add i64 %i.ce, %i.bz
  store i64 %i.dh, ptr %i.by, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

bb.s:                                             ; preds = %bb.p
  invoke void @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 noundef 100, i64 noundef %i.ce)
          to label %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge: ; preds = %bb.s
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.pre883 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !600
  %.pre884 = load ptr, ptr %i.bx, align 8, !tbaa !349
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

bb.t:                                             ; preds = %bb.o
  %i.di = add i64 %i.ce, %i.bz                    ; 2 uses
  %i.dj = load ptr, ptr %i.bw, align 8, !tbaa !767 ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.bz
  %.not5.i.i.i.i494 = icmp eq i64 %i.cc, 100
  br i1 %.not5.i.i.i.i494, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %.lr.ph.i.preheader.i.i.i495

.lr.ph.i.preheader.i.i.i495:                      ; preds = %bb.t
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %i.di
  br label %.lr.ph.i.i.i.i496

.lr.ph.i.i.i.i496:                                ; preds = %.lr.ph.i.i.i.i496, %.lr.ph.i.preheader.i.i.i495
  %.06.i.i.i.i497 = phi ptr [ %i.do, %.lr.ph.i.i.i.i496 ], [ %i.dl, %.lr.ph.i.preheader.i.i.i495 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i497, align 4, !tbaa !646
  %i.dm = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.do = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i497, i64 4 ; 2 uses
  %.not.i.i.i.i498 = icmp eq ptr %i.do, %i.dk
  br i1 %.not.i.i.i.i498, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, label %.lr.ph.i.i.i.i496, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i496, %bb.t
  store i64 %i.di, ptr %i.by, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit: ; preds = %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i
  %i.dp = phi ptr [ %.pre884, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 5 uses
  %i.dq = phi ptr [ %.pre883, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit_crit_edge ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i ], [ null, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i ] ; 4 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 42 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dp to i64               ; 4 uses
  %i.du = sub i64 %i.ds, %i.dt                    ; 2 uses
  %i.dv = ashr exact i64 %i.du, 2                 ; 2 uses
  %i.dw = icmp ult i64 %i.dv, 100
  br i1 %i.dw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %i.dx = sub nuw nsw i64 100, %i.dv
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.dx)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge:    ; preds = %bb.u
  %.pre885 = load ptr, ptr %i.dr, align 8, !tbaa !600
  %.pre886 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre894 = ptrtoint ptr %.pre886 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit
  %.not798 = icmp eq i64 %i.du, 400
  br i1 %.not798, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 400 ; 3 uses
  %.not.i.i = icmp eq ptr %i.dq, %i.dy
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.w
  store ptr %i.dy, ptr %i.dr, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i, %bb.w, %bb.v
  %.pre-phi = phi i64 [ %.pre894, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dt, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dt, %bb.w ], [ %i.dt, %bb.v ] ; 3 uses
  %i.dz = phi ptr [ %.pre886, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dp, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dp, %bb.w ], [ %i.dp, %bb.v ] ; 3 uses
  %i.ea = phi ptr [ %.pre885, %._ZNSt6vectorIiSaIiEE6resizeEm.exit_crit_edge ], [ %i.dy, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i ], [ %i.dq, %bb.w ], [ %i.dq, %bb.v ] ; 3 uses
  %i.eb = load i64, ptr %i.by, align 8, !tbaa !765 ; 7 uses
  %i.ec = load i64, ptr %i.ca, align 8, !tbaa !766 ; 4 uses
  %i.ed = sub i64 %i.eb, %i.ec                    ; 5 uses
  %i.ee = ptrtoint ptr %i.ea to i64
  %i.ef = sub i64 %i.ee, %.pre-phi                ; 3 uses
  %i.eg = ashr exact i64 %i.ef, 2                 ; 3 uses
  %.not.i504 = icmp eq i64 %i.ed, %i.eg
  br i1 %.not.i504, label %bb.x, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.eh = load ptr, ptr %i.bw, align 8, !tbaa !767 ; 5 uses
  %.idx23.i506 = shl nuw nsw i64 %i.ec, 2         ; 3 uses
  %.idx.i507 = shl nuw nsw i64 %i.eb, 2           ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx.i507
  %gepdiff.i508 = sub nsw i64 %.idx.i507, %.idx23.i506
  %i.ej = ashr exact i64 %gepdiff.i508, 2
  %.not19.i509 = icmp eq i64 %i.ej, %i.ed
  br i1 %.not19.i509, label %.preheader.i510, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

.preheader.i510:                                  ; preds = %bb.x
  %.not2124.i511 = icmp samesign eq i64 %.idx23.i506, %.idx.i507
  br i1 %.not2124.i511, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517, label %.lr.ph.preheader.i512

.lr.ph.preheader.i512:                            ; preds = %.preheader.i510
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.idx23.i506
  br label %.lr.ph.i513

.lr.ph.i513:                                      ; preds = %bb.y, %.lr.ph.preheader.i512
  %.01826.i514 = phi ptr [ %i.eo, %bb.y ], [ %i.ek, %.lr.ph.preheader.i512 ] ; 2 uses
  %.sroa.0.025.i515 = phi ptr [ %i.ep, %bb.y ], [ %i.dz, %.lr.ph.preheader.i512 ] ; 2 uses
  %i.el = load i32, ptr %.sroa.0.025.i515, align 4, !tbaa !259
  %i.em = load i32, ptr %.01826.i514, align 4, !tbaa !646
  %i.en = icmp eq i32 %i.em, %i.el
  br i1 %i.en, label %bb.y, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.y:                                             ; preds = %.lr.ph.i513
  %i.eo = getelementptr inbounds nuw i8, ptr %.01826.i514, i64 4 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i515, i64 4
  %.not21.i516 = icmp eq ptr %i.eo, %i.ei
  br i1 %.not21.i516, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517, label %.lr.ph.i513, !llvm.loop !184

.body:                                            ; preds = %bb.g, %bb.e
  %.pn.pn = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.az, %bb.g ]
  call void @_ZN5boost7movelib10unique_ptrISt6vectorIiSaIiEENS0_14default_deleteIS4_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #26
  br label %common.resume

bb.z:                                             ; preds = %bb.n
  %i.eq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jc

bb.aa:                                            ; preds = %bb.ag, %bb.ae, %bb.u, %bb.s
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %bb.jb

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517: ; preds = %bb.y, %.preheader.i510
  %i.es = icmp ult i64 %i.ed, 200
  %i.et = sub i64 200, %i.ed                      ; 5 uses
  br i1 %i.es, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517
  %i.eu = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !794
  %i.ew = sub i64 %i.ev, %i.ec
  %.not.i.i.i524 = icmp ult i64 %i.ew, 200
  br i1 %.not.i.i.i524, label %bb.ae, label %.lr.ph.i.i.i.i.i525

.lr.ph.i.i.i.i.i525:                              ; preds = %bb.ab
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eb ; 5 uses
  %i.ey = add i64 %i.ec, 199
  %i.ez = sub i64 %i.ey, %i.eb
  %xtraiter1046 = and i64 %i.et, 3                ; 3 uses
  %i.fa = icmp ult i64 %i.ez, 3
  br i1 %i.fa, label %.epil.preheader1045, label %.lr.ph.i.i.i.i.i525.new

.lr.ph.i.i.i.i.i525.new:                          ; preds = %.lr.ph.i.i.i.i.i525
  %unroll_iter1050 = and i64 %i.et, -4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph.i.i.i.i.i525.new
  %.06.i.i.i.i.i526 = phi i64 [ 0, %.lr.ph.i.i.i.i.i525.new ], [ %i.fq, %bb.ac ] ; 5 uses
  %niter1051 = phi i64 [ 0, %.lr.ph.i.i.i.i.i525.new ], [ %niter1051.next.3, %bb.ac ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  store i32 0, ptr %i.fb, align 4, !tbaa !646
  %i.fc = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fd = add i32 %i.fc, 1
  store i32 %i.fd, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  store i32 0, ptr %i.ff, align 4, !tbaa !646
  %i.fg = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  store i32 0, ptr %i.fj, align 4, !tbaa !646
  %i.fk = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fl = add i32 %i.fk, 1
  store i32 %i.fl, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 12
  store i32 0, ptr %i.fn, align 4, !tbaa !646
  %i.fo = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fq = add nuw i64 %.06.i.i.i.i.i526, 4        ; 2 uses
  %niter1051.next.3 = add i64 %niter1051, 4       ; 2 uses
  %niter1051.ncmp.3 = icmp eq i64 %niter1051.next.3, %unroll_iter1050
  br i1 %niter1051.ncmp.3, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa, label %bb.ac, !llvm.loop !222

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa: ; preds = %bb.ac
  %lcmp.mod1048.not = icmp eq i64 %xtraiter1046, 0
  br i1 %lcmp.mod1048.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528, label %.epil.preheader1045

.epil.preheader1045:                              ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa, %.lr.ph.i.i.i.i.i525
  %.06.i.i.i.i.i526.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i525 ], [ %i.fq, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa ]
  %lcmp.mod1049 = icmp ne i64 %xtraiter1046, 0
  tail call void @llvm.assume(i1 %lcmp.mod1049)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader1045
  %.06.i.i.i.i.i526.epil = phi i64 [ %.06.i.i.i.i.i526.epil.init, %.epil.preheader1045 ], [ %i.fu, %bb.ad ] ; 2 uses
  %epil.iter1047 = phi i64 [ 0, %.epil.preheader1045 ], [ %epil.iter1047.next, %bb.ad ]
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %.06.i.i.i.i.i526.epil
  store i32 0, ptr %i.fr, align 4, !tbaa !646
  %i.fs = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ft = add i32 %i.fs, 1
  store i32 %i.ft, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.fu = add nuw i64 %.06.i.i.i.i.i526.epil, 1
  %epil.iter1047.next = add i64 %epil.iter1047, 1 ; 2 uses
  %epil.iter1047.cmp.not = icmp eq i64 %epil.iter1047.next, %xtraiter1046
  br i1 %epil.iter1047.cmp.not, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528, label %bb.ad, !llvm.loop !7750

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528: ; preds = %bb.ad, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528.unr-lcssa
  %i.fv = add i64 %i.et, %i.eb
  store i64 %i.fv, ptr %i.by, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

bb.ae:                                            ; preds = %bb.ab
  invoke void @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE21resize_back_slow_pathIJEEEvmmDpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, i64 noundef 200, i64 noundef %i.et)
          to label %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge unwind label %bb.aa

._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge: ; preds = %bb.ae
  %.pre887 = load ptr, ptr %i.dr, align 8, !tbaa !600 ; 2 uses
  %.pre888 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre895 = ptrtoint ptr %.pre887 to i64
  %.pre897 = ptrtoint ptr %.pre888 to i64         ; 2 uses
  %.pre899 = sub i64 %.pre895, %.pre897           ; 2 uses
  %.pre901 = ashr exact i64 %.pre899, 2
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

bb.af:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517
  %i.fw = add i64 %i.et, %i.eb                    ; 2 uses
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.eb
  %.not5.i.i.i.i518 = icmp eq i64 %i.ed, 200
  br i1 %.not5.i.i.i.i518, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, label %.lr.ph.i.preheader.i.i.i519

.lr.ph.i.preheader.i.i.i519:                      ; preds = %bb.af
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.fw
  br label %.lr.ph.i.i.i.i520

.lr.ph.i.i.i.i520:                                ; preds = %.lr.ph.i.i.i.i520, %.lr.ph.i.preheader.i.i.i519
  %.06.i.i.i.i521 = phi ptr [ %i.gb, %.lr.ph.i.i.i.i520 ], [ %i.fy, %.lr.ph.i.preheader.i.i.i519 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i521, align 4, !tbaa !646
  %i.fz = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.ga = add i32 %i.fz, -1
  store i32 %i.ga, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.gb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i521, i64 4 ; 2 uses
  %.not.i.i.i.i522 = icmp eq ptr %i.gb, %i.fx
  br i1 %.not.i.i.i.i522, label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, label %.lr.ph.i.i.i.i520, !llvm.loop !185

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523: ; preds = %.lr.ph.i.i.i.i520, %bb.af
  store i64 %i.fw, ptr %i.by, align 8, !tbaa !758
  br label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530: ; preds = %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528
  %.pre-phi902 = phi i64 [ %.pre901, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.eg, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.eg, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 2 uses
  %.pre-phi900 = phi i64 [ %.pre899, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.ef, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.ef, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ]
  %.pre-phi898 = phi i64 [ %.pre897, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %.pre-phi, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 3 uses
  %i.gc = phi ptr [ %.pre888, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.dz, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.dz, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 4 uses
  %i.gd = phi ptr [ %.pre887, %._ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530_crit_edge ], [ %i.ea, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE16destroy_elementsEPS3_S7_.exit.i.i.i523 ], [ %i.ea, %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE11construct_nIJEEEvPS3_mDpOT_.exit.i.i.i528 ] ; 3 uses
  %i.ge = icmp ult i64 %.pre-phi902, 200
  br i1 %i.ge, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530
  %i.gf = sub nuw nsw i64 200, %.pre-phi902
  invoke void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 noundef %i.gf)
          to label %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge unwind label %bb.aa

._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge: ; preds = %bb.ag
  %.pre889 = load ptr, ptr %i.dr, align 8, !tbaa !600
  %.pre890 = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 2 uses
  %.pre903 = ptrtoint ptr %.pre890 to i64
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534

bb.ah:                                            ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6resizeEm.exit530
  %.not799 = icmp eq i64 %.pre-phi900, 800
  br i1 %.not799, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 800 ; 3 uses
  %.not.i.i531 = icmp eq ptr %i.gd, %i.gg
  br i1 %.not.i.i531, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532:     ; preds = %bb.ai
  store ptr %i.gg, ptr %i.dr, align 8, !tbaa !600
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit534

_ZNSt6vectorIiSaIiEE6resizeEm.exit534:            ; preds = %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532, %bb.ai, %bb.ah
  %.pre-phi904 = phi i64 [ %.pre903, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %.pre-phi898, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %.pre-phi898, %bb.ai ], [ %.pre-phi898, %bb.ah ]
  %i.gh = phi ptr [ %.pre890, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %i.gc, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %i.gc, %bb.ai ], [ %i.gc, %bb.ah ] ; 3 uses
  %i.gi = phi ptr [ %.pre889, %._ZNSt6vectorIiSaIiEE6resizeEm.exit534_crit_edge ], [ %i.gg, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i532 ], [ %i.gd, %bb.ai ], [ %i.gd, %bb.ah ] ; 2 uses
  %i.gj = load i64, ptr %i.by, align 8, !tbaa !765 ; 4 uses
  %i.gk = load i64, ptr %i.ca, align 8, !tbaa !766 ; 6 uses
  %i.gl = sub i64 %i.gj, %i.gk                    ; 2 uses
  %i.gm = ptrtoint ptr %i.gi to i64
  %i.gn = sub i64 %i.gm, %.pre-phi904
  %i.go = ashr exact i64 %i.gn, 2
  %.not.i535 = icmp eq i64 %i.gl, %i.go
  br i1 %.not.i535, label %bb.aj, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.aj:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit534
  %i.gp = load ptr, ptr %i.bw, align 8, !tbaa !767 ; 5 uses
  %.idx23.i537 = shl nuw nsw i64 %i.gk, 2         ; 3 uses
  %.idx.i538 = shl nuw nsw i64 %i.gj, 2           ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx.i538
  %gepdiff.i539 = sub nsw i64 %.idx.i538, %.idx23.i537
  %i.gr = ashr exact i64 %gepdiff.i539, 2
  %.not19.i540 = icmp eq i64 %i.gr, %i.gl
  br i1 %.not19.i540, label %.preheader.i541, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

.preheader.i541:                                  ; preds = %bb.aj
  %.not2124.i542 = icmp samesign eq i64 %.idx23.i537, %.idx.i538
  br i1 %.not2124.i542, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548, label %.lr.ph.preheader.i543

.lr.ph.preheader.i543:                            ; preds = %.preheader.i541
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.idx23.i537
  br label %.lr.ph.i544

.lr.ph.i544:                                      ; preds = %bb.ak, %.lr.ph.preheader.i543
  %.01826.i545 = phi ptr [ %i.gw, %bb.ak ], [ %i.gs, %.lr.ph.preheader.i543 ] ; 2 uses
  %.sroa.0.025.i546 = phi ptr [ %i.gx, %bb.ak ], [ %i.gh, %.lr.ph.preheader.i543 ] ; 2 uses
  %i.gt = load i32, ptr %.sroa.0.025.i546, align 4, !tbaa !259
  %i.gu = load i32, ptr %.01826.i545, align 4, !tbaa !646
  %i.gv = icmp eq i32 %i.gu, %i.gt
  br i1 %i.gv, label %bb.ak, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit517.thread

bb.ak:                                            ; preds = %.lr.ph.i544
  %i.gw = getelementptr inbounds nuw i8, ptr %.01826.i545, i64 4 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %.sroa.0.025.i546, i64 4
  %.not21.i547 = icmp eq ptr %i.gw, %i.gq
  br i1 %.not21.i547, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548, label %.lr.ph.i544, !llvm.loop !184

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548: ; preds = %bb.ak, %.preheader.i541
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gj
  %.not5.i.i.i.i549 = icmp eq i64 %i.gj, %i.gk
  br i1 %.not5.i.i.i.i549, label %.loopexit810, label %.lr.ph.i.preheader.i.i.i550

.lr.ph.i.preheader.i.i.i550:                      ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.gk
  br label %.lr.ph.i.i.i.i551

.lr.ph.i.i.i.i551:                                ; preds = %.lr.ph.i.i.i.i551, %.lr.ph.i.preheader.i.i.i550
  %.06.i.i.i.i552 = phi ptr [ %i.hc, %.lr.ph.i.i.i.i551 ], [ %i.gz, %.lr.ph.i.preheader.i.i.i550 ] ; 2 uses
  store i32 -2147483648, ptr %.06.i.i.i.i552, align 4, !tbaa !646
  %i.ha = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hb = add i32 %i.ha, -1
  store i32 %i.hb, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i552, i64 4 ; 2 uses
  %.not.i.i.i.i553 = icmp eq ptr %i.hc, %i.gy
  br i1 %.not.i.i.i.i553, label %.loopexit810, label %.lr.ph.i.i.i.i551, !llvm.loop !185

.loopexit810:                                     ; preds = %.lr.ph.i.i.i.i551, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit548
  store i64 %i.gk, ptr %i.by, align 8, !tbaa !758
  %.not.i.i561 = icmp eq ptr %i.gi, %i.gh
  br i1 %.not.i.i561, label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562:     ; preds = %.loopexit810
  store ptr %i.gh, ptr %i.dr, align 8, !tbaa !600
  br label %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577

_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577: ; preds = %.loopexit810, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i562
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !259
  %.pre891 = load i32, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hd = add i32 %.pre891, 1
  br label %bb.al

bb.al:                                            ; preds = %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577, %.loopexit808
  %i.he = phi i64 [ %i.gk, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.hl, %.loopexit808 ]
  %i.hf = phi ptr [ %i.gp, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.hu, %.loopexit808 ]
  %i.hg = phi i32 [ %i.hd, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.if, %.loopexit808 ]
  %storemerge814 = phi i32 [ 0, %_ZN5boost9container4test20CheckEqualContainersINS0_8devectorINS1_12copyable_intENS0_9allocatorIS4_Lj2ELj0EEEvEESt6vectorIiSaIiEEEEbRKT_RKT0_.exit577 ], [ %i.ii, %.loopexit808 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  store i32 %storemerge814, ptr %3, align 4, !tbaa !646
  store i32 %i.hg, ptr @_ZN5boost9container4test12copyable_int5countE, align 4, !tbaa !259
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hf, i64 %i.he
  %i.hi = invoke noundef ptr @_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE7emplaceIJS3_EEEPS3_PKS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(40) %i.bw, ptr noundef %i.hh, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470 unwind label %bb.ap ; 0 uses

_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470: ; preds = %bb.al
  %i.hj = load ptr, ptr %i.dr, align 8, !tbaa !270
  %i.hk = invoke ptr @_ZNSt6vectorIiSaIiEE6insertEN9__gnu_cxx17__normal_iteratorIPKiS1_EERS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.bx, ptr %i.hj, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.am unwind label %bb.aq     ; 0 uses

bb.am:                                            ; preds = %_ZN5boost9container8devectorINS0_4test12copyable_intENS0_9allocatorIS3_Lj2ELj0EEEvE6insertEPKS3_OS3_.exit470
  %i.hl = load i64, ptr %i.by, align 8, !tbaa !765 ; 3 uses
  %i.hm = load i64, ptr %i.ca, align 8, !tbaa !766 ; 3 uses
  %i.hn = sub i64 %i.hl, %i.hm                    ; 2 uses
  %i.ho = load ptr, ptr %i.dr, align 8, !tbaa !600
  %i.hp = load ptr, ptr %i.bx, align 8, !tbaa !349 ; 4 uses
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 2
  %.not.i579 = icmp eq i64 %i.hn, %i.ht
  br i1 %.not.i579, label %bb.an, label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.hu = load ptr, ptr %i.bw, align 8, !tbaa !767 ; 5 uses
  %.idx23.i581 = shl nuw nsw i64 %i.hm, 2         ; 4 uses
  %.idx.i582 = shl nuw nsw i64 %i.hl, 2           ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 %.idx.i582 ; 2 uses
  %gepdiff.i583 = sub nsw i64 %.idx.i582, %.idx23.i581
  %i.hw = ashr exact i64 %gepdiff.i583, 2
  %.not19.i584 = icmp eq i64 %i.hw, %i.hn
  br i1 %.not19.i584, label %.preheader.i585, label %.loopexit

.preheader.i585:                                  ; preds = %bb.an
end_hunk_5
