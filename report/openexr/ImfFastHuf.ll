Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImfFastHuf?download=true
inline.NumInlined: 69
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN7Imf_3_414FastHufDecoderC2ERPKciiii:bb.a

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #17
          to label %bb.bf unwind label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.am) #15
  br label %bb.bc

bb.f:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.g:                                             ; preds = %bb.b
  %i.ap = icmp slt i32 %.0154203, 6
  br i1 %i.ap, label %.lr.ph.i, label %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %i.aq = phi ptr [ %i.au, %.lr.ph.i ], [ %.0157201, %bb.g ] ; 2 uses
  %i.ar = phi i64 [ %i.ax, %.lr.ph.i ], [ %.0155202, %bb.g ]
  %i.as = phi i32 [ %i.ay, %.lr.ph.i ], [ %.0154203, %bb.g ] ; 2 uses
  %i.at = shl i64 %i.ar, 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 1 ; 2 uses
  %i.av = load i8, ptr %i.aq, align 1, !tbaa !20
  %i.aw = zext i8 %i.av to i64
  %i.ax = or disjoint i64 %i.at, %i.aw            ; 2 uses
  %i.ay = add nsw i32 %i.as, 8                    ; 2 uses
  %i.az = icmp slt i32 %i.as, -2
  br i1 %i.az, label %.lr.ph.i, label %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit, !llvm.loop !21

_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit: ; preds = %.lr.ph.i, %bb.g
  %.2159 = phi ptr [ %.0157201, %bb.g ], [ %i.au, %.lr.ph.i ] ; 6 uses
  %.2 = phi i64 [ %.0155202, %bb.g ], [ %i.ax, %.lr.ph.i ] ; 6 uses
  %.lcssa.i = phi i32 [ %.0154203, %bb.g ], [ %i.ay, %.lr.ph.i ] ; 2 uses
  %i.ba = add nsw i32 %.lcssa.i, -6               ; 6 uses
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = lshr i64 %.2, %i.bb
  %i.bd = and i64 %i.bc, 63                       ; 10 uses
  %i.be = icmp eq i64 %i.bd, 63
  br i1 %i.be, label %bb.h, label %bb.s

bb.h:                                             ; preds = %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit
  %i.bf = ptrtoint ptr %.2159 to i64
  %i.bg = sub i64 %i.bf, %i.ak
  %.not116 = icmp slt i64 %i.bg, %i.l
  br i1 %.not116, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.bh, ptr noundef nonnull @.str)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.bh, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #17
          to label %bb.bf unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.bh) #15
  br label %bb.bc

bb.m:                                             ; preds = %bb.h
  %i.bk = icmp samesign ult i32 %.lcssa.i, 14
  br i1 %i.bk, label %.lr.ph.i128, label %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit130

.lr.ph.i128:                                      ; preds = %bb.m, %.lr.ph.i128
  %i.bl = phi ptr [ %i.bp, %.lr.ph.i128 ], [ %.2159, %bb.m ] ; 2 uses
  %i.bm = phi i64 [ %i.bs, %.lr.ph.i128 ], [ %.2, %bb.m ]
  %i.bn = phi i32 [ %i.bt, %.lr.ph.i128 ], [ %i.ba, %bb.m ] ; 2 uses
  %i.bo = shl i64 %i.bm, 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 1 ; 2 uses
  %i.bq = load i8, ptr %i.bl, align 1, !tbaa !20
  %i.br = zext i8 %i.bq to i64
  %i.bs = or disjoint i64 %i.bo, %i.br            ; 2 uses
  %i.bt = add nsw i32 %i.bn, 8                    ; 2 uses
  %i.bu = icmp slt i32 %i.bn, 0
  br i1 %i.bu, label %.lr.ph.i128, label %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit130, !llvm.loop !21

