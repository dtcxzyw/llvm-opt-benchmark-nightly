Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_cfg?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@ir_find_loops:bb.a
  %i.hr = phi i32 [ %i.iy, %ir_worklist_push.exit ], [ %i.hd, %.lr.ph318.preheader ] ; 5 uses
  %i.hs = load i32, ptr %.0193315, align 4, !tbaa !39 ; 4 uses
  %i.ht = lshr i32 %i.hs, 6
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.hu ; 2 uses
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !38 ; 2 uses
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
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !69 ; 3 uses
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
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !69 ; 2 uses
  %.not242 = icmp eq i32 %i.ik, 0
  br i1 %.not242, label %bb.ad, label %.preheader, !llvm.loop !150

bb.ad:                                            ; preds = %.preheader
  %i.il = lshr i32 %i.ig, 6
  %i.im = zext nneg i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.im ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !38 ; 2 uses
  %i.ip = and i32 %i.ig, 63
  %i.iq = zext nneg i32 %i.ip to i64
  %i.ir = shl nuw i64 1, %i.iq                    ; 2 uses
  %i.is = and i64 %i.io, %i.ir
  %.not269 = icmp eq i64 %i.is, 0
  br i1 %.not269, label %bb.ae, label %ir_worklist_push.exit

bb.ae:                                            ; preds = %bb.ad
  %i.it = or i64 %i.io, %i.ir
  store i64 %i.it, ptr %i.in, align 8, !tbaa !38
  br label %ir_worklist_push.exit.sink.split

bb.af:                                            ; preds = %bb.ab
  %i.iu = or i64 %i.hz, %i.hw
  store i64 %i.iu, ptr %i.hv, align 8, !tbaa !38
  br label %ir_worklist_push.exit.sink.split

ir_worklist_push.exit.sink.split:                 ; preds = %bb.af, %bb.ae
  %.lcssa395.sink = phi i32 [ %i.ig, %bb.ae ], [ %i.hs, %bb.af ]
  %i.iv = add i32 %i.hr, 1
  %i.iw = zext i32 %i.hr to i64
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.el, i64 %i.iw
  store i32 %.lcssa395.sink, ptr %i.ix, align 4, !tbaa !39
  br label %ir_worklist_push.exit

ir_worklist_push.exit:                            ; preds = %ir_worklist_push.exit.sink.split, %bb.ad, %.lr.ph318, %bb.ac
  %i.iy = phi i32 [ %i.hr, %bb.ac ], [ %i.hr, %bb.ad ], [ %i.hr, %.lr.ph318 ], [ %i.iv, %ir_worklist_push.exit.sink.split ] ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0193315, i64 4
  %i.ja = add i32 %.0192316, -1                   ; 2 uses
  %.not240 = icmp eq i32 %i.ja, 0
  br i1 %.not240, label %.loopexit271, label %.lr.ph318, !llvm.loop !151

.loopexit271:                                     ; preds = %ir_worklist_push.exit, %bb.aa, %bb.x
  %.lcssa313322 = phi i32 [ %i.hd, %bb.x ], [ %i.hd, %bb.aa ], [ %i.iy, %ir_worklist_push.exit ] ; 2 uses
  %.not237 = icmp eq i32 %.lcssa313322, 0
  br i1 %.not237, label %.sink.split, label %bb.x, !llvm.loop !152

.sink.split:                                      ; preds = %.loopexit271, %ir_array_set.exit
  %.3.ph = phi i32 [ %i.ga, %ir_array_set.exit ], [ %.1197, %.loopexit271 ]
  store i32 0, ptr %i.o, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %.sink.split, %ir_worklist_push.exit247, %bb.j
  %.3 = phi i32 [ %.1197, %bb.j ], [ %.1197, %ir_worklist_push.exit247 ], [ %.3.ph, %.sink.split ]
  %.wide = icmp ugt i64 %i.di, 1
  br i1 %.wide, label %bb.h, label %._crit_edge332, !llvm.loop !153

._crit_edge332:                                   ; preds = %bb.ag
  %.pre373 = load i32, ptr %i.df, align 8, !tbaa !59
  %i.jb = icmp eq i32 %.pre373, 0
  br i1 %i.jb, label %._crit_edge332.thread, label %bb.ah

bb.ah:                                            ; preds = %._crit_edge332
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.jd = load ptr, ptr %2, align 8, !tbaa !58
  call void @_efree(ptr noundef %i.jd) #17
  store ptr null, ptr %2, align 8, !tbaa !58
  store i32 0, ptr %i.jc, align 8, !tbaa !59
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.je, align 8, !tbaa !61
  br label %._crit_edge332.thread

