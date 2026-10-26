Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/decide?download=true
inline.NumInlined: 236
inline.NumDeleted: 114
begin_hunk_0_@_ZN7CaDiCaL8Internal15better_decisionEii:bb.a
  %i.a = tail call i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.b = tail call i32 @llvm.abs.i32(i32 %2, i1 true)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !178, !range !170, !noundef !173
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = zext nneg i32 %i.a to i64                ; 2 uses
  %i.g = zext nneg i32 %i.b to i64                ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 688
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !179  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.f
  %i.k = load double, ptr %i.j, align 8, !tbaa !180
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.g
  %i.m = load double, ptr %i.l, align 8, !tbaa !180
  %i.n = fcmp ogt double %i.k, %i.m
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !164  ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.f
  %i.r = load i64, ptr %i.q, align 8, !tbaa !165
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.g
  %i.t = load i64, ptr %i.s, align 8, !tbaa !165
  %i.u = icmp sgt i64 %i.r, %i.t
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.n, %bb.b ], [ %i.u, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 21) i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !195  ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 6080
  %i.d = load i32, ptr %i.c, align 8, !tbaa !196
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 3608
  %i.f = load i32, ptr %i.e, align 8, !tbaa !197
  %.not = icmp sgt i32 %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 6048
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 3620
  %i.i = load i32, ptr %i.h, align 4, !tbaa !198
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.d:                                             ; preds = %bb.b
  %i.k = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.b)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.c, %bb.d
  %i.l = phi double [ %i.j, %bb.c ], [ %i.k, %bb.d ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.b, ptr noundef nonnull align 8 dereferenceable(36) %i.g, double noundef %i.l)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !175
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1120 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !177  ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp ugt i64 %i.w, %i.o
  br i1 %i.x, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.o
  %i.z = load i32, ptr %i.y, align 4, !tbaa !158  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157
  %i.ac = sext i32 %i.z to i64
  %i.ad = getelementptr inbounds i8, ptr %i.ab, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !159 ; 2 uses
  %i.af = icmp slt i8 %i.ae, 0
  br i1 %i.af, label %.thread98, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not69 = icmp eq i8 %i.ae, 0
  br i1 %.not69, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal15new_trail_levelEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  tail call void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.thread93

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.z)
  br label %.thread93

bb.j:                                             ; preds = %bb.e
  %i.ag = icmp eq i64 %i.w, %i.o
  br i1 %i.ag, label %bb.k, label %bb.v

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !176 ; 2 uses
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !177 ; 7 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = ashr exact i64 %i.an, 2
  %.not57 = icmp eq ptr %i.aj, %i.ak
  br i1 %.not57, label %bb.v, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !157
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.q
  %.040111 = phi i64 [ 0, %.lr.ph ], [ %i.bs, %bb.q ] ; 2 uses
  %.041110 = phi i32 [ 0, %.lr.ph ], [ %i.av, %bb.q ]
  %.042109 = phi i32 [ 0, %.lr.ph ], [ %.2.ph, %bb.q ] ; 6 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %.040111 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !158 ; 7 uses
  store i32 %.041110, ptr %i.au, align 4, !tbaa !158
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds i8, ptr %i.aq, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !159 ; 2 uses
  %i.az = icmp slt i8 %i.ay, 0
  br i1 %i.az, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not63 = icmp eq i8 %i.ay, 0
  br i1 %.not63, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %.not64 = icmp eq i32 %.042109, 0
  br i1 %.not64, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.av, i1 true)
  %i.bb = tail call i32 @llvm.abs.i32(i32 %.042109, i1 true)
  %i.bc = load i8, ptr %i.ar, align 4, !tbaa !178, !range !170, !noundef !173
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = zext nneg i32 %i.ba to i64              ; 2 uses
  %i.bf = zext nneg i32 %i.bb to i64              ; 2 uses
  br i1 %i.bd, label %.split, label %_ZN7CaDiCaL8Internal15better_decisionEii.exit

