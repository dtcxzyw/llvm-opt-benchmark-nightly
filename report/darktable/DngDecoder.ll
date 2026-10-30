Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/DngDecoder?download=true
inline.NumInlined: 1619
inline.NumDeleted: 868
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK8rawspeed10DngDecoder17decodeMaskedAreasEPKNS_7TiffIFDE:bb.a

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %i.e, -4                         ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit, label %.noexc.i.i

.noexc.i.i:                                       ; preds = %bb.c
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #30, !noalias !418 ; 6 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.i
  store i32 0, ptr %i.k, align 4, !tbaa !143, !noalias !418
  %i.m = getelementptr i8, ptr %i.k, i64 4
  %.idx.i.i.i.i.i.i.i.i.i = add nsw i64 %i.j, -4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !143, !noalias !418
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.noexc.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.noexc.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.n = trunc nuw i64 %indvars.iv.i.i to i32
  %i.o = invoke noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.a, i32 noundef %i.n)
          to label %bb.e unwind label %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i, !noalias !418

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i
  store i32 %i.o, ptr %i.p, align 4, !tbaa !143, !noalias !418
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.i
  br i1 %exitcond.not.i.i, label %.loopexit.loopexit, label %bb.d, !llvm.loop !408

common.resume:                                    ; preds = %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.q, %_ZNSt6vectorIjSaIjEED2Ev.exit.i.i ], [ %lpad.loopexit.split-lp122, %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIjSaIjEED2Ev.exit.i.i:                ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.j) #31, !noalias !418
  br label %common.resume

.loopexit.loopexit:                               ; preds = %bb.e
  %i.r = ptrtoint ptr %i.l to i64
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c
  %.sroa.091.0 = phi ptr [ null, %bb.c ], [ %i.k, %.loopexit.loopexit ] ; 5 uses
  %.sroa.12.0 = phi i64 [ 0, %bb.c ], [ %i.r, %.loopexit.loopexit ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %i.u = tail call i64 @_ZNK8rawspeed12RawImageData15getUncroppedDimEv(ptr noundef nonnull align 8 dereferenceable(624) %i.t) #27 ; 2 uses
  %.sroa.010.0.extract.trunc = trunc i64 %i.u to i32 ; 2 uses
  %.sroa.5.0.extract.shift = lshr i64 %i.u, 32
  %.sroa.4.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.v = tail call i64 @_ZNK8rawspeed12RawImageData13getCropOffsetEv(ptr noundef nonnull align 8 dereferenceable(624) %i.t) #27 ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.v to i32 ; 2 uses
  %.sroa.6.0.extract.shift = lshr i64 %i.v, 32
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i32 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !78   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !419
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !419
  %i.ab = icmp ne ptr %i.y, %i.aa
  %i.ac = ptrtoint ptr %.sroa.091.0 to i64
  %i.ad = sub i64 %.sroa.12.0, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0, i64 noundef %i.ad) #31
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

bb.g:                                             ; preds = %.loopexit, %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next, %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit ] ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.091.0, i64 %.idx ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !143 ; 7 uses
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !143 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !143 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !143 ; 5 uses
  %.not.i.i = icmp sgt i32 %i.ag, -1
  %i.am = icmp sgt i32 %i.ah, -1
  %i.an = select i1 %.not.i.i, i1 %i.am, i1 false
  br i1 %i.an, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit: ; preds = %bb.g
  %.not.i3.i = icmp sle i32 %i.ag, %.sroa.010.0.extract.trunc
  %i.ao = icmp sle i32 %i.ah, %.sroa.4.0.extract.trunc
  %i.ap = select i1 %.not.i3.i, i1 %i.ao, i1 false
  br i1 %i.ap, label %bb.h, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

bb.h:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit
  %.not.i.i39 = icmp sgt i32 %i.aj, -1
  %i.aq = icmp sgt i32 %i.al, -1
  %i.ar = select i1 %.not.i.i39, i1 %i.aq, i1 false
  br i1 %i.ar, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit41, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit41: ; preds = %bb.h
  %.not.i3.i40 = icmp samesign ule i32 %i.aj, %.sroa.010.0.extract.trunc
  %i.as = icmp samesign ule i32 %i.al, %.sroa.4.0.extract.trunc
  %i.at = select i1 %.not.i3.i40, i1 %i.as, i1 false
  br i1 %i.at, label %bb.i, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

