inline.NumInlined: 175
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hamt_node_without:bb.a
  br i1 %i.la, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.lb = getelementptr i8, ptr %i.jz, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.lb) #12
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.lc = icmp eq i64 %.01219.i.i, 0
  br i1 %i.lc, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %bb.bz
  %i.ld = getelementptr i8, ptr %0, i64 48
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !45 ; 3 uses
  %i.lf = load i32, ptr %i.le, align 8, !tbaa !18 ; 2 uses
  %i.lg = icmp ugt i32 %i.lf, -1073741825
  br i1 %i.lg, label %_Py_NewRef.exit.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lh = add nuw i32 %i.lf, 1
  store i32 %i.lh, ptr %i.le, align 8, !tbaa !18
  br label %_Py_NewRef.exit.i

_Py_NewRef.exit.i:                                ; preds = %bb.cb, %bb.ca
  store ptr %i.le, ptr %i.jv, align 8, !tbaa !45
  %i.li = getelementptr i8, ptr %0, i64 56
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !45 ; 3 uses
  %i.lk = load i32, ptr %i.lj, align 8, !tbaa !18 ; 2 uses
  %i.ll = icmp ugt i32 %i.lk, -1073741825
  br i1 %i.ll, label %_Py_NewRef.exit50.i, label %_Py_NewRef.exit50.sink.split.i

bb.cc:                                            ; preds = %bb.bz
  %i.lm = load ptr, ptr %i.jj, align 8, !tbaa !45 ; 3 uses
  %i.ln = load i32, ptr %i.lm, align 8, !tbaa !18 ; 2 uses
  %i.lo = icmp ugt i32 %i.ln, -1073741825
  br i1 %i.lo, label %_Py_NewRef.exit51.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lp = add nuw i32 %i.ln, 1
  store i32 %i.lp, ptr %i.lm, align 8, !tbaa !18
  br label %_Py_NewRef.exit51.i

_Py_NewRef.exit51.i:                              ; preds = %bb.cd, %bb.cc
  store ptr %i.lm, ptr %i.jv, align 8, !tbaa !45
  %i.lq = getelementptr i8, ptr %0, i64 40
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !45 ; 3 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !18 ; 2 uses
  %i.lt = icmp ugt i32 %i.ls, -1073741825
  br i1 %i.lt, label %_Py_NewRef.exit50.i, label %_Py_NewRef.exit50.sink.split.i

_Py_NewRef.exit50.sink.split.i:                   ; preds = %_Py_NewRef.exit51.i, %_Py_NewRef.exit.i
  %.sink95.i = phi i32 [ %i.lk, %_Py_NewRef.exit.i ], [ %i.ls, %_Py_NewRef.exit51.i ]
  %.sink94.i = phi ptr [ %i.lj, %_Py_NewRef.exit.i ], [ %i.lr, %_Py_NewRef.exit51.i ] ; 2 uses
  %i.lu = add nuw i32 %.sink95.i, 1
  store i32 %i.lu, ptr %.sink94.i, align 8, !tbaa !18
  br label %_Py_NewRef.exit50.i

_Py_NewRef.exit50.i:                              ; preds = %_Py_NewRef.exit50.sink.split.i, %_Py_NewRef.exit51.i, %_Py_NewRef.exit.i
  %.sink.i = phi ptr [ %i.lr, %_Py_NewRef.exit51.i ], [ %i.lj, %_Py_NewRef.exit.i ], [ %.sink94.i, %_Py_NewRef.exit50.sink.split.i ]
  %i.lv = getelementptr i8, ptr %i.js, i64 40
  store ptr %.sink.i, ptr %i.lv, align 8, !tbaa !45
  %i.lw = lshr i32 %2, %1
  %i.lx = and i32 %i.lw, 31
  %i.ly = shl nuw i32 1, %i.lx
  store i32 %i.ly, ptr %i.jw, align 8, !tbaa !41
  br label %hamt_node_bitmap_new.exit.sink.split.i

bb.ce:                                            ; preds = %hamt_node_collision_find_index.exit.i
  %i.lz = load i32, ptr %i.jf, align 8, !tbaa !41
  %i.ma = add i64 %.val48.i, -2                   ; 4 uses
  %i.mb = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @_PyHamt_CollisionNode_Type, i64 noundef %i.ma) #12 ; 9 uses
  %i.mc = icmp eq ptr %i.mb, null
  br i1 %i.mc, label %hamt_node_bitmap_without.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ce
  %i.md = icmp sgt i64 %i.ma, 0
  br i1 %i.md, label %.lr.ph.i53.i, label %._crit_edge.i.i

