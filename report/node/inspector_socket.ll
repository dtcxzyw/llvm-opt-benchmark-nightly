Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/inspector_socket?download=true
inline.NumInlined: 1127
inline.NumDeleted: 513
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN4node9inspector12_GLOBAL__N_19WsHandler18CloseFrameReceivedEv:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.c, ptr %i.d, align 8
  store i16 136, ptr %i.b, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call noundef range(i32 0, 2) i32 @_ZN4node9inspector9TcpHolder8WriteRawERKSt6vectorIcSaIcEEPFvP10uv_write_siE(ptr noundef nonnull align 8 dereferenceable(288) %i.g, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, ptr noundef nonnull @_ZN4node9inspector12_GLOBAL__N_19WsHandler19OnCloseFrameWrittenEP10uv_write_si) ; 0 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 2) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler13AcceptUpgradeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #17 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler6OnDataEPSt6vectorIcSaIcEE(ptr noundef nonnull align 8 dereferenceable(57) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::vector", align 8       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.elt5.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.pre = load ptr, ptr %i.b, align 8
  %.pre10 = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit, %bb.a
  %i.g = phi ptr [ %i.eb, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit ], [ %.pre10, %bb.a ] ; 9 uses
  %i.h = phi ptr [ %i.ea, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit ], [ %.pre, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.i = ptrtoint ptr %i.h to i64                 ; 5 uses
  %i.j = ptrtoint ptr %i.g to i64                 ; 5 uses
  %i.k = sub i64 %i.i, %i.j
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.n = load i8, ptr %i.g, align 1               ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 3 uses
  %i.p = load i8, ptr %i.m, align 1               ; 3 uses
  %i.q = zext i8 %i.n to i32                      ; 2 uses
  %.not64.i.i = icmp sgt i8 %i.n, -1
  %i.r = icmp slt i8 %i.p, 0                      ; 2 uses
  %i.s = and i32 %i.q, 48
  %i.t = icmp ne i32 %i.s, 0
  %or.cond3.i.i = or i1 %.not64.i.i, %i.t
  br i1 %or.cond3.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = and i32 %i.q, 15
  switch i32 %i.u, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i [
    i32 8, label %bb.f
    i32 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.g, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

bb.f:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.h, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

bb.g:                                             ; preds = %bb.e
  %i.v = and i8 %i.p, 127                         ; 4 uses
  %i.w = icmp samesign ugt i8 %i.v, 125
  br i1 %i.w, label %bb.i, label %.thread.i.i.jt0

bb.h:                                             ; preds = %bb.f
  %i.x = and i8 %i.p, 127                         ; 4 uses
  %i.y = icmp samesign ugt i8 %i.x, 125
  br i1 %i.y, label %bb.i, label %.thread.i.i.jt2

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.z = phi i8 [ %i.v, %bb.g ], [ %i.x, %bb.h ]
  %.060.i.i24 = phi i32 [ 0, %bb.g ], [ 2, %bb.h ] ; 2 uses
  %i.aa = icmp eq i8 %i.z, 126                    ; 2 uses
  %.056.i.i = select i1 %i.aa, i32 2, i32 8       ; 3 uses
  %i.ab = ptrtoint ptr %i.o to i64
  %i.ac = sub i64 %i.i, %i.ab
  %i.ad = zext nneg i32 %.056.i.i to i64          ; 2 uses
  %.not.i.i = icmp slt i64 %i.ac, %i.ad
  br i1 %.not.i.i, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %bb.i
  %xtraiter = and i32 %.056.i.i, 2                ; 2 uses
  br i1 %i.aa, label %.preheader.i.i.epil.preheader, label %.preheader.i.i.preheader.new

.preheader.i.i.preheader.new:                     ; preds = %.preheader.i.i.preheader
  %unroll_iter = and i32 %.056.i.i, 8
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.i.i.preheader.new
  %.05786.i.i = phi i64 [ 0, %.preheader.i.i.preheader.new ], [ %i.ax, %.preheader.i.i ]
  %.sroa.075.085.i.i = phi ptr [ %i.o, %.preheader.i.i.preheader.new ], [ %i.au, %.preheader.i.i ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 1
  %i.af = load i8, ptr %.sroa.075.085.i.i, align 1
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl i64 %.05786.i.i, 16
  %i.ai = shl nuw nsw i64 %i.ag, 8
  %i.aj = or disjoint i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 2
  %i.al = load i8, ptr %i.ae, align 1
  %i.am = zext i8 %i.al to i64
  %i.an = or disjoint i64 %i.aj, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 3
  %i.ap = load i8, ptr %i.ak, align 1
  %i.aq = zext i8 %i.ap to i64
  %i.ar = shl i64 %i.an, 16
  %i.as = shl nuw nsw i64 %i.aq, 8
  %i.at = or disjoint i64 %i.ar, %i.as            ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i, i64 4 ; 2 uses
  %i.av = load i8, ptr %i.ao, align 1
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw            ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.preheader.i.i, !llvm.loop !46

.unr-lcssa:                                       ; preds = %.preheader.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.preheader.i.i.epil.preheader

.preheader.i.i.epil.preheader:                    ; preds = %.unr-lcssa, %.preheader.i.i.preheader
  %.05786.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.preheader ], [ %i.ax, %.unr-lcssa ]
  %.sroa.075.085.i.i.epil.init = phi ptr [ %i.o, %.preheader.i.i.preheader ], [ %i.au, %.unr-lcssa ]
  %lcmp.mod35 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod35)
  br label %.preheader.i.i.epil

.preheader.i.i.epil:                              ; preds = %.preheader.i.i.epil, %.preheader.i.i.epil.preheader
  %.05786.i.i.epil = phi i64 [ %i.bc, %.preheader.i.i.epil ], [ %.05786.i.i.epil.init, %.preheader.i.i.epil.preheader ]
  %.sroa.075.085.i.i.epil = phi ptr [ %i.az, %.preheader.i.i.epil ], [ %.sroa.075.085.i.i.epil.init, %.preheader.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.i.i.epil ], [ 0, %.preheader.i.i.epil.preheader ]
  %i.ay = shl i64 %.05786.i.i.epil, 8             ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.075.085.i.i.epil, i64 1
  %i.ba = load i8, ptr %.sroa.075.085.i.i.epil, align 1
  %i.bb = zext i8 %i.ba to i64
  %i.bc = or disjoint i64 %i.ay, %i.bb            ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, 2
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.preheader.i.i.epil, !llvm.loop !47

.epilog-lcssa:                                    ; preds = %.preheader.i.i.epil, %.unr-lcssa
  %.lcssa32 = phi i64 [ %i.at, %.unr-lcssa ], [ %i.ay, %.preheader.i.i.epil ]
  %.lcssa = phi i64 [ %i.ax, %.unr-lcssa ], [ %i.bc, %.preheader.i.i.epil ] ; 3 uses
  %i.bd = getelementptr i8, ptr %i.g, i64 %i.ad   ; 2 uses
  %i.be = icmp slt i64 %.lcssa32, 0
  br i1 %i.be, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %.epilog-lcssa
  %i.bf = add i64 %i.i, -4
  %i.bg = sub i64 %i.bf, %i.j
  %i.bh = icmp ult i64 %i.bg, %.lcssa
  br i1 %i.bh, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1, label %bb.j

.thread.i.i.jt0:                                  ; preds = %bb.g
  %i.bi = zext nneg i8 %i.v to i64                ; 2 uses
  %i.bj = add i64 %i.i, -4
  %i.bk = sub i64 %i.bj, %i.j
  %i.bl = icmp ult i64 %i.bk, %i.bi
  br i1 %i.bl, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %bb.k

.thread.i.i.jt2:                                  ; preds = %bb.h
  %i.bm = zext nneg i8 %i.x to i64                ; 2 uses
  %i.bn = add i64 %i.i, -4
  %i.bo = sub i64 %i.bn, %i.j
  %i.bp = icmp ult i64 %i.bo, %i.bm
  br i1 %i.bp, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, label %bb.l

bb.j:                                             ; preds = %.thread.i.i
  %i.bq = getelementptr i8, ptr %i.bd, i64 6      ; 2 uses
  %.not89.i.i = icmp eq i64 %.lcssa, 0
  br i1 %.not89.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

bb.k:                                             ; preds = %.thread.i.i.jt0
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %.not89.i.i.jt0 = icmp eq i8 %i.v, 0
  br i1 %.not89.i.i.jt0, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0, label %.lr.ph.i.i.preheader

bb.l:                                             ; preds = %.thread.i.i.jt2
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  %.not89.i.i.jt2 = icmp eq i8 %i.x, 0
  br i1 %.not89.i.i.jt2, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.k, %bb.l, %bb.j
  %i.bt = phi ptr [ %i.br, %bb.k ], [ %i.bs, %bb.l ], [ %i.bq, %bb.j ] ; 2 uses
  %i.bu = phi ptr [ %i.g, %bb.k ], [ %i.g, %bb.l ], [ %i.bd, %bb.j ]
  %.25984.i.i27 = phi i64 [ %i.bi, %bb.k ], [ %i.bm, %bb.l ], [ %.lcssa, %bb.j ] ; 2 uses
  %.060.i.i25 = phi i32 [ 0, %bb.k ], [ 2, %bb.l ], [ %.060.i.i24, %bb.j ]
  %i.bv = getelementptr i8, ptr %i.bu, i64 2
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %.pre93.i.i = load ptr, ptr %1, align 8
  %.pre94.i.i = ptrtoint ptr %.pre93.i.i to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.j
  %i.bw = phi ptr [ %i.bt, %._crit_edge.loopexit.i.i ], [ %i.bq, %bb.j ]
  %.25984.i.i28 = phi i64 [ %.25984.i.i27, %._crit_edge.loopexit.i.i ], [ 0, %bb.j ]
  %.060.i.i26 = phi i32 [ %.060.i.i25, %._crit_edge.loopexit.i.i ], [ %.060.i.i24, %bb.j ]
  %.pre-phi.i.i = phi i64 [ %.pre94.i.i, %._crit_edge.loopexit.i.i ], [ %i.j, %bb.j ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.25984.i.i28
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = sub i64 %i.by, %.pre-phi.i.i
  %i.ca = trunc i64 %i.bz to i32
  br label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.05488.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cb = load ptr, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.05488.i.i
  %i.cd = load i8, ptr %i.cc, align 1
  %i.ce = and i64 %.05488.i.i, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = xor i8 %i.cg, %i.cd
  store i8 %i.ch, ptr %i.a, align 1
  %i.ci = call ptr @_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.cb, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.cj = add nuw i64 %.05488.i.i, 1              ; 2 uses
  %exitcond92.not.i.i = icmp eq i64 %i.cj, %.25984.i.i27
  br i1 %exitcond92.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !48

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i: ; preds = %.thread.i.i.jt0, %.thread.i.i.jt2, %._crit_edge.i.i
  %.1.i = phi i32 [ 0, %.thread.i.i.jt0 ], [ %i.ca, %._crit_edge.i.i ], [ 0, %.thread.i.i.jt2 ] ; 2 uses
  %.5.i.i = phi i32 [ 1, %.thread.i.i.jt0 ], [ %.060.i.i26, %._crit_edge.i.i ], [ 1, %.thread.i.i.jt2 ]
  %i.ck = and i8 %i.n, 64
  %.not30.i = icmp eq i8 %i.ck, 0
  br i1 %.not30.i, label %bb.m, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0: ; preds = %bb.k
  %i.cl = and i8 %i.n, 64
  %.not30.i.jt0 = icmp eq i8 %i.cl, 0
  br i1 %.not30.i.jt0, label %bb.r, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2: ; preds = %bb.l
  %i.cm = and i8 %i.n, 64
  %.not30.i.jt2 = icmp eq i8 %i.cm, 0
  br i1 %.not30.i.jt2, label %bb.n, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1: ; preds = %.thread.i.i, %bb.i
  %i.cn = and i8 %i.n, 64
  %.not30.i.jt1 = icmp eq i8 %i.cn, 0
  br i1 %.not30.i.jt1, label %.thread.ithread-pre-split, label %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i

_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i: ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0, %bb.e, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2, %bb.f, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i, %.epilog-lcssa, %bb.d, %bb.c
  %i.co = load ptr, ptr %0, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(57) %0) #22, !inline_history !49
  br label %.thread.ithread-pre-split

bb.m:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i
  switch i32 %.5.i.i, label %.thread.ithread-pre-split [
    i32 2, label %bb.n
    i32 0, label %bb.r
  ]

bb.n:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt2, %bb.m
  %.unpack.i = load i64, ptr %i.e, align 8        ; 3 uses
  %.unpack6.i = load i64, ptr %.elt5.i, align 8
  %i.cr = getelementptr inbounds i8, ptr %0, i64 %.unpack6.i ; 2 uses
  %i.cs = and i64 %.unpack.i, 1
  %.not.i = icmp eq i64 %i.cs, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ct = load ptr, ptr %i.cr, align 8
  %i.cu = getelementptr i8, ptr %i.ct, i64 %.unpack.i
  %i.cv = getelementptr i8, ptr %i.cu, i64 -1
  %i.cw = load ptr, ptr %i.cv, align 8, !nosanitize !11
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.cx = inttoptr i64 %.unpack.i to ptr
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cy = phi ptr [ %i.cw, %bb.o ], [ %i.cx, %bb.p ]
  call void %i.cy(ptr noundef nonnull align 8 dereferenceable(57) %i.cr) #22, !inline_history !49
  br label %.thread.ithread-pre-split

bb.r:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0, %bb.m
  %.1.i23 = phi i32 [ %.1.i, %bb.m ], [ 6, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt0 ]
  %i.cz = load ptr, ptr %i.d, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 248
  %i.db = load ptr, ptr %i.da, align 8            ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  call void %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %2) #22, !inline_history !49
  br label %.thread.ithread-pre-split

