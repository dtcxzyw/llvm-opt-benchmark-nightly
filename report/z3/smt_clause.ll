Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/smt_clause?download=true
inline.NumInlined: 163
inline.NumDeleted: 103
begin_hunk_0_@_ZN3smt6clause2mkER11ast_managerjPN3sat7literalENS_11clause_kindEPNS_13justificationEPNS_13clause_del_ehEbPKP4expr:bb.a
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ad
  %i.af = lshr exact i32 %i.o, 23
  %i.ag = and i32 %i.af, 4
  %spec.select.idx.i = zext nneg i32 %i.ag to i64
  %spec.select.i55 = getelementptr inbounds nuw i8, ptr %i.ae, i64 %spec.select.idx.i
  %i.ah = ptrtoint ptr %spec.select.i55 to i64
  %i.ai = add i64 %i.ah, 7
  %i.aj = and i64 %i.ai, -8
  %i.ak = inttoptr i64 %i.aj to ptr
  store ptr %5, ptr %i.ak, align 8, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br i1 %.not62, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.m, align 4             ; 3 uses
  %i.am = and i32 %i.al, 16777215
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.an
  %i.ap = lshr i32 %i.al, 23
  %i.aq = and i32 %i.ap, 4
  %spec.select.idx.i.i = zext nneg i32 %i.aq to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select.idx.i.i
  %i.ar = ptrtoint ptr %spec.select.i.i to i64
  %i.as = add i64 %i.ar, 7
  %i.at = and i64 %i.as, -8
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = lshr i32 %i.al, 26
  %i.aw = and i32 %i.av, 8
  %spec.select.idx.i56 = zext nneg i32 %i.aw to i64
  %spec.select.i57 = getelementptr inbounds nuw i8, ptr %i.au, i64 %spec.select.idx.i56
  store ptr %4, ptr %spec.select.i57, align 8, !tbaa !16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = icmp ne i32 %1, 0
  %or.cond = and i1 %6, %i.ax
  br i1 %or.cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.g, %_ZN11ast_manager7inc_refEP3ast.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN11ast_manager7inc_refEP3ast.exit ], [ 0, %bb.g ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !45 ; 2 uses
  %i.ba = lshr i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18 ; 3 uses
  %.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.i, label %_ZN11ast_manager7inc_refEP3ast.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !20
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.be, align 4, !tbaa !20
  br label %_ZN11ast_manager7inc_refEP3ast.exit

_ZN11ast_manager7inc_refEP3ast.exit:              ; preds = %.lr.ph, %bb.h
  %i.bh = ptrtoint ptr %i.bd to i64
  %i.bi = and i32 %i.az, 1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = or i64 %i.bh, %i.bj
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = load i32, ptr %i.m, align 4             ; 4 uses
  %i.bn = and i32 %i.bm, 16777215
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bo
  %i.bq = lshr i32 %i.bm, 23
  %i.br = and i32 %i.bq, 4
  %spec.select.idx.i.i.i = zext nneg i32 %i.br to i64
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 %spec.select.idx.i.i.i
  %i.bs = ptrtoint ptr %spec.select.i.i.i to i64
  %i.bt = add i64 %i.bs, 7
  %i.bu = and i64 %i.bt, -8
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = lshr i32 %i.bm, 26
  %i.bx = and i32 %i.bw, 8
  %spec.select.idx.i.i58 = zext nneg i32 %i.bx to i64
  %spec.select.i.i59 = getelementptr inbounds nuw i8, ptr %i.bv, i64 %spec.select.idx.i.i58
  %i.by = lshr i32 %i.bm, 27
  %i.bz = and i32 %i.by, 8
  %spec.select.idx.i60 = zext nneg i32 %i.bz to i64
  %spec.select.i61 = getelementptr inbounds nuw i8, ptr %spec.select.i.i59, i64 %spec.select.idx.i60
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i61, i64 %indvars.iv
  store ptr %i.bl, ptr %i.ca, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.y
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !43

.loopexit:                                        ; preds = %_ZN11ast_manager7inc_refEP3ast.exit, %bb.g
  ret ptr %i.l
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noundef ptr @_ZN22small_object_allocator8allocateEm(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt6clause10deallocateER11ast_manager(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(952) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4              ; 5 uses
  %i.c = and i32 %i.b, 536870912
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK3smt6clause10get_del_ehEv.exit.thread, label %_ZNK3smt6clause10get_del_ehEv.exit

_ZNK3smt6clause10get_del_ehEv.exit:               ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = and i32 %i.b, 16777215
  %i.f = zext nneg i32 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.f
  %i.h = lshr i32 %i.b, 23
  %i.i = and i32 %i.h, 4
  %spec.select.idx.i.i = zext nneg i32 %i.i to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %spec.select.idx.i.i
  %i.j = ptrtoint ptr %spec.select.i.i to i64
  %i.k = add i64 %i.j, 7
  %i.l = and i64 %i.k, -8
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !14   ; 3 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZNK3smt6clause10get_del_ehEv.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZNK3smt6clause10get_del_ehEv.exit
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull %0)
  %.pre = load i32, ptr %i.a, align 4
  br label %_ZNK3smt6clause10get_del_ehEv.exit.thread

_ZNK3smt6clause10get_del_ehEv.exit.thread:        ; preds = %bb.a, %bb.b, %_ZNK3smt6clause10get_del_ehEv.exit
  %i.r = phi i32 [ %i.b, %bb.a ], [ %.pre, %bb.b ], [ %i.b, %_ZNK3smt6clause10get_del_ehEv.exit ] ; 5 uses
  %i.s = and i32 %i.r, 1107296256
  %or.cond.not = icmp eq i32 %i.s, 1107296256
  br i1 %or.cond.not, label %_ZNK3smt6clause17get_justificationEv.exit, label %bb.c

_ZNK3smt6clause17get_justificationEv.exit:        ; preds = %_ZNK3smt6clause10get_del_ehEv.exit.thread
  %i.t = and i32 %i.r, 16777215
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.u
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.w = ptrtoint ptr %spec.select.i.i.i to i64
  %i.x = add i64 %i.w, 4
  %i.y = and i64 %i.x, -8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = lshr i32 %i.r, 26
  %i.ab = and i32 %i.aa, 8
  %spec.select.idx.i.i18 = zext nneg i32 %i.ab to i64
  %spec.select.i.i19 = getelementptr inbounds nuw i8, ptr %i.z, i64 %spec.select.idx.i.i18
  %i.ac = load ptr, ptr %spec.select.i.i19, align 8, !tbaa !16 ; 6 uses
  %.not16 = icmp eq ptr %i.ac, null
  br i1 %.not16, label %bb.c, label %_Z7deallocIN3smt13justificationEEvPT_.exit

_Z7deallocIN3smt13justificationEEvPT_.exit:       ; preds = %_ZNK3smt6clause17get_justificationEv.exit
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(9) %i.ac, ptr noundef nonnull align 8 dereferenceable(952) %1)
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !23
  %i.ah = load ptr, ptr %i.ag, align 8
  tail call void %i.ah(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ac) #14, !inline_history !46
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ac)
  %.pre35 = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %_ZNK3smt6clause17get_justificationEv.exit, %_Z7deallocIN3smt13justificationEEvPT_.exit, %_ZNK3smt6clause10get_del_ehEv.exit.thread
  %i.ai = phi i32 [ %i.r, %_ZNK3smt6clause17get_justificationEv.exit ], [ %.pre35, %_Z7deallocIN3smt13justificationEEvPT_.exit ], [ %i.r, %_ZNK3smt6clause10get_del_ehEv.exit.thread ]
  %.fr33 = freeze i32 %i.ai                       ; 2 uses
  %i.aj = and i32 %.fr33, 134217728
  %.not.i20 = icmp ne i32 %i.aj, 0
  %i.ak = load i32, ptr %0, align 4               ; 2 uses
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = select i1 %.not.i20, i1 %i.al, i1 false
  br i1 %i.am, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %bb.c
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext i32 %i.ak to i64
  br label %.lr.ph.split