.lr.ph.i53.i:                                     ; preds = %.preheader.i.i
  %i.me = getelementptr i8, ptr %i.mb, i64 32
  %i.mf = shl nuw i64 %i.ma, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.me, i8 0, i64 %i.mf, i1 false), !tbaa !45
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i53.i, %.preheader.i.i
  %i.mg = getelementptr i8, ptr %i.mb, i64 16     ; 2 uses
  store i64 %i.ma, ptr %i.mg, align 8, !tbaa !44
  %i.mh = getelementptr i8, ptr %i.mb, i64 24
  store i32 %i.lz, ptr %i.mh, align 8, !tbaa !41
  %i.mi = getelementptr i8, ptr %i.mb, i64 -16    ; 2 uses
  %i.mj = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !26 ; 7 uses
  %i.ml = getelementptr i8, ptr %i.mk, i64 7408
  %i.mm = getelementptr i8, ptr %i.mk, i64 7416   ; 2 uses
  %i.mn = load i64, ptr %i.mm, align 8, !tbaa !28 ; 2 uses
  %i.mo = inttoptr i64 %i.mn to ptr               ; 2 uses
  %i.mp = ptrtoint ptr %i.mi to i64               ; 2 uses
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !30
  %i.mr = and i64 %i.mq, 3
  %i.ms = or i64 %i.mr, %i.mp
  store i64 %i.ms, ptr %i.mo, align 8, !tbaa !30
  %i.mt = getelementptr i8, ptr %i.mb, i64 -8     ; 2 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !28
  %i.mv = and i64 %i.mu, 3
  %i.mw = or i64 %i.mv, %i.mn
  store i64 %i.mw, ptr %i.mt, align 8, !tbaa !28
  %i.mx = getelementptr i8, ptr %i.mk, i64 7672
  %i.my = load i32, ptr %i.mx, align 8, !tbaa !31
  %i.mz = xor i32 %i.my, 1
  %i.na = sext i32 %i.mz to i64
  %i.nb = ptrtoint ptr %i.ml to i64
  %i.nc = or i64 %i.na, %i.nb
  store i64 %i.nc, ptr %i.mi, align 8, !tbaa !30
  store i64 %i.mp, ptr %i.mm, align 8, !tbaa !28
  %i.nd = getelementptr i8, ptr %i.mk, i64 7428   ; 2 uses
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !35
  %i.nf = add i32 %i.ne, 1                        ; 2 uses
  store i32 %i.nf, ptr %i.nd, align 4, !tbaa !35
  %i.ng = getelementptr i8, ptr %i.mk, i64 7656   ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !36
  %i.ni = add i64 %i.nh, 1
  store i64 %i.ni, ptr %i.ng, align 8, !tbaa !36
  %i.nj = getelementptr i8, ptr %i.mk, i64 7424
  %i.nk = load i32, ptr %i.nj, align 8, !tbaa !37
  %i.nl = icmp sgt i32 %i.nf, %i.nk
  br i1 %i.nl, label %bb.cf, label %hamt_node_collision_new.exit.i

bb.cf:                                            ; preds = %._crit_edge.i.i
  %i.nm = getelementptr i8, ptr %i.mk, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.nm) #12
  br label %hamt_node_collision_new.exit.i

hamt_node_collision_new.exit.i:                   ; preds = %bb.cf, %._crit_edge.i.i
  %i.nn = icmp sgt i64 %.01219.i.i, 0
  br i1 %i.nn, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %hamt_node_collision_new.exit.i
  %i.no = getelementptr i8, ptr %i.mb, i64 32     ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %_Py_NewRef.exit54.i.1, %.lr.ph.i
  %.066.i = phi i64 [ 0, %.lr.ph.i ], [ %i.oc, %_Py_NewRef.exit54.i.1 ] ; 4 uses
  %i.np = getelementptr [8 x i8], ptr %i.jj, i64 %.066.i
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !45 ; 3 uses
  %i.nr = load i32, ptr %i.nq, align 8, !tbaa !18 ; 2 uses
  %i.ns = icmp ugt i32 %i.nr, -1073741825
  br i1 %i.ns, label %_Py_NewRef.exit54.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nt = add nuw i32 %i.nr, 1
  store i32 %i.nt, ptr %i.nq, align 8, !tbaa !18
  br label %_Py_NewRef.exit54.i

_Py_NewRef.exit54.i:                              ; preds = %bb.ch, %bb.cg
  %i.nu = getelementptr [8 x i8], ptr %i.no, i64 %.066.i
  store ptr %i.nq, ptr %i.nu, align 8, !tbaa !45
  %i.nv = or disjoint i64 %.066.i, 1              ; 2 uses
  %i.nw = getelementptr [8 x i8], ptr %i.jj, i64 %i.nv
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !45 ; 3 uses
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !18 ; 2 uses
  %i.nz = icmp ugt i32 %i.ny, -1073741825
  br i1 %i.nz, label %_Py_NewRef.exit54.i.1, label %bb.ci

bb.ci:                                            ; preds = %_Py_NewRef.exit54.i
  %i.oa = add nuw i32 %i.ny, 1
  store i32 %i.oa, ptr %i.nx, align 8, !tbaa !18
  br label %_Py_NewRef.exit54.i.1

_Py_NewRef.exit54.i.1:                            ; preds = %bb.ci, %_Py_NewRef.exit54.i
  %i.ob = getelementptr [8 x i8], ptr %i.no, i64 %i.nv
  store ptr %i.nx, ptr %i.ob, align 8, !tbaa !45
  %i.oc = add nuw nsw i64 %.066.i, 2              ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.oc, %.01219.i.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %bb.cg, !llvm.loop !55

._crit_edge.i:                                    ; preds = %_Py_NewRef.exit54.i.1, %hamt_node_collision_new.exit.i
  %i.od = add i64 %.01219.i.i, 2                  ; 2 uses
  %.val67.i = load i64, ptr %i.jh, align 8, !tbaa !44 ; 2 uses
  %i.oe = icmp slt i64 %i.od, %.val67.i
  br i1 %i.oe, label %.lr.ph70.i, label %hamt_node_bitmap_new.exit.sink.split.i

