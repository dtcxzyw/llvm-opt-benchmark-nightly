Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/curve_tools?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@catmull_rom_set:bb.a
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %exitcond.not53 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not53, label %._crit_edge56, label %.lr.ph55

bb.b:                                             ; preds = %.lr.ph55
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge56, label %.lr.ph55

.lr.ph55:                                         ; preds = %.preheader, %bb.b
  %indvars.iv54 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv54, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv54
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.loopexit

._crit_edge56:                                    ; preds = %bb.b, %.preheader
  %i.h = zext nneg i32 %0 to i64
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #13 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !12
  %i.l = load float, ptr %2, align 4, !tbaa !12
  %i.m = fsub reassoc nsz arcp contract afn float %i.k, %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = load float, ptr %1, align 4, !tbaa !12
  %i.q = fsub reassoc nsz arcp contract afn float %i.o, %i.p
  %i.r = fdiv reassoc nsz arcp contract afn float %i.m, %i.q
  store float %i.r, ptr %i.i, align 4, !tbaa !12
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %._crit_edge56
  %i.s = add nsw i64 %wide.trip.count, -1         ; 7 uses
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check57 = icmp ult i64 %i.s, 16
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.s, 12
  %n.vec = and i64 %i.s, -16                      ; 4 uses
  %i.u = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.v = or disjoint i64 %index, 2                ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.v ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %wide.load = load <8 x float>, ptr %i.w, align 4, !tbaa !12
  %wide.load58 = load <8 x float>, ptr %i.x, align 4, !tbaa !12
  %i.y = getelementptr inbounds [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %wide.load59 = load <8 x float>, ptr %i.y, align 4, !tbaa !12
  %wide.load60 = load <8 x float>, ptr %i.z, align 4, !tbaa !12
  %i.aa = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %wide.load59
  %i.ab = fsub reassoc nsz arcp contract afn <8 x float> %wide.load58, %wide.load60
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.v ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %wide.load61 = load <8 x float>, ptr %i.ac, align 4, !tbaa !12
  %wide.load62 = load <8 x float>, ptr %i.ad, align 4, !tbaa !12
  %i.ae = getelementptr inbounds [4 x i8], ptr %1, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %wide.load63 = load <8 x float>, ptr %i.ae, align 4, !tbaa !12
  %wide.load64 = load <8 x float>, ptr %i.af, align 4, !tbaa !12
  %i.ag = fsub reassoc nsz arcp contract afn <8 x float> %wide.load61, %wide.load63
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %wide.load62, %wide.load64
  %i.ai = fdiv reassoc nsz arcp contract afn <8 x float> %i.aa, %i.ag
  %i.aj = fdiv reassoc nsz arcp contract afn <8 x float> %i.ab, %i.ah
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 36
  store <8 x float> %i.ai, ptr %i.al, align 4, !tbaa !12
  store <8 x float> %i.aj, ptr %i.am, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec65 = and i64 %i.s, -4                     ; 3 uses
  %i.ao = or disjoint i64 %n.vec65, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index66 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next71, %vec.epilog.vector.body ] ; 5 uses
  %i.ap = or disjoint i64 %index66, 2             ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ap
  %wide.load67 = load <4 x float>, ptr %i.aq, align 4, !tbaa !12
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %index66
  %wide.load68 = load <4 x float>, ptr %i.ar, align 4, !tbaa !12
  %i.as = fsub reassoc nsz arcp contract afn <4 x float> %wide.load67, %wide.load68
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %wide.load69 = load <4 x float>, ptr %i.at, align 4, !tbaa !12
  %i.au = getelementptr inbounds [4 x i8], ptr %1, i64 %index66
  %wide.load70 = load <4 x float>, ptr %i.au, align 4, !tbaa !12
  %i.av = fsub reassoc nsz arcp contract afn <4 x float> %wide.load69, %wide.load70
  %i.aw = fdiv reassoc nsz arcp contract afn <4 x float> %i.as, %i.av
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store <4 x float> %i.aw, ptr %i.ay, align 4, !tbaa !12
  %index.next71 = add nuw i64 %index66, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next71, %n.vec65
  br i1 %i.az, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !21

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n72 = icmp eq i64 %i.s, %n.vec65
  br i1 %cmp.n72, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv48.ph = phi i64 [ 1, %iter.check ], [ %i.u, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge56
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %wide.trip.count
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !12
  %i.bc = add nsw i32 %0, -2
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bd
  %i.bf = load float, ptr %i.be, align 4, !tbaa !12
  %i.bg = fsub reassoc nsz arcp contract afn float %i.bb, %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %wide.trip.count
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !12
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bd
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !12
  %i.bl = fsub reassoc nsz arcp contract afn float %i.bi, %i.bk
  %i.bm = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %wide.trip.count
  store float %i.bm, ptr %i.bn, align 4, !tbaa !12
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %.lr.ph ], [ %indvars.iv48.ph, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1 ; 4 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next49
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = add nsw i64 %indvars.iv48, -1           ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %2, i64 %i.bq
  %i.bs = load float, ptr %i.br, align 4, !tbaa !12
  %i.bt = fsub reassoc nsz arcp contract afn float %i.bp, %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next49
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = getelementptr inbounds [4 x i8], ptr %1, i64 %i.bq
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !12
  %i.by = fsub reassoc nsz arcp contract afn float %i.bv, %i.bx
  %i.bz = fdiv reassoc nsz arcp contract afn float %i.bt, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv48
  store float %i.bz, ptr %i.ca, align 4, !tbaa !12
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond52.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

.loopexit:                                        ; preds = %.lr.ph55, %bb.a, %._crit_edge
  %.1 = phi ptr [ null, %bb.a ], [ %i.i, %._crit_edge ], [ null, %.lr.ph55 ]
  ret ptr %.1
}