._crit_edge332.thread:                            ; preds = %bb.g, %bb.ah, %._crit_edge332
  %i.jf = load i32, ptr %i.e, align 4, !tbaa !47
  %i.jg = and i32 %i.jf, 1
  %.not227 = icmp eq i32 %i.jg, 0
  br i1 %.not227, label %.loopexit270, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge332.thread
  %i.jh = load i32, ptr %i.h, align 4, !tbaa !31
  %i.ji = add i32 %i.jh, 1                        ; 2 uses
  %i.jj = icmp ugt i32 %i.ji, 1
  br i1 %i.jj, label %.lr.ph336.preheader, label %.loopexit270

.lr.ph336.preheader:                              ; preds = %bb.ai
  %wide.trip.count369 = zext i32 %i.ji to i64
  br label %.lr.ph336

.lr.ph336:                                        ; preds = %.lr.ph336.preheader, %.loopexit
  %indvars.iv366 = phi i64 [ 1, %.lr.ph336.preheader ], [ %indvars.iv.next367, %.loopexit ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv366
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !39
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.jm ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 44
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !69 ; 2 uses
  %.not228 = icmp eq i32 %i.jp, 0
  br i1 %.not228, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph336
  %i.jq = zext i32 %i.jp to i64
  %i.jr = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.jq ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 48
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !37
  %i.ju = load i32, ptr %i.jn, align 4, !tbaa !54 ; 2 uses
  %i.jv = lshr i32 %i.ju, 3
  %i.jw = and i32 %i.jv, 1
  %spec.select = add i32 %i.jw, %i.jt             ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jn, i64 48
  store i32 %spec.select, ptr %i.jx, align 4, !tbaa !37
  %i.jy = and i32 %i.ju, 516
  %.not230 = icmp eq i32 %i.jy, 0
  br i1 %.not230, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jz = load i32, ptr %i.jr, align 4, !tbaa !54
  %i.ka = or i32 %i.jz, 512
  store i32 %i.ka, ptr %i.jr, align 4, !tbaa !54
  %i.kb = icmp ugt i32 %spec.select, 1
  br i1 %i.kb, label %.peel.begin, label %.loopexit

.peel.begin:                                      ; preds = %bb.ak
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 44
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !69
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ke ; 2 uses
  %.promoted333 = load i32, ptr %i.kf, align 4, !tbaa !54 ; 2 uses
  %i.kg = and i32 %.promoted333, 512
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.al, label %.loopexit

bb.al:                                            ; preds = %.peel.begin
  %i.ki = or disjoint i32 %.promoted333, 512
  store i32 %i.ki, ptr %i.kf, align 4, !tbaa !54
  br label %.loopexit

.loopexit:                                        ; preds = %bb.al, %.peel.begin, %bb.aj, %bb.ak, %.lr.ph336
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %.loopexit270, label %.lr.ph336, !llvm.loop !154

.loopexit270:                                     ; preds = %.loopexit, %bb.ai, %._crit_edge332.thread
  call void @_efree(ptr noundef %i.z) #17
  %i.kj = load ptr, ptr %1, align 8, !tbaa !58
  call void @_efree(ptr noundef %i.kj) #17
  %i.kk = load ptr, ptr %i.t, align 8, !tbaa !68
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
  %i.f = load i32, ptr %i.e, align 8, !tbaa !61   ; 3 uses
  %i.g = icmp ugt i32 %i.f, 1
  br i1 %i.g, label %bb.b, label %.loopexit122

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %3, align 8, !tbaa !162    ; 3 uses
  br label %.preheader121

.preheader121:                                    ; preds = %bb.b, %.critedge
  %.0102126 = phi i32 [ 1, %bb.b ], [ %7, %.critedge ] ; 3 uses
  %.phi.trans.insert = zext i32 %.0102126 to i64
  %.phi.trans.insert135 = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert135, align 4, !tbaa !39 ; 2 uses
  %i.i = shl nsw i32 %.pre, 1
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %.preheader121, %bb.d
  %.0101125 = phi i32 [ %.0102126, %.preheader121 ], [ %4, %bb.d ] ; 2 uses
  %4 = add i32 %.0101125, -1                      ; 3 uses
  %5 = zext i32 %4 to i64
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %5 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !39   ; 2 uses
  %i.n = shl nsw i32 %i.m, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %1, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !39
  %i.r = load i32, ptr %i.k, align 4, !tbaa !39
  %i.s = icmp ugt i32 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %6 = zext i32 %.0101125 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %6
  store i32 %i.m, ptr %i.t, align 4, !tbaa !39
  store i32 %.pre, ptr %i.l, align 4, !tbaa !39
  %.not112 = icmp eq i32 %4, 0
  br i1 %.not112, label %.critedge, label %bb.c, !llvm.loop !155

.critedge:                                        ; preds = %bb.d, %bb.c
  %7 = add nuw i32 %.0102126, 1                   ; 2 uses
  %exitcond.not = icmp eq i32 %7, %i.f
  br i1 %exitcond.not, label %.loopexit122.loopexit, label %.preheader121, !llvm.loop !156

.loopexit122.loopexit:                            ; preds = %.critedge
  %.pre136 = load i32, ptr %i.e, align 8, !tbaa !61
  br label %.loopexit122

.loopexit122:                                     ; preds = %.loopexit122.loopexit, %bb.a
  %i.u = phi i32 [ %.pre136, %.loopexit122.loopexit ], [ %i.f, %bb.a ] ; 2 uses
  %.not133 = icmp eq i32 %i.u, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph134

.lr.ph134:                                        ; preds = %.loopexit122
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph134, %.loopexit120
  %i.y = phi i32 [ %i.u, %.lr.ph134 ], [ %i.fv, %.loopexit120 ]
  %i.z = add i32 %i.y, -1                         ; 2 uses
  store i32 %i.z, ptr %i.e, align 8, !tbaa !61
  %i.aa = load ptr, ptr %3, align 8, !tbaa !58
  %i.ab = zext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !39 ; 5 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.ae ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  %.not105 = icmp eq i32 %i.ah, 0
  br i1 %.not105, label %bb.f, label %.loopexit120

bb.f:                                             ; preds = %bb.e
  %i.ai = load i32, ptr %i.af, align 4, !tbaa !54
  %i.aj = or i32 %i.ai, 8
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !54
  store i32 1, ptr %i.ag, align 4, !tbaa !37
  %i.ak = load ptr, ptr %0, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !49
  %i.an = sext i32 %i.am to i64
  %i.ao = getelementptr inbounds [16 x i8], ptr %i.ak, i64 %i.an ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !37
  %i.aq = icmp eq i8 %i.ap, 107
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i8 108, ptr %i.ao, align 8, !tbaa !37
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ar = load ptr, ptr %i.v, align 8, !tbaa !68
  %i.as = load i32, ptr %i.w, align 8, !tbaa !59
  %i.at = add i32 %i.as, 63
  %i.au = lshr i32 %i.at, 3
  %i.av = and i32 %i.au, 536870904
  %i.aw = zext nneg i32 %i.av to i64
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ar, i8 0, i64 %i.aw, i1 false)
  %i.ax = load ptr, ptr %i.v, align 8, !tbaa !68  ; 2 uses
  %i.ay = and i32 %i.ad, 63
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = shl nuw i64 1, %i.az
  %i.bb = lshr i32 %i.ad, 6
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.bc ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !38
  %i.bf = or i64 %i.be, %i.ba
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !53
  %i.bi = zext i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !55
  %i.bm = shl i32 %i.ad, 1                        ; 2 uses
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bn ; 3 uses
  %i.bp = or disjoint i32 %i.bm, 1
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bq ; 2 uses
  %.pre138 = load i32, ptr %i.bo, align 4, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %ir_worklist_push.exit114, %bb.h
  %i.bs = phi i32 [ %.pre138, %bb.h ], [ %i.ct, %ir_worklist_push.exit114 ] ; 4 uses
  %.0100 = phi ptr [ %i.bj, %bb.h ], [ %i.cu, %ir_worklist_push.exit114 ] ; 2 uses
  %.099 = phi i32 [ %i.bl, %bb.h ], [ %i.cv, %ir_worklist_push.exit114 ]
  %i.bt = load i32, ptr %.0100, align 4, !tbaa !39 ; 4 uses
  %i.bu = shl i32 %i.bt, 1                        ; 2 uses
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !39
  %i.by = icmp ugt i32 %i.bx, %i.bs
  br i1 %i.by, label %bb.j, label %ir_worklist_push.exit114