.lr.ph70.i:                                       ; preds = %._crit_edge.i, %_Py_NewRef.exit55.i
  %.val74.i = phi i64 [ %.val.i25, %_Py_NewRef.exit55.i ], [ %.val67.i, %._crit_edge.i ]
  %.168.i = phi i64 [ %i.ol, %_Py_NewRef.exit55.i ], [ %i.od, %._crit_edge.i ] ; 3 uses
  %i.of = getelementptr [8 x i8], ptr %i.jj, i64 %.168.i
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !45 ; 3 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !18 ; 2 uses
  %i.oi = icmp ugt i32 %i.oh, -1073741825
  br i1 %i.oi, label %_Py_NewRef.exit55.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph70.i
  %i.oj = add nuw i32 %i.oh, 1
  store i32 %i.oj, ptr %i.og, align 8, !tbaa !18
  %.val.pre.i = load i64, ptr %i.jh, align 8, !tbaa !44
  br label %_Py_NewRef.exit55.i

_Py_NewRef.exit55.i:                              ; preds = %bb.cj, %.lr.ph70.i
  %.val.i25 = phi i64 [ %.val74.i, %.lr.ph70.i ], [ %.val.pre.i, %bb.cj ] ; 2 uses
  %i.ok = getelementptr [8 x i8], ptr %i.mg, i64 %.168.i
  store ptr %i.og, ptr %i.ok, align 8, !tbaa !45
  %i.ol = add nuw nsw i64 %.168.i, 1              ; 2 uses
  %i.om = icmp slt i64 %i.ol, %.val.i25
  br i1 %i.om, label %.lr.ph70.i, label %hamt_node_bitmap_new.exit.sink.split.i, !llvm.loop !56

hamt_node_bitmap_new.exit.sink.split.i:           ; preds = %_Py_NewRef.exit55.i, %._crit_edge.i, %_Py_NewRef.exit50.i
  %.sink92.i = phi ptr [ %i.js, %_Py_NewRef.exit50.i ], [ %i.mb, %._crit_edge.i ], [ %i.mb, %_Py_NewRef.exit55.i ]
  store ptr %.sink92.i, ptr %4, align 8, !tbaa !22
  br label %hamt_node_bitmap_without.exit