._crit_edge.loopexit:                             ; preds = %_ZN11ast_manager7dec_refEP3ast.exit
  %.pre36 = load i32, ptr %i.a, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ao = phi i32 [ %.pre36, %._crit_edge.loopexit ], [ %.fr33, %bb.c ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = and i32 %i.ao, 16777215                 ; 2 uses
  %i.ar = and i32 %i.ao, 268435456
  %.not28 = icmp eq i32 %i.ar, 0
  %i.as = shl nuw nsw i32 %i.aq, 2
  %2 = and i32 %i.ao, 33554432
  %.not31 = icmp eq i32 %2, 0
  %spec.select.v.i = select i1 %.not31, i32 8, i32 12
  %spec.select.i21 = add nuw nsw i32 %i.as, 4
  %i.at = add nuw nsw i32 %spec.select.i21, %spec.select.v.i
  %i.au = and i32 %i.at, 268435448
  %i.av = shl nuw nsw i32 %i.aq, 3
  %i.aw = select i1 %.not28, i32 0, i32 %i.av
  %i.ax = lshr i32 %i.ao, 26
  %i.ay = and i32 %i.ax, 8
  %i.az = lshr i32 %i.ao, 27
  %i.ba = and i32 %i.az, 8
  %.1.i = add nuw nsw i32 %i.ba, %i.ay
  %.2.i = add nuw nsw i32 %.1.i, %i.aw
  %.3.i = add nuw nsw i32 %.2.i, %i.au
  %i.bb = zext nneg i32 %.3.i to i64
  tail call void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520) %i.ap, i64 noundef %i.bb, ptr noundef nonnull %0)
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN11ast_manager7dec_refEP3ast.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN11ast_manager7dec_refEP3ast.exit ] ; 2 uses
  %i.bc = load i32, ptr %i.a, align 4             ; 4 uses
  %i.bd = and i32 %i.bc, 16777215
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.be
  %i.bg = lshr i32 %i.bc, 23
  %i.bh = and i32 %i.bg, 4
  %spec.select.idx.i.i.i.i = zext nneg i32 %i.bh to i64
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 %spec.select.idx.i.i.i.i
  %i.bi = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.bj = add i64 %i.bi, 7
  %i.bk = and i64 %i.bj, -8
  %i.bl = inttoptr i64 %i.bk to ptr
  %i.bm = lshr i32 %i.bc, 26
  %i.bn = and i32 %i.bm, 8
  %spec.select.idx.i.i.i22 = zext nneg i32 %i.bn to i64
  %spec.select.i.i.i23 = getelementptr inbounds nuw i8, ptr %i.bl, i64 %spec.select.idx.i.i.i22
  %i.bo = lshr i32 %i.bc, 27
  %i.bp = and i32 %i.bo, 8
  %spec.select.idx.i.i24 = zext nneg i32 %i.bp to i64
  %spec.select.i.i25 = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i23, i64 %spec.select.idx.i.i24
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i25, i64 %indvars.iv
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !18
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = and i64 %i.bs, -8                       ; 2 uses
  %i.bu = inttoptr i64 %i.bt to ptr               ; 2 uses
  %.not.i26 = icmp eq i64 %i.bt, 0
  br i1 %.not.i26, label %_ZN11ast_manager7dec_refEP3ast.exit, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !20
  %i.bx = add i32 %i.bw, -1                       ; 2 uses
  store i32 %i.bx, ptr %i.bv, align 8, !tbaa !20
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.e, label %_ZN11ast_manager7dec_refEP3ast.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull %i.bu)
  br label %_ZN11ast_manager7dec_refEP3ast.exit