bb.i:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit41
  %i.au = icmp samesign ult i32 %i.ag, %i.aj
  %i.av = icmp samesign ult i32 %i.ah, %i.al
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %bb.k, label %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread

_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread: ; preds = %bb.h, %bb.g, %bb.i, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit41, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.36, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder17decodeMaskedAreasEPKNS_7TiffIFDE) #23
          to label %bb.j unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread
  unreachable

bb.k:                                             ; preds = %bb.i
  %.not29 = icmp sgt i32 %i.ag, %.sroa.0.0.extract.trunc
  br i1 %.not29, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !78  ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !141
  %i.ba = add nsw i32 %i.az, %.sroa.0.0.extract.trunc
  %.not30 = icmp slt i32 %i.aj, %i.ba
  br i1 %.not30, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 168 ; 2 uses
  %i.bc = sub nuw nsw i32 %i.al, %i.ah            ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 176 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !269 ; 8 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 184 ; 3 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !272
  %.not.i = icmp eq ptr %i.be, %i.bg
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.ah, ptr %i.be, align 4, !tbaa !421
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  store i32 %i.bc, ptr %i.bh, align 4, !tbaa !422
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i8 0, ptr %i.bi, align 4, !tbaa !423
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !269
  br label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit

bb.o:                                             ; preds = %bb.m
  %i.bk = load ptr, ptr %i.bb, align 8, !tbaa !268 ; 5 uses
  %i.bl = ptrtoint ptr %i.be to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm                    ; 3 uses
  %i.bo = icmp eq i64 %i.bn, 9223372036854775800
  br i1 %i.bo, label %.invoke, label %_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i

.invoke:                                          ; preds = %bb.u, %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #29
          to label %.cont unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bp = sdiv exact i64 %i.bn, 12                ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bq = add nsw i64 %.sroa.speculated.i.i.i, %i.bp ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bp
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 768614336404564650)
  %i.bt = select i1 %i.br, i64 768614336404564650, i64 %i.bs ; 3 uses
  %.not.i.i.i42 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i42)
  %i.bu = mul nuw nsw i64 %i.bt, 12
  %i.bv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bu) #30
          to label %.noexc43 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc43:                                         ; preds = %_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bn ; 3 uses
  store i32 %i.ah, ptr %i.bw, align 4, !tbaa !421
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  store i32 %i.bc, ptr %i.bx, align 4, !tbaa !422
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i8 0, ptr %i.by, align 4, !tbaa !423
  %.not10.i.i.i.i.i = icmp eq ptr %i.bk, %i.be
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc43, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ca, %.lr.ph.i.i.i.i.i ], [ %i.bv, %.noexc43 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bz, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.noexc43 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i, i64 12, i1 false), !tbaa.struct !425, !alias.scope !426
  %i.bz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bz, %i.be
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !412

_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc43
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bv, %.noexc43 ], [ %i.ca, %.lr.ph.i.i.i.i.i ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 12
  %.not.i35.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i35.i.i, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  %i.cc = load ptr, ptr %i.bf, align 8, !tbaa !272
  %i.cd = ptrtoint ptr %i.cc to i64
  %i.ce = sub i64 %i.cd, %i.bm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bk, i64 noundef %i.ce) #31
  br label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.p, %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i
  store ptr %i.bv, ptr %i.bb, align 8, !tbaa !268
  store ptr %i.cb, ptr %i.bd, align 8, !tbaa !269
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.bv, i64 %i.bt
  store ptr %i.cf, ptr %i.bf, align 8, !tbaa !272
  br label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit

bb.q:                                             ; preds = %bb.l, %bb.k
  %.not31 = icmp sgt i32 %i.ah, %.sroa.6.0.extract.trunc
  br i1 %.not31, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = load ptr, ptr %i.s, align 8, !tbaa !78  ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !142
  %i.cj = add nsw i32 %i.ci, %.sroa.6.0.extract.trunc
  %.not32 = icmp slt i32 %i.al, %i.cj
  br i1 %.not32, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 168 ; 2 uses
  %i.cl = sub nuw nsw i32 %i.aj, %i.ag            ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 176 ; 3 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !269 ; 8 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cg, i64 184 ; 3 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !272
  %.not.i44 = icmp eq ptr %i.cn, %i.cp
  br i1 %.not.i44, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.ag, ptr %i.cn, align 4, !tbaa !421
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store i32 %i.cl, ptr %i.cq, align 4, !tbaa !422
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store i8 1, ptr %i.cr, align 4, !tbaa !423
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store ptr %i.cs, ptr %i.cm, align 8, !tbaa !269
  br label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit

bb.u:                                             ; preds = %bb.s
  %i.ct = load ptr, ptr %i.ck, align 8, !tbaa !268 ; 5 uses
  %i.cu = ptrtoint ptr %i.cn to i64
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = sub i64 %i.cu, %i.cv                    ; 3 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %.invoke, label %_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i45

_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i45: ; preds = %bb.u
  %i.cy = sdiv exact i64 %i.cw, 12                ; 3 uses
  %.sroa.speculated.i.i.i46 = tail call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i46, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = tail call i64 @llvm.umin.i64(i64 %i.cz, i64 768614336404564650)
  %i.dc = select i1 %i.da, i64 768614336404564650, i64 %i.db ; 3 uses
  %.not.i.i.i47 = icmp ne i64 %i.dc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i47)
  %i.dd = mul nuw nsw i64 %i.dc, 12
  %i.de = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #30
          to label %.noexc58 unwind label %.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc58:                                         ; preds = %_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i45
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.cw ; 3 uses
  store i32 %i.ag, ptr %i.df, align 4, !tbaa !421
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  store i32 %i.cl, ptr %i.dg, align 4, !tbaa !422
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  store i8 1, ptr %i.dh, align 4, !tbaa !423
  %.not10.i.i.i.i.i48 = icmp eq ptr %i.ct, %i.cn
  br i1 %.not10.i.i.i.i.i48, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i53, label %.lr.ph.i.i.i.i.i49

.lr.ph.i.i.i.i.i49:                               ; preds = %.noexc58, %.lr.ph.i.i.i.i.i49
  %.012.i.i.i.i.i50 = phi ptr [ %i.dj, %.lr.ph.i.i.i.i.i49 ], [ %i.de, %.noexc58 ] ; 2 uses
  %.0911.i.i.i.i.i51 = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i49 ], [ %i.ct, %.noexc58 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i.i.i50, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i.i.i51, i64 12, i1 false), !tbaa.struct !425, !alias.scope !427
  %i.di = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i51, i64 12 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i50, i64 12 ; 2 uses
  %.not.i.i.i.i.i52 = icmp eq ptr %i.di, %i.cn
  br i1 %.not.i.i.i.i.i52, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i53, label %.lr.ph.i.i.i.i.i49, !llvm.loop !412

_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i53: ; preds = %.lr.ph.i.i.i.i.i49, %.noexc58
  %.0.lcssa.i.i.i.i.i54 = phi ptr [ %i.de, %.noexc58 ], [ %i.dj, %.lr.ph.i.i.i.i.i49 ]
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i54, i64 12
  %.not.i35.i.i55 = icmp eq ptr %i.ct, null
  br i1 %.not.i35.i.i55, label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i53
  %i.dl = load ptr, ptr %i.co, align 8, !tbaa !272
  %i.dm = ptrtoint ptr %i.dl to i64
  %i.dn = sub i64 %i.dm, %i.cv
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.dn) #31
  br label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56