.split:                                           ; preds = %bb.o
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !179 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !180
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !180
  %i.bl = fcmp ogt double %i.bi, %i.bk
  br i1 %i.bl, label %bb.p, label %bb.q

_ZN7CaDiCaL8Internal15better_decisionEii.exit:    ; preds = %bb.o
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !164 ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.be
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !165
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bf
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !165
  %i.br = icmp sgt i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split, %_ZN7CaDiCaL8Internal15better_decisionEii.exit, %bb.n
  br label %bb.q

bb.q:                                             ; preds = %bb.l, %bb.p, %_ZN7CaDiCaL8Internal15better_decisionEii.exit, %.split
  %.2.ph = phi i32 [ %.042109, %.split ], [ %.042109, %_ZN7CaDiCaL8Internal15better_decisionEii.exit ], [ %i.av, %bb.p ], [ %.042109, %bb.l ] ; 2 uses
  %i.bs = add i64 %.040111, 1                     ; 2 uses
  %.not62 = icmp eq i64 %i.bs, %i.ao
  br i1 %.not62, label %.thread85, label %bb.l, !llvm.loop !194

bb.r:                                             ; preds = %bb.m
  %.not65 = icmp eq i32 %i.av, 0
  br i1 %.not65, label %.thread85, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 %i.av, ptr %i.ak, align 4, !tbaa !158
  tail call void @_ZN7CaDiCaL8Internal15new_trail_levelEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef 0)
  tail call void @_ZN7CaDiCaL8Internal15notify_decisionEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %.thread93

.thread85:                                        ; preds = %bb.q, %bb.r
  %.042106 = phi i32 [ %.042109, %bb.r ], [ %.2.ph, %bb.q ] ; 2 uses
  %.not67113 = icmp eq i64 %i.an, 4
  br i1 %.not67113, label %._crit_edge, label %.lr.ph115.preheader

.lr.ph115.preheader:                              ; preds = %.thread85
  %scevgep = getelementptr i8, ptr %i.ak, i64 4
  %i.bt = add i64 %i.an, -4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ak, ptr align 4 %scevgep, i64 %i.bt, i1 false), !tbaa !158
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph115.preheader, %.thread85
  %i.bu = getelementptr i8, ptr %i.ak, i64 %i.an
  %i.bv = getelementptr i8, ptr %i.bu, i64 -4
  store i32 %i.av, ptr %i.bv, align 4, !tbaa !158
  %.not68 = icmp eq i32 %.042106, 0
  br i1 %.not68, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  tail call void @_ZN7CaDiCaL8Internal22search_assume_decisionEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %.042106)
  br label %.thread93

bb.u:                                             ; preds = %._crit_edge
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i8 1, ptr %i.bw, align 8, !tbaa !199
  br label %.thread98

bb.v:                                             ; preds = %bb.k, %bb.j
  %i.bx = tail call noundef i32 @_ZN7CaDiCaL8Internal12ask_decisionEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 2 uses
  %i.by = load i32, ptr %i.m, align 4, !tbaa !175
  %i.bz = sext i32 %i.by to i64                   ; 2 uses
  %i.ca = load ptr, ptr %i.q, align 8, !tbaa !176
  %i.cb = load ptr, ptr %i.p, align 8, !tbaa !177
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = sub i64 %i.cc, %i.cd
  %i.cf = ashr exact i64 %i.ce, 2                 ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, %i.bz
  br i1 %i.cg, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = icmp eq i64 %i.cf, %i.bz
  br i1 %i.ch, label %bb.x, label %bb.ag

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !176
  %i.cl = load ptr, ptr %i.ci, align 8, !tbaa !177
  %.not58 = icmp eq ptr %i.ck, %i.cl
  br i1 %.not58, label %bb.ag, label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !195 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 6080
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !196
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 3608
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !197
  %.not60 = icmp sgt i32 %i.co, %i.cq
  br i1 %.not60, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cm, i64 6048
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cm, i64 3620
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !198
  %.not.i72 = icmp eq i32 %i.ct, 0
  br i1 %.not.i72, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cu = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.cm)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit73