bb.j:                                             ; preds = %bb.i
  %i.bz = or disjoint i32 %i.bu, 1
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !39
  %i.cd = load i32, ptr %i.br, align 4, !tbaa !39
  %i.ce = icmp ult i32 %i.cc, %i.cd
  br i1 %i.ce, label %bb.k, label %ir_worklist_push.exit114

bb.k:                                             ; preds = %bb.j
  %i.cf = lshr i32 %i.bt, 6
  %i.cg = zext nneg i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !38 ; 2 uses
  %i.cj = and i32 %i.bt, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck                    ; 2 uses
  %i.cm = and i64 %i.ci, %i.cl
  %.not115 = icmp eq i64 %i.cm, 0
  br i1 %.not115, label %bb.l, label %ir_worklist_push.exit114

bb.l:                                             ; preds = %bb.k
  %i.cn = or i64 %i.ci, %i.cl
  store i64 %i.cn, ptr %i.ch, align 8, !tbaa !38
  %i.co = load i32, ptr %i.x, align 8, !tbaa !61  ; 2 uses
  %i.cp = add i32 %i.co, 1
  store i32 %i.cp, ptr %i.x, align 8, !tbaa !61
  %i.cq = load ptr, ptr %2, align 8, !tbaa !58
  %i.cr = zext i32 %i.co to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %i.cr
  store i32 %i.bt, ptr %i.cs, align 4, !tbaa !39
  %.pre137 = load i32, ptr %i.bo, align 4, !tbaa !39
  br label %ir_worklist_push.exit114