; Function Attrs: nounwind memory(readwrite, argmem: read, target_mem: none) uwtable
define noalias noundef ptr @monotone_hermite_set(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #3 {
bb.a:
  %i.a = icmp slt i32 %0, 2
  br i1 %i.a, label %.loopexit, label %.preheader88

.preheader88:                                     ; preds = %bb.a
  %i.b = add nsw i32 %0, -1                       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 6 uses
  %exitcond.not118 = icmp eq i32 %i.b, 0
  br i1 %exitcond.not118, label %.lr.ph.preheader, label %.lr.ph120

bb.b:                                             ; preds = %.lr.ph120
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph.preheader, label %.lr.ph120

.lr.ph120:                                        ; preds = %.preheader88, %bb.b
  %indvars.iv119 = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.preheader88 ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv119, 1 ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv119
  %i.f = load float, ptr %i.e, align 4, !tbaa !12
  %i.g = fcmp reassoc nsz arcp contract afn ugt float %i.d, %i.f
  br i1 %i.g, label %bb.b, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b, %.preheader88
  %i.h = zext nneg i32 %0 to i64                  ; 2 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.h, i64 noundef 4) #13 ; 10 uses
  %i.j = add nuw nsw i32 %0, 1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #13 ; 7 uses
  %.pre = load float, ptr %2, align 4, !tbaa !12  ; 2 uses
  %.pre114 = load float, ptr %1, align 4, !tbaa !12 ; 2 uses
  %min.iters.check = icmp ult i32 %0, 33
  br i1 %min.iters.check, label %.lr.ph.preheader163, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 3 uses
  %vector.recur.init = insertelement <8 x float> poison, float %.pre114, i64 7
  %vector.recur.init121 = insertelement <8 x float> poison, float %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x float> [ %vector.recur.init, %vector.ph ], [ %wide.load129, %vector.body ]
  %vector.recur122 = phi <8 x float> [ %vector.recur.init121, %vector.ph ], [ %wide.load125.a, %vector.body ]
  %i.m = or disjoint i64 %index, 1                ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.m ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %wide.load = load <8 x float>, ptr %i.n, align 4, !tbaa !12 ; 3 uses
  %wide.load123.a = load <8 x float>, ptr %i.o, align 4, !tbaa !12 ; 3 uses
  %wide.load124.a = load <8 x float>, ptr %i.p, align 4, !tbaa !12 ; 3 uses
  %wide.load125.a = load <8 x float>, ptr %i.q, align 4, !tbaa !12 ; 4 uses
  %i.r = shufflevector <8 x float> %vector.recur122, <8 x float> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.s = shufflevector <8 x float> %wide.load, <8 x float> %wide.load123.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.t = shufflevector <8 x float> %wide.load123.a, <8 x float> %wide.load124.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.u = shufflevector <8 x float> %wide.load124.a, <8 x float> %wide.load125.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.v = fsub reassoc nsz arcp contract afn <8 x float> %wide.load, %i.r
  %i.w = fsub reassoc nsz arcp contract afn <8 x float> %wide.load123.a, %i.s
  %i.x = fsub reassoc nsz arcp contract afn <8 x float> %wide.load124.a, %i.t
  %i.y = fsub reassoc nsz arcp contract afn <8 x float> %wide.load125.a, %i.u
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.m ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 96
  %wide.load126.a = load <8 x float>, ptr %i.z, align 4, !tbaa !12 ; 3 uses
  %wide.load127.a = load <8 x float>, ptr %i.aa, align 4, !tbaa !12 ; 3 uses
  %wide.load128.a = load <8 x float>, ptr %i.ab, align 4, !tbaa !12 ; 3 uses
  %wide.load129 = load <8 x float>, ptr %i.ac, align 4, !tbaa !12 ; 4 uses
  %i.ad = shufflevector <8 x float> %vector.recur, <8 x float> %wide.load126.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ae = shufflevector <8 x float> %wide.load126.a, <8 x float> %wide.load127.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.af = shufflevector <8 x float> %wide.load127.a, <8 x float> %wide.load128.a, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ag = shufflevector <8 x float> %wide.load128.a, <8 x float> %wide.load129, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ah = fsub reassoc nsz arcp contract afn <8 x float> %wide.load126.a, %i.ad
  %i.ai = fsub reassoc nsz arcp contract afn <8 x float> %wide.load127.a, %i.ae
  %i.aj = fsub reassoc nsz arcp contract afn <8 x float> %wide.load128.a, %i.af
  %i.ak = fsub reassoc nsz arcp contract afn <8 x float> %wide.load129, %i.ag
  %i.al = fdiv reassoc nsz arcp contract afn <8 x float> %i.v, %i.ah
  %i.am = fdiv reassoc nsz arcp contract afn <8 x float> %i.w, %i.ai
  %i.an = fdiv reassoc nsz arcp contract afn <8 x float> %i.x, %i.aj
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> %i.y, %i.ak
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 96
  store <8 x float> %i.al, ptr %i.ap, align 4, !tbaa !12
  store <8 x float> %i.am, ptr %i.aq, align 4, !tbaa !12
  store <8 x float> %i.an, ptr %i.ar, align 4, !tbaa !12
  store <8 x float> %i.ao, ptr %i.as, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !23

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x float> %wide.load129, i64 7
  %vector.recur.extract130 = extractelement <8 x float> %wide.load125.a, i64 7
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader163

