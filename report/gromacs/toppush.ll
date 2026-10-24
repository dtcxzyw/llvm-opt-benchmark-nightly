Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/toppush?download=true
inline.NumInlined: 3473
inline.NumDeleted: 1236
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZNSt6vectorI17InteractionOfTypeSaIS0_EE17_M_realloc_insertIJN3gmx8ArrayRefIKiEERSt5arrayIfLm12EEEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_:bb.a
bb.i:                                             ; preds = %bb.g
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #32
  unreachable

bb.j:                                             ; preds = %_ZNSt12_Vector_baseI17InteractionOfTypeSaIS0_EE13_M_deallocateEPS0_m.exit44
  unreachable
}

declare void @_ZN17InteractionOfTypeC1EN3gmx8ArrayRefIKiEENS1_IKfEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull align 8 dereferenceable(105), ptr, ptr, ptr, ptr, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z13copy_nbparamsPP9t_nbparamiP18InteractionsOfTypei(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %i.a ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !27
  %i.g = add nsw i32 %i.f, %i.d
  %.fr49 = freeze i32 %i.g                        ; 2 uses
  %i.h = icmp sgt i32 %3, 0
  br i1 %i.h, label %.preheader39.lr.ph, label %._crit_edge

.preheader39.lr.ph:                               ; preds = %bb.a
  %.not38 = icmp eq ptr %0, null
  br i1 %.not38, label %bb.e, label %.preheader39.lr.ph.split

.preheader39.lr.ph.split:                         ; preds = %.preheader39.lr.ph
  %i.i = icmp sgt i32 %.fr49, 0
  %i.j = zext nneg i32 %3 to i64                  ; 4 uses
  br i1 %i.i, label %.preheader39.us.preheader, label %iter.check

.preheader39.us.preheader:                        ; preds = %.preheader39.lr.ph.split
  %wide.trip.count = zext nneg i32 %.fr49 to i64
  br label %.preheader39.us

.preheader39.us:                                  ; preds = %.preheader39.us.preheader, %.split.us.us
  %indvars.iv76 = phi i64 [ 0, %.preheader39.us.preheader ], [ %indvars.iv.next77, %.split.us.us ] ; 4 uses
  %indvars.iv74 = phi i64 [ 1, %.preheader39.us.preheader ], [ %indvars.iv.next75, %.split.us.us ] ; 2 uses
  %.03646.us = phi i32 [ 0, %.preheader39.us.preheader ], [ %.2.us.us, %.split.us.us ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv76 ; 3 uses
  %i.l = mul nuw nsw i64 %indvars.iv76, %i.j
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.preheader39.us
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %bb.d ], [ 0, %.preheader39.us ] ; 6 uses
  %.143.us.us = phi i32 [ %.2.us.us, %bb.d ], [ %.03646.us, %.preheader39.us ] ; 2 uses
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.n = getelementptr inbounds nuw [20 x i8], ptr %i.m, i64 %indvars.iv67
  %i.o = load i8, ptr %i.n, align 4, !tbaa !60, !range !53, !noundef !54
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %.preheader.us.us, label %bb.d

.preheader.us.us:                                 ; preds = %bb.b
  %i.q = mul nuw nsw i64 %indvars.iv67, %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader.us.us
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %bb.c ], [ 0, %.preheader.us.us ] ; 4 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !30
  %i.s = getelementptr inbounds nuw [112 x i8], ptr %i.r, i64 %indvars.iv67
  %i.t = getelementptr inbounds nuw [112 x i8], ptr %i.s, i64 %i.l
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.v = getelementptr inbounds nuw [20 x i8], ptr %i.u, i64 %indvars.iv67
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv63
  %i.y = load float, ptr %i.x, align 4, !tbaa !41
  %i.z = trunc nuw nsw i64 %indvars.iv63 to i32   ; 2 uses
  tail call void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105) %i.t, i32 noundef %i.z, float noundef %i.y)
  %i.aa = load ptr, ptr %2, align 8, !tbaa !30
  %i.ab = getelementptr inbounds nuw [112 x i8], ptr %i.aa, i64 %i.q
  %i.ac = getelementptr inbounds nuw [112 x i8], ptr %i.ab, i64 %indvars.iv76
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !58
  %i.ae = getelementptr inbounds nuw [20 x i8], ptr %i.ad, i64 %indvars.iv67
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv63
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !41
  tail call void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105) %i.ac, i32 noundef %i.z, float noundef %i.ah)
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, %wide.trip.count
  br i1 %exitcond66.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !221

