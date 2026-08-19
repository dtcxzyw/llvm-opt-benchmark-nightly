inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ir_find_loops:bb.a
  %i.hr = phi i32 [ %i.iy, %ir_worklist_push.exit ], [ %i.hd, %.lr.ph318.preheader ] ; 5 uses
  %i.hs = load i32, ptr %.0193315, align 4, !tbaa !41 ; 4 uses
  %i.ht = lshr i32 %i.hs, 6
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.hu ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !40 ; 2 uses
  %i.hx = and i32 %i.hs, 63
  %i.hy = zext nneg i32 %i.hx to i64
  %i.hz = shl nuw i64 1, %i.hy                    ; 2 uses
  %i.ia = and i64 %i.hz, %i.hw
  %.not268 = icmp eq i64 %i.ia, 0
  br i1 %.not268, label %bb.ab, label %ir_worklist_push.exit

bb.ab:                                            ; preds = %.lr.ph318
  %i.ib = zext i32 %i.hs to i64
  %i.ic = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 44
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !140 ; 3 uses
  %.not241 = icmp eq i32 %i.ie, 0
  br i1 %.not241, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.if = icmp eq i32 %i.ie, %i.hg
  br i1 %i.if, label %ir_worklist_push.exit, label %.preheader

.preheader:                                       ; preds = %bb.ac, %.preheader
  %i.ig = phi i32 [ %i.ik, %.preheader ], [ %i.ie, %bb.ac ] ; 4 uses
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 44
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !140 ; 2 uses
  %.not242 = icmp eq i32 %i.ik, 0
  br i1 %.not242, label %bb.ad, label %.preheader, !llvm.loop !141

bb.ad:                                            ; preds = %.preheader
  %i.il = lshr i32 %i.ig, 6
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !40 ; 2 uses
  %i.ip = and i32 %i.ig, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl nuw i64 1, %i.iq                    ; 2 uses
  %i.is = and i64 %i.io, %i.ir
  %.not269 = icmp eq i64 %i.is, 0
  br i1 %.not269, label %bb.ae, label %ir_worklist_push.exit

bb.ae:                                            ; preds = %bb.ad
  %i.it = or i64 %i.io, %i.ir
  store i64 %i.it, ptr %i.in, align 8, !tbaa !40
  br label %ir_worklist_push.exit.sink.split

bb.af:                                            ; preds = %bb.ab
  %i.iu = or i64 %i.hz, %i.hw
  store i64 %i.iu, ptr %i.hv, align 8, !tbaa !40
  br label %ir_worklist_push.exit.sink.split

ir_worklist_push.exit.sink.split:                 ; preds = %bb.af, %bb.ae
  %.lcssa395.sink = phi i32 [ %i.ig, %bb.ae ], [ %i.hs, %bb.af ]
  %i.iv = add i32 %i.hr, 1
  %i.iw = zext i32 %i.hr to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.iw
  store i32 %.lcssa395.sink, ptr %i.ix, align 4, !tbaa !41
  br label %ir_worklist_push.exit