.thread.ithread-pre-split:                        ; preds = %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i, %bb.m, %bb.q, %bb.r, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1
  %.08.i.ph = phi i32 [ 0, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.i.jt1 ], [ %.1.i23, %bb.r ], [ 0, %bb.q ], [ %.1.i, %bb.m ], [ 0, %_ZN4node9inspector12_GLOBAL__N_119decode_frame_hybi17ERKSt6vectorIcSaIcEEbPiPS4_Pb.exit.thread.i ]
  %.pr = load ptr, ptr %2, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.ithread-pre-split, %bb.b
  %i.df = phi ptr [ %.pr, %.thread.ithread-pre-split ], [ null, %bb.b ] ; 3 uses
  %.08.i = phi i32 [ %.08.i.ph, %.thread.ithread-pre-split ], [ 0, %bb.b ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.df, null
  br i1 %.not.i.i.i.i, label %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit, label %bb.s

bb.s:                                             ; preds = %.thread.i
  %i.dg = load ptr, ptr %i.f, align 8
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = ptrtoint ptr %i.df to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef %i.dj) #25
  br label %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit

_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit: ; preds = %.thread.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.dk = icmp sgt i32 %.08.i, 0
  br i1 %i.dk, label %bb.t, label %.critedge

bb.t:                                             ; preds = %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit
  %i.dl = zext nneg i32 %.08.i to i64
  %i.dm = load ptr, ptr %1, align 8               ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl ; 4 uses
  %i.do = ptrtoint ptr %i.dn to i64               ; 2 uses
  %i.dp = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dr, %i.do                    ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 1
  br i1 %i.dt, label %bb.v, label %bb.w, !prof !9

