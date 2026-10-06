Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/load_mfbacks?download=true
inline.NumInlined: 98
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6LibRaw17phase_one_correctEv:bb.a
  %i.ld = add nuw nsw i32 %.1434.2, 1
  %i.le = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.lf = mul nuw i32 %i.kw, %i.ht
  %i.lg = add nuw i32 %i.lf, %i.la
  %i.lh = zext i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [2 x i8], ptr %i.le, i64 %i.lh
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !78
  %i.lk = zext i16 %i.lj to i32
  br label %_ZN6LibRaw6p1rawcEjjRj.exit.3

_ZN6LibRaw6p1rawcEjjRj.exit.3:                    ; preds = %bb.aj, %_ZN6LibRaw6p1rawcEjjRj.exit.2
  %.1434.3 = phi i32 [ %i.ld, %bb.aj ], [ %.1434.2, %_ZN6LibRaw6p1rawcEjjRj.exit.2 ] ; 2 uses
  %i.ll = phi i32 [ %i.lk, %bb.aj ], [ 0, %_ZN6LibRaw6p1rawcEjjRj.exit.2 ]
  %i.lm = add nuw nsw i32 %i.ll, %i.kr
  %i.ln = getelementptr inbounds nuw [2 x i8], ptr @__const._ZN6LibRaw17phase_one_correctEv.dir, i64 %i.ii ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  %i.lp = load i8, ptr %i.lo, align 8, !tbaa !79
  %i.lq = sext i8 %i.lp to i32
  %i.lr = add nsw i32 %i.lq, %i.hs                ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ln, i64 9
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !79
  %i.lu = sext i8 %i.lt to i32
  %i.lv = add nsw i32 %i.lu, %i.hr                ; 2 uses
  %i.lw = icmp ult i32 %i.lr, %i.ij
  %i.lx = icmp ult i32 %i.lv, %i.ht
  %or.cond452.4 = select i1 %i.lw, i1 %i.lx, i1 false
  br i1 %or.cond452.4, label %bb.ak, label %_ZN6LibRaw6p1rawcEjjRj.exit.4

bb.ak:                                            ; preds = %_ZN6LibRaw6p1rawcEjjRj.exit.3
  %i.ly = add nuw nsw i32 %.1434.3, 1
  %i.lz = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.ma = mul nuw i32 %i.lr, %i.ht
  %i.mb = add nuw i32 %i.ma, %i.lv
  %i.mc = zext i32 %i.mb to i64
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %i.lz, i64 %i.mc
  %i.me = load i16, ptr %i.md, align 2, !tbaa !78
  %i.mf = zext i16 %i.me to i32
  br label %_ZN6LibRaw6p1rawcEjjRj.exit.4

_ZN6LibRaw6p1rawcEjjRj.exit.4:                    ; preds = %bb.ak, %_ZN6LibRaw6p1rawcEjjRj.exit.3
  %.1434.4 = phi i32 [ %i.ly, %bb.ak ], [ %.1434.3, %_ZN6LibRaw6p1rawcEjjRj.exit.3 ] ; 2 uses
  %i.mg = phi i32 [ %i.mf, %bb.ak ], [ 0, %_ZN6LibRaw6p1rawcEjjRj.exit.3 ]
  %i.mh = add nuw nsw i32 %i.mg, %i.lm
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr @__const._ZN6LibRaw17phase_one_correctEv.dir, i64 %i.ii ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 10
  %i.mk = load i8, ptr %i.mj, align 2, !tbaa !79
  %i.ml = sext i8 %i.mk to i32
  %i.mm = add nsw i32 %i.ml, %i.hs                ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mi, i64 11
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !79
  %i.mp = sext i8 %i.mo to i32
  %i.mq = add nsw i32 %i.mp, %i.hr                ; 2 uses
  %i.mr = icmp ult i32 %i.mm, %i.ij
  %i.ms = icmp ult i32 %i.mq, %i.ht
  %or.cond452.5 = select i1 %i.mr, i1 %i.ms, i1 false
  br i1 %or.cond452.5, label %bb.al, label %_ZN6LibRaw6p1rawcEjjRj.exit.5