bb.ab:                                            ; preds = %bb.z
  %i.cv = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.cm)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit73

_ZN7CaDiCaL8Internal4timeEv.exit73:               ; preds = %bb.aa, %bb.ab
  %i.cw = phi double [ %i.cu, %bb.aa ], [ %i.cv, %bb.ab ]
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.cm, ptr noundef nonnull align 8 dereferenceable(36) %i.cr, double noundef %i.cw)
  br label %bb.ac

bb.ac:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit73, %bb.y
  %i.cx = tail call noundef i32 @_ZN7CaDiCaL8Internal6decideEv(ptr noundef nonnull align 8 dereferenceable(7288) %0) ; 2 uses
  %i.cy = load ptr, ptr %i.a, align 8, !tbaa !195 ; 7 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 6080
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !196
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 3608
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !197
  %.not61 = icmp sgt i32 %i.da, %i.dc
  br i1 %.not61, label %bb.at, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cy, i64 6048
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 3620
  %i.df = load i32, ptr %i.de, align 4, !tbaa !198
  %.not.i74 = icmp eq i32 %i.df, 0
  br i1 %.not.i74, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dg = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.cy)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit75

bb.af:                                            ; preds = %bb.ad
  %i.dh = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.cy)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit75

_ZN7CaDiCaL8Internal4timeEv.exit75:               ; preds = %bb.ae, %bb.af
  %i.di = phi double [ %i.dg, %bb.ae ], [ %i.dh, %bb.af ]
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.cy, ptr noundef nonnull align 8 dereferenceable(36) %i.dd, double noundef %i.di)
  br label %bb.at

bb.ag:                                            ; preds = %bb.x, %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 3936 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !200
  %i.dl = add nsw i64 %i.dk, 1
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !200
  %.not59 = icmp eq i32 %i.bx, 0
  br i1 %.not59, label %bb.ah, label %bb.as

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3700
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !169
  %.not.i.i = icmp ne i32 %i.dn, 0
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.dp = load i8, ptr %i.do, align 4, !range !170
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = select i1 %.not.i.i, i1 %i.dq, i1 false
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  br i1 %i.dr, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !167
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !158 ; 2 uses
  %i.dw = load ptr, ptr %i.ds, align 8, !tbaa !157
  %i.dx = sext i32 %i.dv to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !159
  %.not2.i.i = icmp eq i8 %i.dz, 0
  br i1 %.not2.i.i, label %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ai, %.lr.ph.i.i
  %i.ea = tail call noundef i32 @_ZN7CaDiCaL4heapINS_13score_smallerEE9pop_frontEv(ptr noundef nonnull align 8 dereferenceable(56) %i.dt) ; 0 uses
  %i.eb = load ptr, ptr %i.dt, align 8, !tbaa !167
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !158 ; 2 uses
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !157
  %i.ee = sext i32 %i.ec to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !159
  %.not.i1.i = icmp eq i8 %i.eg, 0
  br i1 %.not.i1.i, label %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit, label %.lr.ph.i.i, !llvm.loop !1

bb.aj:                                            ; preds = %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 584 ; 2 uses
  %i.ei = load ptr, ptr %i.ds, align 8, !tbaa !157 ; 2 uses
  %.09.i.i = load i32, ptr %i.eh, align 8, !tbaa !158 ; 3 uses
  %i.ej = sext i32 %.09.i.i to i64
  %i.ek = getelementptr inbounds i8, ptr %i.ei, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !159
  %.not10.i.i = icmp eq i8 %i.el, 0
  br i1 %.not10.i.i, label %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit, label %.lr.ph.i2.i