_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56: ; preds = %bb.v, %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34.i.i53
  store ptr %i.de, ptr %i.ck, align 8, !tbaa !268
  store ptr %i.dk, ptr %i.cm, align 8, !tbaa !269
  %i.do = getelementptr inbounds nuw [12 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.do, ptr %i.co, align 8, !tbaa !272
  br label %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit

.thread.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12_M_check_lenEmPKc.exit.i.i45, %.invoke, %_ZNK8rawspeed12iRectangle2D22isPointInsideInclusiveERKNS_8iPoint2DE.exit.thread
  %lpad.loopexit.split-lp122 = landingpad { ptr, i32 }
          cleanup
  %i.dp = ptrtoint ptr %.sroa.091.0 to i64
  %i.dq = sub i64 %.sroa.12.0, %i.dp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.091.0, i64 noundef %i.dq) #31
  br label %common.resume

_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE12emplace_backIJRiibEEERS1_DpOT_.exit: ; preds = %bb.t, %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i56, %bb.n, %_ZNSt6vectorIN8rawspeed9BlackAreaESaIS1_EE17_M_realloc_insertIJRiibEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.q, %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.f, label %bb.g, !llvm.loop !416

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.f, %bb.a, %bb.b
  %.125 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.ab, %bb.f ]
  ret i1 %.125
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK8rawspeed12RawImageData15getUncroppedDimEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i64 @_ZNK8rawspeed12RawImageData13getCropOffsetEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK8rawspeed10DngDecoder17decodeBlackLevelsEPKNS_7TiffIFDE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.std::array.152", align 8   ; 6 uses
  %3 = alloca %"struct.std::array.152", align 8   ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 8 uses
  %.not10.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i.i, label %.critedge, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.e = load i16, ptr %i.d, align 2, !tbaa !68
  %i.f = icmp ult i16 %i.e, -14823                ; 2 uses
  %.19.i.i.i.i = select i1 %i.f, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 3 uses
  %.1.in.v.i.i.i.i = select i1 %i.f, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.g = icmp eq ptr %.19.i.i.i.i, %i.c
  br i1 %i.g, label %.critedge, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.i = load i16, ptr %i.h, align 2, !tbaa !68
  %i.j = icmp ult i16 %i.i, -14822
  br i1 %i.j, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %i.k = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14823) ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !77
  switch i32 %i.m, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread [
    i32 2, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 0)
  %i.o = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 1)
  br label %.critedge

bb.d:                                             ; preds = %bb.b
  %i.p = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 0)
  %i.q = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.k, i32 noundef 0)
  %i.r = icmp eq i32 %i.p, 1
  %i.s = icmp eq i32 %i.q, 1
  %i.t = and i1 %i.r, %i.s
  br i1 %i.t, label %.critedge, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread

.critedge:                                        ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i, %bb.a, %bb.c, %bb.d, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit
  %.sroa.0224.0 = phi i32 [ %i.n, %bb.c ], [ 1, %bb.d ], [ 1, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ], [ 1, %bb.a ], [ 1, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i ] ; 5 uses
  %.sroa.10.0 = phi i32 [ %i.o, %bb.c ], [ 1, %bb.d ], [ 1, %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit ], [ 1, %bb.a ], [ 1, %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i ] ; 3 uses
  %i.u = icmp sgt i32 %.sroa.0224.0, 0
  %i.v = icmp sgt i32 %.sroa.10.0, 0
  %i.w = and i1 %i.u, %i.v
  br i1 %i.w, label %bb.e, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread

bb.e:                                             ; preds = %.critedge
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !66   ; 2 uses
  %.not10.i.i.i.i83 = icmp eq ptr %i.x, null
  br i1 %.not10.i.i.i.i83, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread, label %.lr.ph.i.i.i.i84

