Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/regcomp?download=true
inline.NumInlined: 305
inline.NumDeleted: 110
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@infinite_recursive_call_check_trav:bb.a
bb.h:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !27   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call fastcc i32 @infinite_recursive_call_check_trav(ptr noundef nonnull %i.w, ptr noundef %1) ; 2 uses
  %.not50 = icmp eq i32 %i.x, 0
  br i1 %.not50, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27   ; 2 uses
  %.not51 = icmp eq ptr %i.z, null
  br i1 %.not51, label %tailrecurse.backedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = tail call fastcc i32 @infinite_recursive_call_check_trav(ptr noundef nonnull %i.z, ptr noundef %1) ; 2 uses
  %.not52 = icmp eq i32 %i.aa, 0
  br i1 %.not52, label %tailrecurse.backedge, label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.i, %bb.k, %bb.d, %tailrecurse, %bb.c, %bb.b
  %.3 = phi i32 [ 0, %bb.c ], [ %i.d, %bb.b ], [ %i.aa, %bb.k ], [ -221, %bb.g ], [ %i.x, %bb.i ], [ 0, %bb.d ], [ 0, %tailrecurse ]
  ret i32 %.3
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tune_called_state(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 512) %1) unnamed_addr #16 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 16 uses
  %.tr56 = phi i32 [ %1, %bb.a ], [ %.tr56.be, %tailrecurse.backedge ] ; 14 uses
  %i.a = load i32, ptr %.tr, align 8, !tbaa !27
  switch i32 %i.a, label %.loopexit [
    i32 8, label %bb.b
    i32 7, label %.loopexit58
    i32 9, label %bb.d
    i32 5, label %bb.i
    i32 4, label %bb.n
    i32 6, label %bb.p
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = or i32 %.tr56, 1
  br label %.loopexit58

.loopexit58:                                      ; preds = %tailrecurse, %bb.b
  %.0 = phi i32 [ %i.b, %bb.b ], [ %.tr56, %tailrecurse ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.loopexit58
  %.046 = phi ptr [ %.tr, %.loopexit58 ], [ %i.f, %bb.c ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.046, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  tail call fastcc void @tune_called_state(ptr noundef %i.d, i32 noundef %.0)
  %i.e = getelementptr inbounds nuw i8, ptr %.046, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %.not55 = icmp eq ptr %i.f, null
  br i1 %.not55, label %.loopexit, label %bb.c, !llvm.loop !259

bb.d:                                             ; preds = %tailrecurse
  %.not53 = icmp samesign ult i32 %.tr56, 256
  br i1 %.not53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !27
  %i.i = or i32 %i.h, 134217728
  store i32 %i.i, ptr %i.g, align 4, !tbaa !27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = and i32 %.tr56, 4
  %.not54 = icmp eq i32 %i.j, 0
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !27
  %i.m = or i32 %i.l, 1024
  store i32 %i.m, ptr %i.k, align 4, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call fastcc void @tune_called_state_call(ptr noundef nonnull %.tr, i32 noundef %.tr56)
  br label %.loopexit

bb.i:                                             ; preds = %tailrecurse
  %i.n = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !80
  switch i32 %i.o, label %.loopexit [
    i32 0, label %bb.j
    i32 1, label %tailrecurse.backedge.sink.split
    i32 2, label %tailrecurse.backedge.sink.split
    i32 3, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.q = load i32, ptr %i.p, align 8, !tbaa !27
  %i.r = icmp sgt i32 %i.q, 1
  %i.s = or i32 %.tr56, 32
  %spec.select = select i1 %i.r, i32 %i.s, i32 %.tr56 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.tr, i64 44 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !27
  %i.v = or i32 %spec.select, %i.u
  store i32 %i.v, ptr %i.t, align 4, !tbaa !27
  br label %tailrecurse.backedge.sink.split

tailrecurse.backedge.sink.split:                  ; preds = %bb.i, %bb.i, %bb.j, %bb.n, %bb.o, %bb.r, %bb.q
  %.tr56.be.ph = phi i32 [ %i.av, %bb.q ], [ %.4, %bb.n ], [ %i.aw, %bb.r ], [ %.4, %bb.o ], [ %spec.select, %bb.j ], [ %.tr56, %bb.i ], [ %.tr56, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !27
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %tailrecurse.backedge.sink.split, %bb.m
  %.tr.be = phi ptr [ %i.ae, %bb.m ], [ %i.x, %tailrecurse.backedge.sink.split ]
  %.tr56.be = phi i32 [ %i.y, %bb.m ], [ %.tr56.be.ph, %tailrecurse.backedge.sink.split ]
  br label %tailrecurse

bb.k:                                             ; preds = %bb.i
  %i.y = or i32 %.tr56, 1                         ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  tail call fastcc void @tune_called_state(ptr noundef %i.aa, i32 noundef %i.y)
  %i.ab = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !27 ; 2 uses
  %.not51 = icmp eq ptr %i.ac, null
  br i1 %.not51, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @tune_called_state(ptr noundef nonnull %i.ac, i32 noundef %i.y)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr, i64 40
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !27 ; 2 uses
  %.not52 = icmp eq ptr %i.ae, null
  br i1 %.not52, label %.loopexit, label %tailrecurse.backedge

bb.n:                                             ; preds = %tailrecurse
  %i.af = getelementptr inbounds nuw i8, ptr %.tr, i64 28
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !113 ; 3 uses
  %i.ah = icmp eq i32 %i.ag, -1
  %i.ai = icmp sgt i32 %i.ag, 1
  %or.cond = or i1 %i.ah, %i.ai
  %i.aj = or i32 %.tr56, 4
  %.3 = select i1 %or.cond, i32 %i.aj, i32 %.tr56 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !117
  %.not = icmp eq i32 %i.al, %i.ag
  %i.am = or i32 %.3, 8
  %.4 = select i1 %.not, i32 %.3, i32 %i.am       ; 3 uses
  %.not50 = icmp samesign ult i32 %.4, 256
  br i1 %.not50, label %tailrecurse.backedge.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.tr, i64 4 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !27
  %i.ap = or i32 %i.ao, 134217728
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !27
  br label %tailrecurse.backedge.sink.split

bb.p:                                             ; preds = %tailrecurse
  %i.aq = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !127 ; 2 uses
  %i.as = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ar)
  %i.at = icmp eq i32 %i.as, 1
  br i1 %i.at, label %.split, label %.loopexit

.split:                                           ; preds = %bb.p
  %i.au = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ar, i1 true)
  switch i32 %i.au, label %.loopexit [
    i32 1, label %bb.q
    i32 3, label %bb.q
    i32 0, label %bb.r
    i32 2, label %bb.r
  ]

bb.q:                                             ; preds = %.split, %.split
  %i.av = or i32 %.tr56, 258
  br label %tailrecurse.backedge.sink.split

bb.r:                                             ; preds = %.split, %.split
  %i.aw = or i32 %.tr56, 256
  br label %tailrecurse.backedge.sink.split

.loopexit:                                        ; preds = %bb.p, %.split, %bb.i, %bb.m, %tailrecurse, %bb.c, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tune_tree(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.MinMaxCharLen, align 4      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.sroa.0.i111.i = alloca %struct.BagNode, align 8 ; 4 uses
  %.sroa.0.i107.i = alloca %struct.BagNode, align 8 ; 4 uses
  %.sroa.0.i.i = alloca %struct.BagNode, align 8  ; 4 uses
  %i.c = alloca [7 x i8], align 1                 ; 6 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca [14 x i32], align 16              ; 9 uses
  %i.f = alloca ptr, align 8                      ; 9 uses
  %i.g = alloca [14 x i32], align 16              ; 8 uses
  %5 = alloca [13 x %struct.OnigCaseFoldCodeItem], align 16 ; 23 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %.tr.be, %tailrecurse.backedge ] ; 66 uses
  %.tr216 = phi i32 [ %2, %bb.a ], [ %.tr216.be, %tailrecurse.backedge ] ; 16 uses
  %i.i = load i32, ptr %.tr, align 8, !tbaa !27
  switch i32 %i.i, label %common.ret811 [
    i32 7, label %.preheader
    i32 8, label %.preheader219
    i32 0, label %bb.ac
    i32 3, label %bb.cv
    i32 5, label %bb.de
    i32 4, label %bb.dv
    i32 6, label %bb.eq
  ]

.preheader219:                                    ; preds = %tailrecurse
  %i.j = or i32 %.tr216, 1
  br label %bb.aa

.preheader:                                       ; preds = %tailrecurse, %tune_next.exit.thread
  %.0128 = phi ptr [ %i.cm, %tune_next.exit.thread ], [ %.tr, %tailrecurse ] ; 2 uses
  %.0124 = phi ptr [ %i.ck, %tune_next.exit.thread ], [ null, %tailrecurse ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.0128, i64 16 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27
  %i.m = tail call fastcc i32 @tune_tree(ptr noundef %i.l, ptr noundef %1, i32 noundef %.tr216, ptr noundef %3) ; 2 uses
  %i.n = icmp ne ptr %.0124, null
  %i.o = icmp eq i32 %i.m, 0                      ; 2 uses
  %or.cond = select i1 %i.n, i1 %i.o, i1 false
  br i1 %or.cond, label %bb.b, label %tune_next.exit

bb.b:                                             ; preds = %.preheader
  %i.p = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.z, %bb.b
  %.047.i = phi ptr [ %.0124, %bb.b ], [ %i.cj, %bb.z ] ; 10 uses
  %.040.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %bb.z ] ; 2 uses
  %i.q = load i32, ptr %.047.i, align 8, !tbaa !27
  switch i32 %i.q, label %tune_next.exit.thread [
    i32 4, label %bb.d
    i32 5, label %bb.y
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.047.i, i64 32
  %i.s = load i32, ptr %i.r, align 8, !tbaa !116
  %.not54.i = icmp eq i32 %i.s, 0
  br i1 %.not54.i, label %tune_next.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.047.i, i64 28
  %i.u = load i32, ptr %i.t, align 4, !tbaa !113
  %i.v = icmp eq i32 %i.u, -1
  br i1 %i.v, label %bb.f, label %tune_next.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.w = icmp eq i32 %.040.i, 0
  br i1 %i.w, label %tailrecurse.i.i, label %get_tree_head_literal.exit.thread.i

tailrecurse.i.i:                                  ; preds = %bb.f, %tailrecurse.backedge.i.i
  %.tr.i.i = phi ptr [ %.tr.be.i.i, %tailrecurse.backedge.i.i ], [ %i.p, %bb.f ] ; 12 uses
  %i.x = load i32, ptr %.tr.i.i, align 8, !tbaa !27
  switch i32 %i.x, label %get_tree_head_literal.exit.thread.i [
    i32 4, label %bb.j
    i32 6, label %bb.m
    i32 5, label %bb.l
    i32 7, label %tailrecurse.backedge.i.i
    i32 0, label %bb.g
  ]

tailrecurse.backedge.i.i:                         ; preds = %bb.m, %bb.l, %bb.k, %tailrecurse.i.i
  %.tr.be.in.i.i = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %.tr.be.i.i = load ptr, ptr %.tr.be.in.i.i, align 8, !tbaa !27
  br label %tailrecurse.i.i

bb.g:                                             ; preds = %tailrecurse.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !92 ; 3 uses
  %.not.i.i = icmp ugt ptr %i.z, %i.ab
  br i1 %.not.i.i, label %bb.h, label %get_tree_head_literal.exit.thread.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27
  %i.ae = and i32 %i.ad, 2097152
  %.not33.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not33.i.i, label %get_tree_head_literal.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !27
  %i.ah = and i32 %i.ag, 1
  %.not34.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not34.i.i, label %get_tree_head_literal.exit.thread.i, label %get_tree_head_literal.exit.i

bb.j:                                             ; preds = %tailrecurse.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !117
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.k, label %get_tree_head_literal.exit.thread.i

bb.k:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !119 ; 3 uses
  %.not35.i.i = icmp eq ptr %i.am, null
  br i1 %.not35.i.i, label %tailrecurse.backedge.i.i, label %get_tree_head_literal.exit.loopexit.i

bb.l:                                             ; preds = %tailrecurse.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !80
  %switch.i.i = icmp ult i32 %i.ao, 3
  br i1 %switch.i.i, label %tailrecurse.backedge.i.i, label %get_tree_head_literal.exit.thread.i

bb.m:                                             ; preds = %tailrecurse.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr.i.i, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !27
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %tailrecurse.backedge.i.i, label %get_tree_head_literal.exit.thread.i

get_tree_head_literal.exit.loopexit.i:            ; preds = %bb.k
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !27
  br label %get_tree_head_literal.exit.i

get_tree_head_literal.exit.i:                     ; preds = %get_tree_head_literal.exit.loopexit.i, %bb.i, %bb.h
  %i.as = phi ptr [ %i.ab, %bb.h ], [ %i.ab, %bb.i ], [ %.pre.i, %get_tree_head_literal.exit.loopexit.i ]
  %.4.i.i = phi ptr [ %.tr.i.i, %bb.h ], [ %.tr.i.i, %bb.i ], [ %i.am, %get_tree_head_literal.exit.loopexit.i ]
  %i.at = load i8, ptr %i.as, align 1, !tbaa !27
  %.not56.i = icmp eq i8 %i.at, 0
  br i1 %.not56.i, label %get_tree_head_literal.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %get_tree_head_literal.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %.047.i, i64 48
  store ptr %.4.i.i, ptr %i.au, align 8, !tbaa !118
  br label %get_tree_head_literal.exit.thread.i

get_tree_head_literal.exit.thread.i:              ; preds = %bb.m, %bb.l, %bb.j, %tailrecurse.i.i, %bb.n, %get_tree_head_literal.exit.i, %bb.i, %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %.047.i, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !117
  %i.ax = icmp slt i32 %i.aw, 2
  br i1 %i.ax, label %bb.o, label %tune_next.exit.thread

bb.o:                                             ; preds = %get_tree_head_literal.exit.thread.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.047.i, i64 16 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !27 ; 4 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !27 ; 2 uses
  switch i32 %i.ba, label %tune_next.exit.thread [
    i32 0, label %is_strict_real_node.exit.i
    i32 1, label %tailrecurse.i64.i.preheader
    i32 2, label %tailrecurse.i64.i.preheader
  ]

is_strict_real_node.exit.i:                       ; preds = %bb.o
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !93
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !92
  %.not86.i = icmp eq ptr %i.bc, %i.be
  br i1 %.not86.i, label %tune_next.exit.thread, label %tailrecurse.i64.i.preheader

tailrecurse.i64.i.preheader:                      ; preds = %is_strict_real_node.exit.i, %bb.o, %bb.o
  br label %tailrecurse.i64.i

tailrecurse.i64.i:                                ; preds = %tailrecurse.i64.i.preheader, %tailrecurse.backedge.i68.i
  %i.bf = phi i32 [ %.pre104.i, %tailrecurse.backedge.i68.i ], [ %i.ba, %tailrecurse.i64.i.preheader ]
  %.tr.i65.i = phi ptr [ %.tr.be.i70.i, %tailrecurse.backedge.i68.i ], [ %i.az, %tailrecurse.i64.i.preheader ] ; 11 uses
  switch i32 %i.bf, label %tune_next.exit.thread [
    i32 4, label %bb.r
    i32 6, label %bb.u
    i32 5, label %bb.t
    i32 2, label %bb.p
    i32 1, label %get_tree_head_literal.exit73.i
    i32 7, label %tailrecurse.backedge.i68.i
    i32 0, label %bb.q
  ]

bb.p:                                             ; preds = %tailrecurse.i64.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.tr.i65.i, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !27
  %.not87.i = icmp eq i32 %i.bh, -1
  br i1 %.not87.i, label %tune_next.exit.thread, label %get_tree_head_literal.exit73.i

tailrecurse.backedge.i68.i:                       ; preds = %bb.u, %bb.t, %bb.s, %tailrecurse.i64.i
  %.tr.be.in.i69.i = getelementptr inbounds nuw i8, ptr %.tr.i65.i, i64 16
  %.tr.be.i70.i = load ptr, ptr %.tr.be.in.i69.i, align 8, !tbaa !27 ; 2 uses
  %.pre104.i = load i32, ptr %.tr.be.i70.i, align 8, !tbaa !27
  br label %tailrecurse.i64.i

end_hunk_0
begin_hunk_1_@tune_tree:bb.a
  %indvars.iv.next.i98.i = add nuw nsw i64 %indvars.iv.i97.i, 1 ; 2 uses
  %exitcond.not.i99.i = icmp eq i64 %indvars.iv.next.i98.i, %wide.trip.count.i92.i
  br i1 %exitcond.not.i99.i, label %.loopexit79.i.i, label %.preheader.i.i, !llvm.loop !275

.loopexit79.i.i:                                  ; preds = %bb.bw, %..loopexit79_crit_edge.i.i
  %i.jx = phi ptr [ %.pre.i.i, %..loopexit79_crit_edge.i.i ], [ %i.jd, %bb.bw ]
  %i.jy = icmp eq ptr %.0229.i, null
  %i.jz = call ptr @onig_node_new_list(ptr noundef %i.jx, ptr noundef null) #24 ; 3 uses
  %i.ka = icmp eq ptr %i.jz, null                 ; 2 uses
  br i1 %i.jy, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %.loopexit79.i.i
  br i1 %i.ka, label %unravel_cf_node_add.exit.i105.i, label %bb.bz

bb.by:                                            ; preds = %.loopexit79.i.i
  br i1 %i.ka, label %unravel_cf_node_add.exit.i105.i, label %.preheader.i.i.i100.i

.preheader.i.i.i100.i:                            ; preds = %bb.by, %.preheader.i.i.i100.i
  %.09.i.i.i101.i = phi ptr [ %i.kc, %.preheader.i.i.i100.i ], [ %.0229.i, %bb.by ] ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.09.i.i.i101.i, i64 24
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !27 ; 2 uses
  %.not.i.i.i102.i = icmp eq ptr %i.kc, null
  br i1 %.not.i.i.i102.i, label %node_list_add.exit.i.i103.i, label %.preheader.i.i.i100.i, !llvm.loop !263

node_list_add.exit.i.i103.i:                      ; preds = %.preheader.i.i.i100.i
  %i.kd = getelementptr inbounds nuw i8, ptr %.09.i.i.i101.i, i64 24
  store ptr %i.jz, ptr %i.kd, align 8, !tbaa !27
  br label %bb.bz

unravel_cf_node_add.exit.i105.i:                  ; preds = %bb.by, %bb.bx
  %i.ke = load ptr, ptr %i.d, align 8, !tbaa !47
  br label %unravel_cf_string_alt_or_cc_add.exit.thread.sink.split.i

unravel_cf_string_alt_or_cc_add.exit.thread.sink.split.i: ; preds = %bb.bq, %unravel_cf_node_add.exit.i105.i, %bb.bv, %.loopexit80.i.i
  %.sink.i = phi ptr [ %i.jd, %.loopexit80.i.i ], [ %i.ke, %unravel_cf_node_add.exit.i105.i ], [ %i.jd, %bb.bv ], [ %i.jb, %bb.bq ]
  %.4.i104.ph.ph.i = phi i32 [ %.018.i.i.i, %.loopexit80.i.i ], [ -5, %unravel_cf_node_add.exit.i105.i ], [ -5, %bb.bv ], [ -5, %bb.bq ]
  call void @onig_node_free(ptr noundef %.sink.i) #24
  br label %unravel_cf_string_alt_or_cc_add.exit.thread.i

unravel_cf_string_alt_or_cc_add.exit.thread.i:    ; preds = %bb.bp, %.epilog-lcssa, %unravel_cf_string_alt_or_cc_add.exit.thread.sink.split.i
  %.4.i104.ph.i = phi i32 [ %.4.i104.ph.ph.i, %unravel_cf_string_alt_or_cc_add.exit.thread.sink.split.i ], [ -5, %bb.bp ], [ %i.ja, %.epilog-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %unravel_cf_string_add.exit.thread.i

bb.bz:                                            ; preds = %node_list_add.exit.i.i103.i, %bb.bx
  %.6.i = phi ptr [ %.0229.i, %node_list_add.exit.i.i103.i ], [ %i.jz, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %unravel_cf_string_add.exit.i

unravel_cf_string_add.exit.i:                     ; preds = %bb.bz, %unravel_cf_look_behind_add.exit.thread152.i, %unravel_cf_node_add.exit.i.i.i, %node_list_add.exit.i.i.i.i, %bb.ay, %unravel_cf_node_add.exit.i.i, %node_list_add.exit.i.i.i, %bb.an
  %.1131.i = phi ptr [ null, %unravel_cf_look_behind_add.exit.thread152.i ], [ null, %bb.bz ], [ %.0130228.i, %unravel_cf_node_add.exit.i.i ], [ %i.dz, %node_list_add.exit.i.i.i ], [ %i.dz, %bb.an ], [ %.0130228.i, %unravel_cf_node_add.exit.i.i.i ], [ %i.fa, %node_list_add.exit.i.i.i.i ], [ %i.fa, %bb.ay ] ; 9 uses
  %.1129.i = phi ptr [ %.4.ph.i, %unravel_cf_look_behind_add.exit.thread152.i ], [ %.6.i, %bb.bz ], [ %.0229.i, %unravel_cf_node_add.exit.i.i ], [ %.0229.i, %node_list_add.exit.i.i.i ], [ %i.ed, %bb.an ], [ %.0229.i, %unravel_cf_node_add.exit.i.i.i ], [ %.0229.i, %node_list_add.exit.i.i.i.i ], [ %i.fe, %bb.ay ] ; 12 uses
  %.1.i = phi ptr [ %i.el, %unravel_cf_look_behind_add.exit.thread152.i ], [ %i.hy, %bb.bz ], [ %spec.select.i162, %unravel_cf_node_add.exit.i.i ], [ %spec.select.i162, %node_list_add.exit.i.i.i ], [ %spec.select.i162, %bb.an ], [ %i.el, %unravel_cf_node_add.exit.i.i.i ], [ %i.el, %node_list_add.exit.i.i.i.i ], [ %i.el, %bb.ay ] ; 2 uses
  %i.kf = icmp ult ptr %.1.i, %i.de
  br i1 %i.kf, label %bb.ah, label %bb.ca, !llvm.loop !276

bb.ca:                                            ; preds = %unravel_cf_string_add.exit.i
  %.not77.i = icmp eq ptr %.1129.i, null
  br i1 %.not77.i, label %bb.co, label %.preheader.i

.preheader.i:                                     ; preds = %bb.ca, %.preheader.i
  %.03.i.i = phi ptr [ %i.kh, %.preheader.i ], [ %.1129.i, %bb.ca ]
  %.0.i.i = phi i32 [ %i.ki, %.preheader.i ], [ 1, %bb.ca ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.03.i.i, i64 24
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !27 ; 2 uses
  %.not.i106.i = icmp eq ptr %i.kh, null
  %i.ki = add nuw nsw i32 %.0.i.i, 1
  br i1 %.not.i106.i, label %node_list_len.exit.i, label %.preheader.i, !llvm.loop !277

node_list_len.exit.i:                             ; preds = %.preheader.i
  %i.kj = icmp eq i32 %.0.i.i, 1
  br i1 %i.kj, label %bb.cb, label %bb.ch

bb.cb:                                            ; preds = %node_list_len.exit.i
  %i.kk = getelementptr inbounds nuw i8, ptr %.1129.i, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !27 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.tr, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.tr, ptr noundef nonnull align 8 dereferenceable(72) %i.kl, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.kl, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i.i, i64 72, i1 false), !tbaa.struct !153
  %i.km = load i32, ptr %.tr, align 8, !tbaa !27
  %i.kn = icmp eq i32 %i.km, 0
  br i1 %i.kn, label %bb.cc, label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  %i.ko = getelementptr inbounds nuw i8, ptr %.tr, i64 60
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !154
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.kr = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.ks = load ptr, ptr %i.db, align 8, !tbaa !92
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %.tr, i64 36 ; 2 uses
  store ptr %i.kw, ptr %i.db, align 8, !tbaa !92
  %sext.i.i = shl i64 %i.kv, 32
  %i.kx = ashr exact i64 %sext.i.i, 32
  %i.ky = getelementptr inbounds i8, ptr %i.kw, i64 %i.kx
  store ptr %i.ky, ptr %i.dd, align 8, !tbaa !93
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc, %bb.cb
  %i.kz = load i32, ptr %i.kl, align 8, !tbaa !27
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %bb.cf, label %node_swap.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kl, i64 60
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !154
  %i.ld = icmp eq i32 %i.lc, 0
  br i1 %i.ld, label %bb.cg, label %node_swap.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.le = getelementptr inbounds nuw i8, ptr %i.kl, i64 24 ; 2 uses
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !93
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !92
  %i.li = ptrtoint ptr %i.lf to i64
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = sub i64 %i.li, %i.lj
  %i.ll = getelementptr inbounds nuw i8, ptr %i.kl, i64 36 ; 2 uses
  store ptr %i.ll, ptr %i.lg, align 8, !tbaa !92
  %sext23.i.i = shl i64 %i.lk, 32
  %i.lm = ashr exact i64 %sext23.i.i, 32
  %i.ln = getelementptr inbounds i8, ptr %i.ll, i64 %i.lm
  store ptr %i.ln, ptr %i.le, align 8, !tbaa !93
  br label %node_swap.exit.i

node_swap.exit.i:                                 ; preds = %bb.cg, %bb.cf, %bb.ce
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i)
  br label %bb.cn

bb.ch:                                            ; preds = %node_list_len.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i107.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i107.i, ptr noundef nonnull align 8 dereferenceable(72) %.tr, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.tr, ptr noundef nonnull align 8 dereferenceable(72) %.1129.i, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.1129.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i107.i, i64 72, i1 false), !tbaa.struct !153
  %i.lo = load i32, ptr %.tr, align 8, !tbaa !27
  %i.lp = icmp eq i32 %i.lo, 0
  br i1 %i.lp, label %bb.ci, label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.lq = getelementptr inbounds nuw i8, ptr %.tr, i64 60
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !154
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.lt = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.lu = load ptr, ptr %i.db, align 8, !tbaa !92
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = ptrtoint ptr %i.lu to i64
  %i.lx = sub i64 %i.lv, %i.lw
  %i.ly = getelementptr inbounds nuw i8, ptr %.tr, i64 36 ; 2 uses
  store ptr %i.ly, ptr %i.db, align 8, !tbaa !92
  %sext.i109.i = shl i64 %i.lx, 32
  %i.lz = ashr exact i64 %sext.i109.i, 32
  %i.ma = getelementptr inbounds i8, ptr %i.ly, i64 %i.lz
  store ptr %i.ma, ptr %i.dd, align 8, !tbaa !93
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.mb = load i32, ptr %.1129.i, align 8, !tbaa !27
  %i.mc = icmp eq i32 %i.mb, 0
  br i1 %i.mc, label %bb.cl, label %node_swap.exit110.i.a

bb.cl:                                            ; preds = %bb.ck
  %i.md = getelementptr inbounds nuw i8, ptr %.1129.i, i64 60
  %i.me = load i32, ptr %i.md, align 4, !tbaa !154
  %i.mf = icmp eq i32 %i.me, 0
  br i1 %i.mf, label %bb.cm, label %node_swap.exit110.i.a

bb.cm:                                            ; preds = %bb.cl
  %i.mg = getelementptr inbounds nuw i8, ptr %.1129.i, i64 24 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !93
  %i.mi = getelementptr inbounds nuw i8, ptr %.1129.i, i64 16 ; 2 uses
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !92
  %i.mk = ptrtoint ptr %i.mh to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %.1129.i, i64 36 ; 2 uses
  store ptr %i.mn, ptr %i.mi, align 8, !tbaa !92
  %sext23.i108.i = shl i64 %i.mm, 32
  %i.mo = ashr exact i64 %sext23.i108.i, 32
  %i.mp = getelementptr inbounds i8, ptr %i.mn, i64 %i.mo
  store ptr %i.mp, ptr %i.mg, align 8, !tbaa !93
  br label %node_swap.exit110.i.a

node_swap.exit110.i.a:                            ; preds = %bb.cm, %bb.cl, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i107.i)
  br label %bb.cn

bb.cn:                                            ; preds = %node_swap.exit110.i.a, %node_swap.exit.i
  call void @onig_node_free(ptr noundef nonnull %.1129.i) #24
  br label %unravel_case_fold_string.exit

bb.co:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i111.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i111.i, ptr noundef nonnull align 8 dereferenceable(72) %.tr, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.tr, ptr noundef nonnull align 8 dereferenceable(72) %.1131.i, i64 72, i1 false), !tbaa.struct !153
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.1131.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.0.i111.i, i64 72, i1 false), !tbaa.struct !153
  %i.mq = load i32, ptr %.tr, align 8, !tbaa !27
  %i.mr = icmp eq i32 %i.mq, 0
  br i1 %i.mr, label %bb.cp, label %bb.cr

bb.cp:                                            ; preds = %bb.co
  %i.ms = getelementptr inbounds nuw i8, ptr %.tr, i64 60
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !154
  %i.mu = icmp eq i32 %i.mt, 0
  br i1 %i.mu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.mv = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.mw = load ptr, ptr %i.db, align 8, !tbaa !92
  %i.mx = ptrtoint ptr %i.mv to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %.tr, i64 36 ; 2 uses
  store ptr %i.na, ptr %i.db, align 8, !tbaa !92
  %sext.i113.i = shl i64 %i.mz, 32
  %i.nb = ashr exact i64 %sext.i113.i, 32
  %i.nc = getelementptr inbounds i8, ptr %i.na, i64 %i.nb
  store ptr %i.nc, ptr %i.dd, align 8, !tbaa !93
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp, %bb.co
  %i.nd = load i32, ptr %.1131.i, align 8, !tbaa !27
  %i.ne = icmp eq i32 %i.nd, 0
  br i1 %i.ne, label %bb.cs, label %node_swap.exit114.i

bb.cs:                                            ; preds = %bb.cr
  %i.nf = getelementptr inbounds nuw i8, ptr %.1131.i, i64 60
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !154
  %i.nh = icmp eq i32 %i.ng, 0
  br i1 %i.nh, label %bb.ct, label %node_swap.exit114.i

bb.ct:                                            ; preds = %bb.cs
  %i.ni = getelementptr inbounds nuw i8, ptr %.1131.i, i64 24 ; 2 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !93
  %i.nk = getelementptr inbounds nuw i8, ptr %.1131.i, i64 16 ; 2 uses
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !92
  %i.nm = ptrtoint ptr %i.nj to i64
  %i.nn = ptrtoint ptr %i.nl to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %.1131.i, i64 36 ; 2 uses
  store ptr %i.np, ptr %i.nk, align 8, !tbaa !92
  %sext23.i112.i = shl i64 %i.no, 32
  %i.nq = ashr exact i64 %sext23.i112.i, 32
  %i.nr = getelementptr inbounds i8, ptr %i.np, i64 %i.nq
  store ptr %i.nr, ptr %i.ni, align 8, !tbaa !93
  br label %node_swap.exit114.i

node_swap.exit114.i:                              ; preds = %bb.ct, %bb.cs, %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i111.i)
  call void @onig_node_free(ptr noundef nonnull %.1131.i) #24
  br label %unravel_case_fold_string.exit