.lr.ph.preheader163:                              ; preds = %.lr.ph.preheader, %middle.block
  %.ph = phi float [ %.pre114, %.lr.ph.preheader ], [ %vector.recur.extract, %middle.block ]
  %.ph164 = phi float [ %.pre, %.lr.ph.preheader ], [ %vector.recur.extract130, %middle.block ]
  %indvars.iv98.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.phi.trans.insert = getelementptr [4 x i8], ptr %i.i, i64 %i.h
  %.phi.trans.insert115 = getelementptr i8, ptr %.phi.trans.insert, i64 -8
  %.pre116 = load float, ptr %.phi.trans.insert115, align 4, !tbaa !12 ; 2 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %wide.trip.count
  store float %.pre116, ptr %i.au, align 4, !tbaa !12
  %i.av = load float, ptr %i.i, align 4, !tbaa !12
  store float %i.av, ptr %i.l, align 4, !tbaa !12
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %wide.trip.count
  store float %.pre116, ptr %i.aw, align 4, !tbaa !12
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.lr.ph95.preheader, label %iter.check

iter.check:                                       ; preds = %._crit_edge
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 2)
  %wide.trip.count106 = zext nneg i32 %smax to i64 ; 2 uses
  %i.ax = add nsw i64 %wide.trip.count106, -1     ; 5 uses
  %min.iters.check133.a = icmp slt i32 %0, 10
  br i1 %min.iters.check133.a, label %.lr.ph93.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check134 = icmp slt i32 %0, 34
  br i1 %min.iters.check134, label %vec.epilog.ph, label %vector.ph135