_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit130: ; preds = %.lr.ph.i128, %bb.m
  %.3160 = phi ptr [ %.2159, %bb.m ], [ %i.bp, %.lr.ph.i128 ]
  %.3 = phi i64 [ %.2, %bb.m ], [ %i.bs, %.lr.ph.i128 ] ; 2 uses
  %.lcssa.i127 = phi i32 [ %i.ba, %bb.m ], [ %i.bt, %.lr.ph.i128 ]
  %i.bv = add nsw i32 %.lcssa.i127, -8            ; 2 uses
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = lshr i64 %.3, %i.bw
  %i.by = shl i64 %i.bx, 32
  %i.bz = and i64 %i.by, 1095216660480            ; 2 uses
  %sext117 = add nuw nsw i64 %i.bz, 25769803776
  %i.ca = lshr exact i64 %sext117, 32
  %i.cb = add i64 %i.ca, %.093206
  %i.cc = icmp ugt i64 %i.cb, %i.n
  br i1 %i.cc, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit130
  %i.cd = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cd, ptr noundef nonnull @.str.1)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_throw(ptr nonnull %i.cd, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #17
          to label %bb.bf unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.q:                                             ; preds = %bb.n
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cd) #15
  br label %bb.bc

bb.r:                                             ; preds = %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit130
  %sext118 = add nuw nsw i64 %i.bz, 21474836480
  %i.cg = lshr exact i64 %sext118, 32
  %i.ch = add i64 %i.cg, %.093206
  br label %bb.ak

bb.s:                                             ; preds = %_ZN7Imf_3_414FastHufDecoder8readBitsEiRmRiRPKc.exit
  %i.ci = icmp samesign ugt i64 %i.bd, 58
  br i1 %i.ci, label %bb.t, label %bb.z

bb.t:                                             ; preds = %bb.s
  %i.cj = shl nuw nsw i64 %i.bd, 32               ; 2 uses
  %sext = add nsw i64 %i.cj, -244813135872
  %i.ck = lshr exact i64 %sext, 32
  %i.cl = add i64 %i.ck, %.093206
  %i.cm = icmp ugt i64 %i.cl, %i.n
  br i1 %i.cm, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cn = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.cn, ptr noundef nonnull @.str.1)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.cn, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #17
          to label %bb.bf unwind label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.co = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.cn) #15
  br label %bb.bc

bb.x:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.y:                                             ; preds = %bb.t
  %sext113 = add nsw i64 %i.cj, -249108103168
  %i.cq = lshr exact i64 %sext113, 32
  %i.cr = add i64 %i.cq, %.093206
  br label %bb.ak

bb.z:                                             ; preds = %bb.s
  %.not112 = icmp eq i64 %i.bd, 0
  br i1 %.not112, label %bb.ak, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cs = shl i64 %.093206, 6
  %i.ct = or disjoint i64 %i.bd, %i.cs            ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.9.0204, %.sroa.13.0200
  br i1 %.not.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i64 %i.ct, ptr %.sroa.9.0204, align 8, !tbaa !17
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cu = ptrtoint ptr %.sroa.9.0204 to i64
  %i.cv = ptrtoint ptr %.sroa.0146.0205 to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.ad, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #17
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.ad
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ac
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #16
          to label %.noexc131 unwind label %.loopexit ; 4 uses

.noexc131:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i64 %i.ct, ptr %i.df, align 8, !tbaa !17
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.ae, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.ae:                                            ; preds = %.noexc131
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %.sroa.0146.0205, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.ae, %.noexc131
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0146.0205, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0146.0205, i64 noundef %i.cw) #18
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.af, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  %.pre = load i8, ptr %i.f, align 8, !tbaa !14
  br label %_ZNSt6vectorImSaImEE9push_backEOm.exit

_ZNSt6vectorImSaImEE9push_backEOm.exit:           ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.ab
  %i.di = phi i8 [ %.pre, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ah, %bb.ab ] ; 2 uses
  %.sroa.13.2 = phi ptr [ %i.dh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.13.0200, %bb.ab ]
  %.pn = phi ptr [ %i.df, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.9.0204, %bb.ab ]
  %.sroa.0146.2 = phi ptr [ %i.de, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.sroa.0146.0205, %bb.ab ]
  %.sroa.9.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.dj = zext i8 %i.di to i64
  %i.dk = icmp samesign ult i64 %i.bd, %i.dj
  br i1 %i.dk, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dl = trunc nuw nsw i64 %i.bd to i8           ; 2 uses
  store i8 %i.dl, ptr %i.f, align 8, !tbaa !14
  br label %bb.ah