._crit_edge.us.us:                                ; preds = %bb.c
  %i.ai = add nsw i32 %.143.us.us, 1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.us.us, %bb.b
  %.2.us.us = phi i32 [ %i.ai, %._crit_edge.us.us ], [ %.143.us.us, %bb.b ] ; 3 uses
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond73.not = icmp eq i64 %indvars.iv.next68, %indvars.iv74
  br i1 %exitcond73.not, label %.split.us.us, label %bb.b, !llvm.loop !222

.split.us.us:                                     ; preds = %bb.d
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1 ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next77, %i.j
  br i1 %exitcond82.not, label %._crit_edge, label %.preheader39.us, !llvm.loop !223

iter.check:                                       ; preds = %.preheader39.lr.ph.split, %.split
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %.split ], [ 0, %.preheader39.lr.ph.split ] ; 2 uses
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.split ], [ 1, %.preheader39.lr.ph.split ] ; 9 uses
  %.03646 = phi i32 [ %spec.select.lcssa, %.split ], [ 0, %.preheader39.lr.ph.split ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !58 ; 41 uses
  %min.iters.check = icmp samesign ult i64 %indvars.iv54, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp samesign ult i64 %indvars.iv54, 32
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.al = and i64 %indvars.iv54, 24
  %n.vec = and i64 %indvars.iv54, 9223372036854775776 ; 4 uses
  %i.am = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %.03646, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 33 uses
  %vec.phi = phi <8 x i32> [ %i.am, %vector.ph ], [ %i.fo, %vector.body ]
  %vec.phi87 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.fp, %vector.body ]
  %vec.phi88 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.fq, %vector.body ]
  %vec.phi89 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %i.fr, %vector.body ]
  %i.an = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.ao = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.aq = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 60
  %i.au = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 100
  %i.ay = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 120
  %i.ba = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 140
  %i.bc = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 160
  %i.be = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 180
  %i.bg = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 200
  %i.bi = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 220
  %i.bk = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 240
  %i.bm = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 260
  %i.bo = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 280
  %i.bq = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 300
  %i.bs = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 320
  %i.bu = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 340
  %i.bw = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 360
  %i.by = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 380
  %i.ca = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 400
  %i.cc = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 420
  %i.ce = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 440
  %i.cg = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 460
  %i.ci = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 480
  %i.ck = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 500
  %i.cm = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 520
  %i.co = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 540
  %i.cq = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 560
  %i.cs = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 580
  %i.cu = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 600
  %i.cw = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 620
  %i.cy = load i8, ptr %i.an, align 4, !tbaa !60
  %i.cz = load i8, ptr %i.ap, align 4, !tbaa !60
  %i.da = load i8, ptr %i.ar, align 4, !tbaa !60
  %i.db = load i8, ptr %i.at, align 4, !tbaa !60
  %i.dc = load i8, ptr %i.av, align 4, !tbaa !60
  %i.dd = load i8, ptr %i.ax, align 4, !tbaa !60
  %i.de = load i8, ptr %i.az, align 4, !tbaa !60
  %i.df = load i8, ptr %i.bb, align 4, !tbaa !60
  %i.dg = insertelement <8 x i8> poison, i8 %i.cy, i64 0
  %i.dh = insertelement <8 x i8> %i.dg, i8 %i.cz, i64 1
  %i.di = insertelement <8 x i8> %i.dh, i8 %i.da, i64 2
  %i.dj = insertelement <8 x i8> %i.di, i8 %i.db, i64 3
  %i.dk = insertelement <8 x i8> %i.dj, i8 %i.dc, i64 4
  %i.dl = insertelement <8 x i8> %i.dk, i8 %i.dd, i64 5
  %i.dm = insertelement <8 x i8> %i.dl, i8 %i.de, i64 6
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.df, i64 7
  %i.do = load i8, ptr %i.bd, align 4, !tbaa !60
  %i.dp = load i8, ptr %i.bf, align 4, !tbaa !60
  %i.dq = load i8, ptr %i.bh, align 4, !tbaa !60
  %i.dr = load i8, ptr %i.bj, align 4, !tbaa !60
  %i.ds = load i8, ptr %i.bl, align 4, !tbaa !60
  %i.dt = load i8, ptr %i.bn, align 4, !tbaa !60
  %i.du = load i8, ptr %i.bp, align 4, !tbaa !60
  %i.dv = load i8, ptr %i.br, align 4, !tbaa !60
  %i.dw = insertelement <8 x i8> poison, i8 %i.do, i64 0
  %i.dx = insertelement <8 x i8> %i.dw, i8 %i.dp, i64 1
  %i.dy = insertelement <8 x i8> %i.dx, i8 %i.dq, i64 2
  %i.dz = insertelement <8 x i8> %i.dy, i8 %i.dr, i64 3
  %i.ea = insertelement <8 x i8> %i.dz, i8 %i.ds, i64 4
  %i.eb = insertelement <8 x i8> %i.ea, i8 %i.dt, i64 5
  %i.ec = insertelement <8 x i8> %i.eb, i8 %i.du, i64 6
  %i.ed = insertelement <8 x i8> %i.ec, i8 %i.dv, i64 7
  %i.ee = load i8, ptr %i.bt, align 4, !tbaa !60
  %i.ef = load i8, ptr %i.bv, align 4, !tbaa !60
  %i.eg = load i8, ptr %i.bx, align 4, !tbaa !60
  %i.eh = load i8, ptr %i.bz, align 4, !tbaa !60
  %i.ei = load i8, ptr %i.cb, align 4, !tbaa !60
  %i.ej = load i8, ptr %i.cd, align 4, !tbaa !60
  %i.ek = load i8, ptr %i.cf, align 4, !tbaa !60
  %i.el = load i8, ptr %i.ch, align 4, !tbaa !60
  %i.em = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %i.en = insertelement <8 x i8> %i.em, i8 %i.ef, i64 1
  %i.eo = insertelement <8 x i8> %i.en, i8 %i.eg, i64 2
  %i.ep = insertelement <8 x i8> %i.eo, i8 %i.eh, i64 3
  %i.eq = insertelement <8 x i8> %i.ep, i8 %i.ei, i64 4
  %i.er = insertelement <8 x i8> %i.eq, i8 %i.ej, i64 5
  %i.es = insertelement <8 x i8> %i.er, i8 %i.ek, i64 6
  %i.et = insertelement <8 x i8> %i.es, i8 %i.el, i64 7
  %i.eu = load i8, ptr %i.cj, align 4, !tbaa !60
  %i.ev = load i8, ptr %i.cl, align 4, !tbaa !60
  %i.ew = load i8, ptr %i.cn, align 4, !tbaa !60
  %i.ex = load i8, ptr %i.cp, align 4, !tbaa !60
  %i.ey = load i8, ptr %i.cr, align 4, !tbaa !60
  %i.ez = load i8, ptr %i.ct, align 4, !tbaa !60
  %i.fa = load i8, ptr %i.cv, align 4, !tbaa !60
  %i.fb = load i8, ptr %i.cx, align 4, !tbaa !60
  %i.fc = insertelement <8 x i8> poison, i8 %i.eu, i64 0
  %i.fd = insertelement <8 x i8> %i.fc, i8 %i.ev, i64 1
  %i.fe = insertelement <8 x i8> %i.fd, i8 %i.ew, i64 2
  %i.ff = insertelement <8 x i8> %i.fe, i8 %i.ex, i64 3
  %i.fg = insertelement <8 x i8> %i.ff, i8 %i.ey, i64 4
  %i.fh = insertelement <8 x i8> %i.fg, i8 %i.ez, i64 5
  %i.fi = insertelement <8 x i8> %i.fh, i8 %i.fa, i64 6
  %i.fj = insertelement <8 x i8> %i.fi, i8 %i.fb, i64 7
  %i.fk = zext nneg <8 x i8> %i.dn to <8 x i32>
  %i.fl = zext nneg <8 x i8> %i.ed to <8 x i32>
  %i.fm = zext nneg <8 x i8> %i.et to <8 x i32>
  %i.fn = zext nneg <8 x i8> %i.fj to <8 x i32>
  %i.fo = add <8 x i32> %vec.phi, %i.fk           ; 2 uses
  %i.fp = add <8 x i32> %vec.phi87, %i.fl         ; 2 uses
  %i.fq = add <8 x i32> %vec.phi88, %i.fm         ; 2 uses
  %i.fr = add <8 x i32> %vec.phi89, %i.fn         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.fs = icmp eq i64 %index.next, %n.vec
  br i1 %i.fs, label %middle.block, label %vector.body, !llvm.loop !224

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %i.fp, %i.fo
  %bin.rdx90 = add <8 x i32> %i.fq, %bin.rdx
  %bin.rdx91 = add <8 x i32> %i.fr, %bin.rdx90
  %i.ft = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx91) ; 3 uses
  %cmp.n = icmp eq i64 %indvars.iv54, %n.vec
  br i1 %cmp.n, label %.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  br i1 %min.epilog.iters.check, label %.preheader.preheader, label %vec.epilog.ph, !prof !61

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i32 [ %i.ft, %vec.epilog.iter.check ], [ %.03646, %vector.main.loop.iter.check ]
  %n.vec92 = and i64 %indvars.iv54, 9223372036854775800 ; 3 uses
  %i.fu = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index93 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next95, %vec.epilog.vector.body ] ; 9 uses
  %vec.phi94 = phi <8 x i32> [ %i.fu, %vec.epilog.ph ], [ %i.hb, %vec.epilog.vector.body ]
  %i.fv = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.fw = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 20
  %i.fy = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  %i.ga = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 60
  %i.gc = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 80
  %i.ge = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 100
  %i.gg = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 120
  %i.gi = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %index93
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 140
  %i.gk = load i8, ptr %i.fv, align 4, !tbaa !60
  %i.gl = load i8, ptr %i.fx, align 4, !tbaa !60
  %i.gm = load i8, ptr %i.fz, align 4, !tbaa !60
  %i.gn = load i8, ptr %i.gb, align 4, !tbaa !60
  %i.go = load i8, ptr %i.gd, align 4, !tbaa !60
  %i.gp = load i8, ptr %i.gf, align 4, !tbaa !60
  %i.gq = load i8, ptr %i.gh, align 4, !tbaa !60
  %i.gr = load i8, ptr %i.gj, align 4, !tbaa !60
  %i.gs = insertelement <8 x i8> poison, i8 %i.gk, i64 0
  %i.gt = insertelement <8 x i8> %i.gs, i8 %i.gl, i64 1
  %i.gu = insertelement <8 x i8> %i.gt, i8 %i.gm, i64 2
  %i.gv = insertelement <8 x i8> %i.gu, i8 %i.gn, i64 3
  %i.gw = insertelement <8 x i8> %i.gv, i8 %i.go, i64 4
  %i.gx = insertelement <8 x i8> %i.gw, i8 %i.gp, i64 5
  %i.gy = insertelement <8 x i8> %i.gx, i8 %i.gq, i64 6
  %i.gz = insertelement <8 x i8> %i.gy, i8 %i.gr, i64 7
  %i.ha = zext nneg <8 x i8> %i.gz to <8 x i32>
  %i.hb = add <8 x i32> %vec.phi94, %i.ha         ; 2 uses
  %index.next95 = add nuw i64 %index93, 8         ; 2 uses
  %i.hc = icmp eq i64 %index.next95, %n.vec92
  br i1 %i.hc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !225

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.hd = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.hb) ; 2 uses
  %cmp.n96 = icmp eq i64 %indvars.iv54, %n.vec92
  br i1 %cmp.n96, label %.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec92, %vec.epilog.middle.block ]
  %.143.ph = phi i32 [ %.03646, %iter.check ], [ %i.ft, %vec.epilog.iter.check ], [ %i.hd, %vec.epilog.middle.block ]
  br label %.preheader