bb.al:                                            ; preds = %_ZN6LibRaw6p1rawcEjjRj.exit.4
  %i.mt = add nuw nsw i32 %.1434.4, 1
  %i.mu = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.mv = mul nuw i32 %i.mm, %i.ht
  %i.mw = add nuw i32 %i.mv, %i.mq
  %i.mx = zext i32 %i.mw to i64
  %i.my = getelementptr inbounds nuw [2 x i8], ptr %i.mu, i64 %i.mx
  %i.mz = load i16, ptr %i.my, align 2, !tbaa !78
  %i.na = zext i16 %i.mz to i32
  br label %_ZN6LibRaw6p1rawcEjjRj.exit.5

_ZN6LibRaw6p1rawcEjjRj.exit.5:                    ; preds = %bb.al, %_ZN6LibRaw6p1rawcEjjRj.exit.4
  %.1434.5 = phi i32 [ %i.mt, %bb.al ], [ %.1434.4, %_ZN6LibRaw6p1rawcEjjRj.exit.4 ] ; 2 uses
  %i.nb = phi i32 [ %i.na, %bb.al ], [ 0, %_ZN6LibRaw6p1rawcEjjRj.exit.4 ]
  %i.nc = add nuw nsw i32 %i.nb, %i.mh
  %i.nd = getelementptr inbounds nuw [2 x i8], ptr @__const._ZN6LibRaw17phase_one_correctEv.dir, i64 %i.ii ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 12
  %i.nf = load i8, ptr %i.ne, align 4, !tbaa !79
  %i.ng = sext i8 %i.nf to i32
  %i.nh = add nsw i32 %i.ng, %i.hs                ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 13
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !79
  %i.nk = sext i8 %i.nj to i32
  %i.nl = add nsw i32 %i.nk, %i.hr                ; 2 uses
  %i.nm = icmp ult i32 %i.nh, %i.ij
  %i.nn = icmp ult i32 %i.nl, %i.ht
  %or.cond452.6 = select i1 %i.nm, i1 %i.nn, i1 false
  br i1 %or.cond452.6, label %bb.am, label %_ZN6LibRaw6p1rawcEjjRj.exit.6

bb.am:                                            ; preds = %_ZN6LibRaw6p1rawcEjjRj.exit.5
  %i.no = add nuw nsw i32 %.1434.5, 1
  %i.np = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.nq = mul nuw i32 %i.nh, %i.ht
  %i.nr = add nuw i32 %i.nq, %i.nl
  %i.ns = zext i32 %i.nr to i64
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.np, i64 %i.ns
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !78
  %i.nv = zext i16 %i.nu to i32
  br label %_ZN6LibRaw6p1rawcEjjRj.exit.6

_ZN6LibRaw6p1rawcEjjRj.exit.6:                    ; preds = %bb.am, %_ZN6LibRaw6p1rawcEjjRj.exit.5
  %.1434.6 = phi i32 [ %i.no, %bb.am ], [ %.1434.5, %_ZN6LibRaw6p1rawcEjjRj.exit.5 ] ; 3 uses
  %i.nw = phi i32 [ %i.nv, %bb.am ], [ 0, %_ZN6LibRaw6p1rawcEjjRj.exit.5 ]
  %i.nx = add nuw nsw i32 %i.nw, %i.nc
  %i.ny = getelementptr inbounds nuw [2 x i8], ptr @__const._ZN6LibRaw17phase_one_correctEv.dir, i64 %i.ii ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 14
  %i.oa = load i8, ptr %i.nz, align 2, !tbaa !79
  %i.ob = sext i8 %i.oa to i32
  %i.oc = add nsw i32 %i.ob, %i.hs                ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.ny, i64 15
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !79
  %i.of = sext i8 %i.oe to i32
  %i.og = add nsw i32 %i.of, %i.hr                ; 2 uses
  %i.oh = icmp ult i32 %i.oc, %i.ij
  %i.oi = icmp ult i32 %i.og, %i.ht
  %or.cond452.7 = select i1 %i.oh, i1 %i.oi, i1 false
  br i1 %or.cond452.7, label %_ZN6LibRaw6p1rawcEjjRj.exit.7.thread, label %_ZN6LibRaw6p1rawcEjjRj.exit.7