.lr.ph.i2.i:                                      ; preds = %bb.aj
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !160
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ak, %.lr.ph.i2.i
  %.012.i.i = phi i32 [ %.09.i.i, %.lr.ph.i2.i ], [ %.0.i.i, %bb.ak ]
  %.0711.i.i = phi i64 [ 0, %.lr.ph.i2.i ], [ %i.er, %bb.ak ]
  %i.eo = tail call noundef i32 @llvm.abs.i32(i32 %.012.i.i, i1 true)
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.ep
  %i.er = add nuw nsw i64 %.0711.i.i, 1           ; 2 uses
  %.0.i.i = load i32, ptr %i.eq, align 4, !tbaa !158 ; 4 uses
  %i.es = sext i32 %.0.i.i to i64                 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.ei, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !159
  %.not.i3.i = icmp eq i8 %i.eu, 0
  br i1 %.not.i3.i, label %._crit_edge.i.i, label %bb.ak, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %bb.ak
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !162
  %i.ex = add nsw i64 %i.ew, %i.er
  store i64 %i.ex, ptr %i.ev, align 8, !tbaa !162
  store i32 %.0.i.i, ptr %i.eh, align 8, !tbaa !163
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !164
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.es
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !165
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 592
  store i64 %i.fb, ptr %i.fc, align 8, !tbaa !166
  br label %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit

_ZN7CaDiCaL8Internal22next_decision_variableEv.exit: ; preds = %.lr.ph.i.i, %bb.ai, %bb.aj, %._crit_edge.i.i
  %.0.i76 = phi i32 [ %.09.i.i, %bb.aj ], [ %i.dv, %bb.ai ], [ %.0.i.i, %._crit_edge.i.i ], [ %i.ec, %.lr.ph.i.i ] ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !201 ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, 1
  br i1 %i.ff, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit
  %i.fg = load i8, ptr %i.do, align 4, !tbaa !178, !range !170, !noundef !173
  %i.fh = trunc nuw i8 %i.fg to i1
  %i.fi = icmp ne i32 %i.fe, 0
  %spec.select = and i1 %i.fi, %i.fh
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit
  %i.fj = phi i1 [ true, %_ZN7CaDiCaL8Internal22next_decision_variableEv.exit ], [ %spec.select, %bb.al ]
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 3576
  %i.fl = load i32, ptr %i.fk, align 8, !tbaa !171
  %.not.i77 = icmp eq i32 %i.fl, 0
  %i.fm = select i1 %.not.i77, i32 -1, i32 1      ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL4heapINS_13score_smallerEE4downEj:bb.a
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2                 ; 2 uses
  %.not.i.i17 = icmp ugt i64 %i.bg, %i.a
  br i1 %.not.i.i17, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = sub nuw nsw i64 %i.d, %i.bg
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bc, i64 noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i18 = load ptr, ptr %i.b, align 8, !tbaa !167 ; 2 uses
  %.phi.trans.insert34 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i18, i64 %i.a
  %.pre35 = load i32, ptr %.phi.trans.insert34, align 4, !tbaa !158
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !167
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit: ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %.pre.i.i18, %bb.h ], [ %i.aq, %bb.g ]
  %i.bj = phi ptr [ %.pre36, %bb.h ], [ %i.ar, %bb.g ]
  %i.bk = phi i32 [ %.pre35, %bb.h ], [ %i.as, %bb.g ]
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add i32 %i.bl, 2
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !158 ; 3 uses
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !203
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 688
  %i.bs = zext i32 %i.ao to i64
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !179 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !180 ; 3 uses
  %i.bw = zext i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !180 ; 3 uses
  %i.bz = fcmp olt double %i.bv, %i.by
  %i.ca = fcmp ule double %i.bv, %i.by
  %i.cb = icmp ugt i32 %i.ao, %i.bp
  %spec.select.i = and i1 %i.cb, %i.ca
  %.0.i = or i1 %i.bz, %spec.select.i             ; 2 uses
  %spec.select = select i1 %.0.i, i32 %i.bp, i32 %i.ao ; 2 uses
  %i.cc = select i1 %.0.i, double %i.by, double %i.bv
  %.pre43 = zext i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit
  %.pre-phi = phi i64 [ %.phi.trans.insert40, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %.pre43, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 3 uses
  %i.cd = phi ptr [ %i.aq, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %i.bi, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 2 uses
  %i.ce = phi double [ %.pre42, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %i.cc, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 2 uses
  %i.cf = phi ptr [ %.pre39, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %i.bt, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ]
  %.1 = phi i32 [ %i.ao, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %spec.select, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.a
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !180 ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.ce
  %i.cj = fcmp ule double %i.ch, %i.ce
  %i.ck = icmp ugt i32 %1, %.1
  %spec.select.i19 = and i1 %i.ck, %i.cj
  %.0.i20 = or i1 %i.ci, %spec.select.i19
  br i1 %.0.i20, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !168 ; 3 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cd to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2                 ; 3 uses
  %.not.i.i21 = icmp ugt i64 %i.cp, %i.a
  br i1 %.not.i.i21, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = sub nuw nsw i64 %i.d, %i.cp
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cl, i64 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i22 = load ptr, ptr %i.b, align 8, !tbaa !167 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !168 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i22 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i: ; preds = %bb.k, %bb.j
  %i.cr = phi ptr [ %i.cd, %bb.j ], [ %.pre.i.i22, %bb.k ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.cp, %bb.j ], [ %.pre15.i, %bb.k ] ; 2 uses
  %i.cs = phi ptr [ %i.cl, %bb.j ], [ %.pre.i, %bb.k ]
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %.pre-phi
  br i1 %.not.i6.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.ct = add nuw nsw i64 %.pre-phi, 1
  %i.cu = sub nuw nsw i64 %i.ct, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cs, i64 noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !167
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.cv = phi ptr [ %.pre.i7.i, %bb.l ], [ %i.cr, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.a ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.pre-phi ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !158
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %0, align 8, !tbaa !167   ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cz ; 2 uses
  %i.dc = load i32, ptr %i.cx, align 4, !tbaa !158
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.db, align 4, !tbaa !158
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !158
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !158
  store i32 %i.df, ptr %i.de, align 4, !tbaa !158
  %i.dh = load i32, ptr %i.cw, align 4, !tbaa !158
  %i.di = load i32, ptr %i.cx, align 4, !tbaa !158
  store i32 %i.di, ptr %i.cw, align 4, !tbaa !158
  store i32 %i.dh, ptr %i.cx, align 4, !tbaa !158
  br label %bb.b

.thread:                                          ; preds = %bb.i, %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !212
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !168  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !158    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !213

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !168
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !158
  store i32 %i.s, ptr %i.d, align 4, !tbaa !158
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !168
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !213

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !158
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !158
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !158
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !204

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !158
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !205

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !158
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !206

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !158
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !207

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !168
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !213

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !168
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !158
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !158
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !168
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !158
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !208

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !158
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !209

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !167   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #12
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !158   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !158
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !158
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !210

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !158
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !211

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !213

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !158
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !158
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !213

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !158
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !158
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #14
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !167
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !168
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.da, ptr %i.a, align 8, !tbaa !212
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !161}
!1 = distinct !{!1, !161}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSN7CaDiCaL9ReluctantE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 41}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 long", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseImSaImEE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorImSaImEE", !17, i64 0}
!19 = !{!"any p2 pointer", !13, i64 0}
!20 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !19, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !23, i64 0}
!25 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !13, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !28, i64 0}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIaSaIaEE", !33, i64 0}
!35 = !{!"_ZTSN7CaDiCaL6PhasesE", !34, i64 0, !34, i64 24, !34, i64 48, !34, i64 72, !34, i64 96, !34, i64 120}
!36 = !{!"p1 int", !13, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIjSaIjEE", !39, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIiSaIiEE", !43, i64 0}
!45 = !{!"_ZTSN7CaDiCaL5QueueE", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16}
!46 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !13, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !49, i64 0}
!51 = !{!"double", !6, i64 0}
!52 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !13, i64 0}
!53 = !{!"_ZTSN7CaDiCaL13score_smallerE", !52, i64 0}
!54 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !40, i64 0, !40, i64 24, !53, i64 48}
!55 = !{!"p1 double", !13, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIdSaIdEE", !58, i64 0}
!60 = !{!"p1 _ZTSN7CaDiCaL3VarE", !13, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !63, i64 0}
!65 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !13, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
end_hunk_1