ir_worklist_push.exit:                            ; preds = %ir_worklist_push.exit.sink.split, %bb.ad, %.lr.ph318, %bb.ac
  %i.iy = phi i32 [ %i.hr, %bb.ac ], [ %i.hr, %bb.ad ], [ %i.hr, %.lr.ph318 ], [ %i.iv, %ir_worklist_push.exit.sink.split ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0193315, i64 4
  %i.ja = add i32 %.0192316, -1                   ; 2 uses
  %.not240 = icmp eq i32 %i.ja, 0
  br i1 %.not240, label %.loopexit271, label %.lr.ph318, !llvm.loop !142

.loopexit271:                                     ; preds = %ir_worklist_push.exit, %bb.aa, %bb.x
  %.lcssa313322 = phi i32 [ %i.hd, %bb.x ], [ %i.hd, %bb.aa ], [ %i.iy, %ir_worklist_push.exit ] ; 2 uses
  %.not237 = icmp eq i32 %.lcssa313322, 0
  br i1 %.not237, label %.sink.split, label %bb.x, !llvm.loop !143

.sink.split:                                      ; preds = %.loopexit271, %ir_array_set.exit
  %.3.ph = phi i32 [ %i.ga, %ir_array_set.exit ], [ %.1197, %.loopexit271 ]
  store i32 0, ptr %i.o, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %ir_worklist_push.exit247, %bb.j
  %.3 = phi i32 [ %.1197, %bb.j ], [ %.1197, %ir_worklist_push.exit247 ], [ %.3.ph, %.sink.split ]
  %.wide = icmp ugt i64 %i.di, 1
  br i1 %.wide, label %bb.h, label %._crit_edge332, !llvm.loop !144

._crit_edge332:                                   ; preds = %bb.ag
  %.pre373 = load i32, ptr %i.df, align 8, !tbaa !92
  %i.jb = icmp eq i32 %.pre373, 0
  br i1 %i.jb, label %._crit_edge332.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge332
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jd = load ptr, ptr %2, align 8, !tbaa !90
  call void @_efree(ptr noundef %i.jd) #17
  store ptr null, ptr %2, align 8, !tbaa !90
  store i32 0, ptr %i.jc, align 8, !tbaa !92
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.je, align 8, !tbaa !93
  br label %._crit_edge332.thread

._crit_edge332.thread:                            ; preds = %bb.g, %bb.ah, %._crit_edge332
  %i.jf = load i32, ptr %i.e, align 4, !tbaa !62
  %i.jg = and i32 %i.jf, 1
  %.not227 = icmp eq i32 %i.jg, 0
  br i1 %.not227, label %.loopexit270, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge332.thread
  %i.jh = load i32, ptr %i.h, align 4, !tbaa !12
  %i.ji = add i32 %i.jh, 1                        ; 2 uses
  %i.jj = icmp ugt i32 %i.ji, 1
  br i1 %i.jj, label %.lr.ph336.preheader, label %.loopexit270

.lr.ph336.preheader:                              ; preds = %bb.ai
  %wide.trip.count369 = zext i32 %i.ji to i64
  br label %.lr.ph336

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %.loopexit
  %indvars.iv366 = phi i64 [ 1, %.lr.ph336.preheader ], [ %indvars.iv.next367, %.loopexit ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv366
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !41
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.jm ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 44
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !140 ; 2 uses
  %.not228 = icmp eq i32 %i.jp, 0
  br i1 %.not228, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph336
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !39
  %i.ju = load i32, ptr %i.jn, align 4, !tbaa !70 ; 2 uses
  %i.jv = lshr i32 %i.ju, 3
  %i.jw = and i32 %i.jv, 1
  %spec.select = add i32 %i.jw, %i.jt             ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  store i32 %spec.select, ptr %i.jx, align 4, !tbaa !39
  %i.jy = and i32 %i.ju, 516
  %.not230 = icmp eq i32 %i.jy, 0
  br i1 %.not230, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jz = load i32, ptr %i.jr, align 4, !tbaa !70
  %i.ka = or i32 %i.jz, 512
  store i32 %i.ka, ptr %i.jr, align 4, !tbaa !70
  %i.kb = icmp ugt i32 %spec.select, 1
  br i1 %i.kb, label %.peel.begin, label %.loopexit

.peel.begin:                                      ; preds = %bb.ak
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 44
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !140
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ke ; 2 uses
  %.promoted333 = load i32, ptr %i.kf, align 4, !tbaa !70 ; 2 uses
  %i.kg = and i32 %.promoted333, 512
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.peel.begin
  %i.ki = or disjoint i32 %.promoted333, 512
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !70
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.peel.begin, %bb.aj, %bb.ak, %.lr.ph336
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.loopexit270, label %.lr.ph336, !llvm.loop !145

.loopexit270:                                     ; preds = %.loopexit, %bb.ai, %._crit_edge332.thread
  call void @_efree(ptr noundef %i.z) #17
  %i.kj = load ptr, ptr %1, align 8, !tbaa !90
  call void @_efree(ptr noundef %i.kj) #17
  %i.kk = load ptr, ptr %i.t, align 8, !tbaa !130
  call void @_efree(ptr noundef %i.kk) #17
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %.loopexit270
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  ret i32 1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree noinline norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ir_collect_irreducible_loops(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93   ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %.loopexit122

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !146    ; 3 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge, %bb.b
  %.0102128 = phi i32 [ 1, %bb.b ], [ %7, %.critedge ] ; 3 uses
  %.phi.trans.insert = zext i32 %.0102128 to i64
  %.phi.trans.insert138 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert138, align 4, !tbaa !41 ; 2 uses
  %i.i = shl nsw i32 %.pre, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.0101126 = phi i32 [ %4, %bb.c ], [ %.0102128, %.lr.ph.preheader ] ; 2 uses
  %4 = add i32 %.0101126, -1                      ; 3 uses
  %5 = zext i32 %4 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %5 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !41   ; 2 uses
  %i.n = shl nsw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !41
  %i.r = load i32, ptr %i.k, align 4, !tbaa !41
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %6 = zext i32 %.0101126 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %6
  store i32 %i.m, ptr %i.t, align 4, !tbaa !41
  store i32 %.pre, ptr %i.l, align 4, !tbaa !41
  %.not112 = icmp eq i32 %4, 0
  br i1 %.not112, label %.critedge, label %.lr.ph, !llvm.loop !147

.critedge:                                        ; preds = %.lr.ph, %bb.c
  %7 = add nuw i32 %.0102128, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %7, %i.f
  br i1 %exitcond.not, label %.loopexit122.loopexit, label %.lr.ph.preheader, !llvm.loop !148

.loopexit122.loopexit:                            ; preds = %.critedge
  %.pre139 = load i32, ptr %i.e, align 8, !tbaa !93
  br label %.loopexit122

.loopexit122:                                     ; preds = %.loopexit122.loopexit, %bb.a
  %i.u = phi i32 [ %.pre139, %.loopexit122.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.not136 = icmp eq i32 %i.u, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph137

.lr.ph137:                                        ; preds = %.loopexit122
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph137, %.loopexit120
  %i.y = phi i32 [ %i.u, %.lr.ph137 ], [ %i.fu, %.loopexit120 ]
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !93
  %i.aa = load ptr, ptr %3, align 8, !tbaa !90
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41 ; 5 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ae ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %.not105 = icmp eq i32 %i.ah, 0
  br i1 %.not105, label %bb.e, label %.loopexit120

bb.e:                                             ; preds = %bb.d
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !70
  %i.aj = or i32 %i.ai, 8
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !70
  store i32 1, ptr %i.ag, align 4, !tbaa !39
  %i.ak = load ptr, ptr %0, align 8, !tbaa !38
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !64
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !39
  %i.aq = icmp eq i8 %i.ap, 107
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 108, ptr %i.ao, align 8, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !130
  %i.as = load i32, ptr %i.w, align 8, !tbaa !92
  %i.at = add i32 %i.as, 63
  %i.au = lshr i32 %i.at, 3
  %i.av = and i32 %i.au, 536870904
  %i.aw = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.aw, i1 false)
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !130 ; 2 uses
  %i.ay = and i32 %i.ad, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = lshr i32 %i.ad, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !40
  %i.bf = or i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !40
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !69
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !71
  %i.bm = shl i32 %i.ad, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn ; 2 uses
  %i.bp = or disjoint i32 %i.bm, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %ir_worklist_push.exit114, %bb.g
  %.0100 = phi ptr [ %i.bj, %bb.g ], [ %i.ct, %ir_worklist_push.exit114 ] ; 2 uses
  %.099 = phi i32 [ %i.bl, %bb.g ], [ %i.cu, %ir_worklist_push.exit114 ]
  %i.bs = load i32, ptr %.0100, align 4, !tbaa !41 ; 4 uses
  %i.bt = shl i32 %i.bs, 1                        ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !41
  %i.bx = load i32, ptr %i.bo, align 4, !tbaa !41
  %i.by = icmp ugt i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.i, label %ir_worklist_push.exit114

bb.i:                                             ; preds = %bb.h
  %i.bz = or disjoint i32 %i.bt, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !41
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !41
  %i.ce = icmp ult i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.j, label %ir_worklist_push.exit114

bb.j:                                             ; preds = %bb.i
  %i.cf = lshr i32 %i.bs, 6
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !40 ; 2 uses
  %i.cj = and i32 %i.bs, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  %i.cm = and i64 %i.ci, %i.cl
  %.not115 = icmp eq i64 %i.cm, 0
  br i1 %.not115, label %bb.k, label %ir_worklist_push.exit114

bb.k:                                             ; preds = %bb.j
  %i.cn = or i64 %i.ci, %i.cl
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !40
  %i.co = load i32, ptr %i.x, align 8, !tbaa !93  ; 2 uses
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.x, align 8, !tbaa !93
  %i.cq = load ptr, ptr %2, align 8, !tbaa !90
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 %i.bs, ptr %i.cs, align 4, !tbaa !41
  br label %ir_worklist_push.exit114

ir_worklist_push.exit114:                         ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %i.ct = getelementptr inbounds nuw i8, ptr %.0100, i64 4
  %i.cu = add i32 %.099, -1                       ; 2 uses
  %.not106 = icmp eq i32 %i.cu, 0
  br i1 %.not106, label %.preheader119, label %bb.h, !llvm.loop !149

.preheader119:                                    ; preds = %ir_worklist_push.exit114
  %i.cv = load i32, ptr %i.x, align 8, !tbaa !93  ; 2 uses
  %.not107134 = icmp eq i32 %i.cv, 0
  br i1 %.not107134, label %.loopexit120, label %.lr.ph135

.loopexit118.loopexit:                            ; preds = %ir_worklist_push.exit
  %.pre140 = load i32, ptr %i.x, align 8, !tbaa !93
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit118.loopexit, %bb.m
  %i.cw = phi i32 [ %.pre140, %.loopexit118.loopexit ], [ %i.cy, %bb.m ] ; 2 uses
  %.not107 = icmp eq i32 %i.cw, 0
  br i1 %.not107, label %.loopexit120, label %.lr.ph135, !llvm.loop !150

.lr.ph135:                                        ; preds = %.preheader119, %.loopexit118
  %i.cx = phi i32 [ %i.cw, %.loopexit118 ], [ %i.cv, %.preheader119 ]
  %i.cy = add i32 %i.cx, -1                       ; 3 uses
  store i32 %i.cy, ptr %i.x, align 8, !tbaa !93
  %i.cz = load ptr, ptr %2, align 8, !tbaa !90
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.da
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !41 ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.dd ; 6 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 44 ; 2 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !140
  %.not108 = icmp eq i32 %i.dg, 0
  br i1 %.not108, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph135
  store i32 %i.ad, ptr %i.df, align 4, !tbaa !140
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph135
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 24 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !71 ; 2 uses
  %.not109130 = icmp eq i32 %i.di, 0
  br i1 %.not109130, label %.loopexit118, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.m
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 20
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !69
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph133, %ir_worklist_push.exit
  %.097132 = phi i32 [ %i.di, %.lr.ph133 ], [ %i.ft, %ir_worklist_push.exit ]
  %.098131 = phi ptr [ %i.dm, %.lr.ph133 ], [ %i.fs, %ir_worklist_push.exit ] ; 2 uses
  %i.do = load i32, ptr %.098131, align 4, !tbaa !41 ; 4 uses
  %i.dp = load ptr, ptr %i.v, align 8, !tbaa !130 ; 2 uses
  %i.dq = lshr i32 %i.do, 6
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.dr
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !40
  %i.du = and i32 %i.do, 63
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = shl nuw i64 1, %i.dv
  %i.dx = and i64 %i.dw, %i.dt
  %.not116 = icmp eq i64 %i.dx, 0
  br i1 %.not116, label %bb.o, label %ir_worklist_push.exit

bb.o:                                             ; preds = %bb.n
  %i.dy = zext i32 %i.do to i64
  %i.dz = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.dy
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 44
end_hunk_0