vector.ph135:                                     ; preds = %vector.main.loop.iter.check
  %i.ay = and i64 %i.ax, 24
  %n.vec136 = and i64 %i.ax, -32                  ; 4 uses
  %i.az = or disjoint i64 %n.vec136, 1
  br label %vector.body137

vector.body137:                                   ; preds = %vector.body137, %vector.ph135
  %index138 = phi i64 [ 0, %vector.ph135 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %i.ba = or disjoint i64 %index138, 1            ; 2 uses
  %i.bb = getelementptr [4 x i8], ptr %i.i, i64 %i.ba ; 8 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4
  %i.bd = getelementptr i8, ptr %i.bb, i64 28
  %i.be = getelementptr i8, ptr %i.bb, i64 60
  %i.bf = getelementptr i8, ptr %i.bb, i64 92
  %wide.load139.a = load <8 x float>, ptr %i.bc, align 4, !tbaa !12
  %wide.load140.a = load <8 x float>, ptr %i.bd, align 4, !tbaa !12
  %wide.load141.a = load <8 x float>, ptr %i.be, align 4, !tbaa !12
  %wide.load142.a = load <8 x float>, ptr %i.bf, align 4, !tbaa !12
  %i.bg = getelementptr i8, ptr %i.bb, i64 32
  %i.bh = getelementptr i8, ptr %i.bb, i64 64
  %i.bi = getelementptr i8, ptr %i.bb, i64 96
  %wide.load143.a = load <8 x float>, ptr %i.bb, align 4, !tbaa !12
  %wide.load144.a = load <8 x float>, ptr %i.bg, align 4, !tbaa !12
  %wide.load145.a = load <8 x float>, ptr %i.bh, align 4, !tbaa !12
  %wide.load146 = load <8 x float>, ptr %i.bi, align 4, !tbaa !12
  %i.bj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load143.a, %wide.load139.a
  %i.bk = fadd reassoc nsz arcp contract afn <8 x float> %wide.load144.a, %wide.load140.a
  %i.bl = fadd reassoc nsz arcp contract afn <8 x float> %wide.load145.a, %wide.load141.a
  %i.bm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load146, %wide.load142.a
  %i.bn = fmul reassoc nsz arcp contract afn <8 x float> %i.bj, splat (float 5.000000e-01)
  %i.bo = fmul reassoc nsz arcp contract afn <8 x float> %i.bk, splat (float 5.000000e-01)
  %i.bp = fmul reassoc nsz arcp contract afn <8 x float> %i.bl, splat (float 5.000000e-01)
  %i.bq = fmul reassoc nsz arcp contract afn <8 x float> %i.bm, splat (float 5.000000e-01)
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ba ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96
  store <8 x float> %i.bn, ptr %i.br, align 4, !tbaa !12
  store <8 x float> %i.bo, ptr %i.bs, align 4, !tbaa !12
  store <8 x float> %i.bp, ptr %i.bt, align 4, !tbaa !12
  store <8 x float> %i.bq, ptr %i.bu, align 4, !tbaa !12
  %index.next147 = add nuw i64 %index138, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.bv, label %middle.block148, label %vector.body137, !llvm.loop !24

middle.block148:                                  ; preds = %vector.body137
  %cmp.n149 = icmp eq i64 %i.ax, %n.vec136
  br i1 %cmp.n149, label %.lr.ph95.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block148
  %min.epilog.iters.check = icmp eq i64 %i.ay, 0
  br i1 %min.epilog.iters.check, label %.lr.ph93.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec136, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec151 = and i64 %i.ax, -8                   ; 3 uses
  %i.bw = or disjoint i64 %n.vec151, 1
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index152 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next155, %vec.epilog.vector.body ] ; 2 uses
  %i.bx = or disjoint i64 %index152, 1            ; 2 uses
  %i.by = getelementptr [4 x i8], ptr %i.i, i64 %i.bx ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 -4
  %wide.load153.a = load <8 x float>, ptr %i.bz, align 4, !tbaa !12
  %wide.load154 = load <8 x float>, ptr %i.by, align 4, !tbaa !12
  %i.ca = fadd reassoc nsz arcp contract afn <8 x float> %wide.load154, %wide.load153.a
  %i.cb = fmul reassoc nsz arcp contract afn <8 x float> %i.ca, splat (float 5.000000e-01)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.bx
  store <8 x float> %i.cb, ptr %i.cc, align 4, !tbaa !12
  %index.next155 = add nuw i64 %index152, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next155, %n.vec151
  br i1 %i.cd, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n156 = icmp eq i64 %i.ax, %n.vec151
  br i1 %cmp.n156, label %.lr.ph95.preheader, label %.lr.ph93.preheader