hamt_node_bitmap_without.exit:                    ; preds = %bb.bv, %bb.bt, %hamt_node_bitmap_new.exit.sink.split.i, %bb.ce, %bb.bw, %hamt_node_collision_find_index.exit.i, %bb.bs, %bb.br, %Py_DECREF.exit94.i, %bb.al, %hamt_node_bitmap_clone_without.exit, %bb.x, %bb.w, %bb.v, %Py_DECREF.exit71.i.thread, %bb.b
  %.0 = phi i32 [ 1, %bb.al ], [ %..i, %hamt_node_bitmap_clone_without.exit ], [ 1, %bb.b ], [ %.3.i, %Py_DECREF.exit71.i.thread ], [ 2, %bb.x ], [ 0, %bb.v ], [ 1, %bb.w ], [ %.4.i, %Py_DECREF.exit94.i ], [ 1, %bb.br ], [ 3, %hamt_node_bitmap_new.exit.sink.split.i ], [ 1, %bb.bs ], [ 0, %bb.bw ], [ 2, %hamt_node_collision_find_index.exit.i ], [ 0, %bb.ce ], [ 0, %bb.bt ], [ 1, %bb.bv ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_PyHamt_New() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.c = getelementptr i8, ptr %i.b, i64 224952   ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = icmp ugt i32 %i.d, -1073741825
  br i1 %i.e, label %_Py_NewRef.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = add nuw i32 %i.d, 1
  store i32 %i.f, ptr %i.c, align 8, !tbaa !18
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.a, %bb.b
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @_PyHamt_Find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
switch.lookup:
  %i.a = tail call fastcc i32 @hamt_find(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %switch.offset = add nsw i32 %i.a, -1
  ret i32 %switch.offset
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @hamt_find(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !20
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %hamt_node_find.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @PyObject_Hash(ptr noundef %1) #12 ; 3 uses
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %hamt_node_find.exit, label %hamt_hash.exit

hamt_hash.exit:                                   ; preds = %bb.b
  %i.f = lshr i64 %i.d, 32
  %i.g = xor i64 %i.f, %i.d
  %i.h = trunc i64 %i.g to i32
  %i.i = tail call i32 @llvm.umin.i32(i32 %i.h, i32 -2) ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11
  br label %tailrecurse.i

tailrecurse.i:                                    ; preds = %tailrecurse.backedge.i, %hamt_hash.exit
  %.tr.i = phi ptr [ %i.k, %hamt_hash.exit ], [ %.tr.be.i, %tailrecurse.backedge.i ] ; 7 uses
  %.tr22.i = phi i32 [ 0, %hamt_hash.exit ], [ %.tr22.be.i, %tailrecurse.backedge.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %.tr.i, i64 8
  %.val18.i = load ptr, ptr %i.l, align 8, !tbaa !21 ; 2 uses
  %.not.i = icmp eq ptr %.val18.i, @_PyHamt_BitmapNode_Type
  br i1 %.not.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %tailrecurse.i
  %i.m = lshr i32 %i.i, %.tr22.i
  %i.n = and i32 %i.m, 31
  %i.o = shl nuw i32 1, %i.n                      ; 2 uses
  %i.p = getelementptr i8, ptr %.tr.i, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !41   ; 2 uses
  %i.r = and i32 %i.q, %i.o
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %hamt_node_find.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = add i32 %i.o, -1
  %i.u = and i32 %i.q, %i.t
  %i.v = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %i.u)
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = getelementptr i8, ptr %.tr.i, i64 32
  %i.y = zext nneg i32 %i.w to i64
  %i.z = getelementptr [8 x i8], ptr %i.x, i64 %i.y ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !45  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !45 ; 2 uses
  %i.ad = icmp eq ptr %i.aa, null
  br i1 %i.ad, label %tailrecurse.backedge.i, label %bb.e

tailrecurse.backedge.i:                           ; preds = %bb.h, %bb.d
  %.tr.be.i = phi ptr [ %i.ac, %bb.d ], [ %i.am, %bb.h ]
  %.tr22.be.i = add i32 %.tr22.i, 5
  br label %tailrecurse.i

bb.e:                                             ; preds = %bb.d
  %i.ae = tail call i32 @PyObject_RichCompareBool(ptr noundef %1, ptr noundef nonnull %i.aa, i32 noundef 2) #12, !inline_history !57 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %hamt_node_find.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ag = icmp eq i32 %i.ae, 1
  br i1 %i.ag, label %hamt_node_bitmap_find.exit.sink.split.i, label %hamt_node_find.exit

bb.g:                                             ; preds = %tailrecurse.i
  %.not21.i = icmp eq ptr %.val18.i, @_PyHamt_ArrayNode_Type
  br i1 %.not21.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ah = lshr i32 %i.i, %.tr22.i
  %i.ai = and i32 %i.ah, 31
  %i.aj = getelementptr i8, ptr %.tr.i, i64 16
  %i.ak = zext nneg i32 %i.ai to i64
  %i.al = getelementptr [8 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !22 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %hamt_node_find.exit, label %tailrecurse.backedge.i

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr i8, ptr %.tr.i, i64 16    ; 2 uses
  %.val18.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.ap = icmp sgt i64 %.val18.i.i.i, 0
  br i1 %i.ap, label %.lr.ph.i.i.i, label %hamt_node_find.exit

.lr.ph.i.i.i:                                     ; preds = %bb.i
  %i.aq = getelementptr i8, ptr %.tr.i, i64 32
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i.i.i
  %.01219.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.aw, %bb.l ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %.01219.i.i.i
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45
  %i.at = tail call i32 @PyObject_RichCompareBool(ptr noundef %1, ptr noundef %i.as, i32 noundef 2) #12, !inline_history !58 ; 2 uses
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %hamt_node_find.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.av = icmp eq i32 %i.at, 1
  br i1 %i.av, label %hamt_node_collision_find_index.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = add i64 %.01219.i.i.i, 2                ; 2 uses
  %.val.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !44
  %i.ax = icmp slt i64 %i.aw, %.val.i.i.i
  br i1 %i.ax, label %bb.j, label %hamt_node_find.exit, !llvm.loop !46

hamt_node_collision_find_index.exit.i.i:          ; preds = %bb.k
  %i.ay = getelementptr i8, ptr %.tr.i, i64 40
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.01219.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !45
  br label %hamt_node_bitmap_find.exit.sink.split.i

hamt_node_bitmap_find.exit.sink.split.i:          ; preds = %hamt_node_collision_find_index.exit.i.i, %bb.f
  %.sink.i = phi ptr [ %i.ba, %hamt_node_collision_find_index.exit.i.i ], [ %i.ac, %bb.f ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !45
  br label %hamt_node_find.exit

hamt_node_find.exit:                              ; preds = %bb.h, %bb.c, %bb.l, %bb.j, %bb.b, %hamt_node_bitmap_find.exit.sink.split.i, %bb.i, %bb.f, %bb.e, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 2, %hamt_node_bitmap_find.exit.sink.split.i ], [ 0, %bb.b ], [ 1, %bb.i ], [ 1, %bb.f ], [ 0, %bb.e ], [ 1, %bb.l ], [ 0, %bb.j ], [ 1, %bb.c ], [ 1, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 2) i32 @_PyHamt_Eq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.PyHamtIteratorState, align 8 ; 5 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 32
  %i.f = load i64, ptr %i.e, align 8, !tbaa !20
  %i.g = getelementptr i8, ptr %1, i64 32
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20
  %.not = icmp eq i64 %i.f, %i.h
  br i1 %.not, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.j = icmp ugt i32 %i.i, -1073741825
  br i1 %i.j, label %Py_INCREF.exit35, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i32 %i.i, 1
  store i32 %i.k, ptr %0, align 8, !tbaa !18
  br label %Py_INCREF.exit35

Py_INCREF.exit35:                                 ; preds = %bb.c, %bb.d
  %i.l = load i32, ptr %1, align 8, !tbaa !18     ; 2 uses
  %i.m = icmp ugt i32 %i.l, -1073741825
  br i1 %i.m, label %Py_INCREF.exit34, label %bb.e

bb.e:                                             ; preds = %Py_INCREF.exit35
end_hunk_0
begin_hunk_1_@hamt_node_bitmap_assoc:bb.a
  %i.hg = add nsw i32 %i.hf, -1                   ; 2 uses
  store i32 %i.hg, ptr getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496), align 8, !tbaa !18
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.bf, label %Py_XDECREF.exit

bb.bf:                                            ; preds = %bb.be
  tail call void @_Py_Dealloc(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496)) #12
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %.thread, %bb.be, %bb.bf
  %.not239 = icmp eq ptr %.0154.ph, null
  br i1 %.not239, label %bb.bg, label %_Py_NewRef.exit

bb.bg:                                            ; preds = %Py_XDECREF.exit
  %i.hi = load i32, ptr %i.en, align 8, !tbaa !18 ; 2 uses
  %.not.i.i199 = icmp sgt i32 %i.hi, -1
  br i1 %.not.i.i199, label %bb.bh, label %_Py_NewRef.exit

bb.bh:                                            ; preds = %bb.bg
  %i.hj = add nsw i32 %i.hi, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.en, align 8, !tbaa !18
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.bi, label %_Py_NewRef.exit

bb.bi:                                            ; preds = %bb.bh
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.en) #12
  br label %_Py_NewRef.exit

bb.bj:                                            ; preds = %bb.at
  %i.hl = shl nuw nsw i32 %i.i, 1                 ; 3 uses
  store i32 1, ptr %5, align 4, !tbaa !7
  %i.hm = shl nuw nsw i32 %i.el, 1
  %i.hn = add nuw nsw i32 %i.hm, 2
  %i.ho = zext nneg i32 %i.hn to i64              ; 3 uses
  %i.hp = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @_PyHamt_BitmapNode_Type, i64 noundef %i.ho) #12 ; 7 uses
  %i.hq = icmp eq ptr %i.hp, null
  br i1 %i.hq, label %_Py_NewRef.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hr = getelementptr i8, ptr %i.hp, i64 16
  store i64 %i.ho, ptr %i.hr, align 8, !tbaa !44
  %i.hs = getelementptr i8, ptr %i.hp, i64 32     ; 5 uses
  %i.ht = shl nuw nsw i64 %i.ho, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.hs, i8 0, i64 %i.ht, i1 false), !tbaa !45
  %i.hu = getelementptr i8, ptr %i.hp, i64 24     ; 2 uses
  store i32 0, ptr %i.hu, align 8, !tbaa !41
  %i.hv = getelementptr i8, ptr %i.hp, i64 -16    ; 2 uses
  %i.hw = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !26 ; 7 uses
  %i.hy = getelementptr i8, ptr %i.hx, i64 7408
  %i.hz = getelementptr i8, ptr %i.hx, i64 7416   ; 2 uses
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !28 ; 2 uses
  %i.ib = inttoptr i64 %i.ia to ptr               ; 2 uses
  %i.ic = ptrtoint ptr %i.hv to i64               ; 2 uses
  %i.id = load i64, ptr %i.ib, align 8, !tbaa !30
  %i.ie = and i64 %i.id, 3
  %i.if = or i64 %i.ie, %i.ic
  store i64 %i.if, ptr %i.ib, align 8, !tbaa !30
  %i.ig = getelementptr i8, ptr %i.hp, i64 -8     ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !28
  %i.ii = and i64 %i.ih, 3
  %i.ij = or i64 %i.ii, %i.ia
  store i64 %i.ij, ptr %i.ig, align 8, !tbaa !28
  %i.ik = getelementptr i8, ptr %i.hx, i64 7672
  %i.il = load i32, ptr %i.ik, align 8, !tbaa !31
  %i.im = xor i32 %i.il, 1
  %i.in = sext i32 %i.im to i64
  %i.io = ptrtoint ptr %i.hy to i64
  %i.ip = or i64 %i.in, %i.io
  store i64 %i.ip, ptr %i.hv, align 8, !tbaa !30
  store i64 %i.ic, ptr %i.hz, align 8, !tbaa !28
  %i.iq = getelementptr i8, ptr %i.hx, i64 7428   ; 2 uses
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !35
  %i.is = add i32 %i.ir, 1                        ; 2 uses
  store i32 %i.is, ptr %i.iq, align 4, !tbaa !35
  %i.it = getelementptr i8, ptr %i.hx, i64 7656   ; 2 uses
  %i.iu = load i64, ptr %i.it, align 8, !tbaa !36
  %i.iv = add i64 %i.iu, 1
  store i64 %i.iv, ptr %i.it, align 8, !tbaa !36
  %i.iw = getelementptr i8, ptr %i.hx, i64 7424
  %i.ix = load i32, ptr %i.iw, align 8, !tbaa !37
  %i.iy = icmp sgt i32 %i.is, %i.ix
  br i1 %i.iy, label %bb.bl, label %hamt_node_bitmap_new.exit