.loopexit:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.ah:                                            ; preds = %bb.ag, %_ZNSt6vectorImSaImEE9push_backEOm.exit
  %i.dm = phi i8 [ %i.dl, %bb.ag ], [ %i.di, %_ZNSt6vectorImSaImEE9push_backEOm.exit ]
  %i.dn = load i8, ptr %i.g, align 1, !tbaa !15
  %i.do = zext i8 %i.dn to i64
  %i.dp = icmp samesign ugt i64 %i.bd, %i.do
  br i1 %i.dp, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dq = trunc nuw nsw i64 %i.bd to i8
  store i8 %i.dq, ptr %i.g, align 1, !tbaa !15
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.bd ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !17
  %i.dt = add i64 %i.ds, 1
  store i64 %i.dt, ptr %i.dr, align 8, !tbaa !17
  br label %bb.ak

bb.ak:                                            ; preds = %bb.y, %bb.aj, %bb.z, %bb.r
  %i.du = phi i8 [ %i.ah, %bb.r ], [ %i.ah, %bb.y ], [ %i.ah, %bb.z ], [ %i.dm, %bb.aj ]
  %.sroa.13.1 = phi ptr [ %.sroa.13.0200, %bb.r ], [ %.sroa.13.0200, %bb.y ], [ %.sroa.13.0200, %bb.z ], [ %.sroa.13.2, %bb.aj ] ; 2 uses
  %.1158 = phi ptr [ %.3160, %bb.r ], [ %.2159, %bb.y ], [ %.2159, %bb.z ], [ %.2159, %bb.aj ] ; 2 uses
  %.1156 = phi i64 [ %.3, %bb.r ], [ %.2, %bb.y ], [ %.2, %bb.z ], [ %.2, %bb.aj ]
  %.1 = phi i32 [ %i.bv, %bb.r ], [ %i.ba, %bb.y ], [ %i.ba, %bb.z ], [ %i.ba, %bb.aj ]
  %.sroa.9.1 = phi ptr [ %.sroa.9.0204, %bb.r ], [ %.sroa.9.0204, %bb.y ], [ %.sroa.9.0204, %bb.z ], [ %.sroa.9.2, %bb.aj ] ; 2 uses
  %.sroa.0146.1 = phi ptr [ %.sroa.0146.0205, %bb.r ], [ %.sroa.0146.0205, %bb.y ], [ %.sroa.0146.0205, %bb.z ], [ %.sroa.0146.2, %bb.aj ] ; 2 uses
  %.194 = phi i64 [ %i.ch, %bb.r ], [ %i.cr, %bb.y ], [ %.093206, %bb.z ], [ %.093206, %bb.aj ]
  %i.dv = add i64 %.194, 1                        ; 2 uses
  %.not = icmp ugt i64 %i.dv, %i.j
  br i1 %.not, label %.preheader163.loopexit, label %bb.b, !llvm.loop !23