_ZN11ast_manager7dec_refEP3ast.exit:              ; preds = %.lr.ph.split, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph.split, !llvm.loop !47
}

declare void @_ZN22small_object_allocator10deallocateEmPv(ptr noundef nonnull align 8 dereferenceable(520), i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3smt6clause13release_atomsER11ast_manager(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(952) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %.fr13 = freeze i32 %i.b
  %i.c = and i32 %.fr13, 134217728
  %.not.i = icmp ne i32 %i.c, 0
  %i.d = load i32, ptr %0, align 4                ; 2 uses
  %i.e = icmp ne i32 %i.d, 0
  %i.f = select i1 %.not.i, i1 %i.e, i1 false
  br i1 %i.f, label %.lr.ph.split.preheader, label %._crit_edge

.lr.ph.split.preheader:                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %wide.trip.count = zext i32 %i.d to i64
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN11ast_manager7dec_refEP3ast.exit, %bb.a
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZN11ast_manager7dec_refEP3ast.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %_ZN11ast_manager7dec_refEP3ast.exit ] ; 3 uses
  %i.h = load i32, ptr %i.a, align 4              ; 4 uses
  %i.i = and i32 %i.h, 16777215
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.j
  %i.l = lshr i32 %i.h, 23
  %i.m = and i32 %i.l, 4
  %spec.select.idx.i.i.i.i = zext nneg i32 %i.m to i64
  %spec.select.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 %spec.select.idx.i.i.i.i
  %i.n = ptrtoint ptr %spec.select.i.i.i.i to i64
  %i.o = add i64 %i.n, 7
  %i.p = and i64 %i.o, -8
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = lshr i32 %i.h, 26
  %i.s = and i32 %i.r, 8
  %spec.select.idx.i.i.i = zext nneg i32 %i.s to i64
  %spec.select.i.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 %spec.select.idx.i.i.i
  %i.t = lshr i32 %i.h, 27
  %i.u = and i32 %i.t, 8
  %spec.select.idx.i.i = zext nneg i32 %i.u to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %spec.select.i.i.i, i64 %spec.select.idx.i.i
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i.i, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = and i64 %i.x, -8                         ; 2 uses
  %i.z = inttoptr i64 %i.y to ptr                 ; 2 uses
  %.not.i6 = icmp eq i64 %i.y, 0
  br i1 %.not.i6, label %_ZN11ast_manager7dec_refEP3ast.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !20
  %i.ac = add i32 %i.ab, -1                       ; 2 uses
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !20
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %_ZN11ast_manager7dec_refEP3ast.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %1, ptr noundef nonnull %i.z)
  br label %_ZN11ast_manager7dec_refEP3ast.exit

