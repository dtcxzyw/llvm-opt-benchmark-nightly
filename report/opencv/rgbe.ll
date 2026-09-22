Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rgbe?download=true
inline.NumInlined: 115
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z20RGBE_WritePixels_RLEP8_IO_FILEPfii:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31.i64.i: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67.i, %bb.ac
  %.pn16.i65.i = phi { ptr, i32 } [ %i.ej, %bb.ac ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i67.i ], [ %i.ek, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

._crit_edge.i:                                    ; preds = %bb.u, %bb.t, %bb.o
  %.2.lcssa.i = phi i32 [ %.05180.i, %bb.t ], [ %i.bu, %bb.o ], [ %i.dg, %bb.u ] ; 2 uses
  %i.ep = icmp samesign ugt i32 %.1.lcssa.i, 3
  br i1 %i.ep, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %._crit_edge.i
  %i.eq = trunc i32 %.1.lcssa.i to i8
  %i.er = xor i8 %i.eq, -128
  store i8 %i.er, ptr %i.d, align 1, !tbaa !19
  %i.es = sext i32 %i.bu to i64
  %i.et = getelementptr inbounds i8, ptr %i.bt, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !19
  store i8 %i.eu, ptr %i.w, align 1, !tbaa !19
  %i.ev = call i64 @fwrite(ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 1, ptr noundef null)
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.ex = add nsw i32 %.2.lcssa.i, %.1.lcssa.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i
  %.3.i = phi i32 [ %i.ex, %bb.ag ], [ %.2.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.ey = icmp slt i32 %.3.i, %2
  br i1 %i.ey, label %.preheader.i, label %_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit, !llvm.loop !39

_ZL19RGBE_WriteBytes_RLEP8_IO_FILEPhi.exit:       ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next64, 4
  br i1 %exitcond66.not, label %.loopexit, label %.preheader, !llvm.loop !40

._crit_edge:                                      ; preds = %.loopexit, %.preheader53
  tail call void @free(ptr noundef %i.l) #16
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z19RGBE_ReadPixels_RLEP8_IO_FILEPfii(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca [4 x i8], align 1                 ; 8 uses
  %i.b = alloca [2 x i8], align 1                 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.c = add i32 %2, -32768
  %or.cond = icmp ult i32 %i.c, -32760
  br i1 %or.cond, label %bb.b, label %.preheader108

.preheader108:                                    ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph168, label %._crit_edge169

.lr.ph168:                                        ; preds = %.preheader108
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3 ; 3 uses
  %i.h = shl nuw nsw i32 %2, 2
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 8 uses
  %i.k = shl nuw nsw i32 %2, 1
  %i.l = mul nuw nsw i32 %2, 3
  %i.m = zext nneg i32 %2 to i64                  ; 6 uses
  %i.n = zext nneg i32 %i.k to i64
  %i.o = zext nneg i32 %i.l to i64
  %.not272 = icmp eq i32 %2, 0
  %i.p = shl nuw nsw i64 %i.m, 1
  %i.q = mul nuw nsw i64 %i.m, 3
  %i.r = shl nuw nsw i64 %i.m, 2
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = mul nsw i32 %3, %2
  %i.t = tail call noundef i32 @_Z15RGBE_ReadPixelsP8_IO_FILEPfi(ptr noundef %0, ptr noundef %1, i32 noundef %i.s) ; 0 uses
  br label %bb.au

bb.c:                                             ; preds = %.lr.ph168, %._crit_edge
  %.081167 = phi ptr [ null, %.lr.ph168 ], [ %.182274, %._crit_edge ] ; 5 uses
  %.083166 = phi i32 [ %3, %.lr.ph168 ], [ %i.iq, %._crit_edge ] ; 3 uses
  %.085165 = phi ptr [ %1, %.lr.ph168 ], [ %i.ip, %._crit_edge ] ; 4 uses
  %i.u = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1, ptr noundef %0)
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %.081167) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 0, ptr noundef null)
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.a, align 1, !tbaa !19    ; 2 uses
  %i.x = icmp ne i8 %i.w, 2
  %i.y = load i8, ptr %i.e, align 1               ; 2 uses
  %i.z = icmp ne i8 %i.y, 2
  %or.cond5 = select i1 %i.x, i1 true, i1 %i.z
  br i1 %or.cond5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %i.f, align 1, !tbaa !19   ; 2 uses
  %.not = icmp sgt i8 %i.aa, -1
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.lcssa196 = phi i8 [ 2, %bb.f ], [ %i.y, %bb.e ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.085165, i64 8
  %i.ac = load i8, ptr %i.g, align 1, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i8 %i.ac, 0
  br i1 %.not.i, label %_ZL10rgbe2floatPfS_S_Ph.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nsw i32 %i.ad, -136
  %i.af = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.ae) #16
  %i.ag = fptrunc double %i.af to float           ; 2 uses
  %i.ah = uitofp i8 %i.w to float
  %i.ai = fmul float %i.ah, %i.ag
  %i.aj = load i8, ptr %i.f, align 1, !tbaa !19
  %i.ak = insertelement <2 x i8> poison, i8 %i.aj, i64 0
  %i.al = insertelement <2 x i8> %i.ak, i8 %.lcssa196, i64 1
  %i.am = uitofp <2 x i8> %i.al to <2 x float>
  %i.an = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.am
  br label %_ZL10rgbe2floatPfS_S_Ph.exit

_ZL10rgbe2floatPfS_S_Ph.exit:                     ; preds = %bb.g, %bb.h
  %.sink = phi float [ %i.ai, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.aq = phi <2 x float> [ %i.ap, %bb.h ], [ zeroinitializer, %bb.g ]
  store <2 x float> %i.aq, ptr %.085165, align 4, !tbaa !21
  store float %.sink, ptr %i.ab, align 4, !tbaa !21
  %i.ar = getelementptr inbounds nuw i8, ptr %.085165, i64 12
  tail call void @free(ptr noundef %.081167) #16
  %i.as = mul nuw nsw i32 %.083166, %2
  %i.at = add nsw i32 %i.as, -1
  %i.au = tail call noundef i32 @_Z15RGBE_ReadPixelsP8_IO_FILEPfi(ptr noundef %0, ptr noundef nonnull %i.ar, i32 noundef %i.at) ; 0 uses
  br label %bb.au

bb.i:                                             ; preds = %bb.f
  %i.av = zext nneg i8 %i.aa to i32
  %i.aw = shl nuw nsw i32 %i.av, 8
  %i.ax = load i8, ptr %i.g, align 1, !tbaa !19
  %i.ay = zext i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %.not92 = icmp eq i32 %i.az, %2
  br i1 %.not92, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef %.081167) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 2, ptr noundef nonnull @.str.14)
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.ba = icmp eq ptr %.081167, null
  br i1 %i.ba, label %bb.l, label %.preheader107.preheader