bb.al:                                            ; preds = %.preheader163
  %i.dw = load i8, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.dx = load i8, ptr %i.g, align 1, !tbaa !15   ; 4 uses
  %i.dy = zext i8 %i.dx to i32                    ; 2 uses
  %.not103212 = icmp ugt i8 %i.dw, %i.dx
  br i1 %.not103212, label %._crit_edge224, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %bb.al
  %i.dz = zext i8 %i.dw to i64                    ; 7 uses
  %i.ea = zext i8 %i.dx to i64                    ; 5 uses
  %i.eb = add nuw nsw i32 %i.dy, 1
  %wide.trip.count = zext nneg i32 %i.eb to i64
  %i.ec = add nuw nsw i64 %i.ea, 1
  %i.ed = sub nsw i64 %i.ec, %i.dz                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ed, 2
  br i1 %min.iters.check, label %.lr.ph214.preheader394, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph214.preheader
  %n.vec = and i64 %i.ed, -2                      ; 3 uses
  %i.ee = add nsw i64 %n.vec, %i.dz
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert389 = insertelement <2 x i64> poison, i64 %i.dz, i64 0
  %broadcast.splat390 = shufflevector <2 x i64> %broadcast.splatinsert389, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw nsw <2 x i64> %broadcast.splat390, <i64 0, i64 1>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ef = add nuw i64 %index, %i.dz               ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.ef
  %wide.load = load <2 x i64>, ptr %i.eg, align 8, !tbaa !17
  %i.eh = uitofp <2 x i64> %wide.load to <2 x double>
  %i.ei = sub nuw nsw <2 x i64> %broadcast.splat, %vec.ind
  %i.ej = shl <2 x i64> splat (i64 2), %i.ei
  %i.ek = sitofp <2 x i64> %i.ej to <2 x double>
  %i.el = fmul nnan <2 x double> %i.ek, %i.eh
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ef
  store <2 x double> %i.el, ptr %i.em, align 8, !tbaa !24
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %vec.ind.next = add nuw nsw <2 x i64> %vec.ind, splat (i64 2)
  %i.en = icmp eq i64 %index.next, %n.vec
  br i1 %i.en, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ed, %n.vec
  br i1 %cmp.n, label %.lr.ph223.preheader, label %.lr.ph214.preheader394

.lr.ph214.preheader394:                           ; preds = %.lr.ph214.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.dz, %.lr.ph214.preheader ], [ %i.ee, %middle.block ]
  br label %.lr.ph214

.lr.ph223.preheader:                              ; preds = %.lr.ph214, %middle.block
  %i.eo = zext i8 %i.dw to i64                    ; 2 uses
  %i.ep = add nuw nsw i32 %i.dy, 1
  %i.eq = zext i8 %i.dx to i64                    ; 2 uses
  %wide.trip.count271 = zext nneg i32 %i.ep to i64 ; 2 uses
  %i.er = sub nsw i64 %i.dz, %i.ea
  br label %.lr.ph223

bb.am:                                            ; preds = %.preheader163
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

.lr.ph214:                                        ; preds = %.lr.ph214.preheader394, %.lr.ph214
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph214 ], [ %indvars.iv.ph, %.lr.ph214.preheader394 ] ; 4 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !17
  %i.ev = uitofp i64 %i.eu to double
  %i.ew = sub nuw nsw i64 %i.ea, %indvars.iv
  %i.ex = shl i64 2, %i.ew
  %i.ey = sitofp i64 %i.ex to double
  %i.ez = fmul nnan double %i.ey, %i.ev
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  store double %i.ez, ptr %i.fa, align 8, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph223.preheader, label %.lr.ph214, !llvm.loop !29

.lr.ph223:                                        ; preds = %.lr.ph223.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph223.preheader ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv268 = phi i64 [ %i.eo, %.lr.ph223.preheader ], [ %indvars.iv.next269, %._crit_edge ] ; 4 uses
  %indvars.iv261.in = phi i64 [ %i.eo, %.lr.ph223.preheader ], [ %indvars.iv261, %._crit_edge ]
  %indvars.iv261 = add nuw nsw i64 %indvars.iv261.in, 1 ; 3 uses
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %.not110216.not = icmp samesign ult i64 %indvars.iv268, %i.eq
  br i1 %.not110216.not, label %.lr.ph219.preheader, label %._crit_edge

.lr.ph219.preheader:                              ; preds = %.lr.ph223
  %i.fb = add i64 %indvar, %i.dz
  %i.fc = sub i64 %i.ea, %i.fb
  %xtraiter = and i64 %i.fc, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph219.prol.loopexit, label %.lr.ph219.prol