._crit_edge:                                      ; preds = %.split, %.split.us.us, %bb.a
  %.036.lcssa = phi i32 [ 0, %bb.a ], [ %.2.us.us, %.split.us.us ], [ %spec.select.lcssa, %.split ]
  ret i32 %.036.lcssa

.split:                                           ; preds = %.preheader, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i32 [ %i.hd, %vec.epilog.middle.block ], [ %i.ft, %middle.block ], [ %spec.select, %.preheader ] ; 2 uses
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1 ; 2 uses
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next57, %i.j
  br i1 %exitcond62.not, label %._crit_edge, label %iter.check, !llvm.loop !223

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ %indvars.iv.ph, %.preheader.preheader ] ; 2 uses
  %.143 = phi i32 [ %spec.select, %.preheader ], [ %.143.ph, %.preheader.preheader ]
  %i.he = getelementptr inbounds nuw [20 x i8], ptr %i.ak, i64 %indvars.iv
  %i.hf = load i8, ptr %i.he, align 4, !tbaa !60, !range !53, !noundef !54
  %i.hg = zext nneg i8 %i.hf to i32
  %spec.select = add nsw i32 %.143, %i.hg         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv54
  br i1 %exitcond.not, label %.split, label %.preheader, !llvm.loop !226

bb.e:                                             ; preds = %.preheader39.lr.ph
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ13copy_nbparamsPP9t_nbparamiP18InteractionsOfTypeiENK3$_0clEv", ptr noundef nonnull @.str.9, i32 noundef 262) #29
  unreachable
}