_ZN11ast_manager7dec_refEP3ast.exit:              ; preds = %.lr.ph.split, %bb.b, %bb.c
  %i.ae = load i32, ptr %i.a, align 4             ; 4 uses
  %i.af = and i32 %i.ae, 16777215
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = lshr i32 %i.ae, 23
  %i.aj = and i32 %i.ai, 4
  %spec.select.idx.i.i.i7 = zext nneg i32 %i.aj to i64
  %spec.select.i.i.i8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 %spec.select.idx.i.i.i7
  %i.ak = ptrtoint ptr %spec.select.i.i.i8 to i64
  %i.al = add i64 %i.ak, 7
  %i.am = and i64 %i.al, -8
  %i.an = inttoptr i64 %i.am to ptr
  %i.ao = lshr i32 %i.ae, 26
  %i.ap = and i32 %i.ao, 8
  %spec.select.idx.i.i9 = zext nneg i32 %i.ap to i64
  %spec.select.i.i10 = getelementptr inbounds nuw i8, ptr %i.an, i64 %spec.select.idx.i.i9
  %i.aq = lshr i32 %i.ae, 27
  %i.ar = and i32 %i.aq, 8
  %spec.select.idx.i = zext nneg i32 %i.ar to i64
  %spec.select.i11 = getelementptr inbounds nuw i8, ptr %spec.select.i.i10, i64 %spec.select.idx.i
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %spec.select.i11, i64 %indvars.iv
  store ptr null, ptr %i.as, align 8, !tbaa !18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !48
}

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3smt6clause7displayERSoR11ast_managerPKP4expr(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(952) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
  ret ptr %1

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.3, i64 noundef 1) ; 0 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %.sroa.0.0.copyload = load i32, ptr %i.f, align 4, !tbaa !11
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN3smt7displayERSoN3sat7literalER11ast_managerPKP4expr(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 %.sroa.0.0.copyload, ptr noundef nonnull align 8 dereferenceable(952) %2, ptr noundef %3) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %0, align 4, !tbaa !10
  %i.i = zext i32 %i.h to i64
  %i.j = icmp samesign ult i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !49
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN3smt7displayERSoN3sat7literalER11ast_managerPKP4expr(ptr noundef nonnull align 8 dereferenceable(8), i32, ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNK3smt6clause15display_compactERSoR11ast_managerPKP4expr(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef nonnull returned align 8 dereferenceable(8) %1, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(952) %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str, i64 noundef 7) ; 0 uses
  %i.b = load i32, ptr %0, align 4, !tbaa !10
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull @.str.4, i64 noundef 1) ; 0 uses
end_hunk_0