.lr.ph219.prol:                                   ; preds = %.lr.ph219.preheader, %.lr.ph219.prol
  %indvars.iv263.prol = phi i64 [ %indvars.iv.next264.prol, %.lr.ph219.prol ], [ %indvars.iv261, %.lr.ph219.preheader ] ; 2 uses
  %.081217.prol = phi double [ %i.ff, %.lr.ph219.prol ], [ 0.000000e+00, %.lr.ph219.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph219.prol ], [ 0, %.lr.ph219.preheader ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv263.prol
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !24
  %i.ff = fadd double %.081217.prol, %i.fe        ; 3 uses
  %indvars.iv.next264.prol = add nuw nsw i64 %indvars.iv263.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph219.prol.loopexit, label %.lr.ph219.prol, !llvm.loop !30

.lr.ph219.prol.loopexit:                          ; preds = %.lr.ph219.prol, %.lr.ph219.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph219.preheader ], [ %i.ff, %.lr.ph219.prol ]
  %indvars.iv263.unr = phi i64 [ %indvars.iv261, %.lr.ph219.preheader ], [ %indvars.iv.next264.prol, %.lr.ph219.prol ]
  %.081217.unr = phi double [ 0.000000e+00, %.lr.ph219.preheader ], [ %i.ff, %.lr.ph219.prol ]
  %i.fg = add i64 %i.er, %indvar
  %i.fh = icmp ugt i64 %i.fg, -8
  br i1 %i.fh, label %._crit_edge, label %.lr.ph219
end_hunk_0
begin_hunk_1_@_ZN7Imf_3_414FastHufDecoder6decodeEPKhiPti:bb.a
  %.152 = phi i32 [ %i.ge, %.loopexit ], [ %i.gz, %bb.an ] ; 2 uses
  %i.ha = icmp slt i32 %.4, 12
  br i1 %i.ha, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.hb = sub nsw i32 64, %.4                     ; 4 uses
  %i.hc = zext nneg i32 %.4 to i64
  %i.hd = lshr i64 %.4146, %i.hc
  %i.he = or i64 %i.hd, %.4158                    ; 2 uses
  %i.hf = icmp slt i32 %.4140, %i.hb
  br i1 %i.hf, label %bb.aq, label %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge

._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge: ; preds = %bb.ap
  %.pre251 = sub nsw i32 %.4140, %i.hb
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102

bb.aq:                                            ; preds = %bb.ap
  %i.hg = sub nsw i32 %i.hb, %.4140               ; 2 uses
  %i.hh = icmp sgt i32 %.4185, 63
  br i1 %i.hh, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.hi = load i64, ptr %.4167, align 8, !tbaa !17
  %i.hj = tail call i64 @llvm.bswap.i64(i64 %i.hi)
  %i.hk = getelementptr inbounds nuw i8, ptr %.4167, i64 8
  %i.hl = add nsw i32 %.4185, -64
  br label %.sink.split.i96

bb.as:                                            ; preds = %bb.aq
  %i.hm = icmp sgt i32 %.4185, 0
  br i1 %i.hm, label %.lr.ph.i99.preheader, label %.sink.split.i96

.lr.ph.i99.preheader:                             ; preds = %bb.as
  %i.hn = add nsw i32 %.4185, -1
  %i.ho = lshr i32 %i.hn, 3
  %i.hp = add nuw nsw i32 %i.ho, 1                ; 2 uses
  %xtraiter303 = and i32 %i.hp, 3                 ; 3 uses
  %i.hq = icmp ult i32 %.4185, 25
  br i1 %i.hq, label %.lr.ph.i99.epil.preheader, label %.lr.ph.i99.preheader.new