_ZN6LibRaw6p1rawcEjjRj.exit.7.thread:             ; preds = %_ZN6LibRaw6p1rawcEjjRj.exit.6
  %i.oj = add nuw nsw i32 %.1434.6, 1
  %i.ok = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.ol = mul nuw i32 %i.oc, %i.ht
  %i.om = add nuw i32 %i.ol, %i.og
  %i.on = zext i32 %i.om to i64
  %i.oo = getelementptr inbounds nuw [2 x i8], ptr %i.ok, i64 %i.on
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !78
  %i.oq = zext i16 %i.op to i32
  br label %bb.an

_ZN6LibRaw6p1rawcEjjRj.exit.7:                    ; preds = %_ZN6LibRaw6p1rawcEjjRj.exit.6
  %.not377 = icmp eq i32 %.1434.6, 0
  br i1 %.not377, label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit, label %bb.an

bb.an:                                            ; preds = %_ZN6LibRaw6p1rawcEjjRj.exit.7.thread, %_ZN6LibRaw6p1rawcEjjRj.exit.7
  %i.or = phi i32 [ %i.oq, %_ZN6LibRaw6p1rawcEjjRj.exit.7.thread ], [ 0, %_ZN6LibRaw6p1rawcEjjRj.exit.7 ]
  %.1434.71177 = phi i32 [ %i.oj, %_ZN6LibRaw6p1rawcEjjRj.exit.7.thread ], [ %.1434.6, %_ZN6LibRaw6p1rawcEjjRj.exit.7 ] ; 2 uses
  %i.os = add nuw nsw i32 %i.or, %i.nx
  %i.ot = lshr i32 %.1434.71177, 1
  %i.ou = add nuw nsw i32 %i.os, %i.ot
  %i.ov = udiv i32 %i.ou, %.1434.71177
  %i.ow = trunc i32 %i.ov to i16
  %i.ox = load ptr, ptr %i.av, align 8, !tbaa !77
  %i.oy = mul nuw i32 %i.ht, %i.hs
  %i.oz = add nuw i32 %i.oy, %i.hr
  %i.pa = zext i32 %i.oz to i64
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.ox, i64 %i.pa
  store i16 %i.ow, ptr %i.pb, align 2, !tbaa !78
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.x, %_ZN6LibRaw6p1rawcEjjRj.exit.7, %bb.an, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, %bb.z
  %.sroa.0.4 = phi ptr [ %.sroa.0.3.ph688, %_ZN6LibRaw6p1rawcEjjRj.exit.7 ], [ %.sroa.0.3.ph688, %bb.z ], [ %i.hl, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.0.3.ph688, %bb.an ], [ %.sroa.0.3.ph688, %bb.x ] ; 2 uses
  %.sroa.17.2 = phi ptr [ %.sroa.17.1.ph689, %_ZN6LibRaw6p1rawcEjjRj.exit.7 ], [ %i.ha, %bb.z ], [ %i.ho, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.17.1.ph689, %bb.an ], [ %.sroa.17.1.ph689, %bb.x ] ; 2 uses
  %.sroa.24.4 = phi ptr [ %.sroa.24.3.ph690, %_ZN6LibRaw6p1rawcEjjRj.exit.7 ], [ %.sroa.24.3.ph690, %bb.z ], [ %i.hp, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ], [ %.sroa.24.3.ph690, %bb.an ], [ %.sroa.24.3.ph690, %bb.x ] ; 2 uses
  %i.pc = icmp samesign ugt i32 %.in789, 15
  br i1 %i.pc, label %.lr.ph679, label %.thread438, !llvm.loop !145

bb.ao:                                            ; preds = %bb.r
  %i.pd = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader526.preheader unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 0 uses

.preheader526.preheader:                          ; preds = %bb.ao
  %i.pe = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.1 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit ; 0 uses

.preheader526.1:                                  ; preds = %.preheader526.preheader
  %i.pf = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.2 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit

.preheader526.2:                                  ; preds = %.preheader526.1
  %i.pg = fptrunc reassoc nsz arcp contract afn double %i.pf to float
  %i.ph = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.3 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit ; 0 uses

.preheader526.3:                                  ; preds = %.preheader526.2
  %i.pi = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.4 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit

.preheader526.4:                                  ; preds = %.preheader526.3
  %i.pj = fptrunc reassoc nsz arcp contract afn double %i.pi to float
  %i.pk = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.5 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit ; 0 uses

.preheader526.5:                                  ; preds = %.preheader526.4
  %i.pl = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.6 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit

.preheader526.6:                                  ; preds = %.preheader526.5
  %i.pm = fptrunc reassoc nsz arcp contract afn double %i.pl to float
  %i.pn = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader526.7 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit

.preheader526.7:                                  ; preds = %.preheader526.6
  %i.po = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %vector.ph unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit

vector.ph:                                        ; preds = %.preheader526.7
  %i.pp = load float, ptr %i.ar, align 4, !tbaa !175
  %i.pq = fptrunc reassoc nsz arcp contract afn double %i.po to float
  %i.pr = fsub reassoc nsz arcp contract afn float %i.pp, %i.pq
  %i.ps = fptrunc reassoc nsz arcp contract afn double %i.pn to float
  %i.pt = fmul reassoc nsz arcp contract afn float %i.pr, %i.ps
  %i.pu = fadd reassoc nsz arcp contract afn float %i.pt, 1.000000e+00
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pu, %i.pj
  %broadcast.splatinsert = insertelement <16 x float> poison, float %i.pv, i64 0
  %broadcast.splat = shufflevector <16 x float> %broadcast.splatinsert, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1523 = insertelement <16 x float> poison, float %i.pm, i64 0
  %broadcast.splat1524 = shufflevector <16 x float> %broadcast.splatinsert1523, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1525 = insertelement <16 x float> poison, float %i.pg, i64 0
  %broadcast.splat1526 = shufflevector <16 x float> %broadcast.splatinsert1525, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %1 = uitofp nneg <16 x i32> %vec.ind to <16 x float> ; 2 uses
  %2 = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat1524, %1
  %3 = fadd reassoc nsz arcp contract afn <16 x float> %2, %broadcast.splat
  %4 = fmul reassoc nsz arcp contract afn <16 x float> %3, %1
  %5 = fadd reassoc nsz arcp contract afn <16 x float> %4, %broadcast.splat1526 ; 2 uses
  %6 = fcmp reassoc nsz arcp contract afn olt <16 x float> %5, splat (float 6.553500e+04)
  %7 = select reassoc nsz arcp contract afn <16 x i1> %6, <16 x float> %5, <16 x float> splat (float 6.553500e+04) ; 2 uses
  %8 = fcmp reassoc nsz arcp contract afn olt <16 x float> %7, zeroinitializer
  %9 = select reassoc nsz arcp contract afn <16 x i1> %8, <16 x float> zeroinitializer, <16 x float> %7
  %10 = fptoui <16 x float> %9 to <16 x i16>
  %i.pw = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index
  store <16 x i16> %10, ptr %i.pw, align 8, !tbaa !78
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.px = icmp eq i64 %index.next, 65536
  br i1 %i.px, label %.loopexit525, label %vector.body, !llvm.loop !146

.preheader532.1:                                  ; preds = %.preheader532.preheader
  %i.py = fptrunc reassoc nsz arcp contract afn double %i.gq to float
  %i.pz = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader532.2 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader532.2:                                  ; preds = %.preheader532.1
  %i.qa = fptrunc reassoc nsz arcp contract afn double %i.pz to float
  %i.qb = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %.preheader532.3 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader532.3:                                  ; preds = %.preheader532.2
  %i.qc = invoke noundef double @_ZN6LibRaw7getrealEi(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef 11)
          to label %vector.ph1527 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit

vector.ph1527:                                    ; preds = %.preheader532.3
  %i.qd = fptrunc reassoc nsz arcp contract afn double %i.qb to float
  %i.qe = fptrunc reassoc nsz arcp contract afn double %i.qc to float
  %broadcast.splatinsert1528 = insertelement <16 x float> poison, float %i.qe, i64 0
  %broadcast.splat1529 = shufflevector <16 x float> %broadcast.splatinsert1528, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1530 = insertelement <16 x float> poison, float %i.qd, i64 0
  %broadcast.splat1531 = shufflevector <16 x float> %broadcast.splatinsert1530, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1532 = insertelement <16 x float> poison, float %i.qa, i64 0
  %broadcast.splat1533 = shufflevector <16 x float> %broadcast.splatinsert1532, <16 x float> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert1534 = insertelement <16 x float> poison, float %i.py, i64 0
  %broadcast.splat1535 = shufflevector <16 x float> %broadcast.splatinsert1534, <16 x float> poison, <16 x i32> zeroinitializer
  br label %vector.body1536

vector.body1536:                                  ; preds = %vector.body1536, %vector.ph1527
  %index1537 = phi i64 [ 0, %vector.ph1527 ], [ %index.next1539, %vector.body1536 ] ; 2 uses
  %vec.ind1538 = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph1527 ], [ %vec.ind.next1540, %vector.body1536 ] ; 2 uses
  %11 = uitofp nneg <16 x i32> %vec.ind1538 to <16 x float> ; 4 uses
  %12 = fmul reassoc nsz arcp contract afn <16 x float> %broadcast.splat1529, %11
  %13 = fadd reassoc nsz arcp contract afn <16 x float> %12, %broadcast.splat1531
  %14 = fmul reassoc nsz arcp contract afn <16 x float> %13, %11
  %15 = fadd reassoc nsz arcp contract afn <16 x float> %14, %broadcast.splat1533
  %16 = fmul reassoc nsz arcp contract afn <16 x float> %15, %11
  %17 = fadd reassoc nsz arcp contract afn <16 x float> %16, %broadcast.splat1535
  %18 = fadd reassoc nsz arcp contract afn <16 x float> %17, %11 ; 2 uses
  %19 = fcmp reassoc nsz arcp contract afn olt <16 x float> %18, splat (float 6.553500e+04)
  %20 = select reassoc nsz arcp contract afn <16 x i1> %19, <16 x float> %18, <16 x float> splat (float 6.553500e+04) ; 2 uses
  %21 = fcmp reassoc nsz arcp contract afn ole <16 x float> %20, zeroinitializer
  %22 = select <16 x i1> %21, <16 x float> zeroinitializer, <16 x float> %20
  %23 = fptoui <16 x float> %22 to <16 x i16>
  %i.qf = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %index1537
  store <16 x i16> %23, ptr %i.qf, align 8, !tbaa !78
  %index.next1539 = add nuw i64 %index1537, 16    ; 2 uses
  %vec.ind.next1540 = add <16 x i32> %vec.ind1538, splat (i32 16)
  %i.qg = icmp eq i64 %index.next1539, 65536
  br i1 %i.qg, label %.loopexit525, label %vector.body1536, !llvm.loop !147

.loopexit525:                                     ; preds = %vector.body1536, %vector.body
  %i.qh = load i16, ptr %i.as, align 8, !tbaa !75
  %.not788 = icmp eq i16 %i.qh, 0
  br i1 %.not788, label %.thread438, label %.lr.ph674

.lr.ph674:                                        ; preds = %.loopexit525
  %i.qi = trunc i32 %i.fc to i1
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph674, %._crit_edge
  %.0325672 = phi i32 [ 0, %.lr.ph674 ], [ %i.rc, %._crit_edge ] ; 2 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.aq unwind label %.loopexit.split-lp514.loopexit