unravel_cf_string_add.exit.thread.i:              ; preds = %get_min_max_byte_len_case_fold_items.exit.i, %unravel_cf_node_add.exit.i.i.i, %bb.aw, %bb.ar, %unravel_cf_node_add.exit.i.i, %bb.al, %bb.ah, %unravel_cf_string_alt_or_cc_add.exit.thread.i, %.critedge.i.i
  %.059.i = phi i32 [ %.4.i104.ph.i, %unravel_cf_string_alt_or_cc_add.exit.thread.i ], [ %i.fy, %.critedge.i.i ], [ -11, %get_min_max_byte_len_case_fold_items.exit.i ], [ %i.ep, %bb.ar ], [ -5, %bb.al ], [ %i.do, %bb.ah ], [ -5, %bb.aw ], [ %i.fj, %unravel_cf_node_add.exit.i.i.i ], [ %i.ei, %unravel_cf_node_add.exit.i.i ] ; 2 uses
  %.not83.i = icmp eq ptr %.0229.i, null
  br i1 %.not83.i, label %unravel_cf_string_add.exit.thread.thread.i, label %unravel_cf_string_add.exit.thread.thread173.i

.thread159.i:                                     ; preds = %bb.bi
  %i.ns = load ptr, ptr %i.f, align 8, !tbaa !47
  call void @onig_node_free(ptr noundef %i.ns) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %unravel_cf_string_add.exit.thread.thread173.i