.lr.ph.i99.preheader.new:                         ; preds = %.lr.ph.i99.preheader
  %unroll_iter314 = and i32 %i.hp, 1073741820
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.i99.preheader.new
  %i.hr = phi i64 [ 0, %.lr.ph.i99.preheader.new ], [ %i.io, %.lr.ph.i99 ]
  %i.hs = phi ptr [ %.4167, %.lr.ph.i99.preheader.new ], [ %i.ip, %.lr.ph.i99 ] ; 5 uses
  %.038.i101 = phi i64 [ 56, %.lr.ph.i99.preheader.new ], [ %i.iq, %.lr.ph.i99 ] ; 5 uses
  %niter315 = phi i32 [ 0, %.lr.ph.i99.preheader.new ], [ %niter315.next.3, %.lr.ph.i99 ]
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !20
  %i.hu = zext i8 %i.ht to i64
  %i.hv = shl i64 %i.hu, %.038.i101
  %i.hw = or i64 %i.hv, %i.hr
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hy = add nsw i64 %.038.i101, -8
  %i.hz = load i8, ptr %i.hx, align 1, !tbaa !20
  %i.ia = zext i8 %i.hz to i64
  %i.ib = shl i64 %i.ia, %i.hy
  %i.ic = or i64 %i.ib, %i.hw
  %i.id = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.ie = add nsw i64 %.038.i101, -16
  %i.if = load i8, ptr %i.id, align 1, !tbaa !20
  %i.ig = zext i8 %i.if to i64
  %i.ih = shl i64 %i.ig, %i.ie
  %i.ii = or i64 %i.ih, %i.ic
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hs, i64 3
  %i.ik = add nsw i64 %.038.i101, -24
  %i.il = load i8, ptr %i.ij, align 1, !tbaa !20
  %i.im = zext i8 %i.il to i64
  %i.in = shl i64 %i.im, %i.ik
  %i.io = or i64 %i.in, %i.ii                     ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hs, i64 4 ; 2 uses
  %i.iq = add nsw i64 %.038.i101, -32             ; 2 uses
  %niter315.next.3 = add i32 %niter315, 4         ; 2 uses
  %niter315.ncmp.3.not = icmp eq i32 %niter315.next.3, %unroll_iter314
  br i1 %niter315.ncmp.3.not, label %._crit_edge.i93.loopexit.unr-lcssa, label %.lr.ph.i99, !llvm.loop !49

._crit_edge.i93.loopexit.unr-lcssa:               ; preds = %.lr.ph.i99
  %lcmp.mod311.not = icmp eq i32 %xtraiter303, 0
  br i1 %lcmp.mod311.not, label %._crit_edge.i93.loopexit, label %.lr.ph.i99.epil.preheader

.lr.ph.i99.epil.preheader:                        ; preds = %._crit_edge.i93.loopexit.unr-lcssa, %.lr.ph.i99.preheader
  %.epil.init306 = phi i64 [ 0, %.lr.ph.i99.preheader ], [ %i.io, %._crit_edge.i93.loopexit.unr-lcssa ]
  %.epil.init308 = phi ptr [ %.4167, %.lr.ph.i99.preheader ], [ %i.ip, %._crit_edge.i93.loopexit.unr-lcssa ]
  %.038.i101.epil.init = phi i64 [ 56, %.lr.ph.i99.preheader ], [ %i.iq, %._crit_edge.i93.loopexit.unr-lcssa ]
  %lcmp.mod313 = icmp ne i32 %xtraiter303, 0
  tail call void @llvm.assume(i1 %lcmp.mod313)
  br label %.lr.ph.i99.epil