.lr.ph.i.i.i.i84:                                 ; preds = %bb.e, %.lr.ph.i.i.i.i84
  %.012.i.i.i.i85 = phi ptr [ %.1.i.i.i.i90, %.lr.ph.i.i.i.i84 ], [ %i.x, %bb.e ] ; 3 uses
  %.0811.i.i.i.i86 = phi ptr [ %.19.i.i.i.i87, %.lr.ph.i.i.i.i84 ], [ %i.c, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i85, i64 32
  %i.z = load i16, ptr %i.y, align 2, !tbaa !68
  %i.aa = icmp ult i16 %i.z, -14822               ; 2 uses
  %.19.i.i.i.i87 = select i1 %i.aa, ptr %.0811.i.i.i.i86, ptr %.012.i.i.i.i85 ; 3 uses
  %.1.in.v.i.i.i.i88 = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i89 = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i85, i64 %.1.in.v.i.i.i.i88
  %.1.i.i.i.i90 = load ptr, ptr %.1.in.i.i.i.i89, align 8, !tbaa !69 ; 2 uses
  %.not.i.i.i.i91 = icmp eq ptr %.1.i.i.i.i90, null
  br i1 %.not.i.i.i.i91, label %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i92, label %.lr.ph.i.i.i.i84, !llvm.loop !0

_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i92: ; preds = %.lr.ph.i.i.i.i84
  %i.ab = icmp eq ptr %.19.i.i.i.i87, %i.c
  br i1 %i.ab, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94

_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94: ; preds = %_ZNKSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS9_EPKSt18_Rb_tree_node_baseRS3_.exit.i.i.i92
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i87, i64 32
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !68
  %i.ae = icmp ult i16 %i.ad, -14821
  br i1 %i.ae, label %bb.f, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread

bb.f:                                             ; preds = %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !78
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 592
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !438
  %.not = icmp eq i32 %i.ai, 1
  br i1 %.not, label %bb.g, label %_ZNK8rawspeed7TiffIFD8hasEntryENS_7TiffTagE.exit94.thread

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call noundef ptr @_ZNK8rawspeed7TiffIFD8getEntryENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %1, i16 noundef zeroext -14822) ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !77
  %i.am = zext i32 %i.al to i64
  %i.an = zext nneg i32 %.sroa.0224.0 to i64
  %i.ao = zext nneg i32 %.sroa.10.0 to i64
  %i.ap = mul nuw nsw i64 %i.ao, %i.an
  %i.aq = icmp samesign ugt i64 %i.ap, %i.am
  br i1 %i.aq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.37, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder17decodeBlackLevelsEPKNS_7TiffIFDE) #23
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.ar = icmp samesign ult i32 %.sroa.0224.0, 2
  %i.as = icmp samesign ult i32 %.sroa.10.0, 2
  %or.cond = select i1 %i.ar, i1 true, i1 %i.as
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.at = tail call noundef float @_ZNK8rawspeed9TiffEntry8getFloatEj(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i32 noundef 0) ; 3 uses
  %i.au = fpext float %i.at to double
  %i.av = fcmp olt float %i.at, f0xCF000000
  %i.aw = fcmp ogt double %i.au, f0x41DFFFFFFFC00000
  %or.cond240 = or i1 %i.av, %i.aw
  br i1 %or.cond240, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.38, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10DngDecoder17decodeBlackLevelsEPKNS_7TiffIFDE) #23
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !78 ; 10 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 100 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 152 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !265, !range !148, !noundef !149
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.ba, align 8, !tbaa !265
  br label %_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit

_ZNK8rawspeed10Array2DRefIiE15getAsArray1DRefEv.exit: ; preds = %bb.l, %bb.m
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !266
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 128
  store i32 4, ptr %i.bd, align 8, !tbaa !143
  %i.be = getelementptr inbounds nuw i8, ptr %i.ax, i64 136
  store i32 2, ptr %i.be, align 8, !tbaa !143
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 140
  store i32 2, ptr %i.bf, align 4, !tbaa !143
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 144
  store i32 2, ptr %i.bg, align 8, !tbaa !143
  %i.bh = fptosi float %i.at to i32               ; 4 uses
  store i32 %i.bh, ptr %i.ay, align 4, !tbaa !143
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE8_M_eraseEPSt13_Rb_tree_nodeIS9_E:bb.a

_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(48) %i.f) #28, !call_target !473, !inline_history !465
  br label %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit

_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN8rawspeed9TiffEntryEEclEPS1_.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !466

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeIN8rawspeed7TiffTagESt4pairIKS1_St10unique_ptrINS0_9TiffEntryESt14default_deleteIS5_EEESt10_Select1stIS9_ESt4lessIS1_ESaIS9_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS9_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit ], [ %1, %bb.a ] ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  tail call void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %.07, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !253  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.j = load i64, ptr %i.h, align 8, !tbaa !59
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i: ; preds = %.lr.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !253  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.07, i64 48 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !59
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 96) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !474

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE12_M_drop_nodeEPSt13_Rb_tree_nodeIS8_E.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #16

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #16

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #17