.thread166.i:                                     ; preds = %bb.bh
  %i.nt = load ptr, ptr %i.f, align 8, !tbaa !47
  call void @onig_node_free(ptr noundef %i.nt) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %unravel_case_fold_string.exit

unravel_cf_string_add.exit.thread.thread173.i:    ; preds = %bb.az, %bb.ao, %.thread159.i, %unravel_cf_string_add.exit.thread.i
  %.059165.i = phi i32 [ -5, %.thread159.i ], [ %.059.i, %unravel_cf_string_add.exit.thread.i ], [ -5, %bb.ao ], [ -5, %bb.az ]
  call void @onig_node_free(ptr noundef nonnull %.0229.i) #24
  br label %unravel_case_fold_string.exit

unravel_cf_string_add.exit.thread.thread.i:       ; preds = %bb.ay, %bb.an, %unravel_cf_string_add.exit.thread.i
  %.059164.i = phi i32 [ %.059.i, %unravel_cf_string_add.exit.thread.i ], [ -5, %bb.an ], [ -5, %bb.ay ] ; 2 uses
  %.not84.i = icmp eq ptr %.0130228.i, null
  br i1 %.not84.i, label %unravel_case_fold_string.exit, label %bb.cu

bb.cu:                                            ; preds = %unravel_cf_string_add.exit.thread.thread.i
  call void @onig_node_free(ptr noundef nonnull %.0130228.i) #24
  br label %unravel_case_fold_string.exit