bb.aq:                                            ; preds = %bb.ap
  %i.qj = load i32, ptr %i.at, align 4, !tbaa !176
  %i.qk = select i1 %i.qi, i32 %i.qj, i32 0       ; 2 uses
  %i.ql = load i16, ptr %i.au, align 2, !tbaa !76
  %i.qm = zext i16 %i.ql to i32                   ; 2 uses
  %i.qn = icmp ult i32 %i.qk, %i.qm
  br i1 %i.qn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.aq
  %i.qo = load ptr, ptr %i.av, align 8, !tbaa !77
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph, %bb.ar
  %i.qp = phi i32 [ %i.qm, %.lr.ph ], [ %i.ra, %bb.ar ]
  %storemerge373671 = phi i32 [ %i.qk, %.lr.ph ], [ %i.qy, %bb.ar ] ; 2 uses
  %i.qq = mul nuw i32 %i.qp, %.0325672
  %i.qr = add nuw i32 %i.qq, %storemerge373671
  %i.qs = zext i32 %i.qr to i64
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr %i.qo, i64 %i.qs ; 2 uses
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !78
  %i.qv = zext i16 %i.qu to i64
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !78
  store i16 %i.qx, ptr %i.qt, align 2, !tbaa !78
  %i.qy = add nuw nsw i32 %storemerge373671, 1    ; 2 uses
  %i.qz = load i16, ptr %i.au, align 2, !tbaa !76
  %i.ra = zext i16 %i.qz to i32                   ; 2 uses
  %i.rb = icmp samesign ult i32 %i.qy, %i.ra
  br i1 %i.rb, label %bb.ar, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.ar, %bb.aq
  %i.rc = add nuw nsw i32 %.0325672, 1            ; 2 uses
  %i.rd = load i16, ptr %i.as, align 8, !tbaa !75
  %i.re = zext i16 %i.rd to i32
  %i.rf = icmp samesign ult i32 %i.rc, %i.re
  br i1 %i.rf, label %bb.ap, label %.thread438, !llvm.loop !149

.invoke:                                          ; preds = %bb.r, %bb.at, %bb.as
  %i.rg = phi i32 [ 0, %bb.at ], [ 0, %bb.as ], [ 1, %bb.r ]
  %i.rh = phi i32 [ 4, %bb.at ], [ 2, %bb.as ], [ 2, %bb.r ]
  invoke void @_ZN6LibRaw20phase_one_flat_fieldEii(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %i.rg, i32 noundef %i.rh)
          to label %.thread438 unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.as:                                            ; preds = %bb.r, %bb.r
  br label %.invoke

bb.at:                                            ; preds = %bb.r
  br label %.invoke

bb.au:                                            ; preds = %bb.r
  %i.ri = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !90
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %i.rl = load ptr, ptr %i.rk, align 8
  %i.rm = invoke noundef i32 %i.rl(ptr noundef nonnull align 8 dereferenceable(8) %i.ri, i64 noundef 36, i32 noundef 1)
          to label %bb.av unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !call_target !99 ; 0 uses

bb.av:                                            ; preds = %bb.au
  %i.rn = invoke noundef zeroext i16 @_ZN6LibRaw4get2Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.aw unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.ro = zext i16 %i.rn to i32
  %i.rp = load i32, ptr %i.ap, align 4, !tbaa !177
  %i.rq = sub nsw i32 %i.ro, %i.rp
  %i.rr = call i32 @llvm.abs.i32(i32 %i.rq, i1 true) ; 2 uses
  %i.rs = icmp sgt i32 %.0308.ph1515, %i.rr
  br i1 %i.rs, label %bb.ax, label %.thread438

bb.ax:                                            ; preds = %bb.aw
  %i.rt = load ptr, ptr %i.h, align 8, !tbaa !88  ; 2 uses
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !90
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 40
  %i.rw = load ptr, ptr %i.rv, align 8
  %i.rx = invoke noundef i64 %i.rw(ptr noundef nonnull align 8 dereferenceable(8) %i.rt)
          to label %bb.ay unwind label %.loopexit.split-lp514.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, !call_target !171

bb.ay:                                            ; preds = %bb.ax
  %i.ry = add nsw i64 %i.rx, -38
  br label %.thread438

bb.az:                                            ; preds = %bb.r
  %i.rz = icmp ne i32 %i.fc, 1055
  %i.sa = icmp ne i32 %.0296.ph1518, 0
  %or.cond5 = select i1 %i.rz, i1 true, i1 %i.sa
  br i1 %or.cond5, label %bb.ed, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.sb = load i32, ptr %i.at, align 4, !tbaa !176 ; 2 uses
  %i.sc = icmp sgt i32 %i.sb, 0
  br i1 %i.sc, label %bb.bb, label %.thread438