bb.v:                                             ; preds = %bb.u
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dm, ptr nonnull align 1 %i.dn, i64 %i.ds, i1 false)
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.du = icmp eq i64 %i.ds, 1
  br i1 %i.du, label %bb.x, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

bb.x:                                             ; preds = %bb.w
  %i.dv = load i8, ptr %i.dn, align 1
  store i8 %i.dv, ptr %i.dm, align 1
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i: ; preds = %bb.x, %bb.w, %bb.v, %bb.t
  %i.dw = load ptr, ptr %i.b, align 8             ; 3 uses
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.do
  %i.dz = getelementptr inbounds i8, ptr %i.dm, i64 %i.dy ; 3 uses
  %.not.i.i.i.i7 = icmp eq ptr %i.dw, %i.dz
  br i1 %.not.i.i.i.i7, label %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i
  store ptr %i.dz, ptr %i.b, align 8
  br label %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit

_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i, %bb.y
  %i.ea = phi ptr [ %i.dw, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPcSt6vectorIcSaIcEEEES6_ET0_T_S8_S7_.exit.i.i.i ], [ %i.dz, %bb.y ] ; 2 uses
  %i.eb = load ptr, ptr %1, align 8               ; 2 uses
  %i.ec = icmp eq ptr %i.eb, %i.ea
  br i1 %i.ec, label %.critedge, label %bb.b, !llvm.loop !50