bb.bl:                                            ; preds = %bb.bk
  %i.iz = getelementptr i8, ptr %i.hx, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.iz) #12
  br label %hamt_node_bitmap_new.exit

hamt_node_bitmap_new.exit:                        ; preds = %bb.bk, %bb.bl
  %.not248 = icmp eq i32 %i.h, 0
  br i1 %.not248, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %hamt_node_bitmap_new.exit
  %i.ja = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.hl to i64
  br label %bb.bm

bb.bm:                                            ; preds = %_Py_XNewRef.exit.1, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %_Py_XNewRef.exit.1 ] ; 4 uses
  %i.jb = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !45 ; 4 uses
  %.not.i.i202 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i202, label %_Py_XNewRef.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !18 ; 2 uses
  %i.je = icmp ugt i32 %i.jd, -1073741825
  br i1 %i.je, label %_Py_XNewRef.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jf = add nuw i32 %i.jd, 1
  store i32 %i.jf, ptr %i.jc, align 8, !tbaa !18
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.bm, %bb.bn, %bb.bo
  %i.jg = getelementptr [8 x i8], ptr %i.hs, i64 %indvars.iv
  store ptr %i.jc, ptr %i.jg, align 8, !tbaa !45
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.jh = getelementptr [8 x i8], ptr %i.ja, i64 %indvars.iv.next
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !45 ; 4 uses
  %.not.i.i202.1 = icmp eq ptr %i.ji, null
  br i1 %.not.i.i202.1, label %_Py_XNewRef.exit.1, label %bb.bp