declare i64 @_ZNK8rawspeed9TiffEntry12getSRationalEj(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !call_target !183, !inline_history !475
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !143  ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !143
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #28, !call_target !198, !inline_history !475
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #3 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #28 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.50, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed11IOExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %i.d
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vsnprintf(ptr noundef captures(none), i64 noundef, ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN8rawspeed11IOExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #22 comdat align 2 {
bb.a:
  tail call void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #33
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed11IOExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #23

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedExceptionC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #24 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN8rawspeed17RawspeedExceptionE, i64 16), ptr %0, align 8, !tbaa !22
  invoke void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %1) #33
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  resume { ptr, i32 } %i.a
}

declare void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #5

; Function Attrs: cold mustprogress noinline optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed17RawspeedException3logEPKc(ptr noundef %0) local_unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.50, ptr noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE17_M_realloc_insertIJRKNS0_20DngTilingDescriptionERjRNS0_10ByteStreamEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !161  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !160    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #29
  unreachable

_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 72                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 128102389400760775)
  %i.l = select i1 %i.j, i64 128102389400760775, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 72
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #30 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 9 uses
  %i.r = load i32, ptr %3, align 4, !tbaa !143    ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 24, i1 false)
  store ptr %2, ptr %i.q, align 8, !tbaa !168
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i32 %i.r, ptr %i.t, align 8, !tbaa !170
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 44
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 49
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 52
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.pre.i.i = load ptr, ptr %2, align 8, !tbaa !171
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 60
  %i.ac = load <2 x i32>, ptr %i.v, align 8, !tbaa !143 ; 3 uses
  %i.ad = extractelement <2 x i32> %i.ac, i64 0   ; 2 uses
  %i.ae = urem i32 %i.r, %i.ad                    ; 2 uses
  store i32 %i.ae, ptr %i.u, align 8, !tbaa !172
  %i.af = udiv i32 %i.r, %i.ad                    ; 3 uses
  store i32 %i.af, ptr %i.w, align 4, !tbaa !173
  %i.ag = insertelement <2 x i32> poison, i32 %i.ae, i64 0
  %i.ah = insertelement <2 x i32> %i.ag, i32 %i.af, i64 1 ; 2 uses
  %i.ai = add <2 x i32> %i.ah, splat (i32 1)
  %i.aj = icmp eq <2 x i32> %i.ai, %i.ac          ; 3 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %i.al = zext i1 %i.ak to i8
  store i8 %i.al, ptr %i.x, align 8, !tbaa !174
  %i.am = extractelement <2 x i1> %i.aj, i64 1
  %i.an = zext i1 %i.am to i8
  store i8 %i.an, ptr %i.y, align 1, !tbaa !175
  %i.ao = load <2 x i32>, ptr %i.aa, align 8, !tbaa !143 ; 2 uses
  %i.ap = mul <2 x i32> %i.ao, %i.ah              ; 4 uses
  store <2 x i32> %i.ap, ptr %i.z, align 4, !tbaa !143
  %i.aq = load <2 x i32>, ptr %.pre.pre.i.i, align 4, !tbaa !143 ; 3 uses
  %i.ar = sub <2 x i32> %i.aq, %i.ap
  %i.as = select <2 x i1> %i.aj, <2 x i32> %i.ar, <2 x i32> %i.ao ; 3 uses
  store <2 x i32> %i.as, ptr %i.ab, align 4, !tbaa !143
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load i32, ptr %i.at, align 8, !tbaa !155
  %i.av = icmp ult i32 %i.r, %i.au
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = extractelement <2 x i32> %i.ac, i64 1
  %i.ax = icmp ult i32 %i.af, %i.aw
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = extractelement <2 x i32> %i.aq, i64 0   ; 2 uses
  %i.az = extractelement <2 x i32> %i.ap, i64 0   ; 2 uses
  %i.ba = icmp ult i32 %i.az, %i.ay
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = extractelement <2 x i32> %i.aq, i64 1   ; 2 uses
  %i.bc = extractelement <2 x i32> %i.ap, i64 1   ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.bb
  tail call void @llvm.assume(i1 %i.bd)
  %i.be = extractelement <2 x i32> %i.as, i64 0   ; 2 uses
  %i.bf = icmp ne i32 %i.be, 0
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = extractelement <2 x i32> %i.as, i64 1   ; 2 uses
  %i.bh = icmp ne i32 %i.bg, 0
  tail call void @llvm.assume(i1 %i.bh)
  %i.bi = add i32 %i.be, %i.az
  %i.bj = icmp ule i32 %i.bi, %i.ay
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = add i32 %i.bg, %i.bc
  %i.bl = icmp ule i32 %i.bk, %i.bb
  tail call void @llvm.assume(i1 %i.bl)
  %.not10.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bn, %.lr.ph.i.i.i ], [ %i.p, %_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i, i64 72, i1 false), !alias.scope !482
  %i.bm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 72 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 72 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bm, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i, !llvm.loop !1