.lr.ph.i99.epil:                                  ; preds = %.lr.ph.i99.epil, %.lr.ph.i99.epil.preheader
  %i.ir = phi i64 [ %i.iw, %.lr.ph.i99.epil ], [ %.epil.init306, %.lr.ph.i99.epil.preheader ]
  %i.is = phi ptr [ %i.ix, %.lr.ph.i99.epil ], [ %.epil.init308, %.lr.ph.i99.epil.preheader ] ; 2 uses
  %.038.i101.epil = phi i64 [ %i.iy, %.lr.ph.i99.epil ], [ %.038.i101.epil.init, %.lr.ph.i99.epil.preheader ] ; 2 uses
  %epil.iter304 = phi i32 [ %epil.iter304.next, %.lr.ph.i99.epil ], [ 0, %.lr.ph.i99.epil.preheader ]
  %i.it = load i8, ptr %i.is, align 1, !tbaa !20
  %i.iu = zext i8 %i.it to i64
  %i.iv = shl i64 %i.iu, %.038.i101.epil
  %i.iw = or i64 %i.iv, %i.ir                     ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 1
  %i.iy = add nsw i64 %.038.i101.epil, -8
  %epil.iter304.next = add i32 %epil.iter304, 1   ; 2 uses
  %epil.iter304.cmp.not = icmp eq i32 %epil.iter304.next, %xtraiter303
  br i1 %epil.iter304.cmp.not, label %._crit_edge.i93.loopexit, label %.lr.ph.i99.epil, !llvm.loop !59

._crit_edge.i93.loopexit:                         ; preds = %.lr.ph.i99.epil, %._crit_edge.i93.loopexit.unr-lcssa
  %.lcssa283 = phi i64 [ %i.io, %._crit_edge.i93.loopexit.unr-lcssa ], [ %i.iw, %.lr.ph.i99.epil ]
  %scevgep246 = getelementptr i8, ptr %.4167, i64 1
  %i.iz = add nsw i32 %.4185, -1
  %i.ja = lshr i32 %i.iz, 3
  %i.jb = zext nneg i32 %i.ja to i64
  %scevgep247 = getelementptr i8, ptr %scevgep246, i64 %i.jb
  br label %.sink.split.i96

.sink.split.i96:                                  ; preds = %bb.as, %._crit_edge.i93.loopexit, %bb.ar
  %.14195 = phi i32 [ %i.hl, %bb.ar ], [ 0, %bb.as ], [ 0, %._crit_edge.i93.loopexit ]
  %.16179 = phi ptr [ %i.hk, %bb.ar ], [ %.4167, %bb.as ], [ %scevgep247, %._crit_edge.i93.loopexit ]
  %i.jc = phi i64 [ %i.hj, %bb.ar ], [ 0, %bb.as ], [ %.lcssa283, %._crit_edge.i93.loopexit ] ; 2 uses
  %i.jd = sub nsw i32 64, %i.hg                   ; 2 uses
  %i.je = zext nneg i32 %i.jd to i64
  %i.jf = lshr i64 %i.jc, %i.je
  %i.jg = or i64 %i.jf, %i.he
  br label %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102

_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102: ; preds = %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge, %.sink.split.i96
  %.pre-phi252 = phi i32 [ %.pre251, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.jd, %.sink.split.i96 ]
  %.12193 = phi i32 [ %.4185, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %.14195, %.sink.split.i96 ]
  %.14177 = phi ptr [ %.4167, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %.16179, %.sink.split.i96 ]
  %.8162 = phi i64 [ %i.he, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.jg, %.sink.split.i96 ]
  %.14 = phi i64 [ %.4146, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.jc, %.sink.split.i96 ]
  %i.jh = phi i32 [ %.4140, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ 64, %.sink.split.i96 ]
  %.034.i89 = phi i32 [ %i.hb, %._ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102_crit_edge ], [ %i.hg, %.sink.split.i96 ] ; 2 uses
  %.not.i90 = icmp sgt i32 %i.jh, %.034.i89
  %i.ji = zext nneg i32 %.034.i89 to i64
  %i.jj = shl i64 %.14, %i.ji
  %storemerge.i91 = select i1 %.not.i90, i64 %i.jj, i64 0
  br label %bb.at