bb.bp:                                            ; preds = %_Py_XNewRef.exit
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !18 ; 2 uses
  %i.jk = icmp ugt i32 %i.jj, -1073741825
  br i1 %i.jk, label %_Py_XNewRef.exit.1, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jl = add nuw i32 %i.jj, 1
  store i32 %i.jl, ptr %i.ji, align 8, !tbaa !18
  br label %_Py_XNewRef.exit.1

_Py_XNewRef.exit.1:                               ; preds = %bb.bq, %bb.bp, %_Py_XNewRef.exit
  %i.jm = getelementptr [8 x i8], ptr %i.hs, i64 %indvars.iv.next
  store ptr %i.ji, ptr %i.jm, align 8, !tbaa !45
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %bb.bm, !llvm.loop !82

._crit_edge:                                      ; preds = %_Py_XNewRef.exit.1, %hamt_node_bitmap_new.exit
  %i.jn = load i32, ptr %3, align 8, !tbaa !18    ; 2 uses
  %i.jo = icmp ugt i32 %i.jn, -1073741825
  br i1 %i.jo, label %_Py_NewRef.exit203, label %bb.br

bb.br:                                            ; preds = %._crit_edge
  %i.jp = add nuw i32 %i.jn, 1
  store i32 %i.jp, ptr %3, align 8, !tbaa !18
  br label %_Py_NewRef.exit203

_Py_NewRef.exit203:                               ; preds = %._crit_edge, %bb.br
  %i.jq = zext nneg i32 %i.hl to i64
  %i.jr = getelementptr [8 x i8], ptr %i.hs, i64 %i.jq ; 2 uses
  store ptr %3, ptr %i.jr, align 8, !tbaa !45
  %i.js = load i32, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.jt = icmp ugt i32 %i.js, -1073741825
  br i1 %i.jt, label %_Py_NewRef.exit204, label %bb.bs

bb.bs:                                            ; preds = %_Py_NewRef.exit203
  %i.ju = add nuw i32 %i.js, 1
  store i32 %i.ju, ptr %4, align 8, !tbaa !18
  br label %_Py_NewRef.exit204

_Py_NewRef.exit204:                               ; preds = %_Py_NewRef.exit203, %bb.bs
  %i.jv = getelementptr i8, ptr %i.jr, i64 8
  store ptr %4, ptr %i.jv, align 8, !tbaa !45
  %i.jw = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %.val241 = load i64, ptr %i.jw, align 8, !tbaa !44 ; 2 uses
  %i.jx = trunc i64 %.val241 to i32
  %i.jy = icmp ult i32 %i.hl, %i.jx
  br i1 %i.jy, label %.lr.ph243, label %._crit_edge244

.lr.ph243:                                        ; preds = %_Py_NewRef.exit204
  %i.jz = getelementptr i8, ptr %0, i64 32
  %i.ka = shl nuw nsw i32 %i.i, 1
  %i.kb = zext nneg i32 %i.ka to i64
  br label %bb.bt

bb.bt:                                            ; preds = %.lr.ph243, %_Py_XNewRef.exit206
  %.val254 = phi i64 [ %.val241, %.lr.ph243 ], [ %.val, %_Py_XNewRef.exit206 ] ; 2 uses
  %indvars.iv250 = phi i64 [ %i.kb, %.lr.ph243 ], [ %indvars.iv.next251, %_Py_XNewRef.exit206 ] ; 3 uses
  %i.kc = getelementptr [8 x i8], ptr %i.jz, i64 %indvars.iv250
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !45 ; 4 uses
  %.not.i.i205 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i205, label %_Py_XNewRef.exit206, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ke = load i32, ptr %i.kd, align 8, !tbaa !18 ; 2 uses
  %i.kf = icmp ugt i32 %i.ke, -1073741825
  br i1 %i.kf, label %_Py_XNewRef.exit206, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kg = add nuw i32 %i.ke, 1
  store i32 %i.kg, ptr %i.kd, align 8, !tbaa !18
  %.val.pre = load i64, ptr %i.jw, align 8, !tbaa !44
  br label %_Py_XNewRef.exit206