declare void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105), i32 noundef, float noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z12free_nbparamPP9t_nbparami(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ12free_nbparamPP9t_nbparamiENK3$_0clEv", ptr noundef nonnull @.str.9, i32 noundef 282) #29
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %.not8 = icmp eq ptr %i.c, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ12free_nbparamPP9t_nbparamiENK3$_0clEv", ptr noundef nonnull @.str.9, i32 noundef 285) #29
  unreachable

bb.d:                                             ; preds = %.lr.ph
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.9, i32 noundef 286, ptr noundef nonnull %i.c)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !227

._crit_edge:                                      ; preds = %bb.d, %.preheader
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.9, i32 noundef 288, ptr noundef nonnull %0)
  ret void
}

declare void @_Z9save_freePKcS0_iPv(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_Z7push_atP22PreprocessingAtomTypesP25PreprocessingBondAtomTypePciPPP9t_nbparamS7_P14WarningHandler(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(address_is_null) %5, ptr noundef %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca [4096 x i8], align 16             ; 28 uses
  %i.g = alloca [4096 x i8], align 16             ; 16 uses
  %i.h = alloca [4096 x i8], align 16             ; 17 uses
  %i.i = alloca double, align 8                   ; 12 uses
  %i.j = alloca double, align 8                   ; 12 uses
  %i.k = alloca [12 x double], align 16           ; 17 uses
  %i.l = alloca [12 x [100 x i8]], align 16       ; 15 uses
  %i.m = alloca i32, align 4                      ; 12 uses
  %7 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %8 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %9 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %10 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %11 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %13 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %14 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %15 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %18 = alloca %"struct.std::array", align 4      ; 7 uses
  %19 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %20 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %23 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %24 = alloca %class.InteractionOfType, align 8  ; 11 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %31 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #30
  %i.o = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.9, i32 noundef 333, i64 noundef 1, i64 noundef 36) ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 100 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 200
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 300 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 400
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 500 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 600
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 700
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 800
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 900
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 1000
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 1100
  %i.aa = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.l, ptr noundef nonnull %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.u, ptr noundef nonnull %i.v, ptr noundef nonnull %i.w, ptr noundef nonnull %i.x, ptr noundef nonnull %i.y, ptr noundef nonnull %i.z) #30
  %i.ab = icmp slt i32 %i.aa, 6
  br i1 %i.ab, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  call void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr noundef nonnull align 1 dereferenceable(70) @.str.9, i8 noundef zeroext 2)
  invoke void @_Z16too_few_functionP14WarningHandlerRKNSt10filesystem7__cxx114pathEi(ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7, i32 noundef 383)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !56 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, ptr noundef nonnull %i.ad) #30
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i:  ; preds = %bb.d, %bb.c
  %i.ae = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ag = icmp eq ptr %i.ae, %i.af
  br i1 %i.ag, label %_ZNSt10filesystem7__cxx114pathD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i
  %i.ah = load i64, ptr %i.af, align 8, !tbaa !23
  %i.ai = add i64 %i.ah, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ai) #31
  br label %_ZNSt10filesystem7__cxx114pathD2Ev.exit

_ZNSt10filesystem7__cxx114pathD2Ev.exit:          ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.eg

bb.e:                                             ; preds = %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %7) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ek
end_hunk_0