bb.bb:                                            ; preds = %bb.ba
  %i.sd = load i16, ptr %i.au, align 2, !tbaa !76
  %i.se = zext i16 %i.sd to i32
  %i.sf = icmp samesign ult i32 %i.sb, %i.se
  br i1 %i.sf, label %bb.bc, label %.thread438

bb.bc:                                            ; preds = %bb.bb
  %i.sg = load i32, ptr %i.az, align 4, !tbaa !178 ; 2 uses
  %i.sh = icmp sgt i32 %i.sg, 0
  br i1 %i.sh, label %bb.bd, label %.thread438

bb.bd:                                            ; preds = %bb.bc
  %i.si = load i16, ptr %i.as, align 8, !tbaa !75
  %i.sj = zext i16 %i.si to i32
  %i.sk = icmp samesign ult i32 %i.sg, %i.sj
  br i1 %i.sk, label %.preheader501, label %.thread438

.preheader501:                                    ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.sl = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.be unwind label %bb.dn     ; 2 uses

bb.be:                                            ; preds = %.preheader501
  %i.sm = trunc i32 %i.sl to i16
  store i16 %i.sm, ptr %i.a, align 16, !tbaa !78
  %i.sn = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bf unwind label %bb.dn     ; 2 uses

bb.bf:                                            ; preds = %bb.be
  %i.so = trunc i32 %i.sn to i16
  store i16 %i.so, ptr %i.bj, align 2, !tbaa !78
  %i.sp = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bg unwind label %bb.dn     ; 2 uses

bb.bg:                                            ; preds = %bb.bf
  %i.sq = trunc i32 %i.sp to i16
  store i16 %i.sq, ptr %i.bk, align 4, !tbaa !78
  %i.sr = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bh unwind label %bb.dn     ; 2 uses

bb.bh:                                            ; preds = %bb.bg
  %i.ss = trunc i32 %i.sr to i16
  store i16 %i.ss, ptr %i.bl, align 2, !tbaa !78
  %i.st = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bi unwind label %bb.dn     ; 2 uses

bb.bi:                                            ; preds = %bb.bh
  %i.su = trunc i32 %i.st to i16
  store i16 %i.su, ptr %i.bm, align 8, !tbaa !78
  %i.sv = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bj unwind label %bb.dn     ; 2 uses

bb.bj:                                            ; preds = %bb.bi
  %i.sw = trunc i32 %i.sv to i16
  store i16 %i.sw, ptr %i.bn, align 2, !tbaa !78
  %i.sx = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bk unwind label %bb.dn     ; 2 uses

bb.bk:                                            ; preds = %bb.bj
  %i.sy = trunc i32 %i.sx to i16
  store i16 %i.sy, ptr %i.bo, align 4, !tbaa !78
  %i.sz = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bl unwind label %bb.dn     ; 2 uses

bb.bl:                                            ; preds = %bb.bk
  %i.ta = trunc i32 %i.sz to i16
  store i16 %i.ta, ptr %i.bp, align 2, !tbaa !78
  %i.tb = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bm unwind label %bb.dn     ; 2 uses

bb.bm:                                            ; preds = %bb.bl
  %i.tc = trunc i32 %i.tb to i16
  store i16 %i.tc, ptr %i.bq, align 16, !tbaa !78
  %i.td = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bn unwind label %bb.dn     ; 2 uses

bb.bn:                                            ; preds = %bb.bm
  %i.te = trunc i32 %i.td to i16
  store i16 %i.te, ptr %i.br, align 2, !tbaa !78
  %i.tf = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bo unwind label %bb.dn     ; 2 uses

bb.bo:                                            ; preds = %bb.bn
  %i.tg = trunc i32 %i.tf to i16
  store i16 %i.tg, ptr %i.bs, align 4, !tbaa !78
  %i.th = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bp unwind label %bb.dn     ; 2 uses

bb.bp:                                            ; preds = %bb.bo
  %i.ti = trunc i32 %i.th to i16
  store i16 %i.ti, ptr %i.bt, align 2, !tbaa !78
end_hunk_0