_Py_XNewRef.exit206:                              ; preds = %bb.bt, %bb.bu, %bb.bv
  %.val = phi i64 [ %.val254, %bb.bt ], [ %.val254, %bb.bu ], [ %.val.pre, %bb.bv ] ; 2 uses
  %6 = getelementptr [8 x i8], ptr %i.hs, i64 %indvars.iv250
  %7 = getelementptr i8, ptr %6, i64 16
  store ptr %i.kd, ptr %7, align 8, !tbaa !45
  %indvars.iv.next251 = add nuw nsw i64 %indvars.iv250, 1 ; 2 uses
  %i.kh = and i64 %.val, 4294967295
  %i.ki = icmp samesign ult i64 %indvars.iv.next251, %i.kh
  br i1 %i.ki, label %bb.bt, label %._crit_edge244, !llvm.loop !83

._crit_edge244:                                   ; preds = %_Py_XNewRef.exit206, %_Py_NewRef.exit204
  %i.kj = load i32, ptr %i.e, align 8, !tbaa !41
  %i.kk = or i32 %i.kj, %i.d
  store i32 %i.kk, ptr %i.hu, align 8, !tbaa !41
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %Py_XDECREF.exit, %bb.bj, %bb.au, %bb.w, %bb.x, %bb.bi, %bb.bh, %bb.bg, %bb.an, %bb.am, %bb.al, %hamt_node_new_bitmap_or_collision.exit.thread220, %bb.v, %bb.u, %_Py_NewRef.exit193, %bb.q, %bb.p, %bb.l, %bb.k, %bb.j, %bb.h, %Py_DECREF.exit186, %._crit_edge244, %bb.i, %bb.c, %hamt_node_new_bitmap_or_collision.exit, %Py_DECREF.exit, %bb.r, %bb.m
  %.10 = phi ptr [ %i.dv, %Py_DECREF.exit ], [ null, %bb.i ], [ null, %bb.c ], [ null, %bb.au ], [ %0, %bb.h ], [ null, %bb.r ], [ %i.ae, %bb.l ], [ null, %bb.m ], [ %0, %bb.q ], [ null, %hamt_node_new_bitmap_or_collision.exit ], [ null, %hamt_node_new_bitmap_or_collision.exit.thread220 ], [ null, %bb.an ], [ %.0154.ph, %Py_XDECREF.exit ], [ %i.hp, %._crit_edge244 ], [ %0, %Py_DECREF.exit186 ], [ %i.ae, %bb.j ], [ %i.ae, %bb.k ], [ %0, %bb.p ], [ %i.at, %_Py_NewRef.exit193 ], [ %i.at, %bb.u ], [ %i.at, %bb.v ], [ null, %bb.bi ], [ null, %bb.al ], [ null, %bb.am ], [ null, %bb.w ], [ null, %bb.x ], [ null, %bb.bg ], [ null, %bb.bh ], [ null, %bb.bj ]
  ret ptr %.10
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hamt_node_bitmap_clone(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %.val14 = load i64, ptr %i.a, align 8, !tbaa !44 ; 5 uses
  %i.b = icmp eq i64 %.val14, 0
  br i1 %i.b, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @_PyHamt_BitmapNode_Type, i64 noundef %.val14) #12 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %hamt_node_bitmap_new.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %i.c, i64 16
  store i64 %.val14, ptr %i.e, align 8, !tbaa !44
  %i.f = icmp sgt i64 %.val14, 0
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.c, i64 32
  %i.h = shl nuw i64 %.val14, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.g, i8 0, i64 %i.h, i1 false), !tbaa !45
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  %i.i = getelementptr i8, ptr %i.c, i64 24
  store i32 0, ptr %i.i, align 8, !tbaa !41
  %i.j = getelementptr i8, ptr %i.c, i64 -16      ; 2 uses
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !26   ; 7 uses
  %i.m = getelementptr i8, ptr %i.l, i64 7408
  %i.n = getelementptr i8, ptr %i.l, i64 7416     ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28   ; 2 uses
  %i.p = inttoptr i64 %i.o to ptr                 ; 2 uses
  %i.q = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !30
  %i.s = and i64 %i.r, 3
  %i.t = or i64 %i.s, %i.q
  store i64 %i.t, ptr %i.p, align 8, !tbaa !30
  %i.u = getelementptr i8, ptr %i.c, i64 -8       ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !28
  %i.w = and i64 %i.v, 3
  %i.x = or i64 %i.w, %i.o
  store i64 %i.x, ptr %i.u, align 8, !tbaa !28
  %i.y = getelementptr i8, ptr %i.l, i64 7672
  %i.z = load i32, ptr %i.y, align 8, !tbaa !31
  %i.aa = xor i32 %i.z, 1
  %i.ab = sext i32 %i.aa to i64
  %i.ac = ptrtoint ptr %i.m to i64
  %i.ad = or i64 %i.ab, %i.ac
  store i64 %i.ad, ptr %i.j, align 8, !tbaa !30
  store i64 %i.q, ptr %i.n, align 8, !tbaa !28
  %i.ae = getelementptr i8, ptr %i.l, i64 7428    ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35
  %i.ag = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !35
  %i.ah = getelementptr i8, ptr %i.l, i64 7656    ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !36
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !36
  %i.ak = getelementptr i8, ptr %i.l, i64 7424
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.am = icmp sgt i32 %i.ag, %i.al
  br i1 %i.am, label %bb.d, label %hamt_node_bitmap_new.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr i8, ptr %i.l, i64 7400
  tail call void @_Py_TriggerGC(ptr noundef %i.an) #12
  br label %hamt_node_bitmap_new.exit