.lr.ph93.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv103.ph = phi i64 [ 1, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bw, %vec.epilog.middle.block ]
  br label %.lr.ph93

.lr.ph:                                           ; preds = %.lr.ph.preheader163, %.lr.ph
  %i.ce = phi float [ %i.ck, %.lr.ph ], [ %.ph, %.lr.ph.preheader163 ]
  %i.cf = phi float [ %i.ch, %.lr.ph ], [ %.ph164, %.lr.ph.preheader163 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %.lr.ph ], [ %indvars.iv98.ph, %.lr.ph.preheader163 ] ; 2 uses
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 4 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next99
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12 ; 2 uses
  %i.ci = fsub reassoc nsz arcp contract afn float %i.ch, %i.cf
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next99
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !12 ; 2 uses
  %i.cl = fsub reassoc nsz arcp contract afn float %i.ck, %i.ce
  %i.cm = fdiv reassoc nsz arcp contract afn float %i.ci, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv98
  store float %i.cm, ptr %i.cn, align 4, !tbaa !12
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count
  br i1 %exitcond102.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

.lr.ph95.preheader:                               ; preds = %.lr.ph93, %middle.block148, %vec.epilog.middle.block, %._crit_edge
  %wide.trip.count112 = zext nneg i32 %0 to i64
  br label %.lr.ph95

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %.lr.ph93
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.lr.ph93 ], [ %indvars.iv103.ph, %.lr.ph93.preheader ] ; 3 uses
  %i.co = getelementptr [4 x i8], ptr %i.i, i64 %indvars.iv103 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -4
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = load float, ptr %i.co, align 4, !tbaa !12
  %i.cs = fadd reassoc nsz arcp contract afn float %i.cr, %i.cq
  %i.ct = fmul reassoc nsz arcp contract afn float %i.cs, 5.000000e-01
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv103
  store float %i.ct, ptr %i.cu, align 4, !tbaa !12
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond107.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count106
  br i1 %exitcond107.not, label %.lr.ph95.preheader, label %.lr.ph93, !llvm.loop !27

