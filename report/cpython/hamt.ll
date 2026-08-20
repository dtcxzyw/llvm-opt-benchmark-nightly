inline.NumInlined: 175
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hamt_node_bitmap_assoc:bb.a
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
end_hunk_0