hamt_node_bitmap_new.exit:                        ; preds = %._crit_edge.i, %bb.d
  %.val16.pr = load i64, ptr %i.a, align 8, !tbaa !44 ; 2 uses
  %i.ao = icmp sgt i64 %.val16.pr, 0
  br i1 %i.ao, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %hamt_node_bitmap_new.exit
  %i.ap = getelementptr i8, ptr %0, i64 32
  %i.aq = getelementptr i8, ptr %i.c, i64 32
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_Py_XNewRef.exit
  %.val18 = phi i64 [ %.val16.pr, %.lr.ph ], [ %.val, %_Py_XNewRef.exit ] ; 2 uses
  %.017 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %_Py_XNewRef.exit ] ; 3 uses
  %i.ar = getelementptr [8 x i8], ptr %i.ap, i64 %.017
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45 ; 4 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %_Py_XNewRef.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load i32, ptr %i.as, align 8, !tbaa !18 ; 2 uses
  %i.au = icmp ugt i32 %i.at, -1073741825
  br i1 %i.au, label %_Py_XNewRef.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = add nuw i32 %i.at, 1
  store i32 %i.av, ptr %i.as, align 8, !tbaa !18
  %.val.pre = load i64, ptr %i.a, align 8, !tbaa !44
  br label %_Py_XNewRef.exit

_Py_XNewRef.exit:                                 ; preds = %bb.e, %bb.f, %bb.g
  %.val = phi i64 [ %.val18, %bb.e ], [ %.val18, %bb.f ], [ %.val.pre, %bb.g ] ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.aq, i64 %.017
  store ptr %i.as, ptr %i.aw, align 8, !tbaa !45
  %i.ax = add nuw nsw i64 %.017, 1                ; 2 uses
  %i.ay = icmp slt i64 %i.ax, %.val
  br i1 %i.ay, label %bb.e, label %._crit_edge, !llvm.loop !84

._crit_edge:                                      ; preds = %_Py_XNewRef.exit, %bb.a, %hamt_node_bitmap_new.exit
  %.013.i26 = phi ptr [ getelementptr inbounds nuw (i8, ptr @_PyRuntime, i64 119496), %bb.a ], [ %i.c, %hamt_node_bitmap_new.exit ], [ %i.c, %_Py_XNewRef.exit ] ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 24
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !41
  %i.bb = getelementptr i8, ptr %.013.i26, i64 24
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !41
  br label %hamt_node_bitmap_new.exit.thread

hamt_node_bitmap_new.exit.thread:                 ; preds = %bb.b, %._crit_edge
  %.012 = phi ptr [ %.013.i26, %._crit_edge ], [ null, %bb.b ]
  ret ptr %.012
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @hamt_node_bitmap_new(i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  br i1 %i.a, label %_PyObject_GC_TRACK.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @_PyObject_GC_NewVar(ptr noundef nonnull @_PyHamt_BitmapNode_Type, i64 noundef %0) #12 ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_PyObject_GC_TRACK.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %i.b, i64 16
  store i64 %0, ptr %i.d, align 8, !tbaa !44
  %i.e = icmp sgt i64 %0, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.f = getelementptr i8, ptr %i.b, i64 32
  %i.g = shl nuw i64 %0, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %i.g, i1 false), !tbaa !45
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %i.h = getelementptr i8, ptr %i.b, i64 24
  store i32 0, ptr %i.h, align 8, !tbaa !41
  %i.i = getelementptr i8, ptr %i.b, i64 -16      ; 2 uses
  %i.j = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !26   ; 7 uses
  %i.l = getelementptr i8, ptr %i.k, i64 7408
  %i.m = getelementptr i8, ptr %i.k, i64 7416     ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28   ; 2 uses
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.q = load i64, ptr %i.o, align 8, !tbaa !30
  %i.r = and i64 %i.q, 3
  %i.s = or i64 %i.r, %i.p
  store i64 %i.s, ptr %i.o, align 8, !tbaa !30
  %i.t = getelementptr i8, ptr %i.b, i64 -8       ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !28
  %i.v = and i64 %i.u, 3
  %i.w = or i64 %i.v, %i.n
  store i64 %i.w, ptr %i.t, align 8, !tbaa !28
  %i.x = getelementptr i8, ptr %i.k, i64 7672
  %i.y = load i32, ptr %i.x, align 8, !tbaa !31
  %i.z = xor i32 %i.y, 1
  %i.aa = sext i32 %i.z to i64
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = or i64 %i.aa, %i.ab
  store i64 %i.ac, ptr %i.i, align 8, !tbaa !30
  store i64 %i.p, ptr %i.m, align 8, !tbaa !28
  %i.ad = getelementptr i8, ptr %i.k, i64 7428    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !35
  %i.af = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !35
  %i.ag = getelementptr i8, ptr %i.k, i64 7656    ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !36
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.ag, align 8, !tbaa !36
  %i.aj = getelementptr i8, ptr %i.k, i64 7424
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.al = icmp sgt i32 %i.af, %i.ak
  br i1 %i.al, label %bb.d, label %_PyObject_GC_TRACK.exit
end_hunk_1