._crit_edge96:                                    ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %.loopexit

.lr.ph95:                                         ; preds = %.lr.ph95.preheader, %bb.f
  %indvars.iv108 = phi i64 [ 0, %.lr.ph95.preheader ], [ %indvars.iv.next109, %bb.f ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv108
  %i.cw = load float, ptr %i.cv, align 4, !tbaa !12 ; 3 uses
  %i.cx = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.cw)
  %i.cy = fcmp reassoc nsz arcp contract afn olt float %i.cx, f0x01000000
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv108 ; 3 uses
  br i1 %i.cy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph95
  store <2 x float> zeroinitializer, ptr %i.cz, align 4, !tbaa !12
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph95
  %i.da = load <2 x float>, ptr %i.cz, align 4, !tbaa !12
  %i.db = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fdiv reassoc nsz arcp contract afn <2 x float> %i.da, %i.dc ; 5 uses
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dd
  %foldExtExtBinop159 = fmul reassoc nsz arcp contract afn <2 x float> %i.dd, %i.dd
  %shift = shufflevector <2 x float> %foldExtExtBinop159, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop161 = fadd reassoc nsz arcp contract afn <2 x float> %shift, %foldExtExtBinop
  %i.de = extractelement <2 x float> %foldExtExtBinop161, i64 0 ; 2 uses
  %i.df = fcmp reassoc nsz arcp contract afn ogt float %i.de, 9.000000e+00
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dg = fmul reassoc nsz arcp contract afn float %i.cw, 3.000000e+00
  %i.dh = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.de)
  %i.di = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = fmul reassoc nsz arcp contract afn <2 x float> %i.dj, %i.dd
  %i.dl = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fdiv reassoc nsz arcp contract afn <2 x float> %i.dk, %i.dm
  store <2 x float> %i.dn, ptr %i.cz, align 4, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond113.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge96, label %.lr.ph95

.loopexit:                                        ; preds = %.lr.ph120, %bb.a, %._crit_edge96
  %.1 = phi ptr [ null, %bb.a ], [ %i.l, %._crit_edge96 ], [ null, %.lr.ph120 ]
  ret ptr %.1
}

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @d3_np_fs(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = add i32 %0, -21
  %or.cond = icmp ult i32 %i.a, -20
  br i1 %or.cond, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 4 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !12
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.d, 0.000000e+00
  br i1 %i.e, label %.loopexit, label %bb.b

.preheader:                                       ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef %wide.trip.count, i64 noundef 4) #13 ; 16 uses
  %i.g = shl nuw nsw i64 %wide.trip.count, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %2, i64 %i.g, i1 false), !tbaa !12
  %i.h = icmp sgt i32 %0, 1
  br i1 %i.h, label %.lr.ph72.preheader, label %._crit_edge73

.lr.ph72.preheader:                               ; preds = %.preheader
  %.pre = load float, ptr %i.f, align 4, !tbaa !12 ; 2 uses
  %i.i = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.i, 1
  %i.j = icmp eq i32 %0, 2
  br i1 %i.j, label %.lr.ph72.epil.preheader, label %.lr.ph72.preheader.new

.lr.ph72.preheader.new:                           ; preds = %.lr.ph72.preheader
  %unroll_iter = and i64 %i.i, -2
  br label %.lr.ph72

._crit_edge73:                                    ; preds = %.preheader
  %i.k = add nsw i32 %0, -1                       ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.l ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = mul nuw nsw i32 %i.k, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !12
  %i.t = fdiv reassoc nsz arcp contract afn float %i.n, %i.s
  store float %i.t, ptr %i.m, align 4, !tbaa !12
  br label %.loopexit

.lr.ph76.preheader.unr-lcssa:                     ; preds = %.lr.ph72
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph76.preheader, label %.lr.ph72.epil.preheader