bb.l:                                             ; preds = %bb.k
  %i.bb = tail call noalias ptr @malloc(i64 noundef %i.i) #20 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.m, label %.preheader107.preheader

.preheader107.preheader:                          ; preds = %bb.k, %bb.l
  %.182274 = phi ptr [ %i.bb, %bb.l ], [ %.081167, %bb.k ] ; 16 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.m ; 2 uses
  br i1 %.not272, label %.loopexit105, label %.lr.ph157

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 3, ptr noundef nonnull @.str.15)
  unreachable

.loopexit105:                                     ; preds = %.loopexit, %.preheader107.preheader
  %.180.lcssa = phi ptr [ %.182274, %.preheader107.preheader ], [ %.3, %.loopexit ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.p ; 3 uses
  %i.bf = icmp ult ptr %.180.lcssa, %i.be
  br i1 %i.bf, label %.lr.ph157.1, label %.loopexit105.1

.lr.ph157.1:                                      ; preds = %.loopexit105
  %i.bg = ptrtoint ptr %i.be to i64
  br label %bb.n

bb.n:                                             ; preds = %.loopexit.1, %.lr.ph157.1
  %.180156.1 = phi ptr [ %.180.lcssa, %.lr.ph157.1 ], [ %.3.1, %.loopexit.1 ] ; 13 uses
  %i.bh = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %.loopexit218, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.bk = zext i8 %i.bj to i32                    ; 2 uses
  %i.bl = icmp ugt i8 %i.bj, -128
  %i.bm = ptrtoint ptr %.180156.1 to i64
  %i.bn = sub i64 %i.bg, %i.bm                    ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq i8 %i.bj, 0
  %i.bp = zext i8 %i.bj to i64
  %i.bq = icmp slt i64 %i.bn, %i.bp
  %or.cond98.1 = or i1 %i.bo, %i.bq
  br i1 %or.cond98.1, label %.loopexit219, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load i8, ptr %i.j, align 1, !tbaa !19
  %i.bs = getelementptr inbounds nuw i8, ptr %.180156.1, i64 1 ; 3 uses
  store i8 %i.br, ptr %.180156.1, align 1, !tbaa !19
  %.not93.1 = icmp eq i8 %i.bj, 1
  br i1 %.not93.1, label %.loopexit.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bt = add nsw i32 %i.bk, -1
  %i.bu = zext nneg i32 %i.bt to i64              ; 2 uses
  %i.bv = tail call i64 @fread(ptr noundef nonnull %i.bs, i64 noundef %i.bu, i64 noundef 1, ptr noundef %0)
  %i.bw = icmp eq i64 %i.bv, 0
  br i1 %i.bw, label %.loopexit220, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bu
  br label %.loopexit.1

bb.t:                                             ; preds = %bb.o
  %i.by = add nsw i32 %i.bk, -128                 ; 6 uses
  %i.bz = zext nneg i32 %i.by to i64              ; 6 uses
  %i.ca = icmp slt i64 %i.bn, %i.bz
  br i1 %i.ca, label %.loopexit221, label %iter.check568

iter.check568:                                    ; preds = %bb.t
  %.pre252 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %min.iters.check553 = icmp ult i32 %i.by, 4
  br i1 %min.iters.check553, label %.lr.ph.1.preheader, label %vector.main.loop.iter.check554

vector.main.loop.iter.check554:                   ; preds = %iter.check568
  %min.iters.check555 = icmp ult i32 %i.by, 32
  br i1 %min.iters.check555, label %vec.epilog.ph572, label %vector.ph556

vector.ph556:                                     ; preds = %vector.main.loop.iter.check554
  %i.cb = and i64 %i.bz, 28
  %n.vec557 = and i64 %i.bz, 96                   ; 6 uses
  %i.cc = trunc nuw nsw i64 %n.vec557 to i32
  %i.cd = sub nsw i32 %i.by, %i.cc
  %i.ce = getelementptr i8, ptr %.180156.1, i64 %n.vec557 ; 2 uses
  %broadcast.splatinsert558 = insertelement <16 x i8> poison, i8 %.pre252, i64 0
  %broadcast.splat559 = shufflevector <16 x i8> %broadcast.splatinsert558, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.cf = getelementptr i8, ptr %.180156.1, i64 16
  store <16 x i8> %broadcast.splat559, ptr %.180156.1, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat559, ptr %i.cf, align 1, !tbaa !19
  %i.cg = icmp eq i64 %n.vec557, 32
  br i1 %i.cg, label %middle.block564, label %vector.body560.1.a

vector.body560.1.a:                               ; preds = %vector.ph556
  %next.gep562.1.a = getelementptr i8, ptr %.180156.1, i64 32
  %i.ch = getelementptr i8, ptr %.180156.1, i64 48
  store <16 x i8> %broadcast.splat559, ptr %next.gep562.1.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat559, ptr %i.ch, align 1, !tbaa !19
  %i.ci = icmp eq i64 %n.vec557, 64
  br i1 %i.ci, label %middle.block564, label %vector.body560.2.a

vector.body560.2.a:                               ; preds = %vector.body560.1.a
  %next.gep562.2.a = getelementptr i8, ptr %.180156.1, i64 64
  %i.cj = getelementptr i8, ptr %.180156.1, i64 80
  store <16 x i8> %broadcast.splat559, ptr %next.gep562.2.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat559, ptr %i.cj, align 1, !tbaa !19
  br label %middle.block564

middle.block564:                                  ; preds = %vector.body560.2.a, %vector.body560.1.a, %vector.ph556
  %cmp.n565 = icmp eq i64 %n.vec557, %i.bz
  br i1 %cmp.n565, label %.loopexit.1, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block564
  %min.epilog.iters.check571 = icmp eq i64 %i.cb, 0
  br i1 %min.epilog.iters.check571, label %.lr.ph.1.preheader, label %vec.epilog.ph572, !prof !52

vec.epilog.ph572:                                 ; preds = %vector.main.loop.iter.check554, %vec.epilog.iter.check570
  %vec.epilog.resume.val566 = phi i64 [ %n.vec557, %vec.epilog.iter.check570 ], [ 0, %vector.main.loop.iter.check554 ]
  %n.vec573 = and i64 %i.bz, 124                  ; 4 uses
  %i.ck = trunc nuw nsw i64 %n.vec573 to i32
  %i.cl = sub nsw i32 %i.by, %i.ck
  %i.cm = getelementptr i8, ptr %.180156.1, i64 %n.vec573 ; 2 uses
  %broadcast.splatinsert574 = insertelement <4 x i8> poison, i8 %.pre252, i64 0
  %broadcast.splat575 = shufflevector <4 x i8> %broadcast.splatinsert574, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body576

vec.epilog.vector.body576:                        ; preds = %vec.epilog.vector.body576, %vec.epilog.ph572
  %index577 = phi i64 [ %vec.epilog.resume.val566, %vec.epilog.ph572 ], [ %index.next579, %vec.epilog.vector.body576 ] ; 2 uses
  %next.gep578 = getelementptr i8, ptr %.180156.1, i64 %index577
  store <4 x i8> %broadcast.splat575, ptr %next.gep578, align 1, !tbaa !19
  %index.next579 = add nuw i64 %index577, 4       ; 2 uses
  %i.cn = icmp eq i64 %index.next579, %n.vec573
  br i1 %i.cn, label %vec.epilog.middle.block580, label %vec.epilog.vector.body576, !llvm.loop !41

vec.epilog.middle.block580:                       ; preds = %vec.epilog.vector.body576
  %cmp.n581 = icmp eq i64 %n.vec573, %i.bz
  br i1 %cmp.n581, label %.loopexit.1, label %.lr.ph.1.preheader

.lr.ph.1.preheader:                               ; preds = %iter.check568, %vec.epilog.iter.check570, %vec.epilog.middle.block580
  %.0155.1.ph = phi i32 [ %i.by, %iter.check568 ], [ %i.cd, %vec.epilog.iter.check570 ], [ %i.cl, %vec.epilog.middle.block580 ]
  %.2154.1.ph = phi ptr [ %.180156.1, %iter.check568 ], [ %i.ce, %vec.epilog.iter.check570 ], [ %i.cm, %vec.epilog.middle.block580 ]
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph.1.preheader, %.lr.ph.1
  %.0155.1 = phi i32 [ %i.co, %.lr.ph.1 ], [ %.0155.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %.2154.1 = phi ptr [ %i.cp, %.lr.ph.1 ], [ %.2154.1.ph, %.lr.ph.1.preheader ] ; 2 uses
  %i.co = add nsw i32 %.0155.1, -1
  %i.cp = getelementptr inbounds nuw i8, ptr %.2154.1, i64 1 ; 2 uses
  store i8 %.pre252, ptr %.2154.1, align 1, !tbaa !19
  %i.cq = icmp samesign ugt i32 %.0155.1, 1
  br i1 %i.cq, label %.lr.ph.1, label %.loopexit.1, !llvm.loop !42

.loopexit.1:                                      ; preds = %.lr.ph.1, %middle.block564, %vec.epilog.middle.block580, %bb.s, %bb.q
  %.3.1 = phi ptr [ %i.bs, %bb.q ], [ %i.bx, %bb.s ], [ %i.cm, %vec.epilog.middle.block580 ], [ %i.ce, %middle.block564 ], [ %i.cp, %.lr.ph.1 ] ; 3 uses
  %i.cr = icmp ult ptr %.3.1, %i.be
  br i1 %i.cr, label %bb.n, label %.loopexit105.1, !llvm.loop !43

.loopexit105.1:                                   ; preds = %.loopexit.1, %.loopexit105
  %.180.lcssa.1 = phi ptr [ %.180.lcssa, %.loopexit105 ], [ %.3.1, %.loopexit.1 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.q ; 3 uses
  %i.ct = icmp ult ptr %.180.lcssa.1, %i.cs
  br i1 %i.ct, label %.lr.ph157.2, label %.loopexit105.2

.lr.ph157.2:                                      ; preds = %.loopexit105.1
  %i.cu = ptrtoint ptr %i.cs to i64
  br label %bb.u

bb.u:                                             ; preds = %.loopexit.2, %.lr.ph157.2
  %.180156.2 = phi ptr [ %.180.lcssa.1, %.lr.ph157.2 ], [ %.3.2, %.loopexit.2 ] ; 13 uses
  %i.cv = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.loopexit218, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.cy = zext i8 %i.cx to i32                    ; 2 uses
  %i.cz = icmp ugt i8 %i.cx, -128
  %i.da = ptrtoint ptr %.180156.2 to i64
  %i.db = sub i64 %i.cu, %i.da                    ; 2 uses
  br i1 %i.cz, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dc = icmp eq i8 %i.cx, 0
  %i.dd = zext i8 %i.cx to i64
  %i.de = icmp slt i64 %i.db, %i.dd
  %or.cond98.2 = or i1 %i.dc, %i.de
  br i1 %or.cond98.2, label %.loopexit219, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.df = load i8, ptr %i.j, align 1, !tbaa !19
  %i.dg = getelementptr inbounds nuw i8, ptr %.180156.2, i64 1 ; 3 uses
  store i8 %i.df, ptr %.180156.2, align 1, !tbaa !19
  %.not93.2 = icmp eq i8 %i.cx, 1
  br i1 %.not93.2, label %.loopexit.2, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = add nsw i32 %i.cy, -1
  %i.di = zext nneg i32 %i.dh to i64              ; 2 uses
  %i.dj = tail call i64 @fread(ptr noundef nonnull %i.dg, i64 noundef %i.di, i64 noundef 1, ptr noundef %0)
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %.loopexit220, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  br label %.loopexit.2

bb.aa:                                            ; preds = %bb.v
  %i.dm = add nsw i32 %i.cy, -128                 ; 6 uses
  %i.dn = zext nneg i32 %i.dm to i64              ; 6 uses
  %i.do = icmp slt i64 %i.db, %i.dn
  br i1 %i.do, label %.loopexit221, label %iter.check537

iter.check537:                                    ; preds = %bb.aa
  %.pre253 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %min.iters.check522 = icmp ult i32 %i.dm, 4
  br i1 %min.iters.check522, label %.lr.ph.2.preheader, label %vector.main.loop.iter.check523

vector.main.loop.iter.check523:                   ; preds = %iter.check537
  %min.iters.check524 = icmp ult i32 %i.dm, 32
  br i1 %min.iters.check524, label %vec.epilog.ph541, label %vector.ph525

vector.ph525:                                     ; preds = %vector.main.loop.iter.check523
  %i.dp = and i64 %i.dn, 28
  %n.vec526 = and i64 %i.dn, 96                   ; 6 uses
  %i.dq = trunc nuw nsw i64 %n.vec526 to i32
  %i.dr = sub nsw i32 %i.dm, %i.dq
  %i.ds = getelementptr i8, ptr %.180156.2, i64 %n.vec526 ; 2 uses
  %broadcast.splatinsert527 = insertelement <16 x i8> poison, i8 %.pre253, i64 0
  %broadcast.splat528 = shufflevector <16 x i8> %broadcast.splatinsert527, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.dt = getelementptr i8, ptr %.180156.2, i64 16
  store <16 x i8> %broadcast.splat528, ptr %.180156.2, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat528, ptr %i.dt, align 1, !tbaa !19
  %i.du = icmp eq i64 %n.vec526, 32
  br i1 %i.du, label %middle.block533, label %vector.body529.1.a

vector.body529.1.a:                               ; preds = %vector.ph525
  %next.gep531.1.a = getelementptr i8, ptr %.180156.2, i64 32
  %i.dv = getelementptr i8, ptr %.180156.2, i64 48
  store <16 x i8> %broadcast.splat528, ptr %next.gep531.1.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat528, ptr %i.dv, align 1, !tbaa !19
  %i.dw = icmp eq i64 %n.vec526, 64
  br i1 %i.dw, label %middle.block533, label %vector.body529.2.a

vector.body529.2.a:                               ; preds = %vector.body529.1.a
  %next.gep531.2.a = getelementptr i8, ptr %.180156.2, i64 64
  %i.dx = getelementptr i8, ptr %.180156.2, i64 80
  store <16 x i8> %broadcast.splat528, ptr %next.gep531.2.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat528, ptr %i.dx, align 1, !tbaa !19
  br label %middle.block533

middle.block533:                                  ; preds = %vector.body529.2.a, %vector.body529.1.a, %vector.ph525
  %cmp.n534 = icmp eq i64 %n.vec526, %i.dn
  br i1 %cmp.n534, label %.loopexit.2, label %vec.epilog.iter.check539

vec.epilog.iter.check539:                         ; preds = %middle.block533
  %min.epilog.iters.check540 = icmp eq i64 %i.dp, 0
  br i1 %min.epilog.iters.check540, label %.lr.ph.2.preheader, label %vec.epilog.ph541, !prof !52

vec.epilog.ph541:                                 ; preds = %vector.main.loop.iter.check523, %vec.epilog.iter.check539
  %vec.epilog.resume.val535 = phi i64 [ %n.vec526, %vec.epilog.iter.check539 ], [ 0, %vector.main.loop.iter.check523 ]
  %n.vec542 = and i64 %i.dn, 124                  ; 4 uses
  %i.dy = trunc nuw nsw i64 %n.vec542 to i32
  %i.dz = sub nsw i32 %i.dm, %i.dy
  %i.ea = getelementptr i8, ptr %.180156.2, i64 %n.vec542 ; 2 uses
  %broadcast.splatinsert543 = insertelement <4 x i8> poison, i8 %.pre253, i64 0
  %broadcast.splat544 = shufflevector <4 x i8> %broadcast.splatinsert543, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body545

vec.epilog.vector.body545:                        ; preds = %vec.epilog.vector.body545, %vec.epilog.ph541
  %index546 = phi i64 [ %vec.epilog.resume.val535, %vec.epilog.ph541 ], [ %index.next548, %vec.epilog.vector.body545 ] ; 2 uses
  %next.gep547 = getelementptr i8, ptr %.180156.2, i64 %index546
  store <4 x i8> %broadcast.splat544, ptr %next.gep547, align 1, !tbaa !19
  %index.next548 = add nuw i64 %index546, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next548, %n.vec542
  br i1 %i.eb, label %vec.epilog.middle.block549, label %vec.epilog.vector.body545, !llvm.loop !44

vec.epilog.middle.block549:                       ; preds = %vec.epilog.vector.body545
  %cmp.n550 = icmp eq i64 %n.vec542, %i.dn
  br i1 %cmp.n550, label %.loopexit.2, label %.lr.ph.2.preheader

.lr.ph.2.preheader:                               ; preds = %iter.check537, %vec.epilog.iter.check539, %vec.epilog.middle.block549
  %.0155.2.ph = phi i32 [ %i.dm, %iter.check537 ], [ %i.dr, %vec.epilog.iter.check539 ], [ %i.dz, %vec.epilog.middle.block549 ]
  %.2154.2.ph = phi ptr [ %.180156.2, %iter.check537 ], [ %i.ds, %vec.epilog.iter.check539 ], [ %i.ea, %vec.epilog.middle.block549 ]
  br label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.2.preheader, %.lr.ph.2
  %.0155.2 = phi i32 [ %i.ec, %.lr.ph.2 ], [ %.0155.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %.2154.2 = phi ptr [ %i.ed, %.lr.ph.2 ], [ %.2154.2.ph, %.lr.ph.2.preheader ] ; 2 uses
  %i.ec = add nsw i32 %.0155.2, -1
  %i.ed = getelementptr inbounds nuw i8, ptr %.2154.2, i64 1 ; 2 uses
  store i8 %.pre253, ptr %.2154.2, align 1, !tbaa !19
  %i.ee = icmp samesign ugt i32 %.0155.2, 1
  br i1 %i.ee, label %.lr.ph.2, label %.loopexit.2, !llvm.loop !45

.loopexit.2:                                      ; preds = %.lr.ph.2, %middle.block533, %vec.epilog.middle.block549, %bb.z, %bb.x
  %.3.2 = phi ptr [ %i.dg, %bb.x ], [ %i.dl, %bb.z ], [ %i.ea, %vec.epilog.middle.block549 ], [ %i.ds, %middle.block533 ], [ %i.ed, %.lr.ph.2 ] ; 3 uses
  %i.ef = icmp ult ptr %.3.2, %i.cs
  br i1 %i.ef, label %bb.u, label %.loopexit105.2, !llvm.loop !43

.loopexit105.2:                                   ; preds = %.loopexit.2, %.loopexit105.1
  %.180.lcssa.2 = phi ptr [ %.180.lcssa.1, %.loopexit105.1 ], [ %.3.2, %.loopexit.2 ] ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.r ; 3 uses
  %i.eh = icmp ult ptr %.180.lcssa.2, %i.eg
  br i1 %i.eh, label %.lr.ph157.3, label %.lr.ph163.preheader

.lr.ph157.3:                                      ; preds = %.loopexit105.2
  %i.ei = ptrtoint ptr %i.eg to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.3, %.lr.ph157.3
  %.180156.3 = phi ptr [ %.180.lcssa.2, %.lr.ph157.3 ], [ %.3.3, %.loopexit.3 ] ; 13 uses
  %i.ej = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %.loopexit218, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.el = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.em = zext i8 %i.el to i32                    ; 2 uses
  %i.en = icmp ugt i8 %i.el, -128
  %i.eo = ptrtoint ptr %.180156.3 to i64
  %i.ep = sub i64 %i.ei, %i.eo                    ; 2 uses
  br i1 %i.en, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.eq = icmp eq i8 %i.el, 0
  %i.er = zext i8 %i.el to i64
  %i.es = icmp slt i64 %i.ep, %i.er
  %or.cond98.3 = or i1 %i.eq, %i.es
  br i1 %or.cond98.3, label %.loopexit219, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.et = load i8, ptr %i.j, align 1, !tbaa !19
  %i.eu = getelementptr inbounds nuw i8, ptr %.180156.3, i64 1 ; 3 uses
  store i8 %i.et, ptr %.180156.3, align 1, !tbaa !19
  %.not93.3 = icmp eq i8 %i.el, 1
  br i1 %.not93.3, label %.loopexit.3, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ev = add nsw i32 %i.em, -1
  %i.ew = zext nneg i32 %i.ev to i64              ; 2 uses
  %i.ex = tail call i64 @fread(ptr noundef nonnull %i.eu, i64 noundef %i.ew, i64 noundef 1, ptr noundef %0)
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %.loopexit220, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eu, i64 %i.ew
  br label %.loopexit.3

bb.ah:                                            ; preds = %bb.ac
  %i.fa = add nsw i32 %i.em, -128                 ; 6 uses
  %i.fb = zext nneg i32 %i.fa to i64              ; 6 uses
  %i.fc = icmp slt i64 %i.ep, %i.fb
  br i1 %i.fc, label %.loopexit221, label %iter.check

iter.check:                                       ; preds = %bb.ah
  %.pre254 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %min.iters.check = icmp ult i32 %i.fa, 4
  br i1 %min.iters.check, label %.lr.ph.3.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check511 = icmp ult i32 %i.fa, 32
  br i1 %min.iters.check511, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.fd = and i64 %i.fb, 28
  %n.vec = and i64 %i.fb, 96                      ; 6 uses
  %i.fe = trunc nuw nsw i64 %n.vec to i32
  %i.ff = sub nsw i32 %i.fa, %i.fe
  %i.fg = getelementptr i8, ptr %.180156.3, i64 %n.vec ; 2 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %.pre254, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.fh = getelementptr i8, ptr %.180156.3, i64 16
  store <16 x i8> %broadcast.splat, ptr %.180156.3, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat, ptr %i.fh, align 1, !tbaa !19
  %i.fi = icmp eq i64 %n.vec, 32
  br i1 %i.fi, label %middle.block, label %vector.body.1.a

vector.body.1.a:                                  ; preds = %vector.ph
  %next.gep.1.a = getelementptr i8, ptr %.180156.3, i64 32
  %i.fj = getelementptr i8, ptr %.180156.3, i64 48
  store <16 x i8> %broadcast.splat, ptr %next.gep.1.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat, ptr %i.fj, align 1, !tbaa !19
  %i.fk = icmp eq i64 %n.vec, 64
  br i1 %i.fk, label %middle.block, label %vector.body.2.a

vector.body.2.a:                                  ; preds = %vector.body.1.a
  %next.gep.2.a = getelementptr i8, ptr %.180156.3, i64 64
  %i.fl = getelementptr i8, ptr %.180156.3, i64 80
  store <16 x i8> %broadcast.splat, ptr %next.gep.2.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat, ptr %i.fl, align 1, !tbaa !19
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2.a, %vector.body.1.a, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.fb
  br i1 %cmp.n, label %.loopexit.3, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.fd, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.3.preheader, label %vec.epilog.ph, !prof !52

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec513 = and i64 %i.fb, 124                  ; 4 uses
  %i.fm = trunc nuw nsw i64 %n.vec513 to i32
  %i.fn = sub nsw i32 %i.fa, %i.fm
  %i.fo = getelementptr i8, ptr %.180156.3, i64 %n.vec513 ; 2 uses
  %broadcast.splatinsert514 = insertelement <4 x i8> poison, i8 %.pre254, i64 0
  %broadcast.splat515 = shufflevector <4 x i8> %broadcast.splatinsert514, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index516 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next518, %vec.epilog.vector.body ] ; 2 uses
  %next.gep517 = getelementptr i8, ptr %.180156.3, i64 %index516
  store <4 x i8> %broadcast.splat515, ptr %next.gep517, align 1, !tbaa !19
  %index.next518 = add nuw i64 %index516, 4       ; 2 uses
  %i.fp = icmp eq i64 %index.next518, %n.vec513
  br i1 %i.fp, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n519 = icmp eq i64 %n.vec513, %i.fb
  br i1 %cmp.n519, label %.loopexit.3, label %.lr.ph.3.preheader

.lr.ph.3.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0155.3.ph = phi i32 [ %i.fa, %iter.check ], [ %i.ff, %vec.epilog.iter.check ], [ %i.fn, %vec.epilog.middle.block ]
  %.2154.3.ph = phi ptr [ %.180156.3, %iter.check ], [ %i.fg, %vec.epilog.iter.check ], [ %i.fo, %vec.epilog.middle.block ]
  br label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.lr.ph.3
  %.0155.3 = phi i32 [ %i.fq, %.lr.ph.3 ], [ %.0155.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %.2154.3 = phi ptr [ %i.fr, %.lr.ph.3 ], [ %.2154.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.fq = add nsw i32 %.0155.3, -1
  %i.fr = getelementptr inbounds nuw i8, ptr %.2154.3, i64 1 ; 2 uses
  store i8 %.pre254, ptr %.2154.3, align 1, !tbaa !19
  %i.fs = icmp samesign ugt i32 %.0155.3, 1
  br i1 %i.fs, label %.lr.ph.3, label %.loopexit.3, !llvm.loop !47

.loopexit.3:                                      ; preds = %.lr.ph.3, %middle.block, %vec.epilog.middle.block, %bb.ag, %bb.ae
  %.3.3 = phi ptr [ %i.eu, %bb.ae ], [ %i.ez, %bb.ag ], [ %i.fo, %vec.epilog.middle.block ], [ %i.fg, %middle.block ], [ %i.fr, %.lr.ph.3 ] ; 2 uses
  %i.ft = icmp ult ptr %.3.3, %i.eg
  br i1 %i.ft, label %bb.ab, label %.lr.ph163.preheader, !llvm.loop !43

.lr.ph163.preheader:                              ; preds = %.loopexit.3, %.loopexit105.2
  %invariant.gep = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.m
  %invariant.gep391 = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.n
  %invariant.gep393 = getelementptr inbounds nuw i8, ptr %.182274, i64 %i.o
  br label %.lr.ph163

.lr.ph157:                                        ; preds = %.preheader107.preheader
  %i.fu = ptrtoint ptr %i.bd to i64
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph157, %.loopexit
  %.180156 = phi ptr [ %.182274, %.lr.ph157 ], [ %.3, %.loopexit ] ; 13 uses
  %i.fv = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 2, i64 noundef 1, ptr noundef %0)
  %i.fw = icmp eq i64 %i.fv, 0
  br i1 %i.fw, label %.loopexit218, label %bb.al

.loopexit218:                                     ; preds = %bb.ai, %bb.n, %bb.u, %bb.ab
  tail call void @free(ptr noundef nonnull %.182274) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.fx, ptr %5, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.fx, ptr noundef nonnull align 1 dereferenceable(15) @.str.17, i64 15, i1 false)
  %i.fy = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 15, ptr %i.fy, align 8, !tbaa !20
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 31
  store i8 0, ptr %i.fz, align 1, !tbaa !19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 88) #17
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %.loopexit218
  unreachable

bb.ak:                                            ; preds = %.loopexit218
  %i.ga = landingpad { ptr, i32 }
          cleanup
  %i.gb = load ptr, ptr %5, align 8, !tbaa !18    ; 2 uses
  %i.gc = icmp eq ptr %i.gb, %i.fx
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ak
  %i.gd = load i64, ptr %i.fx, align 8, !tbaa !19
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.ge) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %common.resume.op = phi { ptr, i32 } [ %i.ga, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.hp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %common.resume

bb.al:                                            ; preds = %bb.ai
  %i.gf = load i8, ptr %i.b, align 1, !tbaa !19   ; 5 uses
  %i.gg = zext i8 %i.gf to i32                    ; 2 uses
  %i.gh = icmp ugt i8 %i.gf, -128
  %i.gi = ptrtoint ptr %.180156 to i64
  %i.gj = sub i64 %i.fu, %i.gi                    ; 2 uses
  br i1 %i.gh, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.gk = add nsw i32 %i.gg, -128                 ; 6 uses
  %i.gl = zext nneg i32 %i.gk to i64              ; 6 uses
  %i.gm = icmp slt i64 %i.gj, %i.gl
  br i1 %i.gm, label %.loopexit221, label %iter.check599

iter.check599:                                    ; preds = %bb.am
  %.pre = load i8, ptr %i.j, align 1, !tbaa !19   ; 3 uses
  %min.iters.check584 = icmp ult i32 %i.gk, 4
  br i1 %min.iters.check584, label %.lr.ph.preheader, label %vector.main.loop.iter.check585

vector.main.loop.iter.check585:                   ; preds = %iter.check599
  %min.iters.check586 = icmp ult i32 %i.gk, 32
  br i1 %min.iters.check586, label %vec.epilog.ph603, label %vector.ph587

vector.ph587:                                     ; preds = %vector.main.loop.iter.check585
  %i.gn = and i64 %i.gl, 28
  %n.vec588 = and i64 %i.gl, 96                   ; 6 uses
  %i.go = trunc nuw nsw i64 %n.vec588 to i32
  %i.gp = sub nsw i32 %i.gk, %i.go
  %i.gq = getelementptr i8, ptr %.180156, i64 %n.vec588 ; 2 uses
  %broadcast.splatinsert589 = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat590 = shufflevector <16 x i8> %broadcast.splatinsert589, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.gr = getelementptr i8, ptr %.180156, i64 16
  store <16 x i8> %broadcast.splat590, ptr %.180156, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat590, ptr %i.gr, align 1, !tbaa !19
  %i.gs = icmp eq i64 %n.vec588, 32
  br i1 %i.gs, label %middle.block595, label %vector.body591.1.a

vector.body591.1.a:                               ; preds = %vector.ph587
  %next.gep593.1.a = getelementptr i8, ptr %.180156, i64 32
  %i.gt = getelementptr i8, ptr %.180156, i64 48
  store <16 x i8> %broadcast.splat590, ptr %next.gep593.1.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat590, ptr %i.gt, align 1, !tbaa !19
  %i.gu = icmp eq i64 %n.vec588, 64
  br i1 %i.gu, label %middle.block595, label %vector.body591.2.a

vector.body591.2.a:                               ; preds = %vector.body591.1.a
  %next.gep593.2.a = getelementptr i8, ptr %.180156, i64 64
  %i.gv = getelementptr i8, ptr %.180156, i64 80
  store <16 x i8> %broadcast.splat590, ptr %next.gep593.2.a, align 1, !tbaa !19
  store <16 x i8> %broadcast.splat590, ptr %i.gv, align 1, !tbaa !19
  br label %middle.block595

middle.block595:                                  ; preds = %vector.body591.2.a, %vector.body591.1.a, %vector.ph587
  %cmp.n596 = icmp eq i64 %n.vec588, %i.gl
  br i1 %cmp.n596, label %.loopexit, label %vec.epilog.iter.check601

vec.epilog.iter.check601:                         ; preds = %middle.block595
  %min.epilog.iters.check602 = icmp eq i64 %i.gn, 0
  br i1 %min.epilog.iters.check602, label %.lr.ph.preheader, label %vec.epilog.ph603, !prof !52

vec.epilog.ph603:                                 ; preds = %vector.main.loop.iter.check585, %vec.epilog.iter.check601
  %vec.epilog.resume.val597 = phi i64 [ %n.vec588, %vec.epilog.iter.check601 ], [ 0, %vector.main.loop.iter.check585 ]
  %n.vec604 = and i64 %i.gl, 124                  ; 4 uses
  %i.gw = trunc nuw nsw i64 %n.vec604 to i32
  %i.gx = sub nsw i32 %i.gk, %i.gw
  %i.gy = getelementptr i8, ptr %.180156, i64 %n.vec604 ; 2 uses
  %broadcast.splatinsert605 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat606 = shufflevector <4 x i8> %broadcast.splatinsert605, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body607

vec.epilog.vector.body607:                        ; preds = %vec.epilog.vector.body607, %vec.epilog.ph603
  %index608 = phi i64 [ %vec.epilog.resume.val597, %vec.epilog.ph603 ], [ %index.next610, %vec.epilog.vector.body607 ] ; 2 uses
  %next.gep609 = getelementptr i8, ptr %.180156, i64 %index608
  store <4 x i8> %broadcast.splat606, ptr %next.gep609, align 1, !tbaa !19
  %index.next610 = add nuw i64 %index608, 4       ; 2 uses
  %i.gz = icmp eq i64 %index.next610, %n.vec604
  br i1 %i.gz, label %vec.epilog.middle.block611, label %vec.epilog.vector.body607, !llvm.loop !48

vec.epilog.middle.block611:                       ; preds = %vec.epilog.vector.body607
  %cmp.n612 = icmp eq i64 %n.vec604, %i.gl
  br i1 %cmp.n612, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check599, %vec.epilog.iter.check601, %vec.epilog.middle.block611
  %.0155.ph = phi i32 [ %i.gk, %iter.check599 ], [ %i.gp, %vec.epilog.iter.check601 ], [ %i.gx, %vec.epilog.middle.block611 ]
  %.2154.ph = phi ptr [ %.180156, %iter.check599 ], [ %i.gq, %vec.epilog.iter.check601 ], [ %i.gy, %vec.epilog.middle.block611 ]
  br label %.lr.ph

.loopexit221:                                     ; preds = %bb.am, %bb.t, %bb.aa, %bb.ah
  tail call void @free(ptr noundef nonnull %.182274) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 2, ptr noundef nonnull @.str.16)
  unreachable

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0155 = phi i32 [ %i.ha, %.lr.ph ], [ %.0155.ph, %.lr.ph.preheader ] ; 2 uses
  %.2154 = phi ptr [ %i.hb, %.lr.ph ], [ %.2154.ph, %.lr.ph.preheader ] ; 2 uses
  %i.ha = add nsw i32 %.0155, -1
  %i.hb = getelementptr inbounds nuw i8, ptr %.2154, i64 1 ; 2 uses
  store i8 %.pre, ptr %.2154, align 1, !tbaa !19
  %i.hc = icmp samesign ugt i32 %.0155, 1
  br i1 %i.hc, label %.lr.ph, label %.loopexit, !llvm.loop !49

bb.an:                                            ; preds = %bb.al
  %i.hd = icmp eq i8 %i.gf, 0
  %i.he = zext i8 %i.gf to i64
  %i.hf = icmp slt i64 %i.gj, %i.he
  %or.cond98 = or i1 %i.hd, %i.hf
  br i1 %or.cond98, label %.loopexit219, label %bb.ao

.loopexit219:                                     ; preds = %bb.an, %bb.p, %bb.w, %bb.ad
  tail call void @free(ptr noundef nonnull %.182274) #16
  tail call fastcc void @_ZL10rgbe_erroriPKc(i32 noundef 2, ptr noundef nonnull @.str.16)
  unreachable

bb.ao:                                            ; preds = %bb.an
  %i.hg = load i8, ptr %i.j, align 1, !tbaa !19
  %i.hh = getelementptr inbounds nuw i8, ptr %.180156, i64 1 ; 3 uses
  store i8 %i.hg, ptr %.180156, align 1, !tbaa !19
  %.not93 = icmp eq i8 %i.gf, 1
  br i1 %.not93, label %.loopexit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hi = add nsw i32 %i.gg, -1
  %i.hj = zext nneg i32 %i.hi to i64              ; 2 uses
  %i.hk = tail call i64 @fread(ptr noundef nonnull %i.hh, i64 noundef %i.hj, i64 noundef 1, ptr noundef %0)
  %i.hl = icmp eq i64 %i.hk, 0
  br i1 %i.hl, label %.loopexit220, label %bb.as

.loopexit220:                                     ; preds = %bb.ap, %bb.r, %bb.y, %bb.af
  tail call void @free(ptr noundef nonnull %.182274) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.hm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  store ptr %i.hm, ptr %4, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.hm, ptr noundef nonnull align 1 dereferenceable(15) @.str.17, i64 15, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.hn, align 8, !tbaa !20
  %i.ho = getelementptr inbounds nuw i8, ptr %4, i64 31
  store i8 0, ptr %i.ho, align 1, !tbaa !19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZL10rgbe_erroriPKc, ptr noundef nonnull @.str.18, i32 noundef 88) #17
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.loopexit220
  unreachable