.critedge:                                        ; preds = %_ZN4node9inspector12_GLOBAL__N_19WsHandler13ParseWsFramesERKSt6vectorIcSaIcEE.exit, %_ZN4node9inspector12_GLOBAL__N_121remove_from_beginningEPSt6vectorIcSaIcEEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler5OnEofEv(ptr noundef nonnull align 8 dereferenceable(57) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  store ptr null, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @uv_close(ptr noundef nonnull %i.b, ptr noundef nonnull @_ZN4node9inspector9TcpHolder8OnClosedEP11uv_handle_s) #22
  br label %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit

_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit: ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !range !10, !noundef !11
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(57) %0) #22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt10unique_ptrIN4node9inspector9TcpHolderENS0_15FunctionDeleterIS2_XadL_ZNS2_20DisconnectAndDisposeEPS2_EEEEE5resetES4_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4node9inspector12_GLOBAL__N_19WsHandler5WriteESt6vectorIcSaIcEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(57) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 1                 ; 12 uses
  %2 = alloca %"class.std::vector", align 8       ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.d = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #24, !noalias !54 ; 7 uses
  store i8 -127, ptr %i.d, align 1, !noalias !54
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !54
  %i.g = load ptr, ptr %1, align 8, !noalias !54
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 13 uses
  %i.k = icmp ult i64 %i.j, 126
  %i.l = tail call noalias noundef nonnull dereferenceable(2) ptr @_Znwm(i64 noundef 2) #24, !noalias !54 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1 ; 3 uses
  br i1 %i.k, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i, label %bb.b

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i27.i: ; preds = %bb.a
  %i.n = trunc nuw nsw i64 %i.j to i8
end_hunk_0