unravel_case_fold_string.exit:                    ; preds = %bb.ae, %bb.af, %bb.cn, %node_swap.exit114.i, %.thread166.i, %unravel_cf_string_add.exit.thread.thread173.i, %unravel_cf_string_add.exit.thread.thread.i, %bb.cu
  %.060.i = phi i32 [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.cn ], [ 0, %node_swap.exit114.i ], [ %.059164.i, %unravel_cf_string_add.exit.thread.thread.i ], [ %.059164.i, %bb.cu ], [ %.059165.i, %unravel_cf_string_add.exit.thread.thread173.i ], [ -5, %.thread166.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %common.ret811

bb.cv:                                            ; preds = %tailrecurse
  %i.nu = getelementptr inbounds nuw i8, ptr %.tr, i64 48
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !103 ; 2 uses
  %.not152 = icmp eq ptr %i.nv, null
  %i.nw = getelementptr inbounds nuw i8, ptr %.tr, i64 20
  %i.nx = select i1 %.not152, ptr %i.nw, ptr %i.nv
  %i.ny = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.nz = load i32, ptr %i.ny, align 8, !tbaa !102 ; 2 uses
  %.not155310 = icmp sgt i32 %i.nz, 0
  br i1 %.not155310, label %.lr.ph313, label %common.ret811

.lr.ph313:                                        ; preds = %bb.cv
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 84
  %i.ob = load i32, ptr %i.oa, align 4, !tbaa !87
  %i.oc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.nz to i64
  br label %bb.cw

bb.cw:                                            ; preds = %.lr.ph313, %bb.dd
  %indvars.iv = phi i64 [ 0, %.lr.ph313 ], [ %indvars.iv.next, %bb.dd ] ; 2 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %i.nx, i64 %indvars.iv ; 2 uses
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !15 ; 4 uses
  %i.of = icmp sgt i32 %i.oe, %i.ob
  br i1 %i.of, label %common.ret811, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.og = icmp slt i32 %i.oe, 32
  br i1 %i.og, label %bb.cy, label %.sink.split

bb.cy:                                            ; preds = %bb.cx
  %.not153 = icmp eq i32 %i.oe, 0
  br i1 %.not153, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.oh = shl nuw i32 1, %i.oe
  br label %.sink.split

.sink.split:                                      ; preds = %bb.cx, %bb.cz
  %.sink549 = phi i32 [ %i.oh, %bb.cz ], [ 1, %bb.cx ]
  %i.oi = load i32, ptr %i.oc, align 8, !tbaa !44
  %i.oj = or i32 %i.oi, %.sink549
  store i32 %i.oj, ptr %i.oc, align 8, !tbaa !44
  br label %bb.da

bb.da:                                            ; preds = %.sink.split, %bb.cy
  %i.ok = load i32, ptr %i.od, align 4, !tbaa !15 ; 3 uses
  %i.ol = icmp slt i32 %i.ok, 32
  br i1 %i.ol, label %bb.db, label %.sink.split550

bb.db:                                            ; preds = %bb.da
  %.not154 = icmp eq i32 %i.ok, 0
  br i1 %.not154, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.om = shl nuw i32 1, %i.ok
  br label %.sink.split550

.sink.split550:                                   ; preds = %bb.da, %bb.dc
  %.sink552 = phi i32 [ %i.om, %bb.dc ], [ 1, %bb.da ]
  %i.on = load i32, ptr %i.h, align 4, !tbaa !42
  %i.oo = or i32 %i.on, %.sink552
  store i32 %i.oo, ptr %i.h, align 4, !tbaa !42
  br label %bb.dd

bb.dd:                                            ; preds = %.sink.split550, %bb.db
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond402.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond402.not, label %common.ret811, label %bb.cw, !llvm.loop !278

bb.de:                                            ; preds = %tailrecurse
  %i.op = getelementptr inbounds nuw i8, ptr %.tr, i64 24
  %i.oq = load i32, ptr %i.op, align 8, !tbaa !80
  switch i32 %i.oq, label %common.ret811 [
    i32 1, label %bb.df
    i32 0, label %bb.dg
    i32 2, label %bb.dm
    i32 3, label %bb.dr
  ]

common.ret811:                                    ; preds = %._crit_edge, %bb.dq, %bb.dn, %bb.do, %bb.dp, %is_strict_real_node.exit.thread196, %is_strict_real_node.exit, %bb.dm, %unravel_case_fold_string.exit, %bb.ad, %bb.ac, %bb.ee, %.thread204, %bb.el, %bb.en, %bb.eo, %bb.ep, %tune_look_behind.exit, %bb.cv, %bb.w, %tune_next.exit, %tune_next.exit.thread, %bb.ab, %bb.aa, %bb.cw, %bb.dd, %node_str_node_cat.exit, %bb.ek, %.lr.ph, %bb.de, %bb.du, %tailrecurse, %bb.eq, %.split.i, %bb.dr, %bb.dt, %bb.df
  %common.ret811.op = phi i32 [ %i.ox, %bb.df ], [ %i.te, %node_str_node_cat.exit ], [ %i.pp, %bb.dm ], [ %i.pp, %bb.do ], [ %i.pp, %bb.dq ], [ %i.pp, %is_strict_real_node.exit ], [ 0, %.thread204 ], [ %i.pp, %is_strict_real_node.exit.thread196 ], [ -208, %bb.cw ], [ 0, %bb.ad ], [ %.060.i, %unravel_case_fold_string.exit ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %._crit_edge ], [ 0, %bb.cv ], [ %i.pp, %bb.dp ], [ -5, %bb.w ], [ %i.pp, %bb.dn ], [ %i.rw, %bb.ee ], [ 0, %bb.en ], [ 0, %bb.eo ], [ 0, %bb.ep ], [ 0, %bb.el ], [ %.163.i, %tune_look_behind.exit ], [ 0, %tune_next.exit.thread ], [ %i.m, %tune_next.exit ], [ %i.cp, %bb.aa ], [ 0, %bb.dd ], [ -6, %.lr.ph ], [ -6, %bb.ek ], [ 0, %.split.i ], [ 0, %bb.du ], [ %i.qq, %bb.dt ], [ %i.qn, %bb.dr ], [ 0, %bb.de ], [ 0, %tailrecurse ], [ 0, %bb.eq ]
  ret i32 %common.ret811.op

bb.df:                                            ; preds = %bb.de
  %i.or = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.os = load i32, ptr %i.or, align 8, !tbaa !86
  %i.ot = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.ou = load i32, ptr %i.ot, align 8, !tbaa !27
  store i32 %i.ou, ptr %i.or, align 8, !tbaa !86
  %i.ov = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !27
  %i.ox = tail call fastcc i32 @tune_tree(ptr noundef %i.ow, ptr noundef %1, i32 noundef %.tr216, ptr noundef %3)
  store i32 %i.os, ptr %i.or, align 8, !tbaa !86
  br label %common.ret811

bb.dg:                                            ; preds = %bb.de
  %i.oy = getelementptr inbounds nuw i8, ptr %.tr, i64 32
  %i.oz = getelementptr inbounds nuw i8, ptr %.tr, i64 44
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !27
  %i.pb = or i32 %i.pa, %.tr216                   ; 2 uses
  %i.pc = and i32 %i.pb, 43
  %.not149 = icmp eq i32 %i.pc, 0
  br i1 %.not149, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.pd = getelementptr inbounds nuw i8, ptr %.tr, i64 4
  %i.pe = load i32, ptr %i.pd, align 4, !tbaa !27
  %i.pf = and i32 %i.pe, 64
  %.not150 = icmp eq i32 %i.pf, 0
  br i1 %.not150, label %bb.dl, label %bb.di

bb.di:                                            ; preds = %bb.dg, %bb.dh
  %i.pg = load i32, ptr %i.oy, align 8, !tbaa !27 ; 3 uses
  %i.ph = icmp slt i32 %i.pg, 32
  br i1 %i.ph, label %bb.dj, label %.sink.split553

bb.dj:                                            ; preds = %bb.di
  %.not151 = icmp eq i32 %i.pg, 0
  br i1 %.not151, label %bb.dl, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pi = shl nuw i32 1, %i.pg
  br label %.sink.split553

.sink.split553:                                   ; preds = %bb.di, %bb.dk
  %.sink555 = phi i32 [ %i.pi, %bb.dk ], [ 1, %bb.di ]
  %i.pj = load i32, ptr %i.h, align 4, !tbaa !42
  %i.pk = or i32 %i.pj, %.sink555
  store i32 %i.pk, ptr %i.h, align 4, !tbaa !42
  br label %bb.dl

bb.dl:                                            ; preds = %.sink.split553, %bb.dj, %bb.dh
  %i.pl = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !27
  br label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.dl, %bb.er, %bb.es, %bb.du
  %.tr.be = phi ptr [ %i.pm, %bb.dl ], [ %i.ua, %bb.es ], [ %i.tx, %bb.er ], [ %i.qs, %bb.du ]
  %.tr216.be = phi i32 [ %i.pb, %bb.dl ], [ %i.ub, %bb.es ], [ %i.ty, %bb.er ], [ %i.qm, %bb.du ]
  br label %tailrecurse

bb.dm:                                            ; preds = %bb.de
  %i.pn = getelementptr inbounds nuw i8, ptr %.tr, i64 16
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !27 ; 6 uses
  %i.pp = tail call fastcc i32 @tune_tree(ptr noundef %i.po, ptr noundef %1, i32 noundef %.tr216, ptr noundef %3) ; 7 uses
  %i.pq = load i32, ptr %i.po, align 8, !tbaa !27
  %i.pr = icmp eq i32 %i.pq, 4
  br i1 %i.pr, label %bb.dn, label %common.ret811

bb.dn:                                            ; preds = %bb.dm
  %i.ps = getelementptr inbounds nuw i8, ptr %i.po, i64 28
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !113
  %i.pu = icmp eq i32 %i.pt, -1
  br i1 %i.pu, label %bb.do, label %common.ret811

bb.do:                                            ; preds = %bb.dn
  %i.pv = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  %i.pw = load i32, ptr %i.pv, align 8, !tbaa !117
  %i.px = icmp slt i32 %i.pw, 2
end_hunk_1