_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.bn, %.lr.ph.i.i.i ]
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 72 ; 2 uses
  %.not10.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i28, label %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i29

.lr.ph.i.i.i29:                                   ; preds = %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i29
  %.012.i.i.i30 = phi ptr [ %i.bp, %.lr.ph.i.i.i29 ], [ %i.bo, %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i31 = phi ptr [ %5, %.lr.ph.i.i.i29 ], [ %1, %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.012.i.i.i30, ptr noundef nonnull align 8 dereferenceable(72) %.0911.i.i.i31, i64 72, i1 false), !alias.scope !483
  %5 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i31, i64 72 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.012.i.i.i30, i64 72 ; 2 uses
  %.not.i.i.i32 = icmp eq ptr %5, %i.b
  br i1 %.not.i.i.i32, label %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, label %.lr.ph.i.i.i29, !llvm.loop !1

_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34: ; preds = %.lr.ph.i.i.i29, %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i33 = phi ptr [ %i.bo, %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bp, %.lr.ph.i.i.i29 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIN8rawspeed15DngSliceElementESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !162
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.bt) #31
  br label %_ZNSt12_Vector_baseIN8rawspeed15DngSliceElementESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN8rawspeed15DngSliceElementESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN8rawspeed15DngSliceElementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit34, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !160
  store ptr %.0.lcssa.i.i.i33, ptr %i.a, align 8, !tbaa !161
  %i.bu = getelementptr inbounds nuw [72 x i8], ptr %i.p, i64 %i.l
  store ptr %i.bu, ptr %i.bq, align 8, !tbaa !162
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273
  tail call void @_ZNSt8_Rb_treeIN8rawspeed6BufferES1_St9_IdentityIS1_ESt4lessIS1_ESaIS1_EE8_M_eraseEPSt13_Rb_tree_nodeIS1_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !274  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #31
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !484

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 640) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN8rawspeed15RawImageDataU16EEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN8rawspeed12RawImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(624) dereferenceable(624) %i.a) #28
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(640) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 640) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(640) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !276  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !59
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #28
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN8rawspeed15RawImageDataU16C1Ev(ptr noundef nonnull align 8 dereferenceable(624)) unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed13ImageMetaDataD2Ev(ptr noundef nonnull align 8 dead_on_return(300) dereferenceable(304) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !253  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !59
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !253  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !59
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !253  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3
  %i.q = load i64, ptr %i.o, align 8, !tbaa !59
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !253  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.w = load i64, ptr %i.u, align 8, !tbaa !59
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !253  ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.ac = load i64, ptr %i.aa, align 8, !tbaa !59
  %i.ad = add i64 %i.ac, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !253 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !59
  %i.aj = add i64 %i.ai, 1
  tail call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !253 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %i.ao = load i64, ptr %i.am, align 8, !tbaa !59
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ap) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !151 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN8rawspeed12NotARationalIiEESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !150
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
end_hunk_1