.lr.ph72.epil.preheader:                          ; preds = %.lr.ph76.preheader.unr-lcssa, %.lr.ph72.preheader
  %.epil.init = phi float [ %.pre, %.lr.ph72.preheader ], [ %i.cs, %.lr.ph76.preheader.unr-lcssa ]
  %indvars.iv82.epil.init = phi i64 [ 1, %.lr.ph72.preheader ], [ %indvars.iv.next83.1, %.lr.ph76.preheader.unr-lcssa ] ; 3 uses
  %lcmp.mod99 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod99)
  %.idx92.epil = mul i64 %indvars.iv82.epil.init, 12
  %i.u = getelementptr i8, ptr %1, i64 %.idx92.epil ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = load float, ptr %i.v, align 4, !tbaa !12
  %i.x = getelementptr i8, ptr %i.u, i64 -8
  %i.y = load float, ptr %i.x, align 4, !tbaa !12
  %i.z = fdiv reassoc nsz arcp contract afn float %i.w, %i.y ; 2 uses
  %.idx93.epil = mul nuw nsw i64 %indvars.iv82.epil.init, 12
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93.epil ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !12
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !12
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ad, %i.z
  %i.af = fsub reassoc nsz arcp contract afn float %i.ac, %i.ae
  store float %i.af, ptr %i.ab, align 4, !tbaa !12
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82.epil.init ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !12
  %i.ai = fmul reassoc nsz arcp contract afn float %.epil.init, %i.z
  %i.aj = fsub reassoc nsz arcp contract afn float %i.ah, %i.ai
  store float %i.aj, ptr %i.ag, align 4, !tbaa !12
  br label %.lr.ph76.preheader

.lr.ph76.preheader:                               ; preds = %.lr.ph76.preheader.unr-lcssa, %.lr.ph72.epil.preheader
  %i.ak = add nsw i32 %0, -1                      ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.al ; 2 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !12
  %i.ao = mul nuw nsw i32 %i.ak, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !12
  %i.at = fdiv reassoc nsz arcp contract afn float %i.an, %i.as
  store float %i.at, ptr %i.am, align 4, !tbaa !12
  %i.au = add nsw i32 %0, -2                      ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 4 uses
  %i.aw = shl nuw nsw i64 %i.av, 2
  %i.ax = getelementptr i8, ptr %i.f, i64 %i.aw
  %scevgep = getelementptr i8, ptr %i.ax, i64 4
  %load_initial = load float, ptr %scevgep, align 4 ; 2 uses
  %i.ay = add nuw nsw i64 %i.av, 1
  %xtraiter100 = and i64 %i.ay, 3                 ; 2 uses
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol

.lr.ph76.prol:                                    ; preds = %.lr.ph76.preheader, %.lr.ph76.prol
  %store_forwarded.prol = phi float [ %i.bk, %.lr.ph76.prol ], [ %load_initial, %.lr.ph76.preheader ]
  %indvars.iv87.prol = phi i64 [ %indvars.iv.next88.prol, %.lr.ph76.prol ], [ %i.av, %.lr.ph76.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph76.prol ], [ 0, %.lr.ph76.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv87.prol ; 2 uses
  %i.ba = load float, ptr %i.az, align 4, !tbaa !12
  %i.bb = mul nuw i64 %indvars.iv87.prol, 12
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load float, ptr %i.bd, align 4, !tbaa !12
  %i.bf = fmul reassoc nsz arcp contract afn float %store_forwarded.prol, %i.be
  %i.bg = fsub reassoc nsz arcp contract afn float %i.ba, %i.bf
  %.idx95.prol = mul nuw nsw i64 %indvars.iv87.prol, 12
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx95.prol
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !12
  %i.bk = fdiv reassoc nsz arcp contract afn float %i.bg, %i.bj ; 3 uses
  store float %i.bk, ptr %i.az, align 4, !tbaa !12
  %indvars.iv.next88.prol = add nsw i64 %indvars.iv87.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter100
  br i1 %prol.iter.cmp.not, label %.lr.ph76.prol.loopexit, label %.lr.ph76.prol, !llvm.loop !29

.lr.ph76.prol.loopexit:                           ; preds = %.lr.ph76.prol, %.lr.ph76.preheader
  %store_forwarded.unr = phi float [ %load_initial, %.lr.ph76.preheader ], [ %i.bk, %.lr.ph76.prol ]
  %indvars.iv87.unr = phi i64 [ %i.av, %.lr.ph76.preheader ], [ %indvars.iv.next88.prol, %.lr.ph76.prol ]
  %i.bl = icmp ult i32 %i.au, 3
  br i1 %i.bl, label %.loopexit, label %.lr.ph76

.lr.ph72:                                         ; preds = %.lr.ph72, %.lr.ph72.preheader.new
  %i.bm = phi float [ %.pre, %.lr.ph72.preheader.new ], [ %i.cs, %.lr.ph72 ]
  %indvars.iv82 = phi i64 [ 1, %.lr.ph72.preheader.new ], [ %indvars.iv.next83.1, %.lr.ph72 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph72.preheader.new ], [ %niter.next.1, %.lr.ph72 ]
  %.idx92 = mul i64 %indvars.iv82, 12
  %i.bn = getelementptr i8, ptr %1, i64 %.idx92   ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !12
  %i.bq = getelementptr i8, ptr %i.bn, i64 -8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !12
  %i.bs = fdiv reassoc nsz arcp contract afn float %i.bp, %i.br ; 2 uses
  %.idx93 = mul nuw nsw i64 %indvars.iv82, 12
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 2 uses
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !12
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !12
  %i.bx = fmul reassoc nsz arcp contract afn float %i.bw, %i.bs
  %i.by = fsub reassoc nsz arcp contract afn float %i.bv, %i.bx
  store float %i.by, ptr %i.bu, align 4, !tbaa !12
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv82 ; 2 uses
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !12
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bm, %i.bs
  %i.cc = fsub reassoc nsz arcp contract afn float %i.ca, %i.cb ; 2 uses
  store float %i.cc, ptr %i.bz, align 4, !tbaa !12
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1 ; 3 uses
  %.idx92.1 = mul i64 %indvars.iv.next83, 12
  %i.cd = getelementptr i8, ptr %1, i64 %.idx92.1 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !12
  %i.cg = getelementptr i8, ptr %i.cd, i64 -8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !12
  %i.ci = fdiv reassoc nsz arcp contract afn float %i.cf, %i.ch ; 2 uses
  %.idx93.1 = mul nuw nsw i64 %indvars.iv.next83, 12
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx93.1 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !12
  %i.cm = load float, ptr %i.cj, align 4, !tbaa !12
  %i.cn = fmul reassoc nsz arcp contract afn float %i.cm, %i.ci
  %i.co = fsub reassoc nsz arcp contract afn float %i.cl, %i.cn
  store float %i.co, ptr %i.ck, align 4, !tbaa !12
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next83 ; 2 uses
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !12
  %i.cr = fmul reassoc nsz arcp contract afn float %i.cc, %i.ci
  %i.cs = fsub reassoc nsz arcp contract afn float %i.cq, %i.cr ; 3 uses
  store float %i.cs, ptr %i.cp, align 4, !tbaa !12
  %indvars.iv.next83.1 = add nuw nsw i64 %indvars.iv82, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph76.preheader.unr-lcssa, label %.lr.ph72

.lr.ph76:                                         ; preds = %.lr.ph76.prol.loopexit, %.lr.ph76
  %store_forwarded = phi float [ %i.eo, %.lr.ph76 ], [ %store_forwarded.unr, %.lr.ph76.prol.loopexit ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88.3, %.lr.ph76 ], [ %indvars.iv87.unr, %.lr.ph76.prol.loopexit ] ; 7 uses
end_hunk_0