bb.at:                                            ; preds = %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102, %bb.ao
  %.5186 = phi i32 [ %.12193, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4185, %bb.ao ] ; 2 uses
  %.5168 = phi ptr [ %.14177, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4167, %bb.ao ]
  %.5159 = phi i64 [ %.8162, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4158, %bb.ao ]
  %.5147 = phi i64 [ %storemerge.i91, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4146, %bb.ao ]
  %.5141 = phi i32 [ %.pre-phi252, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4140, %bb.ao ]
  %.5 = phi i32 [ 64, %_ZN7Imf_3_414FastHufDecoder6refillERmiS1_RiRPKhS2_.exit102 ], [ %.4, %bb.ao ]
  %i.jk = icmp slt i32 %.152, %4
  br i1 %i.jk, label %bb.f, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %bb.at, %bb.e
  %.0181.lcssa = phi i32 [ %i.d, %bb.e ], [ %.5186, %bb.at ]
  %.not = icmp eq i32 %.0181.lcssa, 0
  br i1 %.not, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %._crit_edge
  %i.jl = tail call ptr @__cxa_allocate_exception(i64 72) #15 ; 3 uses
  invoke void @_ZN7Iex_3_48InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.jl, ptr noundef nonnull @.str.9)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  tail call void @__cxa_throw(ptr nonnull %i.jl, ptr nonnull @_ZTIN7Iex_3_48InputExcE, ptr nonnull @_ZN7Iex_3_48InputExcD1Ev) #17
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.ax:                                            ; preds = %._crit_edge
  ret void

bb.ay:                                            ; preds = %bb.aw, %bb.ae, %bb.ai, %bb.am, %bb.u, %bb.p, %bb.d
  %.sink = phi ptr [ %i.jl, %bb.aw ], [ %i.gb, %bb.ae ], [ %i.gg, %bb.ai ], [ %i.gs, %bb.am ], [ %i.dj, %bb.u ], [ %i.cz, %bb.p ], [ %i.b, %bb.d ]
  %.pn73 = phi { ptr, i32 } [ %i.jm, %bb.aw ], [ %i.gc, %bb.ae ], [ %i.gh, %bb.ai ], [ %i.gt, %bb.am ], [ %i.dk, %bb.u ], [ %i.da, %bb.p ], [ %i.c, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #15
  resume { ptr, i32 } %.pn73
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v24i64(<24 x i64>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v32i64(<32 x i64>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold noreturn }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { noreturn }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"_ZTSN7Imf_3_414FastHufDecoderE", !5, i64 0, !5, i64 4, !6, i64 8, !6, i64 9, !10, i64 16, !6, i64 24, !6, i64 496, !6, i64 968, !6, i64 17352, !12, i64 21448}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!9, !5, i64 4}
!14 = !{!9, !6, i64 8}
!15 = !{!9, !6, i64 9}
!16 = !{!9, !10, i64 16}
!17 = !{!12, !12, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 omnipotent char", !11, i64 0}
!20 = !{!6, !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
!24 = !{!25, !25, i64 0}
!25 = !{!"double", !6, i64 0}
!26 = distinct !{!26, !22, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !22, !28, !27}
!30 = distinct !{!30, !31}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = distinct !{!32, !22}
!33 = distinct !{!33, !22}
!34 = distinct !{!34, !31}
!35 = distinct !{!35, !22}
!36 = !{!5, !5, i64 0}
!37 = distinct !{!37, !22}
!38 = !{!39}
!39 = distinct !{!39, !40}
!40 = distinct !{!40, !"LVerDomain"}
!41 = !{!42}
!42 = distinct !{!42, !40}
!43 = distinct !{!43, !22, !27, !28}
!44 = distinct !{!44, !22, !27, !28}
!45 = distinct !{!45, !22, !27}
!46 = distinct !{!46, !22}
!47 = distinct !{!47, !22}
!48 = !{!9, !12, i64 21448}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !22}
!52 = distinct !{!52, !31}
!53 = !{!54, !54, i64 0}
!54 = !{!"short", !6, i64 0}
!55 = distinct !{!55, !22, !27, !28}
!56 = !{!"branch_weights", i32 4, i32 12}
!57 = distinct !{!57, !22, !27, !28}
!58 = distinct !{!58, !22, !28, !27}
!59 = distinct !{!59, !31}
!60 = distinct !{!60, !22}
end_hunk_1