bb.ar:                                            ; preds = %.loopexit220
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = load ptr, ptr %4, align 8, !tbaa !18    ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.hm
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99: ; preds = %bb.ar
  %i.hs = load i64, ptr %i.hm, align 8, !tbaa !19
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #18
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i100: ; preds = %bb.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i99
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %common.resume

bb.as:                                            ; preds = %bb.ap
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %middle.block595, %vec.epilog.middle.block611, %bb.ao, %bb.as
  %.3 = phi ptr [ %i.hh, %bb.ao ], [ %i.hu, %bb.as ], [ %i.gy, %vec.epilog.middle.block611 ], [ %i.gq, %middle.block595 ], [ %i.hb, %.lr.ph ] ; 3 uses
  %i.hv = icmp ult ptr %.3, %i.bd
  br i1 %i.hv, label %bb.ai, label %.loopexit105, !llvm.loop !43

.lr.ph163:                                        ; preds = %.lr.ph163.preheader, %_ZL10rgbe2floatPfS_S_Ph.exit104
  %indvars.iv = phi i64 [ 0, %.lr.ph163.preheader ], [ %indvars.iv.next, %_ZL10rgbe2floatPfS_S_Ph.exit104 ] ; 5 uses
  %.186161 = phi ptr [ %.085165, %.lr.ph163.preheader ], [ %i.ip, %_ZL10rgbe2floatPfS_S_Ph.exit104 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.182274, i64 %indvars.iv
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !19  ; 2 uses
  store i8 %i.hx, ptr %i.a, align 1, !tbaa !19
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.hy = load i8, ptr %gep, align 1, !tbaa !19   ; 2 uses
  store i8 %i.hy, ptr %i.e, align 1, !tbaa !19
  %gep392 = getelementptr inbounds nuw i8, ptr %invariant.gep391, i64 %indvars.iv
  %i.hz = load i8, ptr %gep392, align 1, !tbaa !19 ; 2 uses
  store i8 %i.hz, ptr %i.f, align 1, !tbaa !19
  %gep394 = getelementptr inbounds nuw i8, ptr %invariant.gep393, i64 %indvars.iv
  %i.ia = load i8, ptr %gep394, align 1, !tbaa !19 ; 3 uses
  store i8 %i.ia, ptr %i.g, align 1, !tbaa !19
  %i.ib = getelementptr inbounds nuw i8, ptr %.186161, i64 8
  %.not.i103 = icmp eq i8 %i.ia, 0
  br i1 %.not.i103, label %_ZL10rgbe2floatPfS_S_Ph.exit104, label %bb.at

bb.at:                                            ; preds = %.lr.ph163
  %i.ic = zext i8 %i.ia to i32
  %i.id = add nsw i32 %i.ic, -136
  %i.ie = tail call double @ldexp(double noundef 1.000000e+00, i32 noundef %i.id) #16
  %i.if = fptrunc double %i.ie to float           ; 2 uses
  %i.ig = uitofp i8 %i.hx to float
  %i.ih = fmul float %i.ig, %i.if
  %i.ii = insertelement <2 x i8> poison, i8 %i.hz, i64 0
  %i.ij = insertelement <2 x i8> %i.ii, i8 %i.hy, i64 1
  %i.ik = uitofp <2 x i8> %i.ij to <2 x float>
  %i.il = insertelement <2 x float> poison, float %i.if, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul <2 x float> %i.im, %i.ik
  br label %_ZL10rgbe2floatPfS_S_Ph.exit104

_ZL10rgbe2floatPfS_S_Ph.exit104:                  ; preds = %.lr.ph163, %bb.at
  %.sink249 = phi float [ %i.ih, %bb.at ], [ 0.000000e+00, %.lr.ph163 ]
  %i.io = phi <2 x float> [ %i.in, %bb.at ], [ zeroinitializer, %.lr.ph163 ]
  store <2 x float> %i.io, ptr %.186161, align 4, !tbaa !21
  store float %.sink249, ptr %i.ib, align 4, !tbaa !21
  %i.ip = getelementptr inbounds nuw i8, ptr %.186161, i64 12 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.m
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph163, !llvm.loop !50

._crit_edge:                                      ; preds = %_ZL10rgbe2floatPfS_S_Ph.exit104
  %i.iq = add nsw i32 %.083166, -1
  %i.ir = icmp sgt i32 %.083166, 1
  br i1 %i.ir, label %bb.c, label %._crit_edge169, !llvm.loop !51

._crit_edge169:                                   ; preds = %._crit_edge, %.preheader108
  %.081.lcssa = phi ptr [ null, %.preheader108 ], [ %.182274, %._crit_edge ]
  tail call void @free(ptr noundef %.081.lcssa) #16
  br label %bb.au

bb.au:                                            ; preds = %._crit_edge169, %_ZL10rgbe2floatPfS_S_Ph.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 0
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #15

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #16 = { nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind willreturn memory(read) }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"_ZTS16rgbe_header_info", !5, i64 0, !4, i64 4, !8, i64 20, !8, i64 24}
!10 = !{!9, !5, i64 0}
!11 = !{!"any pointer", !4, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !4, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0, !15, i64 8, !4, i64 16}
!18 = !{!17, !12, i64 0}
!19 = !{!4, !4, i64 0}
!20 = !{!17, !15, i64 8}
!21 = !{!8, !8, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!9, !8, i64 20}
!24 = !{!9, !8, i64 24}
!25 = distinct !{!25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!26 = distinct !{!26, !25, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!27 = distinct !{!27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!28 = distinct !{!28, !27, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: argument 0"}
!29 = !{!26}
!30 = !{!28}
!31 = distinct !{!31, !22}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !22}
!35 = distinct !{!35, !22}
!36 = distinct !{!36, !22}
!37 = distinct !{!37, !22}
!38 = distinct !{!38, !22}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22, !53, !54}
!42 = distinct !{!42, !22, !54, !53}
!43 = distinct !{!43, !22}
!44 = distinct !{!44, !22, !53, !54}
!45 = distinct !{!45, !22, !54, !53}
!46 = distinct !{!46, !22, !53, !54}
!47 = distinct !{!47, !22, !54, !53}
!48 = distinct !{!48, !22, !53, !54}
!49 = distinct !{!49, !22, !54, !53}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = !{!"branch_weights", i32 4, i32 28}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
end_hunk_0