ir_worklist_push.exit114:                         ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ct = phi i32 [ %.pre137, %bb.l ], [ %i.bs, %bb.k ], [ %i.bs, %bb.j ], [ %i.bs, %bb.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.0100, i64 4
  %i.cv = add i32 %.099, -1                       ; 2 uses
  %.not106 = icmp eq i32 %i.cv, 0
  br i1 %.not106, label %.preheader119, label %bb.i, !llvm.loop !157

.preheader119:                                    ; preds = %ir_worklist_push.exit114
  %i.cw = load i32, ptr %i.x, align 8, !tbaa !61  ; 2 uses
  %.not107131 = icmp eq i32 %i.cw, 0
  br i1 %.not107131, label %.loopexit120, label %.lr.ph132

.loopexit118.loopexit:                            ; preds = %ir_worklist_push.exit
  %.pre139 = load i32, ptr %i.x, align 8, !tbaa !61
  br label %.loopexit118

.loopexit118:                                     ; preds = %.loopexit118.loopexit, %bb.n
  %i.cx = phi i32 [ %.pre139, %.loopexit118.loopexit ], [ %i.cz, %bb.n ] ; 2 uses
  %.not107 = icmp eq i32 %i.cx, 0
  br i1 %.not107, label %.loopexit120, label %.lr.ph132, !llvm.loop !158

.lr.ph132:                                        ; preds = %.preheader119, %.loopexit118
  %i.cy = phi i32 [ %i.cx, %.loopexit118 ], [ %i.cw, %.preheader119 ]
  %i.cz = add i32 %i.cy, -1                       ; 3 uses
  store i32 %i.cz, ptr %i.x, align 8, !tbaa !61
  %i.da = load ptr, ptr %2, align 8, !tbaa !58
  %i.db = zext i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !39 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [52 x i8], ptr %i.b, i64 %i.de ; 6 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 44 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !69
  %.not108 = icmp eq i32 %i.dh, 0
  br i1 %.not108, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph132
  store i32 %i.ad, ptr %i.dg, align 4, !tbaa !69
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph132
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 24 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !55 ; 2 uses
  %.not109128 = icmp eq i32 %i.dj, 0
  br i1 %.not109128, label %.loopexit118, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !53
  %i.dm = zext i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph, %ir_worklist_push.exit
  %.097130 = phi i32 [ %i.dj, %.lr.ph ], [ %i.fu, %ir_worklist_push.exit ]
  %.098129 = phi ptr [ %i.dn, %.lr.ph ], [ %i.ft, %ir_worklist_push.exit ] ; 2 uses
  %i.dp = load i32, ptr %.098129, align 4, !tbaa !39 ; 4 uses
  %i.dq = load ptr, ptr %i.v, align 8, !tbaa !68  ; 2 uses
  %i.dr = lshr i32 %i.dp, 6
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %i.ds
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !38
  %i.dv = and i32 %i.dp, 63
  %i.dw = zext nneg i32 %i.dv to i64
  %i.dx = shl nuw i64 1, %i.dw
  %i.dy = and i64 %i.dx, %i.du
  %.not116 = icmp eq i64 %i.dy, 0
  br i1 %.not116, label %bb.p, label %ir_worklist_push.exit

bb.p:                                             ; preds = %bb.o
end_hunk_0
