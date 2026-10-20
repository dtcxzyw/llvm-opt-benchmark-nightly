Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/denoising?download=true
inline.NumInlined: 7167
inline.NumDeleted: 580
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 60
begin_hunk_0_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !50
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !50
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !50
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !140  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !141  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !140  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !139, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !140 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit115 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit115:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not179 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not179, label %.preheader144.lr.ph, label %._crit_edge182

.preheader144.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit115
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !139, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader144.preheader, label %._crit_edge182

.preheader144.preheader:                          ; preds = %.preheader144.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader144

.preheader144:                                    ; preds = %.preheader144.preheader, %._crit_edge177
  %i.be = phi ptr [ %i.az, %.preheader144.preheader ], [ %i.by, %._crit_edge177 ] ; 2 uses
  %indvars.iv207 = phi i64 [ %i.bd, %.preheader144.preheader ], [ %indvars.iv.next208, %._crit_edge177 ] ; 4 uses
  %.094180 = phi i32 [ -1, %.preheader144.preheader ], [ %.1.lcssa, %._crit_edge177 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph176, label %._crit_edge177

.lr.ph176:                                        ; preds = %.preheader144
  %i.bi = icmp eq i64 %indvars.iv207, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv207 to i32     ; 4 uses
  br label %bb.k

._crit_edge182:                                   ; preds = %._crit_edge177, %.preheader144.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit115
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge182
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge182, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit116

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit116, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit116

_ZN2cv7Array3dIiED2Ev.exit116:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit116
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit116, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit122

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit121

._crit_edge177:                                   ; preds = %._crit_edge168, %.preheader144
  %i.by = phi ptr [ %i.be, %.preheader144 ], [ %i.rk, %._crit_edge168 ]
  %.1.lcssa = phi i32 [ %.094180, %.preheader144 ], [ %.2237, %._crit_edge168 ]
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next208 to i32
  %exitcond210.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond210.not, label %._crit_edge182, label %.preheader144, !llvm.loop !648

bb.k:                                             ; preds = %.lr.ph176, %._crit_edge168
  %indvars.iv204 = phi i64 [ 0, %.lr.ph176 ], [ %indvars.iv.next205, %._crit_edge168 ] ; 4 uses
  %.1173 = phi i32 [ %.094180, %.lr.ph176 ], [ %.2237, %._crit_edge168 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !211 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv204 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv204, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !140
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge168

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gm
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !649

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !141 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !211 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !212 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !674
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !674 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !141 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !652

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.ft, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !653

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fs, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !138 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %.sink.i.i.i, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  %i.ej = sext i32 %i.dw to i64
  %i.ek = mul i64 %i.eb, %i.ej
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.ek
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.el = sext i32 %i.dy to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %.sink.i6.i.i, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = zext i8 %i.eg to i32
  %i.er = zext i8 %i.en to i32
  %i.es = sub nsw i32 %i.eq, %i.er                ; 2 uses
  %i.et = mul nsw i32 %i.es, %i.es
  %i.eu = zext i8 %i.ei to i32
  %i.ev = zext i8 %i.ep to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev                ; 2 uses
  %i.ex = mul nsw i32 %i.ew, %i.ew
  %i.ey = add nuw nsw i32 %i.ex, %i.et            ; 2 uses
  %i.ez = load i32, ptr %i.g, align 4, !tbaa !201
  %i.fa = mul nsw i32 %i.ez, %.084.i
  %i.fb = sext i32 %i.fa to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fb ; 2 uses
  %i.fc = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fd = add nsw i32 %i.ey, %i.fc
  store i32 %i.fd, ptr %gep.i, align 4, !tbaa !91
  %i.fe = load i32, ptr %i.as, align 4, !tbaa !212
  %i.ff = add nsw i32 %i.fe, %.04776.i
  %i.fg = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !675
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !675 ; 2 uses
  %i.fj = mul nsw i32 %i.fh, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fk
  %i.fm = mul nsw i32 %i.fi, %.084.i
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !91
  %i.fr = add nsw i32 %i.fq, %i.ey
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !91
  %i.fs = add nsw i32 %.04776.i, 1
  %i.ft = load i32, ptr %i.as, align 4, !tbaa !212 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.ft
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !656

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !141
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fu = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !676
  %i.fx = mul nsw i32 %i.fw, %i.fv
  %i.fy = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !676 ; 2 uses
  %i.fz = mul nsw i32 %i.fx, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ga
  %i.gc = mul nsw i32 %i.fy, %.084.i
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !91
  %i.gh = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !677
  %i.gi = mul nsw i32 %i.gh, %.084.i
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i
  store i32 %i.gg, ptr %i.gl, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gm = load i32, ptr %i.d, align 8, !tbaa !140 ; 3 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next.i, %i.gn
  br i1 %i.go, label %bb.m, label %._crit_edge83.i, !llvm.loop !661

bb.n:                                             ; preds = %bb.p
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gq = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.r, label %_ZN2cv7Array3dIiED2Ev.exit121

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1173, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gs = load i32, ptr %i.ar, align 8, !tbaa !138 ; 2 uses
  %i.gt = add nsw i32 %i.gs, %i.bj                ; 3 uses
  %i.gu = sub nsw i32 %i.gt, %i.bz
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.gw = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gx = load i32, ptr %i.d, align 8, !tbaa !140 ; 4 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph151, label %.loopexit

.lr.ph151:                                        ; preds = %bb.q
  %i.gz = add nsw i32 %i.gs, %i.cb                ; 2 uses
  %i.ha = sub i32 %i.gz, %i.bz
  %i.hb = load i32, ptr %i.as, align 4, !tbaa !212 ; 4 uses
  %i.hc = add i32 %i.ha, %i.hb
  %i.hd = load i32, ptr %i.at, align 4, !tbaa !195
  %i.he = icmp slt i32 %i.hd, 2                   ; 2 uses
  %i.hf = add nsw i32 %i.gt, %i.hb
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.gw, %i.hg
  %.sink.idx.i117 = select i1 %i.he, i64 0, i64 %i.hh
  %.sink.i118 = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i117
  %i.hi = add nsw i32 %i.gz, %i.hb
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [2 x i8], ptr %.sink.i118, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !28
  %i.hn = load i8, ptr %i.hk, align 1, !tbaa !28
  %i.ho = xor i32 %i.hb, -1
  %i.hp = add i32 %i.gt, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = mul i64 %i.gw, %i.hq
  %.sink.idx.i = select i1 %i.he, i64 0, i64 %i.hr
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i
  %i.hs = getelementptr inbounds [2 x i8], ptr %.sink.i, i64 %i.hj ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !28
  %i.hv = load i8, ptr %i.hs, align 1, !tbaa !28
  %i.hw = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.hx = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.hy = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.hz = zext i8 %i.hn to i32                    ; 2 uses
  %i.ia = zext i8 %i.hm to i32                    ; 2 uses
  %i.ib = zext i8 %i.hv to i32                    ; 2 uses
  %i.ic = zext i8 %i.hu to i32                    ; 2 uses
  %i.id = sext i32 %i.hc to i64                   ; 7 uses
  %wide.trip.count = zext nneg i32 %i.gx to i64   ; 5 uses
  %i.ie = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hw, i64 %i.ie
  %scevgep255.a = getelementptr i8, ptr %i.hx, i64 %i.ie
  %scevgep257.a = getelementptr i8, ptr %i.hy, i64 %i.ie
  %i.if = shl nsw i64 %i.id, 1                    ; 2 uses
  %scevgep259.a = getelementptr i8, ptr %i.gv, i64 %i.if
  %i.ig = add nsw i64 %i.id, %wide.trip.count
  %i.ih = shl nsw i64 %i.ig, 1                    ; 2 uses
  %scevgep261.a = getelementptr i8, ptr %i.gv, i64 %i.ih
  %scevgep263 = getelementptr i8, ptr %i.gv, i64 %i.if
  %scevgep265 = getelementptr i8, ptr %i.gv, i64 %i.ih
  %min.iters.check = icmp ult i32 %i.gx, 8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert298 = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat299 = shufflevector <4 x i32> %broadcast.splatinsert298, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert300 = insertelement <4 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat301 = shufflevector <4 x i32> %broadcast.splatinsert300, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert302 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat303 = shufflevector <4 x i32> %broadcast.splatinsert302, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph151, %._crit_edge
  %.091149 = phi i32 [ 0, %.lr.ph151 ], [ %i.mt, %._crit_edge ] ; 5 uses
  %i.ii = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ij = mul i32 %i.ii, %.091149
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.hw, i64 %i.ik ; 6 uses
  %i.im = load i32, ptr %i.q, align 4, !tbaa !206
  %i.in = mul nsw i32 %i.im, %.1173
  %i.io = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.ip = mul nsw i32 %i.in, %i.io
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.iq
  %i.is = mul nsw i32 %i.io, %.091149
  %i.it = sext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it ; 6 uses
  %i.iv = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.iw = mul i32 %i.iv, %i.cb
  %i.ix = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.iy = mul i32 %i.iw, %i.ix
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.iz
  %i.jb = mul nsw i32 %i.ix, %.091149
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jc ; 6 uses
  %i.je = load i32, ptr %i.as, align 4, !tbaa !212 ; 2 uses
  %i.jf = xor i32 %i.je, -1
  %i.jg = add i32 %.091149, %i.gu                 ; 2 uses
  %i.jh = add i32 %i.jg, %i.jf
  %i.ji = sext i32 %i.jh to i64
  %i.jj = mul i64 %i.gw, %i.ji                    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jj ; 5 uses
  %i.jl = add i32 %i.jg, %i.je
  %i.jm = sext i32 %i.jl to i64
  %i.jn = mul i64 %i.gw, %i.jm                    ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jn ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jp = shl nsw i64 %i.ik, 2
  %scevgep254 = getelementptr i8, ptr %scevgep, i64 %i.jp ; 4 uses
  %i.jq = add nsw i64 %i.iq, %i.it
  %i.jr = shl nsw i64 %i.jq, 2
  %scevgep256 = getelementptr i8, ptr %scevgep255.a, i64 %i.jr ; 4 uses
  %i.js = add nsw i64 %i.iz, %i.jc
  %i.jt = shl nsw i64 %i.js, 2
  %scevgep258 = getelementptr i8, ptr %scevgep257.a, i64 %i.jt ; 4 uses
  %scevgep260 = getelementptr i8, ptr %scevgep259.a, i64 %i.jn ; 3 uses
  %scevgep262 = getelementptr i8, ptr %scevgep261.a, i64 %i.jn ; 3 uses
  %scevgep264 = getelementptr i8, ptr %scevgep263, i64 %i.jj ; 3 uses
  %scevgep266 = getelementptr i8, ptr %scevgep265, i64 %i.jj ; 3 uses
  %bound0 = icmp ult ptr %i.il, %scevgep256
  %bound1 = icmp ult ptr %i.iu, %scevgep254
  %found.conflict = and i1 %bound0, %bound1
  %bound0267 = icmp ult ptr %i.il, %scevgep258
  %bound1268 = icmp ult ptr %i.jd, %scevgep254
  %found.conflict269 = and i1 %bound0267, %bound1268
  %conflict.rdx = or i1 %found.conflict, %found.conflict269
  %bound0270 = icmp ult ptr %i.il, %scevgep262
  %bound1271 = icmp ult ptr %scevgep260, %scevgep254
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx273 = or i1 %conflict.rdx, %found.conflict272
  %bound0274 = icmp ult ptr %i.il, %scevgep266
  %bound1275 = icmp ult ptr %scevgep264, %scevgep254
  %found.conflict276 = and i1 %bound0274, %bound1275
  %conflict.rdx277 = or i1 %conflict.rdx273, %found.conflict276
  %bound0278 = icmp ult ptr %i.iu, %scevgep258
  %bound1279 = icmp ult ptr %i.jd, %scevgep256
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx281 = or i1 %conflict.rdx277, %found.conflict280
  %bound0282 = icmp ult ptr %i.iu, %scevgep262
  %bound1283 = icmp ult ptr %scevgep260, %scevgep256
  %found.conflict284 = and i1 %bound0282, %bound1283
  %conflict.rdx285 = or i1 %conflict.rdx281, %found.conflict284
  %bound0286 = icmp ult ptr %i.iu, %scevgep266
  %bound1287 = icmp ult ptr %scevgep264, %scevgep256
  %found.conflict288 = and i1 %bound0286, %bound1287
  %conflict.rdx289 = or i1 %conflict.rdx285, %found.conflict288
  %bound0290 = icmp ult ptr %i.jd, %scevgep262
  %bound1291 = icmp ult ptr %scevgep260, %scevgep258
  %found.conflict292 = and i1 %bound0290, %bound1291
  %conflict.rdx293 = or i1 %conflict.rdx289, %found.conflict292
  %bound0294 = icmp ult ptr %i.jd, %scevgep266
  %bound1295 = icmp ult ptr %scevgep264, %scevgep258
  %found.conflict296 = and i1 %bound0294, %bound1295
  %conflict.rdx297 = or i1 %conflict.rdx293, %found.conflict296
  br i1 %conflict.rdx297, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.ju = or disjoint i64 %index, 1
  %i.jv = or disjoint i64 %index, 2
  %i.jw = or disjoint i64 %index, 3
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jx, align 4, !tbaa !91, !alias.scope !678, !noalias !679
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %index ; 4 uses
  %wide.load304 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !91, !alias.scope !680, !noalias !681
  %i.jz = sub nsw <4 x i32> %wide.load304, %wide.load
  store <4 x i32> %i.jz, ptr %i.jy, align 4, !tbaa !91, !alias.scope !680, !noalias !681
  %i.ka = add nsw i64 %index, %i.id               ; 2 uses
  %i.kb = add nsw i64 %i.ju, %i.id                ; 2 uses
  %i.kc = add nsw i64 %i.jv, %i.id                ; 2 uses
  %i.kd = add nsw i64 %i.jw, %i.id                ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index ; 2 uses
  %wide.load305 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !91, !alias.scope !682, !noalias !683
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.ka ; 2 uses
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kb ; 2 uses
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kc ; 2 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kd ; 2 uses
  %i.kj = load i8, ptr %i.kf, align 1, !tbaa !28, !alias.scope !684
  %i.kk = load i8, ptr %i.kg, align 1, !tbaa !28, !alias.scope !684
  %i.kl = load i8, ptr %i.kh, align 1, !tbaa !28, !alias.scope !684
  %i.km = load i8, ptr %i.ki, align 1, !tbaa !28, !alias.scope !684
  %i.kn = insertelement <4 x i8> poison, i8 %i.kj, i64 0
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kk, i64 1
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kl, i64 2
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  %i.kv = load i8, ptr %i.kr, align 1, !tbaa !28, !alias.scope !684
  %i.kw = load i8, ptr %i.ks, align 1, !tbaa !28, !alias.scope !684
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !28, !alias.scope !684
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !28, !alias.scope !684
  %i.kz = insertelement <4 x i8> poison, i8 %i.kv, i64 0
  %i.la = insertelement <4 x i8> %i.kz, i8 %i.kw, i64 1
  %i.lb = insertelement <4 x i8> %i.la, i8 %i.kx, i64 2
  %i.lc = insertelement <4 x i8> %i.lb, i8 %i.ky, i64 3
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.ka ; 2 uses
  %i.le = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.kb ; 2 uses
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.kc ; 2 uses
  %i.lg = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.kd ; 2 uses
  %i.lh = load i8, ptr %i.ld, align 1, !tbaa !28, !alias.scope !685
  %i.li = load i8, ptr %i.le, align 1, !tbaa !28, !alias.scope !685
  %i.lj = load i8, ptr %i.lf, align 1, !tbaa !28, !alias.scope !685
  %i.lk = load i8, ptr %i.lg, align 1, !tbaa !28, !alias.scope !685
  %i.ll = insertelement <4 x i8> poison, i8 %i.lh, i64 0
  %i.lm = insertelement <4 x i8> %i.ll, i8 %i.li, i64 1
  %i.ln = insertelement <4 x i8> %i.lm, i8 %i.lj, i64 2
  %i.lo = insertelement <4 x i8> %i.ln, i8 %i.lk, i64 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lt = load i8, ptr %i.lp, align 1, !tbaa !28, !alias.scope !685
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !28, !alias.scope !685
  %i.lv = load i8, ptr %i.lr, align 1, !tbaa !28, !alias.scope !685
  %i.lw = load i8, ptr %i.ls, align 1, !tbaa !28, !alias.scope !685
  %i.lx = insertelement <4 x i8> poison, i8 %i.lt, i64 0
  %i.ly = insertelement <4 x i8> %i.lx, i8 %i.lu, i64 1
  %i.lz = insertelement <4 x i8> %i.ly, i8 %i.lv, i64 2
  %i.ma = insertelement <4 x i8> %i.lz, i8 %i.lw, i64 3
  %i.mb = zext <4 x i8> %i.lo to <4 x i32>
  %i.mc = sub nsw <4 x i32> %broadcast.splat, %i.mb ; 2 uses
  %i.md = mul nsw <4 x i32> %i.mc, %i.mc
  %i.me = zext <4 x i8> %i.ma to <4 x i32>
  %i.mf = sub nsw <4 x i32> %broadcast.splat299, %i.me ; 2 uses
  %i.mg = mul nsw <4 x i32> %i.mf, %i.mf
  %i.mh = zext <4 x i8> %i.kq to <4 x i32>
  %i.mi = sub nsw <4 x i32> %broadcast.splat301, %i.mh ; 2 uses
  %i.mj = zext <4 x i8> %i.lc to <4 x i32>
  %i.mk = sub nsw <4 x i32> %broadcast.splat303, %i.mj ; 2 uses
  %i.ml = mul nsw <4 x i32> %i.mi, %i.mi
  %i.mm = mul nsw <4 x i32> %i.mk, %i.mk
  %i.mn = add nuw nsw <4 x i32> %i.mm, %i.ml
  %i.mo = add <4 x i32> %i.md, %wide.load305
  %i.mp = add <4 x i32> %i.mo, %i.mg
  %i.mq = sub <4 x i32> %i.mp, %i.mn              ; 3 uses
  store <4 x i32> %i.mq, ptr %i.jx, align 4, !tbaa !91, !alias.scope !678, !noalias !679
  %wide.load306 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !91, !alias.scope !680, !noalias !681
  %i.mr = add nsw <4 x i32> %i.mq, %wide.load306
  store <4 x i32> %i.mr, ptr %i.jy, align 4, !tbaa !91, !alias.scope !680, !noalias !681
  store <4 x i32> %i.mq, ptr %i.ke, align 4, !tbaa !91, !alias.scope !682, !noalias !683
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.mt = add nuw nsw i32 %.091149, 1             ; 2 uses
  %exitcond190.not = icmp eq i32 %i.mt, %i.gx
  br i1 %exitcond190.not, label %.loopexit, label %.lr.ph, !llvm.loop !669

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !91
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv ; 4 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !91
  %i.my = sub nsw i32 %i.mx, %i.mv
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !91
  %i.mz = add nsw i64 %indvars.iv, %i.id          ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !91
  %i.nc = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.mz ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !28
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !28
  %i.ng = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.mz ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !28
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !28
  %i.nk = zext i8 %i.nh to i32
  %i.nl = sub nsw i32 %i.hz, %i.nk                ; 2 uses
  %i.nm = mul nsw i32 %i.nl, %i.nl
  %i.nn = zext i8 %i.nj to i32
  %i.no = sub nsw i32 %i.ia, %i.nn                ; 2 uses
  %i.np = mul nsw i32 %i.no, %i.no
  %i.nq = zext i8 %i.nd to i32
  %i.nr = sub nsw i32 %i.ib, %i.nq                ; 2 uses
  %i.ns = zext i8 %i.nf to i32
  %i.nt = sub nsw i32 %i.ic, %i.ns                ; 2 uses
  %.neg.i.neg.i.neg = mul nsw i32 %i.nr, %i.nr
  %.neg7.i.neg.i.neg = mul nsw i32 %i.nt, %i.nt
  %reass.add = add nuw nsw i32 %.neg7.i.neg.i.neg, %.neg.i.neg.i.neg
  %i.nu = add i32 %i.nm, %i.nb
  %i.nv = add i32 %i.nu, %i.np
  %i.nw = sub i32 %i.nv, %reass.add               ; 2 uses
  store i32 %i.nw, ptr %i.mu, align 4, !tbaa !91
  %i.nx = load i32, ptr %i.mw, align 4, !tbaa !91
  %i.ny = add nsw i32 %i.nw, %i.nx
  store i32 %i.ny, ptr %i.mw, align 4, !tbaa !91
  %i.nz = load i32, ptr %i.mu, align 4, !tbaa !91
  store i32 %i.nz, ptr %i.na, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !670

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.oa = add nsw i32 %.1173, 1
  %i.ob = load i32, ptr %i.m, align 4, !tbaa !141
  %i.oc = srem i32 %i.oa, %i.ob
  %.pre = load i32, ptr %i.d, align 8, !tbaa !140
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.od = phi i32 [ %.pre, %.loopexit ], [ %i.gm, %._crit_edge83.i ] ; 4 uses
  %.2 = phi i32 [ %i.oc, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.oe = icmp sgt i32 %i.od, 0
  br i1 %i.oe, label %.lr.ph167, label %._crit_edge168

.lr.ph167:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.of = load i32, ptr %i.ar, align 8, !tbaa !138 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.of
  %i.og = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.oh = load i64, ptr %i.av, align 8, !tbaa !82
  %i.oi = load ptr, ptr %2, align 8, !tbaa !203
  %i.oj = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ok = add nsw i32 %i.cc, %i.of
  %i.ol = sext i32 %i.ok to i64
  %i.om = sext i32 %i.oj to i64
  %wide.trip.count202 = zext nneg i32 %i.od to i64 ; 3 uses
  %.pre212 = load i32, ptr %i.aw, align 8, !tbaa !142 ; 3 uses
  %.pre213 = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 3 uses
  %invariant.gep245 = getelementptr [2 x i8], ptr %i.og, i64 %i.ol
  %xtraiter = and i64 %wide.trip.count202, 1
  %i.on = icmp eq i32 %i.od, 1
  %unroll_iter = and i64 %wide.trip.count202, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod320 = trunc i32 %i.od to i1
  br label %.lr.ph157

.lr.ph157:                                        ; preds = %.lr.ph167, %._crit_edge158
  %indvars.iv199 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next200, %._crit_edge158 ] ; 3 uses
  %.lcssa161172 = phi i32 [ 0, %.lr.ph167 ], [ %.lcssa312, %._crit_edge158 ] ; 2 uses
  %.sroa.0127.1165 = phi i32 [ 0, %.lr.ph167 ], [ %.lcssa311, %._crit_edge158 ] ; 2 uses
  %.lcssa153163164 = phi i32 [ 0, %.lr.ph167 ], [ %.lcssa313, %._crit_edge158 ] ; 2 uses
  %i.oo = trunc nuw nsw i64 %indvars.iv199 to i32
  %.reass = add i32 %invariant.op, %i.oo
  %i.op = sext i32 %.reass to i64
  %i.oq = mul i64 %i.oh, %i.op
  %i.or = mul nsw i64 %indvars.iv199, %i.om
  %i.os = getelementptr inbounds [4 x i8], ptr %i.oi, i64 %i.or ; 3 uses
  %gep246 = getelementptr i8, ptr %invariant.gep245, i64 %i.oq ; 3 uses
  br i1 %i.on, label %.epil.preheader, label %.lr.ph157.new

._crit_edge158.unr-lcssa:                         ; preds = %.lr.ph157.new
  br i1 %lcmp.mod.not, label %._crit_edge158, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge158.unr-lcssa, %.lr.ph157
  %indvars.iv194.epil.init = phi i64 [ 0, %.lr.ph157 ], [ %indvars.iv.next195.1, %._crit_edge158.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %.lcssa161172, %.lr.ph157 ], [ %i.qp, %._crit_edge158.unr-lcssa ]
  %.sroa.0127.2154.epil.init = phi i32 [ %.sroa.0127.1165, %.lr.ph157 ], [ %i.qq, %._crit_edge158.unr-lcssa ]
  %.epil.init316 = phi i32 [ %.lcssa153163164, %.lr.ph157 ], [ %i.qm, %._crit_edge158.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod320)
  %i.ot = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv194.epil.init
  %i.ou = load i32, ptr %i.ot, align 4, !tbaa !91
  %i.ov = ashr i32 %i.ou, %.pre212
  %i.ow = sext i32 %i.ov to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %.pre213, i64 %i.ow
  %i.oy = load i32, ptr %i.ox, align 4, !tbaa !91 ; 3 uses
  %gep.epil = getelementptr [2 x i8], ptr %gep246, i64 %indvars.iv194.epil.init ; 2 uses
  %i.oz = load i8, ptr %gep.epil, align 1, !tbaa !28
  %i.pa = getelementptr inbounds nuw i8, ptr %gep.epil, i64 1
  %i.pb = load i8, ptr %i.pa, align 1, !tbaa !28
  %i.pc = zext i8 %i.oz to i32
  %i.pd = mul nsw i32 %i.oy, %i.pc
  %i.pe = add nsw i32 %.epil.init316, %i.pd
  %i.pf = zext i8 %i.pb to i32
  %i.pg = mul nsw i32 %i.oy, %i.pf
  %i.ph = add nsw i32 %.epil.init, %i.pg
  %i.pi = add nsw i32 %i.oy, %.sroa.0127.2154.epil.init
  br label %._crit_edge158

._crit_edge158:                                   ; preds = %._crit_edge158.unr-lcssa, %.epil.preheader
  %.lcssa313 = phi i32 [ %i.qm, %._crit_edge158.unr-lcssa ], [ %i.pe, %.epil.preheader ] ; 2 uses
  %.lcssa312 = phi i32 [ %i.qp, %._crit_edge158.unr-lcssa ], [ %i.ph, %.epil.preheader ] ; 2 uses
  %.lcssa311 = phi i32 [ %i.qq, %._crit_edge158.unr-lcssa ], [ %i.pi, %.epil.preheader ] ; 2 uses
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %wide.trip.count202
  br i1 %exitcond203.not, label %._crit_edge168, label %.lr.ph157, !llvm.loop !671

.lr.ph157.new:                                    ; preds = %.lr.ph157, %.lr.ph157.new
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.1, %.lr.ph157.new ], [ 0, %.lr.ph157 ] ; 4 uses
  %i.pj = phi i32 [ %i.qp, %.lr.ph157.new ], [ %.lcssa161172, %.lr.ph157 ]
  %.sroa.0127.2154 = phi i32 [ %i.qq, %.lr.ph157.new ], [ %.sroa.0127.1165, %.lr.ph157 ]
  %i.pk = phi i32 [ %i.qm, %.lr.ph157.new ], [ %.lcssa153163164, %.lr.ph157 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph157.new ], [ 0, %.lr.ph157 ]
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv194
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !91
  %i.pn = ashr i32 %i.pm, %.pre212
  %i.po = sext i32 %i.pn to i64
  %i.pp = getelementptr inbounds nuw [4 x i8], ptr %.pre213, i64 %i.po
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !91 ; 3 uses
  %gep = getelementptr [2 x i8], ptr %gep246, i64 %indvars.iv194 ; 2 uses
  %i.pr = load i8, ptr %gep, align 1, !tbaa !28
  %i.ps = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !28
  %i.pu = zext i8 %i.pr to i32
  %i.pv = mul nsw i32 %i.pq, %i.pu
  %i.pw = add nsw i32 %i.pk, %i.pv
  %i.px = zext i8 %i.pt to i32
  %i.py = mul nsw i32 %i.pq, %i.px
  %i.pz = add nsw i32 %i.pj, %i.py
  %i.qa = add nsw i32 %i.pq, %.sroa.0127.2154
  %indvars.iv.next195 = or disjoint i64 %indvars.iv194, 1 ; 2 uses
  %i.qb = getelementptr inbounds nuw [4 x i8], ptr %i.os, i64 %indvars.iv.next195
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !91
  %i.qd = ashr i32 %i.qc, %.pre212
  %i.qe = sext i32 %i.qd to i64
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %.pre213, i64 %i.qe
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !91 ; 3 uses
  %gep.1 = getelementptr [2 x i8], ptr %gep246, i64 %indvars.iv.next195 ; 2 uses
  %i.qh = load i8, ptr %gep.1, align 1, !tbaa !28
  %i.qi = getelementptr inbounds nuw i8, ptr %gep.1, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !28
  %i.qk = zext i8 %i.qh to i32
  %i.ql = mul nsw i32 %i.qg, %i.qk
  %i.qm = add nsw i32 %i.pw, %i.ql                ; 3 uses
  %i.qn = zext i8 %i.qj to i32
  %i.qo = mul nsw i32 %i.qg, %i.qn
  %i.qp = add nsw i32 %i.pz, %i.qo                ; 3 uses
  %i.qq = add nsw i32 %i.qg, %i.qa                ; 3 uses
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge158.unr-lcssa, label %.lr.ph157.new, !llvm.loop !672

._crit_edge168:                                   ; preds = %._crit_edge158, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2237 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge158 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa312, %._crit_edge158 ]
  %.lcssa153163.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa313, %._crit_edge158 ]
  %.sroa.0127.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa311, %._crit_edge158 ] ; 3 uses
  %i.qr = sdiv i32 %.sroa.0127.1.lcssa, 2         ; 2 uses
  %i.qs = add i32 %.lcssa153163.lcssa, %i.qr
  %i.qt = udiv i32 %i.qs, %.sroa.0127.1.lcssa
  %i.qu = add i32 %.sroa.5.0, %i.qr
  %i.qv = udiv i32 %i.qu, %.sroa.0127.1.lcssa
  %i.qw = call i32 @llvm.smax.i32(i32 %i.qt, i32 0)
  %i.qx = call i32 @llvm.umin.i32(i32 %i.qw, i32 255)
  %.sroa.0.0.insert.ext = trunc nuw nsw i32 %i.qx to i16
  %i.qy = call i32 @llvm.smax.i32(i32 %i.qv, i32 0)
  %i.qz = call i32 @llvm.umin.i32(i32 %i.qy, i32 255)
  %.sroa.5.0.insert.ext = trunc nuw nsw i32 %i.qz to i16
  %i.ra = load ptr, ptr %i.ay, align 8, !tbaa !143, !nonnull !130, !align !131 ; 3 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ra, i64 4
  %i.rc = load i32, ptr %i.rb, align 4, !tbaa !195
  %i.rd = icmp slt i32 %i.rc, 2
  %i.re = getelementptr inbounds nuw i8, ptr %i.ra, i64 24
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !194
  %i.rg = getelementptr inbounds nuw i8, ptr %i.ra, i64 128
  %i.rh = load i64, ptr %i.rg, align 8
  %i.ri = mul i64 %i.rh, %indvars.iv207
  %.sink.idx.i119 = select i1 %i.rd, i64 0, i64 %i.ri
  %.sink.i120 = getelementptr inbounds nuw i8, ptr %i.rf, i64 %.sink.idx.i119
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %.sink.i120, i64 %indvars.iv204
  %.sroa.5.0.insert.shift = shl nuw i16 %.sroa.5.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i16 %.sroa.0.0.insert.insert, ptr %i.rj, align 1
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.rk = load ptr, ptr %i.aa, align 8, !tbaa !139, !nonnull !130, !align !131 ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 12
  %i.rm = load i32, ptr %i.rl, align 4, !tbaa !191
  %i.rn = sext i32 %i.rm to i64
  %i.ro = icmp slt i64 %indvars.iv.next205, %i.rn
  br i1 %i.ro, label %bb.k, label %._crit_edge177, !llvm.loop !673

bb.r:                                             ; preds = %bb.n
  %i.rp = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.rq = icmp eq ptr %i.rp, null
  br i1 %i.rq, label %_ZN2cv7Array3dIiED2Ev.exit121, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.rp) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit121

_ZN2cv7Array3dIiED2Ev.exit121:                    ; preds = %bb.s, %bb.r, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gp, %bb.n ], [ %i.gp, %bb.r ], [ %i.gp, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.rr = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.rs = trunc nuw i8 %i.rr to i1
  br i1 %i.rs, label %bb.t, label %_ZN2cv7Array3dIiED2Ev.exit122

bb.t:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit121
  %i.rt = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.ru = icmp eq ptr %i.rt, null
  br i1 %i.ru, label %_ZN2cv7Array3dIiED2Ev.exit122, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.rt) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit122

_ZN2cv7Array3dIiED2Ev.exit122:                    ; preds = %bb.u, %bb.t, %_ZN2cv7Array3dIiED2Ev.exit121, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit121 ], [ %.pn107.pn.pn, %bb.t ], [ %.pn107.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.rv = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.rw = trunc nuw i8 %i.rv to i1
  br i1 %i.rw, label %bb.v, label %_ZN2cv7Array2dIiED2Ev.exit123

bb.v:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit122
  %i.rx = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ry = icmp eq ptr %i.rx, null
  br i1 %i.ry, label %_ZN2cv7Array2dIiED2Ev.exit123, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.rx) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit123
end_hunk_0
begin_hunk_1_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !56
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !56
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !56
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !158  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !159  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !158  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !157, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !158 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit112 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit112:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not189 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not189, label %.preheader149.lr.ph, label %._crit_edge192

.preheader149.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !157, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader149.preheader, label %._crit_edge192

.preheader149.preheader:                          ; preds = %.preheader149.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader149

.preheader149:                                    ; preds = %.preheader149.preheader, %._crit_edge187
  %i.be = phi ptr [ %i.az, %.preheader149.preheader ], [ %i.by, %._crit_edge187 ] ; 2 uses
  %indvars.iv218 = phi i64 [ %i.bd, %.preheader149.preheader ], [ %indvars.iv.next219, %._crit_edge187 ] ; 4 uses
  %.094190 = phi i32 [ -1, %.preheader149.preheader ], [ %.1.lcssa, %._crit_edge187 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %.preheader149
  %i.bi = icmp eq i64 %indvars.iv218, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv218 to i32     ; 4 uses
  br label %bb.k

._crit_edge192:                                   ; preds = %._crit_edge187, %.preheader149.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge192
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge192, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit113

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit113
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit113, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit118

._crit_edge187:                                   ; preds = %._crit_edge175, %.preheader149
  %i.by = phi ptr [ %i.be, %.preheader149 ], [ %i.sv, %._crit_edge175 ]
  %.1.lcssa = phi i32 [ %.094190, %.preheader149 ], [ %.2249, %._crit_edge175 ]
  %indvars.iv.next219 = add nsw i64 %indvars.iv218, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next219 to i32
  %exitcond221.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond221.not, label %._crit_edge192, label %.preheader149, !llvm.loop !768

bb.k:                                             ; preds = %.lr.ph186, %._crit_edge175
  %indvars.iv215 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next216, %._crit_edge175 ] ; 4 uses
  %.1183 = phi i32 [ %.094190, %.lr.ph186 ], [ %.2249, %._crit_edge175 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !215 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv215 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv215, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !158
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge175

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gv
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !769

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !215 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !216 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !794
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !794 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !159 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !772

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.gc, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !773

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.gb, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !156 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [3 x i8], ptr %.sink.i.i.i, i64 %i.ee ; 3 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !28
  %i.el = sext i32 %i.dw to i64
  %i.em = mul i64 %i.eb, %i.el
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.em
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.en = sext i32 %i.dy to i64
  %i.eo = getelementptr inbounds [3 x i8], ptr %.sink.i6.i.i, i64 %i.en ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !28
  %i.eu = zext i8 %i.eg to i32
  %i.ev = zext i8 %i.ep to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev                ; 2 uses
  %i.ex = mul nsw i32 %i.ew, %i.ew
  %i.ey = zext i8 %i.ei to i32
  %i.ez = zext i8 %i.er to i32
  %i.fa = sub nsw i32 %i.ey, %i.ez                ; 2 uses
  %i.fb = mul nsw i32 %i.fa, %i.fa
  %i.fc = add nuw nsw i32 %i.fb, %i.ex
  %i.fd = zext i8 %i.ek to i32
  %i.fe = zext i8 %i.et to i32
  %i.ff = sub nsw i32 %i.fd, %i.fe                ; 2 uses
  %i.fg = mul nsw i32 %i.ff, %i.ff
  %i.fh = add nuw nsw i32 %i.fc, %i.fg            ; 2 uses
  %i.fi = load i32, ptr %i.g, align 4, !tbaa !201
  %i.fj = mul nsw i32 %i.fi, %.084.i
  %i.fk = sext i32 %i.fj to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fk ; 2 uses
  %i.fl = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fm = add nsw i32 %i.fh, %i.fl
  store i32 %i.fm, ptr %gep.i, align 4, !tbaa !91
  %i.fn = load i32, ptr %i.as, align 4, !tbaa !216
  %i.fo = add nsw i32 %i.fn, %.04776.i
  %i.fp = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !795
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !795 ; 2 uses
  %i.fs = mul nsw i32 %i.fq, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ft
  %i.fv = mul nsw i32 %i.fr, %.084.i
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !91
  %i.ga = add nsw i32 %i.fz, %i.fh
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !91
  %i.gb = add nsw i32 %.04776.i, 1
  %i.gc = load i32, ptr %i.as, align 4, !tbaa !216 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.gc
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !776

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !159
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.gd = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.ge = add nsw i32 %i.gd, -1
  %i.gf = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !796
  %i.gg = mul nsw i32 %i.gf, %i.ge
  %i.gh = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !796 ; 2 uses
  %i.gi = mul nsw i32 %i.gg, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.gj
  %i.gl = mul nsw i32 %i.gh, %.084.i
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !91
  %i.gq = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !797
  %i.gr = mul nsw i32 %i.gq, %.084.i
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i
  store i32 %i.gp, ptr %i.gu, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.d, align 8, !tbaa !158 ; 3 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i, %i.gw
  br i1 %i.gx, label %bb.m, label %._crit_edge83.i, !llvm.loop !781

bb.n:                                             ; preds = %bb.p
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gz = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.s, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1183, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.hb = load i32, ptr %i.ar, align 8, !tbaa !156 ; 2 uses
  %i.hc = add nsw i32 %i.hb, %i.bj                ; 3 uses
  %i.hd = sub nsw i32 %i.hc, %i.bz
  %i.he = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.hf = load i64, ptr %i.av, align 8            ; 4 uses
  %i.hg = load i32, ptr %i.d, align 8, !tbaa !158 ; 4 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph156, label %.loopexit

.lr.ph156:                                        ; preds = %bb.q
  %i.hi = add nsw i32 %i.hb, %i.cb                ; 2 uses
  %i.hj = sub i32 %i.hi, %i.bz
  %i.hk = load i32, ptr %i.as, align 4, !tbaa !216 ; 4 uses
  %i.hl = add i32 %i.hj, %i.hk
  %i.hm = load i32, ptr %i.at, align 4, !tbaa !195
  %i.hn = icmp slt i32 %i.hm, 2                   ; 2 uses
  %i.ho = add nsw i32 %i.hc, %i.hk
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul i64 %i.hf, %i.hp
  %.sink.idx.i114 = select i1 %i.hn, i64 0, i64 %i.hq
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i114
  %i.hr = add nsw i32 %i.hi, %i.hk
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [3 x i8], ptr %.sink.i115, i64 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !28
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !28
  %i.hy = load i8, ptr %i.ht, align 1, !tbaa !28
  %i.hz = xor i32 %i.hk, -1
  %i.ia = add i32 %i.hc, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul i64 %i.hf, %i.ib
  %.sink.idx.i = select i1 %i.hn, i64 0, i64 %i.ic
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i
  %i.id = getelementptr inbounds [3 x i8], ptr %.sink.i, i64 %i.hs ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !28
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !28
  %i.ii = load i8, ptr %i.id, align 1, !tbaa !28
  %i.ij = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ik = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.il = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.im = zext i8 %i.hy to i32                    ; 2 uses
  %i.in = zext i8 %i.hx to i32                    ; 2 uses
  %i.io = zext i8 %i.hv to i32                    ; 2 uses
  %i.ip = zext i8 %i.ii to i32                    ; 2 uses
  %i.iq = zext i8 %i.ih to i32                    ; 2 uses
  %i.ir = zext i8 %i.if to i32                    ; 2 uses
  %i.is = sext i32 %i.hl to i64                   ; 7 uses
  %wide.trip.count = zext nneg i32 %i.hg to i64   ; 5 uses
  %i.it = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ij, i64 %i.it
  %scevgep269.a = getelementptr i8, ptr %i.ik, i64 %i.it
  %scevgep271.a = getelementptr i8, ptr %i.il, i64 %i.it
  %i.iu = mul nsw i64 %i.is, 3                    ; 2 uses
  %scevgep273.a = getelementptr i8, ptr %i.he, i64 %i.iu
  %i.iv = add nsw i64 %i.is, %wide.trip.count
  %i.iw = mul nsw i64 %i.iv, 3                    ; 2 uses
  %scevgep275.a = getelementptr i8, ptr %i.he, i64 %i.iw
  %scevgep277 = getelementptr i8, ptr %i.he, i64 %i.iu
  %scevgep279 = getelementptr i8, ptr %i.he, i64 %i.iw
  %min.iters.check = icmp ult i32 %i.hg, 12
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.im, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert312 = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat313 = shufflevector <4 x i32> %broadcast.splatinsert312, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert314 = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %broadcast.splat315 = shufflevector <4 x i32> %broadcast.splatinsert314, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert316 = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %broadcast.splat317 = shufflevector <4 x i32> %broadcast.splatinsert316, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %i.iq, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat321 = shufflevector <4 x i32> %broadcast.splatinsert320, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph156, %._crit_edge
  %.091154 = phi i32 [ 0, %.lr.ph156 ], [ %i.oo, %._crit_edge ] ; 5 uses
  %i.ix = load i32, ptr %i.g, align 4, !tbaa !201
  %i.iy = mul i32 %i.ix, %.091154
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.ij, i64 %i.iz ; 6 uses
  %i.jb = load i32, ptr %i.q, align 4, !tbaa !206
  %i.jc = mul nsw i32 %i.jb, %.1183
  %i.jd = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.je = mul nsw i32 %i.jc, %i.jd
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.jf
  %i.jh = mul nsw i32 %i.jd, %.091154
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ji ; 6 uses
  %i.jk = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.jl = mul i32 %i.jk, %i.cb
  %i.jm = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.jn = mul i32 %i.jl, %i.jm
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.jo
  %i.jq = mul nsw i32 %i.jm, %.091154
  %i.jr = sext i32 %i.jq to i64                   ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jr ; 6 uses
  %i.jt = load i32, ptr %i.as, align 4, !tbaa !216 ; 2 uses
  %i.ju = xor i32 %i.jt, -1
  %i.jv = add i32 %.091154, %i.hd                 ; 2 uses
  %i.jw = add i32 %i.jv, %i.ju
  %i.jx = sext i32 %i.jw to i64
  %i.jy = mul i64 %i.hf, %i.jx                    ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.jy ; 5 uses
  %i.ka = add i32 %i.jv, %i.jt
  %i.kb = sext i32 %i.ka to i64
  %i.kc = mul i64 %i.hf, %i.kb                    ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.kc ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ke = shl nsw i64 %i.iz, 2
  %scevgep268 = getelementptr i8, ptr %scevgep, i64 %i.ke ; 4 uses
  %i.kf = add nsw i64 %i.jf, %i.ji
  %i.kg = shl nsw i64 %i.kf, 2
  %scevgep270 = getelementptr i8, ptr %scevgep269.a, i64 %i.kg ; 4 uses
  %i.kh = add nsw i64 %i.jo, %i.jr
  %i.ki = shl nsw i64 %i.kh, 2
  %scevgep272 = getelementptr i8, ptr %scevgep271.a, i64 %i.ki ; 4 uses
  %scevgep274 = getelementptr i8, ptr %scevgep273.a, i64 %i.kc ; 3 uses
  %scevgep276 = getelementptr i8, ptr %scevgep275.a, i64 %i.kc ; 3 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277, i64 %i.jy ; 3 uses
  %scevgep280 = getelementptr i8, ptr %scevgep279, i64 %i.jy ; 3 uses
  %bound0 = icmp ult ptr %i.ja, %scevgep270
  %bound1 = icmp ult ptr %i.jj, %scevgep268
  %found.conflict = and i1 %bound0, %bound1
  %bound0281 = icmp ult ptr %i.ja, %scevgep272
  %bound1282 = icmp ult ptr %i.js, %scevgep268
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx = or i1 %found.conflict, %found.conflict283
  %bound0284 = icmp ult ptr %i.ja, %scevgep276
  %bound1285 = icmp ult ptr %scevgep274, %scevgep268
  %found.conflict286 = and i1 %bound0284, %bound1285
  %conflict.rdx287 = or i1 %conflict.rdx, %found.conflict286
  %bound0288 = icmp ult ptr %i.ja, %scevgep280
  %bound1289 = icmp ult ptr %scevgep278, %scevgep268
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx287, %found.conflict290
  %bound0292 = icmp ult ptr %i.jj, %scevgep272
  %bound1293 = icmp ult ptr %i.js, %scevgep270
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %i.jj, %scevgep276
  %bound1297 = icmp ult ptr %scevgep274, %scevgep270
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.jj, %scevgep280
  %bound1301 = icmp ult ptr %scevgep278, %scevgep270
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %i.js, %scevgep276
  %bound1305 = icmp ult ptr %scevgep274, %scevgep272
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %i.js, %scevgep280
  %bound1309 = icmp ult ptr %scevgep278, %scevgep272
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  br i1 %conflict.rdx311, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.kj = or disjoint i64 %index, 1
  %i.kk = or disjoint i64 %index, 2
  %i.kl = or disjoint i64 %index, 3
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !tbaa !91, !alias.scope !798, !noalias !799
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index ; 4 uses
  %wide.load322 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !91, !alias.scope !800, !noalias !801
  %i.ko = sub nsw <4 x i32> %wide.load322, %wide.load
  store <4 x i32> %i.ko, ptr %i.kn, align 4, !tbaa !91, !alias.scope !800, !noalias !801
  %i.kp = add nsw i64 %index, %i.is               ; 2 uses
  %i.kq = add nsw i64 %i.kj, %i.is                ; 2 uses
  %i.kr = add nsw i64 %i.kk, %i.is                ; 2 uses
  %i.ks = add nsw i64 %i.kl, %i.is                ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index ; 2 uses
  %wide.load323 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !91, !alias.scope !802, !noalias !803
  %i.ku = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.kp ; 3 uses
  %i.kv = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.kq ; 3 uses
  %i.kw = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.kr ; 3 uses
  %i.kx = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.ks ; 3 uses
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !28, !alias.scope !804
  %i.kz = load i8, ptr %i.kv, align 1, !tbaa !28, !alias.scope !804
  %i.la = load i8, ptr %i.kw, align 1, !tbaa !28, !alias.scope !804
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !28, !alias.scope !804
  %i.lc = insertelement <4 x i8> poison, i8 %i.ky, i64 0
  %i.ld = insertelement <4 x i8> %i.lc, i8 %i.kz, i64 1
  %i.le = insertelement <4 x i8> %i.ld, i8 %i.la, i64 2
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  %i.lk = load i8, ptr %i.lg, align 1, !tbaa !28, !alias.scope !804
  %i.ll = load i8, ptr %i.lh, align 1, !tbaa !28, !alias.scope !804
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !28, !alias.scope !804
  %i.ln = load i8, ptr %i.lj, align 1, !tbaa !28, !alias.scope !804
  %i.lo = insertelement <4 x i8> poison, i8 %i.lk, i64 0
  %i.lp = insertelement <4 x i8> %i.lo, i8 %i.ll, i64 1
  %i.lq = insertelement <4 x i8> %i.lp, i8 %i.lm, i64 2
  %i.lr = insertelement <4 x i8> %i.lq, i8 %i.ln, i64 3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.lw = load i8, ptr %i.ls, align 1, !tbaa !28, !alias.scope !804
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !28, !alias.scope !804
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !28, !alias.scope !804
  %i.lz = load i8, ptr %i.lv, align 1, !tbaa !28, !alias.scope !804
  %i.ma = insertelement <4 x i8> poison, i8 %i.lw, i64 0
  %i.mb = insertelement <4 x i8> %i.ma, i8 %i.lx, i64 1
  %i.mc = insertelement <4 x i8> %i.mb, i8 %i.ly, i64 2
  %i.md = insertelement <4 x i8> %i.mc, i8 %i.lz, i64 3
  %i.me = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.kp ; 3 uses
  %i.mf = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.kq ; 3 uses
  %i.mg = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.kr ; 3 uses
  %i.mh = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.ks ; 3 uses
  %i.mi = load i8, ptr %i.me, align 1, !tbaa !28, !alias.scope !805
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !28, !alias.scope !805
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !28, !alias.scope !805
  %i.ml = load i8, ptr %i.mh, align 1, !tbaa !28, !alias.scope !805
  %i.mm = insertelement <4 x i8> poison, i8 %i.mi, i64 0
  %i.mn = insertelement <4 x i8> %i.mm, i8 %i.mj, i64 1
  %i.mo = insertelement <4 x i8> %i.mn, i8 %i.mk, i64 2
  %i.mp = insertelement <4 x i8> %i.mo, i8 %i.ml, i64 3
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mu = load i8, ptr %i.mq, align 1, !tbaa !28, !alias.scope !805
  %i.mv = load i8, ptr %i.mr, align 1, !tbaa !28, !alias.scope !805
  %i.mw = load i8, ptr %i.ms, align 1, !tbaa !28, !alias.scope !805
  %i.mx = load i8, ptr %i.mt, align 1, !tbaa !28, !alias.scope !805
  %i.my = insertelement <4 x i8> poison, i8 %i.mu, i64 0
  %i.mz = insertelement <4 x i8> %i.my, i8 %i.mv, i64 1
  %i.na = insertelement <4 x i8> %i.mz, i8 %i.mw, i64 2
  %i.nb = insertelement <4 x i8> %i.na, i8 %i.mx, i64 3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.ng = load i8, ptr %i.nc, align 1, !tbaa !28, !alias.scope !805
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !28, !alias.scope !805
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !28, !alias.scope !805
  %i.nj = load i8, ptr %i.nf, align 1, !tbaa !28, !alias.scope !805
  %i.nk = insertelement <4 x i8> poison, i8 %i.ng, i64 0
  %i.nl = insertelement <4 x i8> %i.nk, i8 %i.nh, i64 1
  %i.nm = insertelement <4 x i8> %i.nl, i8 %i.ni, i64 2
  %i.nn = insertelement <4 x i8> %i.nm, i8 %i.nj, i64 3
  %i.no = zext <4 x i8> %i.mp to <4 x i32>
  %i.np = sub nsw <4 x i32> %broadcast.splat, %i.no ; 2 uses
  %i.nq = mul nsw <4 x i32> %i.np, %i.np
  %i.nr = zext <4 x i8> %i.nb to <4 x i32>
  %i.ns = sub nsw <4 x i32> %broadcast.splat313, %i.nr ; 2 uses
  %i.nt = mul nsw <4 x i32> %i.ns, %i.ns
  %i.nu = zext <4 x i8> %i.nn to <4 x i32>
  %i.nv = sub nsw <4 x i32> %broadcast.splat315, %i.nu ; 2 uses
  %i.nw = mul nsw <4 x i32> %i.nv, %i.nv
  %i.nx = zext <4 x i8> %i.lf to <4 x i32>
  %i.ny = sub nsw <4 x i32> %broadcast.splat317, %i.nx ; 2 uses
  %i.nz = zext <4 x i8> %i.lr to <4 x i32>
  %i.oa = sub nsw <4 x i32> %broadcast.splat319, %i.nz ; 2 uses
  %i.ob = zext <4 x i8> %i.md to <4 x i32>
  %i.oc = sub nsw <4 x i32> %broadcast.splat321, %i.ob ; 2 uses
  %i.od = mul nsw <4 x i32> %i.ny, %i.ny
  %i.oe = mul nsw <4 x i32> %i.oa, %i.oa
  %i.of = mul nsw <4 x i32> %i.oc, %i.oc
  %i.og = add nuw nsw <4 x i32> %i.oe, %i.od
  %i.oh = add nuw nsw <4 x i32> %i.og, %i.of
  %i.oi = add <4 x i32> %i.nq, %wide.load323
  %i.oj = add <4 x i32> %i.oi, %i.nt
  %i.ok = add <4 x i32> %i.oj, %i.nw
  %i.ol = sub <4 x i32> %i.ok, %i.oh              ; 3 uses
  store <4 x i32> %i.ol, ptr %i.km, align 4, !tbaa !91, !alias.scope !798, !noalias !799
  %wide.load324 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !91, !alias.scope !800, !noalias !801
  %i.om = add nsw <4 x i32> %i.ol, %wide.load324
  store <4 x i32> %i.om, ptr %i.kn, align 4, !tbaa !91, !alias.scope !800, !noalias !801
  store <4 x i32> %i.ol, ptr %i.kt, align 4, !tbaa !91, !alias.scope !802, !noalias !803
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !788

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.oo = add nuw nsw i32 %.091154, 1             ; 2 uses
  %exitcond201.not = icmp eq i32 %i.oo, %i.hg
  br i1 %exitcond201.not, label %.loopexit, label %.lr.ph, !llvm.loop !789

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv ; 3 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !91
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv ; 4 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !91
  %i.ot = sub nsw i32 %i.os, %i.oq
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !91
  %i.ou = add nsw i64 %indvars.iv, %i.is          ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !91
  %i.ox = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.ou ; 3 uses
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !28
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !28
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !28
  %i.pd = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.ou ; 3 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !28
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !28
  %i.pj = zext i8 %i.pe to i32
  %i.pk = sub nsw i32 %i.im, %i.pj                ; 2 uses
  %i.pl = mul nsw i32 %i.pk, %i.pk
  %i.pm = zext i8 %i.pg to i32
  %i.pn = sub nsw i32 %i.in, %i.pm                ; 2 uses
  %i.po = mul nsw i32 %i.pn, %i.pn
  %i.pp = zext i8 %i.pi to i32
  %i.pq = sub nsw i32 %i.io, %i.pp                ; 2 uses
  %i.pr = mul nsw i32 %i.pq, %i.pq
  %i.ps = zext i8 %i.oy to i32
  %i.pt = sub nsw i32 %i.ip, %i.ps                ; 2 uses
  %i.pu = zext i8 %i.pa to i32
  %i.pv = sub nsw i32 %i.iq, %i.pu                ; 2 uses
  %i.pw = zext i8 %i.pc to i32
  %i.px = sub nsw i32 %i.ir, %i.pw                ; 2 uses
  %.neg.i.neg.i.neg = mul nsw i32 %i.pt, %i.pt
  %.neg10.i.neg.i.neg = mul nsw i32 %i.pv, %i.pv
  %.neg12.i.neg.i.neg = mul nsw i32 %i.px, %i.px
  %reass.add = add nuw nsw i32 %.neg10.i.neg.i.neg, %.neg.i.neg.i.neg
  %reass.add146 = add nuw nsw i32 %reass.add, %.neg12.i.neg.i.neg
  %i.py = add i32 %i.pl, %i.ow
  %i.pz = add i32 %i.py, %i.po
  %i.qa = add i32 %i.pz, %i.pr
  %i.qb = sub i32 %i.qa, %reass.add146            ; 2 uses
  store i32 %i.qb, ptr %i.op, align 4, !tbaa !91
  %i.qc = load i32, ptr %i.or, align 4, !tbaa !91
  %i.qd = add nsw i32 %i.qb, %i.qc
  store i32 %i.qd, ptr %i.or, align 4, !tbaa !91
  %i.qe = load i32, ptr %i.op, align 4, !tbaa !91
  store i32 %i.qe, ptr %i.ov, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !790

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.qf = add nsw i32 %.1183, 1
  %i.qg = load i32, ptr %i.m, align 4, !tbaa !159
  %i.qh = srem i32 %i.qf, %i.qg
  %.pre = load i32, ptr %i.d, align 8, !tbaa !158
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.qi = phi i32 [ %.pre, %.loopexit ], [ %i.gv, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.qh, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.qj = icmp sgt i32 %i.qi, 0
  br i1 %i.qj, label %.lr.ph174, label %._crit_edge175

.lr.ph174:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.qk = load i32, ptr %i.ar, align 8, !tbaa !156 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.qk
  %i.ql = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.qm = load i64, ptr %i.av, align 8, !tbaa !82
  %i.qn = load ptr, ptr %2, align 8, !tbaa !203
  %i.qo = load i32, ptr %i.g, align 4, !tbaa !201
  %i.qp = add nsw i32 %i.cc, %i.qk
  %i.qq = sext i32 %i.qp to i64
  %i.qr = sext i32 %i.qo to i64
  %wide.trip.count213 = zext nneg i32 %i.qi to i64 ; 2 uses
  %.pre224 = load i32, ptr %i.aw, align 8, !tbaa !160
  %.pre225 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep258 = getelementptr [3 x i8], ptr %i.ql, i64 %i.qq
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %.lr.ph174, %._crit_edge163
  %indvars.iv210 = phi i64 [ 0, %.lr.ph174 ], [ %indvars.iv.next211, %._crit_edge163 ] ; 3 uses
  %.lcssa168182 = phi i32 [ 0, %.lr.ph174 ], [ %i.rt, %._crit_edge163 ]
  %.lcssa166179 = phi i32 [ 0, %.lr.ph174 ], [ %i.rq, %._crit_edge163 ]
  %.sroa.0124.1172 = phi i32 [ 0, %.lr.ph174 ], [ %i.ru, %._crit_edge163 ]
  %.lcssa158170171 = phi i32 [ 0, %.lr.ph174 ], [ %i.rn, %._crit_edge163 ]
  %i.qs = trunc nuw nsw i64 %indvars.iv210 to i32
  %.reass = add i32 %invariant.op, %i.qs
  %i.qt = sext i32 %.reass to i64
  %i.qu = mul i64 %i.qm, %i.qt
  %i.qv = mul nsw i64 %indvars.iv210, %i.qr
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.qv
  %gep259 = getelementptr i8, ptr %invariant.gep258, i64 %i.qu
  br label %bb.r

._crit_edge163:                                   ; preds = %bb.r
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond214.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count213
  br i1 %exitcond214.not, label %._crit_edge175, label %.lr.ph162, !llvm.loop !791

bb.r:                                             ; preds = %.lr.ph162, %bb.r
  %indvars.iv205 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next206, %bb.r ] ; 3 uses
  %i.qx = phi i32 [ %.lcssa168182, %.lr.ph162 ], [ %i.rt, %bb.r ]
  %i.qy = phi i32 [ %.lcssa166179, %.lr.ph162 ], [ %i.rq, %bb.r ]
  %.sroa.0124.2159 = phi i32 [ %.sroa.0124.1172, %.lr.ph162 ], [ %i.ru, %bb.r ]
  %i.qz = phi i32 [ %.lcssa158170171, %.lr.ph162 ], [ %i.rn, %bb.r ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv205
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !91
  %i.rc = ashr i32 %i.rb, %.pre224
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.pre225, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !91 ; 4 uses
  %gep = getelementptr [3 x i8], ptr %gep259, i64 %indvars.iv205 ; 3 uses
  %i.rg = load i8, ptr %gep, align 1, !tbaa !28
  %i.rh = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !28
  %i.rj = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !28
  %i.rl = zext i8 %i.rg to i32
  %i.rm = mul nsw i32 %i.rf, %i.rl
  %i.rn = add nsw i32 %i.qz, %i.rm                ; 3 uses
  %i.ro = zext i8 %i.ri to i32
  %i.rp = mul nsw i32 %i.rf, %i.ro
  %i.rq = add nsw i32 %i.qy, %i.rp                ; 3 uses
  %i.rr = zext i8 %i.rk to i32
  %i.rs = mul nsw i32 %i.rf, %i.rr
  %i.rt = add nsw i32 %i.qx, %i.rs                ; 3 uses
  %i.ru = add nsw i32 %i.rf, %.sroa.0124.2159     ; 3 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count213
  br i1 %exitcond209.not, label %._crit_edge163, label %bb.r, !llvm.loop !792

._crit_edge175:                                   ; preds = %._crit_edge163, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2249 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge163 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rq, %._crit_edge163 ]
  %.sroa.9.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rt, %._crit_edge163 ]
  %.lcssa158170.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rn, %._crit_edge163 ]
  %.sroa.0124.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.ru, %._crit_edge163 ] ; 4 uses
  %i.rv = sdiv i32 %.sroa.0124.1.lcssa, 2         ; 3 uses
  %i.rw = add i32 %.lcssa158170.lcssa, %i.rv
  %i.rx = udiv i32 %i.rw, %.sroa.0124.1.lcssa
  %i.ry = add i32 %.sroa.5.0, %i.rv
  %i.rz = udiv i32 %i.ry, %.sroa.0124.1.lcssa
  %i.sa = add i32 %.sroa.9.0, %i.rv
  %i.sb = udiv i32 %i.sa, %.sroa.0124.1.lcssa
  %i.sc = call i32 @llvm.smax.i32(i32 %i.rx, i32 0)
  %i.sd = call i32 @llvm.umin.i32(i32 %i.sc, i32 255)
  %i.se = trunc nuw i32 %i.sd to i8
  %i.sf = call i32 @llvm.smax.i32(i32 %i.rz, i32 0)
  %i.sg = call i32 @llvm.umin.i32(i32 %i.sf, i32 255)
  %i.sh = trunc nuw i32 %i.sg to i8
  %i.si = call i32 @llvm.smax.i32(i32 %i.sb, i32 0)
  %i.sj = call i32 @llvm.umin.i32(i32 %i.si, i32 255)
  %i.sk = trunc nuw i32 %i.sj to i8
  %i.sl = load ptr, ptr %i.ay, align 8, !tbaa !161, !nonnull !130, !align !131 ; 3 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 4
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !195
  %i.so = icmp slt i32 %i.sn, 2
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sl, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !194
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sl, i64 128
  %i.ss = load i64, ptr %i.sr, align 8
  %i.st = mul i64 %i.ss, %indvars.iv218
  %.sink.idx.i116 = select i1 %i.so, i64 0, i64 %i.st
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.sq, i64 %.sink.idx.i116
  %i.su = getelementptr inbounds nuw [3 x i8], ptr %.sink.i117, i64 %indvars.iv215 ; 3 uses
  store i8 %i.se, ptr %i.su, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 1
  store i8 %i.sh, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.su, i64 2
  store i8 %i.sk, ptr %.sroa.6.0..sroa_idx, align 1
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %i.sv = load ptr, ptr %i.aa, align 8, !tbaa !157, !nonnull !130, !align !131 ; 2 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 12
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !191
  %i.sy = sext i32 %i.sx to i64
  %i.sz = icmp slt i64 %indvars.iv.next216, %i.sy
  br i1 %i.sz, label %bb.k, label %._crit_edge187, !llvm.loop !793

bb.s:                                             ; preds = %bb.n
  %i.ta = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ta) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.t, %bb.s, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gy, %bb.n ], [ %i.gy, %bb.s ], [ %i.gy, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.tc = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.td = trunc nuw i8 %i.tc to i1
  br i1 %i.td, label %bb.u, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.u:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.te = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.tf = icmp eq ptr %i.te, null
  br i1 %i.tf, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.te) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.v, %bb.u, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.u ], [ %.pn107.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.tg = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.th = trunc nuw i8 %i.tg to i1
  br i1 %i.th, label %bb.w, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.w:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.ti = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.tj = icmp eq ptr %i.ti, null
  br i1 %i.tj, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ti) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij11DistSquarediE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !158  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge96

.preheader.preheader:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !156  ; 2 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !215  ; 2 uses
  %i.j = sub i32 %i.g, %i.i
  %i.k = add nsw i32 %i.f, %2
  %i.l = load i32, ptr %i.a, align 4, !tbaa !216
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %5, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = sext i32 %i.m to i64
  %i.w = load ptr, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = sub i32 %i.m, %i.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = sext i32 %i.z to i64
  %i.ac = sext i32 %i.j to i64
end_hunk_1
begin_hunk_2_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !62
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !62
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !62
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !176  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !177  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !176  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !175, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !176 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit112 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit112:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not204 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not204, label %.preheader159.lr.ph, label %._crit_edge207

.preheader159.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !175, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader159.preheader, label %._crit_edge207

.preheader159.preheader:                          ; preds = %.preheader159.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader159

.preheader159:                                    ; preds = %.preheader159.preheader, %._crit_edge202
  %i.be = phi ptr [ %i.az, %.preheader159.preheader ], [ %i.by, %._crit_edge202 ] ; 2 uses
  %indvars.iv234 = phi i64 [ %i.bd, %.preheader159.preheader ], [ %indvars.iv.next235, %._crit_edge202 ] ; 4 uses
  %.094205 = phi i32 [ -1, %.preheader159.preheader ], [ %.1.lcssa, %._crit_edge202 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph201, label %._crit_edge202

.lr.ph201:                                        ; preds = %.preheader159
  %i.bi = icmp eq i64 %indvars.iv234, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv234 to i32     ; 4 uses
  br label %bb.k

._crit_edge207:                                   ; preds = %._crit_edge202, %.preheader159.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge207
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge207, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit113

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit113
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit113, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit118

._crit_edge202:                                   ; preds = %._crit_edge187, %.preheader159
  %i.by = phi ptr [ %i.be, %.preheader159 ], [ %i.on, %._crit_edge187 ]
  %.1.lcssa = phi i32 [ %.094205, %.preheader159 ], [ %.2266, %._crit_edge187 ]
  %indvars.iv.next235 = add nsw i64 %indvars.iv234, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next235 to i32
  %exitcond237.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond237.not, label %._crit_edge207, label %.preheader159, !llvm.loop !887

bb.k:                                             ; preds = %.lr.ph201, %._crit_edge187
  %indvars.iv231 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next232, %._crit_edge187 ] ; 4 uses
  %.1198 = phi i32 [ %.094205, %.lr.ph201 ], [ %.2266, %._crit_edge187 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !219 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc nuw nsw i64 %indvars.iv231 to i32 ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv231, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !176
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge187

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.ge
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !888

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !177 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !219 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !220 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !906
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !906 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !177 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !891

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.fl, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !892

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fk, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !174 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.ee
  %i.eg = sext i32 %i.dw to i64
  %i.eh = mul i64 %i.eb, %i.eg
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.eh
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.ei = sext i32 %i.dy to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.sink.i6.i.i, i64 %i.ei
  %i.ek = load <4 x i8>, ptr %i.ef, align 1, !tbaa !28
  %i.el = load <4 x i8>, ptr %i.ej, align 1, !tbaa !28
  %i.em = zext <4 x i8> %i.ek to <4 x i32>
  %i.en = zext <4 x i8> %i.el to <4 x i32>
  %i.eo = sub nsw <4 x i32> %i.em, %i.en          ; 2 uses
  %i.ep = mul nsw <4 x i32> %i.eo, %i.eo
  %i.eq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ep) ; 2 uses
  %i.er = load i32, ptr %i.g, align 4, !tbaa !201
  %i.es = mul nsw i32 %i.er, %.084.i
  %i.et = sext i32 %i.es to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.et ; 2 uses
  %i.eu = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.ev = add nsw i32 %i.eq, %i.eu
  store i32 %i.ev, ptr %gep.i, align 4, !tbaa !91
  %i.ew = load i32, ptr %i.as, align 4, !tbaa !220
  %i.ex = add nsw i32 %i.ew, %.04776.i
  %i.ey = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !907
  %i.ez = mul nsw i32 %i.ey, %i.ex
  %i.fa = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !907 ; 2 uses
  %i.fb = mul nsw i32 %i.ez, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fc
  %i.fe = mul nsw i32 %i.fa, %.084.i
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !91
  %i.fj = add nsw i32 %i.fi, %i.eq
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !91
  %i.fk = add nsw i32 %.04776.i, 1
  %i.fl = load i32, ptr %i.as, align 4, !tbaa !220 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.fl
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !895

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !177
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fm = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.fn = add nsw i32 %i.fm, -1
  %i.fo = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !908
  %i.fp = mul nsw i32 %i.fo, %i.fn
  %i.fq = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !908 ; 2 uses
  %i.fr = mul nsw i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fs
  %i.fu = mul nsw i32 %i.fq, %.084.i
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !91
  %i.fz = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !909
  %i.ga = mul nsw i32 %i.fz, %.084.i
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  store i32 %i.fy, ptr %i.gd, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ge = load i32, ptr %i.d, align 8, !tbaa !176 ; 3 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next.i, %i.gf
  br i1 %i.gg, label %bb.m, label %._crit_edge83.i, !llvm.loop !900

bb.n:                                             ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gi = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.t, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1198, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gk = load i32, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %i.gl = add nsw i32 %i.gk, %i.bj                ; 3 uses
  %i.gm = sub nsw i32 %i.gl, %i.bz
  %i.gn = load ptr, ptr %i.au, align 8, !tbaa !194 ; 4 uses
  %i.go = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gp = load i32, ptr %i.d, align 8, !tbaa !176 ; 3 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph166, label %.loopexit

.lr.ph166:                                        ; preds = %bb.q
  %i.gr = add nsw i32 %i.gk, %i.cb                ; 2 uses
  %i.gs = sub i32 %i.gr, %i.bz
  %i.gt = load i32, ptr %i.as, align 4, !tbaa !220 ; 4 uses
  %i.gu = add nsw i32 %i.gs, %i.gt
  %i.gv = load i32, ptr %i.at, align 4, !tbaa !195
  %i.gw = icmp slt i32 %i.gv, 2                   ; 2 uses
  %i.gx = add nsw i32 %i.gl, %i.gt
  %i.gy = sext i32 %i.gx to i64
  %i.gz = mul i64 %i.go, %i.gy
  %.sink.idx.i114 = select i1 %i.gw, i64 0, i64 %i.gz
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sink.idx.i114
  %i.ha = add nsw i32 %i.gr, %i.gt
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [4 x i8], ptr %.sink.i115, i64 %i.hb ; 4 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 3
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !28
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !28
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !28
  %i.hj = load i8, ptr %i.hc, align 1, !tbaa !28
  %i.hk = xor i32 %i.gt, -1
  %i.hl = add i32 %i.gl, %i.hk
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul i64 %i.go, %i.hm
  %.sink.idx.i = select i1 %i.gw, i64 0, i64 %i.hn
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sink.idx.i
  %i.ho = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.hb ; 4 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 3
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !28
  %i.hr = getelementptr inbounds nuw i8, ptr %i.ho, i64 2
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !28
  %i.ht = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !28
  %i.hv = load i8, ptr %i.ho, align 1, !tbaa !28
  %i.hw = load ptr, ptr %2, align 8, !tbaa !203
  %i.hx = load ptr, ptr %3, align 8, !tbaa !209
  %i.hy = load ptr, ptr %4, align 8, !tbaa !209
  %i.hz = zext i8 %i.hj to i32
  %i.ia = zext i8 %i.hi to i32
  %i.ib = zext i8 %i.hg to i32
  %i.ic = zext i8 %i.he to i32
  %i.id = zext i8 %i.hv to i32
  %i.ie = zext i8 %i.hu to i32
  %i.if = zext i8 %i.hs to i32
  %i.ig = zext i8 %i.hq to i32
  %i.ih = sext i32 %i.gu to i64
  %wide.trip.count = zext nneg i32 %i.gp to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph166, %._crit_edge
  %.091164 = phi i32 [ 0, %.lr.ph166 ], [ %i.jp, %._crit_edge ] ; 5 uses
  %i.ii = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ij = mul nsw i32 %i.ii, %.091164
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.ik
  %i.im = load i32, ptr %i.q, align 4, !tbaa !206
  %i.in = mul nsw i32 %i.im, %.1198
  %i.io = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.ip = mul nsw i32 %i.in, %i.io
  %i.iq = sext i32 %i.ip to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.iq
  %i.is = mul nsw i32 %i.io, %.091164
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it
  %i.iv = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.iw = mul nsw i32 %i.iv, %i.cb
  %i.ix = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.iy = mul nsw i32 %i.iw, %i.ix
  %i.iz = sext i32 %i.iy to i64
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.iz
  %i.jb = mul nsw i32 %i.ix, %.091164
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jc
  %i.je = load i32, ptr %i.as, align 4, !tbaa !220 ; 2 uses
  %i.jf = xor i32 %i.je, -1
  %i.jg = add i32 %.091164, %i.gm                 ; 2 uses
  %i.jh = add i32 %i.jg, %i.jf
  %i.ji = sext i32 %i.jh to i64
  %i.jj = mul i64 %i.go, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.jj
  %i.jl = add i32 %i.jg, %i.je
  %i.jm = sext i32 %i.jl to i64
  %i.jn = mul i64 %i.go, %i.jm
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.jn
  br label %bb.r

._crit_edge:                                      ; preds = %bb.r
  %i.jp = add nuw nsw i32 %.091164, 1             ; 2 uses
  %exitcond217.not = icmp eq i32 %i.jp, %i.gp
  br i1 %exitcond217.not, label %.loopexit, label %.lr.ph, !llvm.loop !901

bb.r:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 5 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv ; 3 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !91
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv ; 4 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !91
  %i.ju = sub nsw i32 %i.jt, %i.jr
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !91
  %i.jv = add nsw i64 %indvars.iv, %i.ih          ; 2 uses
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !91
  %i.jy = getelementptr inbounds [4 x i8], ptr %i.jk, i64 %i.jv ; 4 uses
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !28
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !28
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jy, i64 2
  %i.kd = load i8, ptr %i.kc, align 1, !tbaa !28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 3
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !28
  %i.kg = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.jv ; 4 uses
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !28
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !28
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kg, i64 2
  %i.kl = load i8, ptr %i.kk, align 1, !tbaa !28
  %i.km = getelementptr inbounds nuw i8, ptr %i.kg, i64 3
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !28
  %i.ko = zext i8 %i.kh to i32
  %i.kp = sub nsw i32 %i.hz, %i.ko                ; 2 uses
  %i.kq = mul nsw i32 %i.kp, %i.kp
  %i.kr = zext i8 %i.kj to i32
  %i.ks = sub nsw i32 %i.ia, %i.kr                ; 2 uses
  %i.kt = mul nsw i32 %i.ks, %i.ks
  %i.ku = zext i8 %i.kl to i32
  %i.kv = sub nsw i32 %i.ib, %i.ku                ; 2 uses
  %i.kw = mul nsw i32 %i.kv, %i.kv
  %i.kx = zext i8 %i.kn to i32
  %i.ky = sub nsw i32 %i.ic, %i.kx                ; 2 uses
  %i.kz = mul nsw i32 %i.ky, %i.ky
  %i.la = zext i8 %i.jz to i32
  %i.lb = sub nsw i32 %i.id, %i.la                ; 2 uses
  %i.lc = zext i8 %i.kb to i32
  %i.ld = sub nsw i32 %i.ie, %i.lc                ; 2 uses
  %i.le = zext i8 %i.kd to i32
  %i.lf = sub nsw i32 %i.if, %i.le                ; 2 uses
  %i.lg = zext i8 %i.kf to i32
  %i.lh = sub nsw i32 %i.ig, %i.lg                ; 2 uses
  %.neg.i.neg.i.neg = mul nsw i32 %i.lb, %i.lb
  %.neg13.i.neg.i.neg = mul nsw i32 %i.ld, %i.ld
  %.neg15.i.neg.i.neg = mul nsw i32 %i.lf, %i.lf
  %.neg17.i.neg.i.neg = mul nsw i32 %i.lh, %i.lh
  %reass.add = add nuw nsw i32 %.neg13.i.neg.i.neg, %.neg.i.neg.i.neg
  %reass.add155 = add nuw nsw i32 %reass.add, %.neg15.i.neg.i.neg
  %reass.add156 = add nuw nsw i32 %reass.add155, %.neg17.i.neg.i.neg
  %i.li = add i32 %i.kq, %i.jx
  %i.lj = add i32 %i.li, %i.kt
  %i.lk = add i32 %i.lj, %i.kw
  %i.ll = add i32 %i.lk, %i.kz
  %i.lm = sub i32 %i.ll, %reass.add156            ; 2 uses
  store i32 %i.lm, ptr %i.jq, align 4, !tbaa !91
  %i.ln = load i32, ptr %i.js, align 4, !tbaa !91
  %i.lo = add nsw i32 %i.lm, %i.ln
  store i32 %i.lo, ptr %i.js, align 4, !tbaa !91
  %i.lp = load i32, ptr %i.jq, align 4, !tbaa !91
  store i32 %i.lp, ptr %i.jw, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.r, !llvm.loop !902

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.lq = add nsw i32 %.1198, 1
  %i.lr = load i32, ptr %i.m, align 4, !tbaa !177
  %i.ls = srem i32 %i.lq, %i.lr
  %.pre = load i32, ptr %i.d, align 8, !tbaa !176
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.lt = phi i32 [ %.pre, %.loopexit ], [ %i.ge, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.ls, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.lu = icmp sgt i32 %i.lt, 0
  br i1 %i.lu, label %.lr.ph186, label %._crit_edge187

.lr.ph186:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.lv = load i32, ptr %i.ar, align 8, !tbaa !174 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.lv
  %i.lw = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.lx = load i64, ptr %i.av, align 8, !tbaa !82
  %i.ly = load ptr, ptr %2, align 8, !tbaa !203
  %i.lz = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ma = add nsw i32 %i.cc, %i.lv
  %i.mb = sext i32 %i.ma to i64
  %i.mc = sext i32 %i.lz to i64
  %wide.trip.count229 = zext nneg i32 %i.lt to i64 ; 2 uses
  %.pre241 = load i32, ptr %i.aw, align 8, !tbaa !178
  %.pre242 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep276 = getelementptr [4 x i8], ptr %i.lw, i64 %i.mb
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %.lr.ph186, %._crit_edge173
  %indvars.iv226 = phi i64 [ 0, %.lr.ph186 ], [ %indvars.iv.next227, %._crit_edge173 ] ; 3 uses
  %.lcssa180197 = phi i32 [ 0, %.lr.ph186 ], [ %i.nk, %._crit_edge173 ]
  %.lcssa178194 = phi i32 [ 0, %.lr.ph186 ], [ %i.nh, %._crit_edge173 ]
  %.lcssa176191 = phi i32 [ 0, %.lr.ph186 ], [ %i.ne, %._crit_edge173 ]
  %.sroa.0126.1184 = phi i32 [ 0, %.lr.ph186 ], [ %i.nl, %._crit_edge173 ]
  %.lcssa168182183 = phi i32 [ 0, %.lr.ph186 ], [ %i.nb, %._crit_edge173 ]
  %i.md = trunc nuw nsw i64 %indvars.iv226 to i32
  %.reass = add i32 %invariant.op, %i.md
  %i.me = sext i32 %.reass to i64
  %i.mf = mul i64 %i.lx, %i.me
  %i.mg = mul nsw i64 %indvars.iv226, %i.mc
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.ly, i64 %i.mg
  %gep277 = getelementptr i8, ptr %invariant.gep276, i64 %i.mf
  br label %bb.s

._crit_edge173:                                   ; preds = %bb.s
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count229
  br i1 %exitcond230.not, label %._crit_edge187, label %.lr.ph172, !llvm.loop !903

bb.s:                                             ; preds = %.lr.ph172, %bb.s
  %indvars.iv221 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next222, %bb.s ] ; 3 uses
  %i.mi = phi i32 [ %.lcssa180197, %.lr.ph172 ], [ %i.nk, %bb.s ]
  %i.mj = phi i32 [ %.lcssa178194, %.lr.ph172 ], [ %i.nh, %bb.s ]
  %i.mk = phi i32 [ %.lcssa176191, %.lr.ph172 ], [ %i.ne, %bb.s ]
  %.sroa.0126.2169 = phi i32 [ %.sroa.0126.1184, %.lr.ph172 ], [ %i.nl, %bb.s ]
  %i.ml = phi i32 [ %.lcssa168182183, %.lr.ph172 ], [ %i.nb, %bb.s ]
  %i.mm = getelementptr inbounds nuw [4 x i8], ptr %i.mh, i64 %indvars.iv221
  %i.mn = load i32, ptr %i.mm, align 4, !tbaa !91
  %i.mo = ashr i32 %i.mn, %.pre241
  %i.mp = sext i32 %i.mo to i64
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.pre242, i64 %i.mp
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !91 ; 5 uses
  %gep = getelementptr [4 x i8], ptr %gep277, i64 %indvars.iv221 ; 4 uses
  %i.ms = load i8, ptr %gep, align 1, !tbaa !28
  %i.mt = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !28
  %i.mv = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.mw = load i8, ptr %i.mv, align 1, !tbaa !28
  %i.mx = getelementptr inbounds nuw i8, ptr %gep, i64 3
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !28
  %i.mz = zext i8 %i.ms to i32
  %i.na = mul nsw i32 %i.mr, %i.mz
  %i.nb = add nsw i32 %i.ml, %i.na                ; 3 uses
  %i.nc = zext i8 %i.mu to i32
  %i.nd = mul nsw i32 %i.mr, %i.nc
  %i.ne = add nsw i32 %i.mk, %i.nd                ; 3 uses
  %i.nf = zext i8 %i.mw to i32
  %i.ng = mul nsw i32 %i.mr, %i.nf
  %i.nh = add nsw i32 %i.mj, %i.ng                ; 3 uses
  %i.ni = zext i8 %i.my to i32
  %i.nj = mul nsw i32 %i.mr, %i.ni
  %i.nk = add nsw i32 %i.mi, %i.nj                ; 3 uses
  %i.nl = add nsw i32 %i.mr, %.sroa.0126.2169     ; 3 uses
  %indvars.iv.next222 = add nuw nsw i64 %indvars.iv221, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next222, %wide.trip.count229
  br i1 %exitcond225.not, label %._crit_edge173, label %bb.s, !llvm.loop !904

._crit_edge187:                                   ; preds = %._crit_edge173, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2266 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge173 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.ne, %._crit_edge173 ]
  %.sroa.9.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.nh, %._crit_edge173 ]
  %.sroa.13.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.nk, %._crit_edge173 ]
  %.lcssa168182.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.nb, %._crit_edge173 ]
  %.sroa.0126.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.nl, %._crit_edge173 ] ; 5 uses
  %i.nm = sdiv i32 %.sroa.0126.1.lcssa, 2         ; 4 uses
  %i.nn = add i32 %.lcssa168182.lcssa, %i.nm
  %i.no = udiv i32 %i.nn, %.sroa.0126.1.lcssa
  %i.np = add i32 %.sroa.5.0, %i.nm
  %i.nq = udiv i32 %i.np, %.sroa.0126.1.lcssa
  %i.nr = add i32 %.sroa.9.0, %i.nm
  %i.ns = udiv i32 %i.nr, %.sroa.0126.1.lcssa
  %i.nt = add i32 %.sroa.13.0, %i.nm
  %i.nu = udiv i32 %i.nt, %.sroa.0126.1.lcssa
  %i.nv = call i32 @llvm.smax.i32(i32 %i.no, i32 0)
  %i.nw = call i32 @llvm.umin.i32(i32 %i.nv, i32 255)
  %i.nx = call i32 @llvm.smax.i32(i32 %i.nq, i32 0)
  %i.ny = call i32 @llvm.umin.i32(i32 %i.nx, i32 255)
  %i.nz = call i32 @llvm.smax.i32(i32 %i.ns, i32 0)
  %i.oa = call i32 @llvm.umin.i32(i32 %i.nz, i32 255)
  %i.ob = call i32 @llvm.smax.i32(i32 %i.nu, i32 0)
  %i.oc = call i32 @llvm.umin.i32(i32 %i.ob, i32 255)
  %i.od = load ptr, ptr %i.ay, align 8, !tbaa !179, !nonnull !130, !align !131 ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !195
  %i.og = icmp slt i32 %i.of, 2
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !194
  %i.oj = getelementptr inbounds nuw i8, ptr %i.od, i64 128
  %i.ok = load i64, ptr %i.oj, align 8
  %i.ol = mul i64 %i.ok, %indvars.iv234
  %.sink.idx.i116 = select i1 %i.og, i64 0, i64 %i.ol
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.oi, i64 %.sink.idx.i116
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sink.i117, i64 %indvars.iv231
  %.sroa.7.0.insert.shift = shl nuw i32 %i.oc, 24
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %i.oa, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %i.ny, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.nw
  store i32 %.sroa.0.0.insert.insert, ptr %i.om, align 1
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %i.on = load ptr, ptr %i.aa, align 8, !tbaa !175, !nonnull !130, !align !131 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 12
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !191
  %i.oq = sext i32 %i.op to i64
  %i.or = icmp slt i64 %indvars.iv.next232, %i.oq
  br i1 %i.or, label %bb.k, label %._crit_edge202, !llvm.loop !905

bb.t:                                             ; preds = %bb.n
  %i.os = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.os) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.u, %bb.t, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gh, %bb.n ], [ %i.gh, %bb.t ], [ %i.gh, %bb.u ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.ou = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ov = trunc nuw i8 %i.ou to i1
  br i1 %i.ov, label %bb.v, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.v:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.ow = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.ow) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.w, %bb.v, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.v ], [ %.pn107.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.oy = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %bb.x, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.x:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.pa = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.pa) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij11DistSquarediE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !176  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge96

.preheader.preheader:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !174  ; 2 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !219  ; 2 uses
  %i.j = sub i32 %i.g, %i.i
  %i.k = add nsw i32 %i.f, %2
  %i.l = load i32, ptr %i.a, align 4, !tbaa !220
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %5, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !69
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !69
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !69
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !233  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !234  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !233  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !232, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !233 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit115 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit115:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not182 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not182, label %.preheader147.lr.ph, label %._crit_edge185

.preheader147.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit115
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !232, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader147.preheader, label %._crit_edge185

.preheader147.preheader:                          ; preds = %.preheader147.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.preheader, %._crit_edge180
  %i.be = phi ptr [ %i.az, %.preheader147.preheader ], [ %i.by, %._crit_edge180 ] ; 2 uses
  %indvars.iv210 = phi i64 [ %i.bd, %.preheader147.preheader ], [ %indvars.iv.next211, %._crit_edge180 ] ; 4 uses
  %.094183 = phi i32 [ -1, %.preheader147.preheader ], [ %.1.lcssa, %._crit_edge180 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %.preheader147
  %i.bi = icmp eq i64 %indvars.iv210, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv210 to i32     ; 4 uses
  br label %bb.k

._crit_edge185:                                   ; preds = %._crit_edge180, %.preheader147.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit115
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge185
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge185, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit116

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit116, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit116

_ZN2cv7Array3dIiED2Ev.exit116:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit116
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit116, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit122

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit121

._crit_edge180:                                   ; preds = %._crit_edge171, %.preheader147
  %i.by = phi ptr [ %i.be, %.preheader147 ], [ %i.rm, %._crit_edge171 ]
  %.1.lcssa = phi i32 [ %.094183, %.preheader147 ], [ %.2240, %._crit_edge171 ]
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next211 to i32
  %exitcond213.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond213.not, label %._crit_edge185, label %.preheader147, !llvm.loop !1056

bb.k:                                             ; preds = %.lr.ph179, %._crit_edge171
  %indvars.iv207 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next208, %._crit_edge171 ] ; 4 uses
  %.1176 = phi i32 [ %.094183, %.lr.ph179 ], [ %.2240, %._crit_edge171 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !272 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv207 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv207, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !233
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge171

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gm
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1057

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !234 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !272 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !273 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1082
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1082 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !234 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1060

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.ft, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1061

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fs, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !231 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [2 x i8], ptr %.sink.i.i.i, i64 %i.ee ; 2 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  %i.ej = sext i32 %i.dw to i64
  %i.ek = mul i64 %i.eb, %i.ej
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.ek
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.el = sext i32 %i.dy to i64
  %i.em = getelementptr inbounds [2 x i8], ptr %.sink.i6.i.i, i64 %i.el ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !28
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = zext i8 %i.eg to i32
  %i.er = zext i8 %i.en to i32
  %i.es = sub nsw i32 %i.eq, %i.er
  %i.et = call i32 @llvm.abs.i32(i32 %i.es, i1 true)
  %i.eu = zext i8 %i.ei to i32
  %i.ev = zext i8 %i.ep to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.ey = add nuw nsw i32 %i.ex, %i.et            ; 2 uses
  %i.ez = load i32, ptr %i.g, align 4, !tbaa !201
  %i.fa = mul nsw i32 %i.ez, %.084.i
  %i.fb = sext i32 %i.fa to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fb ; 2 uses
  %i.fc = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fd = add nsw i32 %i.ey, %i.fc
  store i32 %i.fd, ptr %gep.i, align 4, !tbaa !91
  %i.fe = load i32, ptr %i.as, align 4, !tbaa !273
  %i.ff = add nsw i32 %i.fe, %.04776.i
  %i.fg = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1083
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1083 ; 2 uses
  %i.fj = mul nsw i32 %i.fh, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fk
  %i.fm = mul nsw i32 %i.fi, %.084.i
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !91
  %i.fr = add nsw i32 %i.fq, %i.ey
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !91
  %i.fs = add nsw i32 %.04776.i, 1
  %i.ft = load i32, ptr %i.as, align 4, !tbaa !273 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.ft
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1064

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !234
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fu = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1084
  %i.fx = mul nsw i32 %i.fw, %i.fv
  %i.fy = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1084 ; 2 uses
  %i.fz = mul nsw i32 %i.fx, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ga
  %i.gc = mul nsw i32 %i.fy, %.084.i
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !91
  %i.gh = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1085
  %i.gi = mul nsw i32 %i.gh, %.084.i
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i
  store i32 %i.gg, ptr %i.gl, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gm = load i32, ptr %i.d, align 8, !tbaa !233 ; 3 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next.i, %i.gn
  br i1 %i.go, label %bb.m, label %._crit_edge83.i, !llvm.loop !1069

bb.n:                                             ; preds = %bb.p
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gq = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.r, label %_ZN2cv7Array3dIiED2Ev.exit121

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1176, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gs = load i32, ptr %i.ar, align 8, !tbaa !231 ; 2 uses
  %i.gt = add nsw i32 %i.gs, %i.bj                ; 3 uses
  %i.gu = sub nsw i32 %i.gt, %i.bz
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.gw = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gx = load i32, ptr %i.d, align 8, !tbaa !233 ; 4 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %bb.q
  %i.gz = add nsw i32 %i.gs, %i.cb                ; 2 uses
  %i.ha = sub i32 %i.gz, %i.bz
  %i.hb = load i32, ptr %i.as, align 4, !tbaa !273 ; 4 uses
  %i.hc = add i32 %i.ha, %i.hb
  %i.hd = load i32, ptr %i.at, align 4, !tbaa !195
  %i.he = icmp slt i32 %i.hd, 2                   ; 2 uses
  %i.hf = add nsw i32 %i.gt, %i.hb
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.gw, %i.hg
  %.sink.idx.i117 = select i1 %i.he, i64 0, i64 %i.hh
  %.sink.i118 = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i117
  %i.hi = add nsw i32 %i.gz, %i.hb
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [2 x i8], ptr %.sink.i118, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !28
  %i.hn = load i8, ptr %i.hk, align 1, !tbaa !28
  %i.ho = xor i32 %i.hb, -1
  %i.hp = add i32 %i.gt, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = mul i64 %i.gw, %i.hq
  %.sink.idx.i = select i1 %i.he, i64 0, i64 %i.hr
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i
  %i.hs = getelementptr inbounds [2 x i8], ptr %.sink.i, i64 %i.hj ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 1
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !28
  %i.hv = load i8, ptr %i.hs, align 1, !tbaa !28
  %i.hw = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.hx = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.hy = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.hz = zext i8 %i.hn to i32                    ; 2 uses
  %i.ia = zext i8 %i.hm to i32                    ; 2 uses
  %i.ib = zext i8 %i.hv to i32                    ; 2 uses
  %i.ic = zext i8 %i.hu to i32                    ; 2 uses
  %i.id = sext i32 %i.hc to i64                   ; 7 uses
  %wide.trip.count = zext nneg i32 %i.gx to i64   ; 5 uses
  %i.ie = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hw, i64 %i.ie
  %scevgep258.a = getelementptr i8, ptr %i.hx, i64 %i.ie
  %scevgep260.a = getelementptr i8, ptr %i.hy, i64 %i.ie
  %i.if = shl nsw i64 %i.id, 1                    ; 2 uses
  %scevgep262.a = getelementptr i8, ptr %i.gv, i64 %i.if
  %i.ig = add nsw i64 %i.id, %wide.trip.count
  %i.ih = shl nsw i64 %i.ig, 1                    ; 2 uses
  %scevgep264.a = getelementptr i8, ptr %i.gv, i64 %i.ih
  %scevgep266 = getelementptr i8, ptr %i.gv, i64 %i.if
  %scevgep268 = getelementptr i8, ptr %i.gv, i64 %i.ih
  %min.iters.check = icmp ult i32 %i.gx, 8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat302 = shufflevector <4 x i32> %broadcast.splatinsert301, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert303 = insertelement <4 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat304 = shufflevector <4 x i32> %broadcast.splatinsert303, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert305 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat306 = shufflevector <4 x i32> %broadcast.splatinsert305, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph154, %._crit_edge
  %.091152 = phi i32 [ 0, %.lr.ph154 ], [ %i.mt, %._crit_edge ] ; 5 uses
  %i.ii = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ij = mul i32 %i.ii, %.091152
  %i.ik = sext i32 %i.ij to i64                   ; 2 uses
  %i.il = getelementptr [4 x i8], ptr %i.hw, i64 %i.ik ; 6 uses
  %i.im = load i32, ptr %i.q, align 4, !tbaa !206
  %i.in = mul nsw i32 %i.im, %.1176
  %i.io = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.ip = mul nsw i32 %i.in, %i.io
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.iq
  %i.is = mul nsw i32 %i.io, %.091152
  %i.it = sext i32 %i.is to i64                   ; 2 uses
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.ir, i64 %i.it ; 6 uses
  %i.iv = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.iw = mul i32 %i.iv, %i.cb
  %i.ix = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.iy = mul i32 %i.iw, %i.ix
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.iz
  %i.jb = mul nsw i32 %i.ix, %.091152
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ja, i64 %i.jc ; 6 uses
  %i.je = load i32, ptr %i.as, align 4, !tbaa !273 ; 2 uses
  %i.jf = xor i32 %i.je, -1
  %i.jg = add i32 %.091152, %i.gu                 ; 2 uses
  %i.jh = add i32 %i.jg, %i.jf
  %i.ji = sext i32 %i.jh to i64
  %i.jj = mul i64 %i.gw, %i.ji                    ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jj ; 5 uses
  %i.jl = add i32 %i.jg, %i.je
  %i.jm = sext i32 %i.jl to i64
  %i.jn = mul i64 %i.gw, %i.jm                    ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jn ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jp = shl nsw i64 %i.ik, 2
  %scevgep257 = getelementptr i8, ptr %scevgep, i64 %i.jp ; 4 uses
  %i.jq = add nsw i64 %i.iq, %i.it
  %i.jr = shl nsw i64 %i.jq, 2
  %scevgep259 = getelementptr i8, ptr %scevgep258.a, i64 %i.jr ; 4 uses
  %i.js = add nsw i64 %i.iz, %i.jc
  %i.jt = shl nsw i64 %i.js, 2
  %scevgep261 = getelementptr i8, ptr %scevgep260.a, i64 %i.jt ; 4 uses
  %scevgep263 = getelementptr i8, ptr %scevgep262.a, i64 %i.jn ; 3 uses
  %scevgep265 = getelementptr i8, ptr %scevgep264.a, i64 %i.jn ; 3 uses
  %scevgep267 = getelementptr i8, ptr %scevgep266, i64 %i.jj ; 3 uses
  %scevgep269 = getelementptr i8, ptr %scevgep268, i64 %i.jj ; 3 uses
  %bound0 = icmp ult ptr %i.il, %scevgep259
  %bound1 = icmp ult ptr %i.iu, %scevgep257
  %found.conflict = and i1 %bound0, %bound1
  %bound0270 = icmp ult ptr %i.il, %scevgep261
  %bound1271 = icmp ult ptr %i.jd, %scevgep257
  %found.conflict272 = and i1 %bound0270, %bound1271
  %conflict.rdx = or i1 %found.conflict, %found.conflict272
  %bound0273 = icmp ult ptr %i.il, %scevgep265
  %bound1274 = icmp ult ptr %scevgep263, %scevgep257
  %found.conflict275 = and i1 %bound0273, %bound1274
  %conflict.rdx276 = or i1 %conflict.rdx, %found.conflict275
  %bound0277 = icmp ult ptr %i.il, %scevgep269
  %bound1278 = icmp ult ptr %scevgep267, %scevgep257
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx280 = or i1 %conflict.rdx276, %found.conflict279
  %bound0281 = icmp ult ptr %i.iu, %scevgep261
  %bound1282 = icmp ult ptr %i.jd, %scevgep259
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx280, %found.conflict283
  %bound0285 = icmp ult ptr %i.iu, %scevgep265
  %bound1286 = icmp ult ptr %scevgep263, %scevgep259
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %i.iu, %scevgep269
  %bound1290 = icmp ult ptr %scevgep267, %scevgep259
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %i.jd, %scevgep265
  %bound1294 = icmp ult ptr %scevgep263, %scevgep261
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %i.jd, %scevgep269
  %bound1298 = icmp ult ptr %scevgep267, %scevgep261
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  br i1 %conflict.rdx300, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.ju = or disjoint i64 %index, 1
  %i.jv = or disjoint i64 %index, 2
  %i.jw = or disjoint i64 %index, 3
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jx, align 4, !tbaa !91, !alias.scope !1086, !noalias !1087
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %index ; 4 uses
  %wide.load307 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !91, !alias.scope !1088, !noalias !1089
  %i.jz = sub nsw <4 x i32> %wide.load307, %wide.load
  store <4 x i32> %i.jz, ptr %i.jy, align 4, !tbaa !91, !alias.scope !1088, !noalias !1089
  %i.ka = add nsw i64 %index, %i.id               ; 2 uses
  %i.kb = add nsw i64 %i.ju, %i.id                ; 2 uses
  %i.kc = add nsw i64 %i.jv, %i.id                ; 2 uses
  %i.kd = add nsw i64 %i.jw, %i.id                ; 2 uses
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %index ; 2 uses
  %wide.load308 = load <4 x i32>, ptr %i.ke, align 4, !tbaa !91, !alias.scope !1090, !noalias !1091
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.ka ; 2 uses
  %i.kg = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kb ; 2 uses
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kc ; 2 uses
  %i.ki = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.kd ; 2 uses
  %i.kj = load i8, ptr %i.kf, align 1, !tbaa !28, !alias.scope !1092
  %i.kk = load i8, ptr %i.kg, align 1, !tbaa !28, !alias.scope !1092
  %i.kl = load i8, ptr %i.kh, align 1, !tbaa !28, !alias.scope !1092
  %i.km = load i8, ptr %i.ki, align 1, !tbaa !28, !alias.scope !1092
  %i.kn = insertelement <4 x i8> poison, i8 %i.kj, i64 0
  %i.ko = insertelement <4 x i8> %i.kn, i8 %i.kk, i64 1
  %i.kp = insertelement <4 x i8> %i.ko, i8 %i.kl, i64 2
  %i.kq = insertelement <4 x i8> %i.kp, i8 %i.km, i64 3
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kg, i64 1
  %i.kt = getelementptr inbounds nuw i8, ptr %i.kh, i64 1
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 1
  %i.kv = load i8, ptr %i.kr, align 1, !tbaa !28, !alias.scope !1092
  %i.kw = load i8, ptr %i.ks, align 1, !tbaa !28, !alias.scope !1092
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !28, !alias.scope !1092
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !28, !alias.scope !1092
  %i.kz = insertelement <4 x i8> poison, i8 %i.kv, i64 0
  %i.la = insertelement <4 x i8> %i.kz, i8 %i.kw, i64 1
  %i.lb = insertelement <4 x i8> %i.la, i8 %i.kx, i64 2
  %i.lc = insertelement <4 x i8> %i.lb, i8 %i.ky, i64 3
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.ka ; 2 uses
  %i.le = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.kb ; 2 uses
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.kc ; 2 uses
  %i.lg = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.kd ; 2 uses
  %i.lh = load i8, ptr %i.ld, align 1, !tbaa !28, !alias.scope !1093
  %i.li = load i8, ptr %i.le, align 1, !tbaa !28, !alias.scope !1093
  %i.lj = load i8, ptr %i.lf, align 1, !tbaa !28, !alias.scope !1093
  %i.lk = load i8, ptr %i.lg, align 1, !tbaa !28, !alias.scope !1093
  %i.ll = insertelement <4 x i8> poison, i8 %i.lh, i64 0
  %i.lm = insertelement <4 x i8> %i.ll, i8 %i.li, i64 1
  %i.ln = insertelement <4 x i8> %i.lm, i8 %i.lj, i64 2
  %i.lo = insertelement <4 x i8> %i.ln, i8 %i.lk, i64 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ld, i64 1
  %i.lq = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lf, i64 1
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lt = load i8, ptr %i.lp, align 1, !tbaa !28, !alias.scope !1093
  %i.lu = load i8, ptr %i.lq, align 1, !tbaa !28, !alias.scope !1093
  %i.lv = load i8, ptr %i.lr, align 1, !tbaa !28, !alias.scope !1093
  %i.lw = load i8, ptr %i.ls, align 1, !tbaa !28, !alias.scope !1093
  %i.lx = insertelement <4 x i8> poison, i8 %i.lt, i64 0
  %i.ly = insertelement <4 x i8> %i.lx, i8 %i.lu, i64 1
  %i.lz = insertelement <4 x i8> %i.ly, i8 %i.lv, i64 2
  %i.ma = insertelement <4 x i8> %i.lz, i8 %i.lw, i64 3
  %i.mb = zext <4 x i8> %i.lo to <4 x i32>
  %i.mc = sub nsw <4 x i32> %broadcast.splat, %i.mb
  %i.md = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mc, i1 true)
  %i.me = zext <4 x i8> %i.ma to <4 x i32>
  %i.mf = sub nsw <4 x i32> %broadcast.splat302, %i.me
  %i.mg = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mf, i1 true)
  %i.mh = zext <4 x i8> %i.kq to <4 x i32>
  %i.mi = sub nsw <4 x i32> %broadcast.splat304, %i.mh
  %i.mj = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.mi, i1 true)
  %i.mk = zext <4 x i8> %i.lc to <4 x i32>
  %i.ml = sub nsw <4 x i32> %broadcast.splat306, %i.mk
  %i.mm = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ml, i1 true)
  %i.mn = add nuw nsw <4 x i32> %i.mj, %i.mm
  %i.mo = sub <4 x i32> %wide.load308, %i.mn
  %i.mp = add <4 x i32> %i.mo, %i.md
  %i.mq = add <4 x i32> %i.mp, %i.mg              ; 3 uses
  store <4 x i32> %i.mq, ptr %i.jx, align 4, !tbaa !91, !alias.scope !1086, !noalias !1087
  %wide.load309 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !91, !alias.scope !1088, !noalias !1089
  %i.mr = add nsw <4 x i32> %i.mq, %wide.load309
  store <4 x i32> %i.mr, ptr %i.jy, align 4, !tbaa !91, !alias.scope !1088, !noalias !1089
  store <4 x i32> %i.mq, ptr %i.ke, align 4, !tbaa !91, !alias.scope !1090, !noalias !1091
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !1076

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.mt = add nuw nsw i32 %.091152, 1             ; 2 uses
  %exitcond193.not = icmp eq i32 %i.mt, %i.gx
  br i1 %exitcond193.not, label %.loopexit, label %.lr.ph, !llvm.loop !1077

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %indvars.iv ; 3 uses
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !91
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %indvars.iv ; 4 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !91
  %i.my = sub nsw i32 %i.mx, %i.mv
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !91
  %i.mz = add nsw i64 %indvars.iv, %i.id          ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv ; 2 uses
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !91
  %i.nc = getelementptr inbounds [2 x i8], ptr %i.jk, i64 %i.mz ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !tbaa !28
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nc, i64 1
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !28
  %i.ng = getelementptr inbounds [2 x i8], ptr %i.jo, i64 %i.mz ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !28
  %i.ni = getelementptr inbounds nuw i8, ptr %i.ng, i64 1
  %i.nj = load i8, ptr %i.ni, align 1, !tbaa !28
  %i.nk = zext i8 %i.nh to i32
  %i.nl = sub nsw i32 %i.hz, %i.nk
  %i.nm = call i32 @llvm.abs.i32(i32 %i.nl, i1 true)
  %i.nn = zext i8 %i.nj to i32
  %i.no = sub nsw i32 %i.ia, %i.nn
  %i.np = call i32 @llvm.abs.i32(i32 %i.no, i1 true)
  %i.nq = zext i8 %i.nd to i32
  %i.nr = sub nsw i32 %i.ib, %i.nq
  %i.ns = call i32 @llvm.abs.i32(i32 %i.nr, i1 true)
  %i.nt = zext i8 %i.nf to i32
  %i.nu = sub nsw i32 %i.ic, %i.nt
  %i.nv = call i32 @llvm.abs.i32(i32 %i.nu, i1 true)
  %i.nw = add nuw nsw i32 %i.ns, %i.nv
  %.neg8.i = sub i32 %i.nb, %i.nw
  %i.nx = add i32 %.neg8.i, %i.nm
  %i.ny = add i32 %i.nx, %i.np                    ; 2 uses
  store i32 %i.ny, ptr %i.mu, align 4, !tbaa !91
  %i.nz = load i32, ptr %i.mw, align 4, !tbaa !91
  %i.oa = add nsw i32 %i.ny, %i.nz
  store i32 %i.oa, ptr %i.mw, align 4, !tbaa !91
  %i.ob = load i32, ptr %i.mu, align 4, !tbaa !91
  store i32 %i.ob, ptr %i.na, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1078

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.oc = add nsw i32 %.1176, 1
  %i.od = load i32, ptr %i.m, align 4, !tbaa !234
  %i.oe = srem i32 %i.oc, %i.od
  %.pre = load i32, ptr %i.d, align 8, !tbaa !233
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.of = phi i32 [ %.pre, %.loopexit ], [ %i.gm, %._crit_edge83.i ] ; 4 uses
  %.2 = phi i32 [ %i.oe, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.og = icmp sgt i32 %i.of, 0
  br i1 %i.og, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.oh = load i32, ptr %i.ar, align 8, !tbaa !231 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.oh
  %i.oi = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.oj = load i64, ptr %i.av, align 8, !tbaa !82
  %i.ok = load ptr, ptr %2, align 8, !tbaa !203
  %i.ol = load i32, ptr %i.g, align 4, !tbaa !201
  %i.om = add nsw i32 %i.cc, %i.oh
  %i.on = sext i32 %i.om to i64
  %i.oo = sext i32 %i.ol to i64
  %wide.trip.count205 = zext nneg i32 %i.of to i64 ; 3 uses
  %.pre215 = load i32, ptr %i.aw, align 8, !tbaa !235 ; 3 uses
  %.pre216 = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 3 uses
  %invariant.gep248 = getelementptr [2 x i8], ptr %i.oi, i64 %i.on
  %xtraiter = and i64 %wide.trip.count205, 1
  %i.op = icmp eq i32 %i.of, 1
  %unroll_iter = and i64 %wide.trip.count205, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod323 = trunc i32 %i.of to i1
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph170, %._crit_edge161
  %indvars.iv202 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next203, %._crit_edge161 ] ; 3 uses
  %.lcssa164175 = phi i32 [ 0, %.lr.ph170 ], [ %.lcssa315, %._crit_edge161 ] ; 2 uses
  %.sroa.0127.1168 = phi i32 [ 0, %.lr.ph170 ], [ %.lcssa314, %._crit_edge161 ] ; 2 uses
  %.lcssa156166167 = phi i32 [ 0, %.lr.ph170 ], [ %.lcssa316, %._crit_edge161 ] ; 2 uses
  %i.oq = trunc nuw nsw i64 %indvars.iv202 to i32
  %.reass = add i32 %invariant.op, %i.oq
  %i.or = sext i32 %.reass to i64
  %i.os = mul i64 %i.oj, %i.or
  %i.ot = mul nsw i64 %indvars.iv202, %i.oo
  %i.ou = getelementptr inbounds [4 x i8], ptr %i.ok, i64 %i.ot ; 3 uses
  %gep249 = getelementptr i8, ptr %invariant.gep248, i64 %i.os ; 3 uses
  br i1 %i.op, label %.epil.preheader, label %.lr.ph160.new

._crit_edge161.unr-lcssa:                         ; preds = %.lr.ph160.new
  br i1 %lcmp.mod.not, label %._crit_edge161, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge161.unr-lcssa, %.lr.ph160
  %indvars.iv197.epil.init = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next198.1, %._crit_edge161.unr-lcssa ] ; 2 uses
  %.epil.init = phi i32 [ %.lcssa164175, %.lr.ph160 ], [ %i.qr, %._crit_edge161.unr-lcssa ]
  %.sroa.0127.2157.epil.init = phi i32 [ %.sroa.0127.1168, %.lr.ph160 ], [ %i.qs, %._crit_edge161.unr-lcssa ]
  %.epil.init319 = phi i32 [ %.lcssa156166167, %.lr.ph160 ], [ %i.qo, %._crit_edge161.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod323)
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv197.epil.init
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !91
  %i.ox = ashr i32 %i.ow, %.pre215
  %i.oy = sext i32 %i.ox to i64
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %.pre216, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !91 ; 3 uses
  %gep.epil = getelementptr [2 x i8], ptr %gep249, i64 %indvars.iv197.epil.init ; 2 uses
  %i.pb = load i8, ptr %gep.epil, align 1, !tbaa !28
  %i.pc = getelementptr inbounds nuw i8, ptr %gep.epil, i64 1
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !28
  %i.pe = zext i8 %i.pb to i32
  %i.pf = mul nsw i32 %i.pa, %i.pe
  %i.pg = add nsw i32 %.epil.init319, %i.pf
  %i.ph = zext i8 %i.pd to i32
  %i.pi = mul nsw i32 %i.pa, %i.ph
  %i.pj = add nsw i32 %.epil.init, %i.pi
  %i.pk = add nsw i32 %i.pa, %.sroa.0127.2157.epil.init
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.unr-lcssa, %.epil.preheader
  %.lcssa316 = phi i32 [ %i.qo, %._crit_edge161.unr-lcssa ], [ %i.pg, %.epil.preheader ] ; 2 uses
  %.lcssa315 = phi i32 [ %i.qr, %._crit_edge161.unr-lcssa ], [ %i.pj, %.epil.preheader ] ; 2 uses
  %.lcssa314 = phi i32 [ %i.qs, %._crit_edge161.unr-lcssa ], [ %i.pk, %.epil.preheader ] ; 2 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge171, label %.lr.ph160, !llvm.loop !1079

.lr.ph160.new:                                    ; preds = %.lr.ph160, %.lr.ph160.new
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.1, %.lr.ph160.new ], [ 0, %.lr.ph160 ] ; 4 uses
  %i.pl = phi i32 [ %i.qr, %.lr.ph160.new ], [ %.lcssa164175, %.lr.ph160 ]
  %.sroa.0127.2157 = phi i32 [ %i.qs, %.lr.ph160.new ], [ %.sroa.0127.1168, %.lr.ph160 ]
  %i.pm = phi i32 [ %i.qo, %.lr.ph160.new ], [ %.lcssa156166167, %.lr.ph160 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph160.new ], [ 0, %.lr.ph160 ]
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv197
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !91
  %i.pp = ashr i32 %i.po, %.pre215
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.pre216, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !91 ; 3 uses
  %gep = getelementptr [2 x i8], ptr %gep249, i64 %indvars.iv197 ; 2 uses
  %i.pt = load i8, ptr %gep, align 1, !tbaa !28
  %i.pu = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !28
  %i.pw = zext i8 %i.pt to i32
  %i.px = mul nsw i32 %i.ps, %i.pw
  %i.py = add nsw i32 %i.pm, %i.px
  %i.pz = zext i8 %i.pv to i32
  %i.qa = mul nsw i32 %i.ps, %i.pz
  %i.qb = add nsw i32 %i.pl, %i.qa
  %i.qc = add nsw i32 %i.ps, %.sroa.0127.2157
  %indvars.iv.next198 = or disjoint i64 %indvars.iv197, 1 ; 2 uses
  %i.qd = getelementptr inbounds nuw [4 x i8], ptr %i.ou, i64 %indvars.iv.next198
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !91
  %i.qf = ashr i32 %i.qe, %.pre215
  %i.qg = sext i32 %i.qf to i64
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.pre216, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !91 ; 3 uses
  %gep.1 = getelementptr [2 x i8], ptr %gep249, i64 %indvars.iv.next198 ; 2 uses
  %i.qj = load i8, ptr %gep.1, align 1, !tbaa !28
  %i.qk = getelementptr inbounds nuw i8, ptr %gep.1, i64 1
  %i.ql = load i8, ptr %i.qk, align 1, !tbaa !28
  %i.qm = zext i8 %i.qj to i32
  %i.qn = mul nsw i32 %i.qi, %i.qm
  %i.qo = add nsw i32 %i.py, %i.qn                ; 3 uses
  %i.qp = zext i8 %i.ql to i32
  %i.qq = mul nsw i32 %i.qi, %i.qp
  %i.qr = add nsw i32 %i.qb, %i.qq                ; 3 uses
  %i.qs = add nsw i32 %i.qi, %i.qc                ; 3 uses
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge161.unr-lcssa, label %.lr.ph160.new, !llvm.loop !1080

._crit_edge171:                                   ; preds = %._crit_edge161, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2240 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge161 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa315, %._crit_edge161 ]
  %.lcssa156166.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa316, %._crit_edge161 ]
  %.sroa.0127.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi2EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa314, %._crit_edge161 ] ; 3 uses
  %i.qt = sdiv i32 %.sroa.0127.1.lcssa, 2         ; 2 uses
  %i.qu = add i32 %.lcssa156166.lcssa, %i.qt
  %i.qv = udiv i32 %i.qu, %.sroa.0127.1.lcssa
  %i.qw = add i32 %.sroa.5.0, %i.qt
  %i.qx = udiv i32 %i.qw, %.sroa.0127.1.lcssa
  %i.qy = call i32 @llvm.smax.i32(i32 %i.qv, i32 0)
  %i.qz = call i32 @llvm.umin.i32(i32 %i.qy, i32 255)
  %.sroa.0.0.insert.ext = trunc nuw nsw i32 %i.qz to i16
  %i.ra = call i32 @llvm.smax.i32(i32 %i.qx, i32 0)
  %i.rb = call i32 @llvm.umin.i32(i32 %i.ra, i32 255)
  %.sroa.5.0.insert.ext = trunc nuw nsw i32 %i.rb to i16
  %i.rc = load ptr, ptr %i.ay, align 8, !tbaa !236, !nonnull !130, !align !131 ; 3 uses
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 4
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !195
  %i.rf = icmp slt i32 %i.re, 2
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rc, i64 24
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !194
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rc, i64 128
  %i.rj = load i64, ptr %i.ri, align 8
  %i.rk = mul i64 %i.rj, %indvars.iv210
  %.sink.idx.i119 = select i1 %i.rf, i64 0, i64 %i.rk
  %.sink.i120 = getelementptr inbounds nuw i8, ptr %i.rh, i64 %.sink.idx.i119
  %i.rl = getelementptr inbounds nuw [2 x i8], ptr %.sink.i120, i64 %indvars.iv207
  %.sroa.5.0.insert.shift = shl nuw i16 %.sroa.5.0.insert.ext, 8
  %.sroa.0.0.insert.insert = or disjoint i16 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i16 %.sroa.0.0.insert.insert, ptr %i.rl, align 1
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.rm = load ptr, ptr %i.aa, align 8, !tbaa !232, !nonnull !130, !align !131 ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rm, i64 12
  %i.ro = load i32, ptr %i.rn, align 4, !tbaa !191
  %i.rp = sext i32 %i.ro to i64
  %i.rq = icmp slt i64 %indvars.iv.next208, %i.rp
  br i1 %i.rq, label %bb.k, label %._crit_edge180, !llvm.loop !1081

bb.r:                                             ; preds = %bb.n
  %i.rr = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.rs = icmp eq ptr %i.rr, null
  br i1 %i.rs, label %_ZN2cv7Array3dIiED2Ev.exit121, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.rr) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit121

_ZN2cv7Array3dIiED2Ev.exit121:                    ; preds = %bb.s, %bb.r, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gp, %bb.n ], [ %i.gp, %bb.r ], [ %i.gp, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.rt = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ru = trunc nuw i8 %i.rt to i1
  br i1 %i.ru, label %bb.t, label %_ZN2cv7Array3dIiED2Ev.exit122

bb.t:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit121
  %i.rv = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.rw = icmp eq ptr %i.rv, null
  br i1 %i.rw, label %_ZN2cv7Array3dIiED2Ev.exit122, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.rv) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit122

_ZN2cv7Array3dIiED2Ev.exit122:                    ; preds = %bb.u, %bb.t, %_ZN2cv7Array3dIiED2Ev.exit121, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit121 ], [ %.pn107.pn.pn, %bb.t ], [ %.pn107.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.rx = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.ry = trunc nuw i8 %i.rx to i1
  br i1 %i.ry, label %bb.v, label %_ZN2cv7Array2dIiED2Ev.exit123

bb.v:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit122
  %i.rz = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.sa = icmp eq ptr %i.rz, null
  br i1 %i.sa, label %_ZN2cv7Array2dIiED2Ev.exit123, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdaPv(ptr noundef nonnull %i.rz) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit123
end_hunk_3
begin_hunk_4_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !71
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !71
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !71
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !247  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !248  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !247  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !246, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !247 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit112 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit112:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not193 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not193, label %.preheader153.lr.ph, label %._crit_edge196

.preheader153.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !246, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader153.preheader, label %._crit_edge196

.preheader153.preheader:                          ; preds = %.preheader153.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.preheader, %._crit_edge191
  %i.be = phi ptr [ %i.az, %.preheader153.preheader ], [ %i.by, %._crit_edge191 ] ; 2 uses
  %indvars.iv222 = phi i64 [ %i.bd, %.preheader153.preheader ], [ %indvars.iv.next223, %._crit_edge191 ] ; 4 uses
  %.094194 = phi i32 [ -1, %.preheader153.preheader ], [ %.1.lcssa, %._crit_edge191 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.preheader153
  %i.bi = icmp eq i64 %indvars.iv222, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv222 to i32     ; 4 uses
  br label %bb.k

._crit_edge196:                                   ; preds = %._crit_edge191, %.preheader153.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge196
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge196, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit113

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit113
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit113, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit118

._crit_edge191:                                   ; preds = %._crit_edge179, %.preheader153
  %i.by = phi ptr [ %i.be, %.preheader153 ], [ %i.sy, %._crit_edge179 ]
  %.1.lcssa = phi i32 [ %.094194, %.preheader153 ], [ %.2253, %._crit_edge179 ]
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next223 to i32
  %exitcond225.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge196, label %.preheader153, !llvm.loop !1174

bb.k:                                             ; preds = %.lr.ph190, %._crit_edge179
  %indvars.iv219 = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next220, %._crit_edge179 ] ; 4 uses
  %.1187 = phi i32 [ %.094194, %.lr.ph190 ], [ %.2253, %._crit_edge179 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !276 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv219 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv219, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !247
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge179

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gv
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1175

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !248 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !276 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !277 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1200
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1200 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !248 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1178

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.gc, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1179

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.gb, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !245 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [3 x i8], ptr %.sink.i.i.i, i64 %i.ee ; 3 uses
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !28
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !28
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !28
  %i.el = sext i32 %i.dw to i64
  %i.em = mul i64 %i.eb, %i.el
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.em
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.en = sext i32 %i.dy to i64
  %i.eo = getelementptr inbounds [3 x i8], ptr %.sink.i6.i.i, i64 %i.en ; 3 uses
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !28
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !28
  %i.eu = zext i8 %i.eg to i32
  %i.ev = zext i8 %i.ep to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.ey = zext i8 %i.ei to i32
  %i.ez = zext i8 %i.er to i32
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = call i32 @llvm.abs.i32(i32 %i.fa, i1 true)
  %i.fc = add nuw nsw i32 %i.fb, %i.ex
  %i.fd = zext i8 %i.ek to i32
  %i.fe = zext i8 %i.et to i32
  %i.ff = sub nsw i32 %i.fd, %i.fe
  %i.fg = call i32 @llvm.abs.i32(i32 %i.ff, i1 true)
  %i.fh = add nuw nsw i32 %i.fc, %i.fg            ; 2 uses
  %i.fi = load i32, ptr %i.g, align 4, !tbaa !201
  %i.fj = mul nsw i32 %i.fi, %.084.i
  %i.fk = sext i32 %i.fj to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fk ; 2 uses
  %i.fl = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fm = add nsw i32 %i.fh, %i.fl
  store i32 %i.fm, ptr %gep.i, align 4, !tbaa !91
  %i.fn = load i32, ptr %i.as, align 4, !tbaa !277
  %i.fo = add nsw i32 %i.fn, %.04776.i
  %i.fp = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1201
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1201 ; 2 uses
  %i.fs = mul nsw i32 %i.fq, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ft
  %i.fv = mul nsw i32 %i.fr, %.084.i
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !91
  %i.ga = add nsw i32 %i.fz, %i.fh
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !91
  %i.gb = add nsw i32 %.04776.i, 1
  %i.gc = load i32, ptr %i.as, align 4, !tbaa !277 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.gc
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1182

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !248
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.gd = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.ge = add nsw i32 %i.gd, -1
  %i.gf = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1202
  %i.gg = mul nsw i32 %i.gf, %i.ge
  %i.gh = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1202 ; 2 uses
  %i.gi = mul nsw i32 %i.gg, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.gj
  %i.gl = mul nsw i32 %i.gh, %.084.i
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !91
  %i.gq = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1203
  %i.gr = mul nsw i32 %i.gq, %.084.i
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i
  store i32 %i.gp, ptr %i.gu, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.d, align 8, !tbaa !247 ; 3 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i, %i.gw
  br i1 %i.gx, label %bb.m, label %._crit_edge83.i, !llvm.loop !1187

bb.n:                                             ; preds = %bb.p
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gz = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.s, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1187, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.hb = load i32, ptr %i.ar, align 8, !tbaa !245 ; 2 uses
  %i.hc = add nsw i32 %i.hb, %i.bj                ; 3 uses
  %i.hd = sub nsw i32 %i.hc, %i.bz
  %i.he = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.hf = load i64, ptr %i.av, align 8            ; 4 uses
  %i.hg = load i32, ptr %i.d, align 8, !tbaa !247 ; 4 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %bb.q
  %i.hi = add nsw i32 %i.hb, %i.cb                ; 2 uses
  %i.hj = sub i32 %i.hi, %i.bz
  %i.hk = load i32, ptr %i.as, align 4, !tbaa !277 ; 4 uses
  %i.hl = add i32 %i.hj, %i.hk
  %i.hm = load i32, ptr %i.at, align 4, !tbaa !195
  %i.hn = icmp slt i32 %i.hm, 2                   ; 2 uses
  %i.ho = add nsw i32 %i.hc, %i.hk
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul i64 %i.hf, %i.hp
  %.sink.idx.i114 = select i1 %i.hn, i64 0, i64 %i.hq
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i114
  %i.hr = add nsw i32 %i.hi, %i.hk
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [3 x i8], ptr %.sink.i115, i64 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !28
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 1
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !28
  %i.hy = load i8, ptr %i.ht, align 1, !tbaa !28
  %i.hz = xor i32 %i.hk, -1
  %i.ia = add i32 %i.hc, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul i64 %i.hf, %i.ib
  %.sink.idx.i = select i1 %i.hn, i64 0, i64 %i.ic
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i
  %i.id = getelementptr inbounds [3 x i8], ptr %.sink.i, i64 %i.hs ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !28
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 1
  %i.ih = load i8, ptr %i.ig, align 1, !tbaa !28
  %i.ii = load i8, ptr %i.id, align 1, !tbaa !28
  %i.ij = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ik = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.il = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.im = zext i8 %i.hy to i32                    ; 2 uses
  %i.in = zext i8 %i.hx to i32                    ; 2 uses
  %i.io = zext i8 %i.hv to i32                    ; 2 uses
  %i.ip = zext i8 %i.ii to i32                    ; 2 uses
  %i.iq = zext i8 %i.ih to i32                    ; 2 uses
  %i.ir = zext i8 %i.if to i32                    ; 2 uses
  %i.is = sext i32 %i.hl to i64                   ; 7 uses
  %wide.trip.count = zext nneg i32 %i.hg to i64   ; 5 uses
  %i.it = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ij, i64 %i.it
  %scevgep273.a = getelementptr i8, ptr %i.ik, i64 %i.it
  %scevgep275.a = getelementptr i8, ptr %i.il, i64 %i.it
  %i.iu = mul nsw i64 %i.is, 3                    ; 2 uses
  %scevgep277.a = getelementptr i8, ptr %i.he, i64 %i.iu
  %i.iv = add nsw i64 %i.is, %wide.trip.count
  %i.iw = mul nsw i64 %i.iv, 3                    ; 2 uses
  %scevgep279.a = getelementptr i8, ptr %i.he, i64 %i.iw
  %scevgep281 = getelementptr i8, ptr %i.he, i64 %i.iu
  %scevgep283 = getelementptr i8, ptr %i.he, i64 %i.iw
  %min.iters.check = icmp ult i32 %i.hg, 8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.im, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert316 = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat317 = shufflevector <4 x i32> %broadcast.splatinsert316, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert318 = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %broadcast.splat319 = shufflevector <4 x i32> %broadcast.splatinsert318, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert320 = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %broadcast.splat321 = shufflevector <4 x i32> %broadcast.splatinsert320, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert322 = insertelement <4 x i32> poison, i32 %i.iq, i64 0
  %broadcast.splat323 = shufflevector <4 x i32> %broadcast.splatinsert322, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat325 = shufflevector <4 x i32> %broadcast.splatinsert324, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph160, %._crit_edge
  %.091158 = phi i32 [ 0, %.lr.ph160 ], [ %i.oo, %._crit_edge ] ; 5 uses
  %i.ix = load i32, ptr %i.g, align 4, !tbaa !201
  %i.iy = mul i32 %i.ix, %.091158
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.ij, i64 %i.iz ; 6 uses
  %i.jb = load i32, ptr %i.q, align 4, !tbaa !206
  %i.jc = mul nsw i32 %i.jb, %.1187
  %i.jd = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.je = mul nsw i32 %i.jc, %i.jd
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.jf
  %i.jh = mul nsw i32 %i.jd, %.091158
  %i.ji = sext i32 %i.jh to i64                   ; 2 uses
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.ji ; 6 uses
  %i.jk = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.jl = mul i32 %i.jk, %i.cb
  %i.jm = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.jn = mul i32 %i.jl, %i.jm
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.jo
  %i.jq = mul nsw i32 %i.jm, %.091158
  %i.jr = sext i32 %i.jq to i64                   ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %i.jp, i64 %i.jr ; 6 uses
  %i.jt = load i32, ptr %i.as, align 4, !tbaa !277 ; 2 uses
  %i.ju = xor i32 %i.jt, -1
  %i.jv = add i32 %.091158, %i.hd                 ; 2 uses
  %i.jw = add i32 %i.jv, %i.ju
  %i.jx = sext i32 %i.jw to i64
  %i.jy = mul i64 %i.hf, %i.jx                    ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.jy ; 5 uses
  %i.ka = add i32 %i.jv, %i.jt
  %i.kb = sext i32 %i.ka to i64
  %i.kc = mul i64 %i.hf, %i.kb                    ; 3 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.kc ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.ke = shl nsw i64 %i.iz, 2
  %scevgep272 = getelementptr i8, ptr %scevgep, i64 %i.ke ; 4 uses
  %i.kf = add nsw i64 %i.jf, %i.ji
  %i.kg = shl nsw i64 %i.kf, 2
  %scevgep274 = getelementptr i8, ptr %scevgep273.a, i64 %i.kg ; 4 uses
  %i.kh = add nsw i64 %i.jo, %i.jr
  %i.ki = shl nsw i64 %i.kh, 2
  %scevgep276 = getelementptr i8, ptr %scevgep275.a, i64 %i.ki ; 4 uses
  %scevgep278 = getelementptr i8, ptr %scevgep277.a, i64 %i.kc ; 3 uses
  %scevgep280 = getelementptr i8, ptr %scevgep279.a, i64 %i.kc ; 3 uses
  %scevgep282 = getelementptr i8, ptr %scevgep281, i64 %i.jy ; 3 uses
  %scevgep284 = getelementptr i8, ptr %scevgep283, i64 %i.jy ; 3 uses
  %bound0 = icmp ult ptr %i.ja, %scevgep274
  %bound1 = icmp ult ptr %i.jj, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  %bound0285 = icmp ult ptr %i.ja, %scevgep276
  %bound1286 = icmp ult ptr %i.js, %scevgep272
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx = or i1 %found.conflict, %found.conflict287
  %bound0288 = icmp ult ptr %i.ja, %scevgep280
  %bound1289 = icmp ult ptr %scevgep278, %scevgep272
  %found.conflict290 = and i1 %bound0288, %bound1289
  %conflict.rdx291 = or i1 %conflict.rdx, %found.conflict290
  %bound0292 = icmp ult ptr %i.ja, %scevgep284
  %bound1293 = icmp ult ptr %scevgep282, %scevgep272
  %found.conflict294 = and i1 %bound0292, %bound1293
  %conflict.rdx295 = or i1 %conflict.rdx291, %found.conflict294
  %bound0296 = icmp ult ptr %i.jj, %scevgep276
  %bound1297 = icmp ult ptr %i.js, %scevgep274
  %found.conflict298 = and i1 %bound0296, %bound1297
  %conflict.rdx299 = or i1 %conflict.rdx295, %found.conflict298
  %bound0300 = icmp ult ptr %i.jj, %scevgep280
  %bound1301 = icmp ult ptr %scevgep278, %scevgep274
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx299, %found.conflict302
  %bound0304 = icmp ult ptr %i.jj, %scevgep284
  %bound1305 = icmp ult ptr %scevgep282, %scevgep274
  %found.conflict306 = and i1 %bound0304, %bound1305
  %conflict.rdx307 = or i1 %conflict.rdx303, %found.conflict306
  %bound0308 = icmp ult ptr %i.js, %scevgep280
  %bound1309 = icmp ult ptr %scevgep278, %scevgep276
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx307, %found.conflict310
  %bound0312 = icmp ult ptr %i.js, %scevgep284
  %bound1313 = icmp ult ptr %scevgep282, %scevgep276
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  br i1 %conflict.rdx315, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.kj = or disjoint i64 %index, 1
  %i.kk = or disjoint i64 %index, 2
  %i.kl = or disjoint i64 %index, 3
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.km, align 4, !tbaa !91, !alias.scope !1204, !noalias !1205
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index ; 4 uses
  %wide.load326 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !91, !alias.scope !1206, !noalias !1207
  %i.ko = sub nsw <4 x i32> %wide.load326, %wide.load
  store <4 x i32> %i.ko, ptr %i.kn, align 4, !tbaa !91, !alias.scope !1206, !noalias !1207
  %i.kp = add nsw i64 %index, %i.is               ; 2 uses
  %i.kq = add nsw i64 %i.kj, %i.is                ; 2 uses
  %i.kr = add nsw i64 %i.kk, %i.is                ; 2 uses
  %i.ks = add nsw i64 %i.kl, %i.is                ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %index ; 2 uses
  %wide.load327 = load <4 x i32>, ptr %i.kt, align 4, !tbaa !91, !alias.scope !1208, !noalias !1209
  %i.ku = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.kp ; 3 uses
  %i.kv = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.kq ; 3 uses
  %i.kw = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.kr ; 3 uses
  %i.kx = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.ks ; 3 uses
  %i.ky = load i8, ptr %i.ku, align 1, !tbaa !28, !alias.scope !1210
  %i.kz = load i8, ptr %i.kv, align 1, !tbaa !28, !alias.scope !1210
  %i.la = load i8, ptr %i.kw, align 1, !tbaa !28, !alias.scope !1210
  %i.lb = load i8, ptr %i.kx, align 1, !tbaa !28, !alias.scope !1210
  %i.lc = insertelement <4 x i8> poison, i8 %i.ky, i64 0
  %i.ld = insertelement <4 x i8> %i.lc, i8 %i.kz, i64 1
  %i.le = insertelement <4 x i8> %i.ld, i8 %i.la, i64 2
  %i.lf = insertelement <4 x i8> %i.le, i8 %i.lb, i64 3
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 1
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kv, i64 1
  %i.li = getelementptr inbounds nuw i8, ptr %i.kw, i64 1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  %i.lk = load i8, ptr %i.lg, align 1, !tbaa !28, !alias.scope !1210
  %i.ll = load i8, ptr %i.lh, align 1, !tbaa !28, !alias.scope !1210
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !28, !alias.scope !1210
  %i.ln = load i8, ptr %i.lj, align 1, !tbaa !28, !alias.scope !1210
  %i.lo = insertelement <4 x i8> poison, i8 %i.lk, i64 0
  %i.lp = insertelement <4 x i8> %i.lo, i8 %i.ll, i64 1
  %i.lq = insertelement <4 x i8> %i.lp, i8 %i.lm, i64 2
  %i.lr = insertelement <4 x i8> %i.lq, i8 %i.ln, i64 3
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kv, i64 2
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kw, i64 2
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kx, i64 2
  %i.lw = load i8, ptr %i.ls, align 1, !tbaa !28, !alias.scope !1210
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !28, !alias.scope !1210
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !28, !alias.scope !1210
  %i.lz = load i8, ptr %i.lv, align 1, !tbaa !28, !alias.scope !1210
  %i.ma = insertelement <4 x i8> poison, i8 %i.lw, i64 0
  %i.mb = insertelement <4 x i8> %i.ma, i8 %i.lx, i64 1
  %i.mc = insertelement <4 x i8> %i.mb, i8 %i.ly, i64 2
  %i.md = insertelement <4 x i8> %i.mc, i8 %i.lz, i64 3
  %i.me = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.kp ; 3 uses
  %i.mf = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.kq ; 3 uses
  %i.mg = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.kr ; 3 uses
  %i.mh = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.ks ; 3 uses
  %i.mi = load i8, ptr %i.me, align 1, !tbaa !28, !alias.scope !1211
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !28, !alias.scope !1211
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !28, !alias.scope !1211
  %i.ml = load i8, ptr %i.mh, align 1, !tbaa !28, !alias.scope !1211
  %i.mm = insertelement <4 x i8> poison, i8 %i.mi, i64 0
  %i.mn = insertelement <4 x i8> %i.mm, i8 %i.mj, i64 1
  %i.mo = insertelement <4 x i8> %i.mn, i8 %i.mk, i64 2
  %i.mp = insertelement <4 x i8> %i.mo, i8 %i.ml, i64 3
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mu = load i8, ptr %i.mq, align 1, !tbaa !28, !alias.scope !1211
  %i.mv = load i8, ptr %i.mr, align 1, !tbaa !28, !alias.scope !1211
  %i.mw = load i8, ptr %i.ms, align 1, !tbaa !28, !alias.scope !1211
  %i.mx = load i8, ptr %i.mt, align 1, !tbaa !28, !alias.scope !1211
  %i.my = insertelement <4 x i8> poison, i8 %i.mu, i64 0
  %i.mz = insertelement <4 x i8> %i.my, i8 %i.mv, i64 1
  %i.na = insertelement <4 x i8> %i.mz, i8 %i.mw, i64 2
  %i.nb = insertelement <4 x i8> %i.na, i8 %i.mx, i64 3
  %i.nc = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.ng = load i8, ptr %i.nc, align 1, !tbaa !28, !alias.scope !1211
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !28, !alias.scope !1211
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !28, !alias.scope !1211
  %i.nj = load i8, ptr %i.nf, align 1, !tbaa !28, !alias.scope !1211
  %i.nk = insertelement <4 x i8> poison, i8 %i.ng, i64 0
  %i.nl = insertelement <4 x i8> %i.nk, i8 %i.nh, i64 1
  %i.nm = insertelement <4 x i8> %i.nl, i8 %i.ni, i64 2
  %i.nn = insertelement <4 x i8> %i.nm, i8 %i.nj, i64 3
  %i.no = zext <4 x i8> %i.mp to <4 x i32>
  %i.np = sub nsw <4 x i32> %broadcast.splat, %i.no
  %i.nq = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.np, i1 true)
  %i.nr = zext <4 x i8> %i.nb to <4 x i32>
  %i.ns = sub nsw <4 x i32> %broadcast.splat317, %i.nr
  %i.nt = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ns, i1 true)
  %i.nu = zext <4 x i8> %i.nn to <4 x i32>
  %i.nv = sub nsw <4 x i32> %broadcast.splat319, %i.nu
  %i.nw = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nv, i1 true)
  %i.nx = zext <4 x i8> %i.lf to <4 x i32>
  %i.ny = sub nsw <4 x i32> %broadcast.splat321, %i.nx
  %i.nz = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ny, i1 true)
  %i.oa = zext <4 x i8> %i.lr to <4 x i32>
  %i.ob = sub nsw <4 x i32> %broadcast.splat323, %i.oa
  %i.oc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ob, i1 true)
  %i.od = zext <4 x i8> %i.md to <4 x i32>
  %i.oe = sub nsw <4 x i32> %broadcast.splat325, %i.od
  %i.of = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oe, i1 true)
  %i.og = add nuw nsw <4 x i32> %i.nz, %i.oc
  %i.oh = add nuw nsw <4 x i32> %i.og, %i.of
  %i.oi = sub <4 x i32> %wide.load327, %i.oh
  %i.oj = add <4 x i32> %i.oi, %i.nq
  %i.ok = add <4 x i32> %i.oj, %i.nt
  %i.ol = add <4 x i32> %i.ok, %i.nw              ; 3 uses
  store <4 x i32> %i.ol, ptr %i.km, align 4, !tbaa !91, !alias.scope !1204, !noalias !1205
  %wide.load328 = load <4 x i32>, ptr %i.kn, align 4, !tbaa !91, !alias.scope !1206, !noalias !1207
  %i.om = add nsw <4 x i32> %i.ol, %wide.load328
  store <4 x i32> %i.om, ptr %i.kn, align 4, !tbaa !91, !alias.scope !1206, !noalias !1207
  store <4 x i32> %i.ol, ptr %i.kt, align 4, !tbaa !91, !alias.scope !1208, !noalias !1209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !1194

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.oo = add nuw nsw i32 %.091158, 1             ; 2 uses
  %exitcond205.not = icmp eq i32 %i.oo, %i.hg
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph, !llvm.loop !1195

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %indvars.iv ; 3 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !91
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv ; 4 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !91
  %i.ot = sub nsw i32 %i.os, %i.oq
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !91
  %i.ou = add nsw i64 %indvars.iv, %i.is          ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.js, i64 %indvars.iv ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !91
  %i.ox = getelementptr inbounds [3 x i8], ptr %i.jz, i64 %i.ou ; 3 uses
  %i.oy = load i8, ptr %i.ox, align 1, !tbaa !28
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.pa = load i8, ptr %i.oz, align 1, !tbaa !28
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !28
  %i.pd = getelementptr inbounds [3 x i8], ptr %i.kd, i64 %i.ou ; 3 uses
  %i.pe = load i8, ptr %i.pd, align 1, !tbaa !28
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pd, i64 1
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !28
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pd, i64 2
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !28
  %i.pj = zext i8 %i.pe to i32
  %i.pk = sub nsw i32 %i.im, %i.pj
  %i.pl = call i32 @llvm.abs.i32(i32 %i.pk, i1 true)
  %i.pm = zext i8 %i.pg to i32
  %i.pn = sub nsw i32 %i.in, %i.pm
  %i.po = call i32 @llvm.abs.i32(i32 %i.pn, i1 true)
  %i.pp = zext i8 %i.pi to i32
  %i.pq = sub nsw i32 %i.io, %i.pp
  %i.pr = call i32 @llvm.abs.i32(i32 %i.pq, i1 true)
  %i.ps = zext i8 %i.oy to i32
  %i.pt = sub nsw i32 %i.ip, %i.ps
  %i.pu = call i32 @llvm.abs.i32(i32 %i.pt, i1 true)
  %i.pv = zext i8 %i.pa to i32
  %i.pw = sub nsw i32 %i.iq, %i.pv
  %i.px = call i32 @llvm.abs.i32(i32 %i.pw, i1 true)
  %i.py = zext i8 %i.pc to i32
  %i.pz = sub nsw i32 %i.ir, %i.py
  %i.qa = call i32 @llvm.abs.i32(i32 %i.pz, i1 true)
  %i.qb = add nuw nsw i32 %i.pu, %i.px
  %i.qc = add nuw nsw i32 %i.qb, %i.qa
  %.neg11.i = sub i32 %i.ow, %i.qc
  %.neg13.i = add i32 %.neg11.i, %i.pl
  %i.qd = add i32 %.neg13.i, %i.po
  %i.qe = add i32 %i.qd, %i.pr                    ; 2 uses
  store i32 %i.qe, ptr %i.op, align 4, !tbaa !91
  %i.qf = load i32, ptr %i.or, align 4, !tbaa !91
  %i.qg = add nsw i32 %i.qe, %i.qf
  store i32 %i.qg, ptr %i.or, align 4, !tbaa !91
  %i.qh = load i32, ptr %i.op, align 4, !tbaa !91
  store i32 %i.qh, ptr %i.ov, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1196

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.qi = add nsw i32 %.1187, 1
  %i.qj = load i32, ptr %i.m, align 4, !tbaa !248
  %i.qk = srem i32 %i.qi, %i.qj
  %.pre = load i32, ptr %i.d, align 8, !tbaa !247
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.ql = phi i32 [ %.pre, %.loopexit ], [ %i.gv, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.qk, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.qm = icmp sgt i32 %i.ql, 0
  br i1 %i.qm, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.qn = load i32, ptr %i.ar, align 8, !tbaa !245 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.qn
  %i.qo = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.qp = load i64, ptr %i.av, align 8, !tbaa !82
  %i.qq = load ptr, ptr %2, align 8, !tbaa !203
  %i.qr = load i32, ptr %i.g, align 4, !tbaa !201
  %i.qs = add nsw i32 %i.cc, %i.qn
  %i.qt = sext i32 %i.qs to i64
  %i.qu = sext i32 %i.qr to i64
  %wide.trip.count217 = zext nneg i32 %i.ql to i64 ; 2 uses
  %.pre228 = load i32, ptr %i.aw, align 8, !tbaa !249
  %.pre229 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep262 = getelementptr [3 x i8], ptr %i.qo, i64 %i.qt
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph178, %._crit_edge167
  %indvars.iv214 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next215, %._crit_edge167 ] ; 3 uses
  %.lcssa172186 = phi i32 [ 0, %.lr.ph178 ], [ %i.rw, %._crit_edge167 ]
  %.lcssa170183 = phi i32 [ 0, %.lr.ph178 ], [ %i.rt, %._crit_edge167 ]
  %.sroa.0124.1176 = phi i32 [ 0, %.lr.ph178 ], [ %i.rx, %._crit_edge167 ]
  %.lcssa162174175 = phi i32 [ 0, %.lr.ph178 ], [ %i.rq, %._crit_edge167 ]
  %i.qv = trunc nuw nsw i64 %indvars.iv214 to i32
  %.reass = add i32 %invariant.op, %i.qv
  %i.qw = sext i32 %.reass to i64
  %i.qx = mul i64 %i.qp, %i.qw
  %i.qy = mul nsw i64 %indvars.iv214, %i.qu
  %i.qz = getelementptr inbounds [4 x i8], ptr %i.qq, i64 %i.qy
  %gep263 = getelementptr i8, ptr %invariant.gep262, i64 %i.qx
  br label %bb.r

._crit_edge167:                                   ; preds = %bb.r
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge179, label %.lr.ph166, !llvm.loop !1197

bb.r:                                             ; preds = %.lr.ph166, %bb.r
  %indvars.iv209 = phi i64 [ 0, %.lr.ph166 ], [ %indvars.iv.next210, %bb.r ] ; 3 uses
  %i.ra = phi i32 [ %.lcssa172186, %.lr.ph166 ], [ %i.rw, %bb.r ]
  %i.rb = phi i32 [ %.lcssa170183, %.lr.ph166 ], [ %i.rt, %bb.r ]
  %.sroa.0124.2163 = phi i32 [ %.sroa.0124.1176, %.lr.ph166 ], [ %i.rx, %bb.r ]
  %i.rc = phi i32 [ %.lcssa162174175, %.lr.ph166 ], [ %i.rq, %bb.r ]
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qz, i64 %indvars.iv209
  %i.re = load i32, ptr %i.rd, align 4, !tbaa !91
  %i.rf = ashr i32 %i.re, %.pre228
  %i.rg = sext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %.pre229, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !91 ; 4 uses
  %gep = getelementptr [3 x i8], ptr %gep263, i64 %indvars.iv209 ; 3 uses
  %i.rj = load i8, ptr %gep, align 1, !tbaa !28
  %i.rk = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.rl = load i8, ptr %i.rk, align 1, !tbaa !28
  %i.rm = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.rn = load i8, ptr %i.rm, align 1, !tbaa !28
  %i.ro = zext i8 %i.rj to i32
  %i.rp = mul nsw i32 %i.ri, %i.ro
  %i.rq = add nsw i32 %i.rc, %i.rp                ; 3 uses
  %i.rr = zext i8 %i.rl to i32
  %i.rs = mul nsw i32 %i.ri, %i.rr
  %i.rt = add nsw i32 %i.rb, %i.rs                ; 3 uses
  %i.ru = zext i8 %i.rn to i32
  %i.rv = mul nsw i32 %i.ri, %i.ru
  %i.rw = add nsw i32 %i.ra, %i.rv                ; 3 uses
  %i.rx = add nsw i32 %i.ri, %.sroa.0124.2163     ; 3 uses
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count217
  br i1 %exitcond213.not, label %._crit_edge167, label %bb.r, !llvm.loop !1198

._crit_edge179:                                   ; preds = %._crit_edge167, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2253 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge167 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rt, %._crit_edge167 ]
  %.sroa.9.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rw, %._crit_edge167 ]
  %.lcssa162174.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rq, %._crit_edge167 ]
  %.sroa.0124.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rx, %._crit_edge167 ] ; 4 uses
  %i.ry = sdiv i32 %.sroa.0124.1.lcssa, 2         ; 3 uses
  %i.rz = add i32 %.lcssa162174.lcssa, %i.ry
  %i.sa = udiv i32 %i.rz, %.sroa.0124.1.lcssa
  %i.sb = add i32 %.sroa.5.0, %i.ry
  %i.sc = udiv i32 %i.sb, %.sroa.0124.1.lcssa
  %i.sd = add i32 %.sroa.9.0, %i.ry
  %i.se = udiv i32 %i.sd, %.sroa.0124.1.lcssa
  %i.sf = call i32 @llvm.smax.i32(i32 %i.sa, i32 0)
  %i.sg = call i32 @llvm.umin.i32(i32 %i.sf, i32 255)
  %i.sh = trunc nuw i32 %i.sg to i8
  %i.si = call i32 @llvm.smax.i32(i32 %i.sc, i32 0)
  %i.sj = call i32 @llvm.umin.i32(i32 %i.si, i32 255)
  %i.sk = trunc nuw i32 %i.sj to i8
  %i.sl = call i32 @llvm.smax.i32(i32 %i.se, i32 0)
  %i.sm = call i32 @llvm.umin.i32(i32 %i.sl, i32 255)
  %i.sn = trunc nuw i32 %i.sm to i8
  %i.so = load ptr, ptr %i.ay, align 8, !tbaa !250, !nonnull !130, !align !131 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 4
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !195
  %i.sr = icmp slt i32 %i.sq, 2
  %i.ss = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !194
  %i.su = getelementptr inbounds nuw i8, ptr %i.so, i64 128
  %i.sv = load i64, ptr %i.su, align 8
  %i.sw = mul i64 %i.sv, %indvars.iv222
  %.sink.idx.i116 = select i1 %i.sr, i64 0, i64 %i.sw
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.st, i64 %.sink.idx.i116
  %i.sx = getelementptr inbounds nuw [3 x i8], ptr %.sink.i117, i64 %indvars.iv219 ; 3 uses
  store i8 %i.sh, ptr %i.sx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 1
  store i8 %i.sk, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sx, i64 2
  store i8 %i.sn, ptr %.sroa.6.0..sroa_idx, align 1
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.sy = load ptr, ptr %i.aa, align 8, !tbaa !246, !nonnull !130, !align !131 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 12
  %i.ta = load i32, ptr %i.sz, align 4, !tbaa !191
  %i.tb = sext i32 %i.ta to i64
  %i.tc = icmp slt i64 %indvars.iv.next220, %i.tb
  br i1 %i.tc, label %bb.k, label %._crit_edge191, !llvm.loop !1199

bb.s:                                             ; preds = %bb.n
  %i.td = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.te = icmp eq ptr %i.td, null
  br i1 %i.te, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.td) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.t, %bb.s, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gy, %bb.n ], [ %i.gy, %bb.s ], [ %i.gy, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.tf = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.tg = trunc nuw i8 %i.tf to i1
  br i1 %i.tg, label %bb.u, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.u:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.th = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.ti = icmp eq ptr %i.th, null
  br i1 %i.ti, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.th) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.v, %bb.u, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.u ], [ %.pn107.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.tj = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.tk = trunc nuw i8 %i.tj to i1
  br i1 %i.tk, label %bb.w, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.w:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.tl = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.tm = icmp eq ptr %i.tl, null
  br i1 %i.tm, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.tl) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi3EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !247  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge96

.preheader.preheader:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !245  ; 2 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !276  ; 2 uses
  %i.j = sub i32 %i.g, %i.i
  %i.k = add nsw i32 %i.f, %2
  %i.l = load i32, ptr %i.a, align 4, !tbaa !277
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %5, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = sext i32 %i.m to i64
  %i.w = load ptr, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = sub i32 %i.m, %i.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = sext i32 %i.z to i64
  %i.ac = sext i32 %i.j to i64
end_hunk_4
begin_hunk_5_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !73
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !73
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !73
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !261  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !262  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !261  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !260, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !261 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit112 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit112:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not209 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not209, label %.preheader164.lr.ph, label %._crit_edge212

.preheader164.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !260, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader164.preheader, label %._crit_edge212

.preheader164.preheader:                          ; preds = %.preheader164.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %._crit_edge207
  %i.be = phi ptr [ %i.az, %.preheader164.preheader ], [ %i.by, %._crit_edge207 ] ; 2 uses
  %indvars.iv239 = phi i64 [ %i.bd, %.preheader164.preheader ], [ %indvars.iv.next240, %._crit_edge207 ] ; 4 uses
  %.094210 = phi i32 [ -1, %.preheader164.preheader ], [ %.1.lcssa, %._crit_edge207 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader164
  %i.bi = icmp eq i64 %indvars.iv239, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv239 to i32     ; 4 uses
  br label %bb.k

._crit_edge212:                                   ; preds = %._crit_edge207, %.preheader164.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge212
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge212, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit113

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit113
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit113, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit118

._crit_edge207:                                   ; preds = %._crit_edge192, %.preheader164
  %i.by = phi ptr [ %i.be, %.preheader164 ], [ %i.ul, %._crit_edge192 ]
  %.1.lcssa = phi i32 [ %.094210, %.preheader164 ], [ %.2271, %._crit_edge192 ]
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next240 to i32
  %exitcond242.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond242.not, label %._crit_edge212, label %.preheader164, !llvm.loop !1292

bb.k:                                             ; preds = %.lr.ph206, %._crit_edge192
  %indvars.iv236 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next237, %._crit_edge192 ] ; 4 uses
  %.1203 = phi i32 [ %.094210, %.lr.ph206 ], [ %.2271, %._crit_edge192 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !280 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv236 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv236, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !261
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge192

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gf
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1293

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !262 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !280 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !281 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1318
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1318 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !262 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1296

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.fm, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1297

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fl, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !259 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.ee
  %i.eg = sext i32 %i.dw to i64
  %i.eh = mul i64 %i.eb, %i.eg
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.eh
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.ei = sext i32 %i.dy to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %.sink.i6.i.i, i64 %i.ei
  %i.ek = load <4 x i8>, ptr %i.ef, align 1, !tbaa !28
  %i.el = load <4 x i8>, ptr %i.ej, align 1, !tbaa !28
  %i.em = zext <4 x i8> %i.ek to <4 x i16>
  %i.en = zext <4 x i8> %i.el to <4 x i16>
  %i.eo = sub nsw <4 x i16> %i.em, %i.en
  %i.ep = call <4 x i16> @llvm.abs.v4i16(<4 x i16> %i.eo, i1 false)
  %i.eq = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.ep)
  %i.er = zext i16 %i.eq to i32                   ; 2 uses
  %i.es = load i32, ptr %i.g, align 4, !tbaa !201
  %i.et = mul nsw i32 %i.es, %.084.i
  %i.eu = sext i32 %i.et to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.eu ; 2 uses
  %i.ev = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.ew = add nsw i32 %i.ev, %i.er
  store i32 %i.ew, ptr %gep.i, align 4, !tbaa !91
  %i.ex = load i32, ptr %i.as, align 4, !tbaa !281
  %i.ey = add nsw i32 %i.ex, %.04776.i
  %i.ez = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1319
  %i.fa = mul nsw i32 %i.ez, %i.ey
  %i.fb = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1319 ; 2 uses
  %i.fc = mul nsw i32 %i.fa, %i.fb
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fd
  %i.ff = mul nsw i32 %i.fb, %.084.i
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fe, i64 %i.fg
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.fh, i64 %indvars.iv.i ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !91
  %i.fk = add nsw i32 %i.fj, %i.er
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !91
  %i.fl = add nsw i32 %.04776.i, 1
  %i.fm = load i32, ptr %i.as, align 4, !tbaa !281 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.fm
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1300

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !262
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fn = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.fo = add nsw i32 %i.fn, -1
  %i.fp = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1320
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1320 ; 2 uses
  %i.fs = mul nsw i32 %i.fq, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ft
  %i.fv = mul nsw i32 %i.fr, %.084.i
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !91
  %i.ga = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1321
  %i.gb = mul nsw i32 %i.ga, %.084.i
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gc
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv.i
  store i32 %i.fz, ptr %i.ge, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gf = load i32, ptr %i.d, align 8, !tbaa !261 ; 3 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next.i, %i.gg
  br i1 %i.gh, label %bb.m, label %._crit_edge83.i, !llvm.loop !1305

bb.n:                                             ; preds = %bb.p
  %i.gi = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gj = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.gk = trunc nuw i8 %i.gj to i1
  br i1 %i.gk, label %bb.s, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1203, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gl = load i32, ptr %i.ar, align 8, !tbaa !259 ; 2 uses
  %i.gm = add nsw i32 %i.gl, %i.bj                ; 3 uses
  %i.gn = sub nsw i32 %i.gm, %i.bz
  %i.go = load ptr, ptr %i.au, align 8, !tbaa !194 ; 8 uses
  %i.gp = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gq = load i32, ptr %i.d, align 8, !tbaa !261 ; 4 uses
  %i.gr = icmp sgt i32 %i.gq, 0
  br i1 %i.gr, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %bb.q
  %i.gs = add nsw i32 %i.gl, %i.cb                ; 2 uses
  %i.gt = sub i32 %i.gs, %i.bz
  %i.gu = load i32, ptr %i.as, align 4, !tbaa !281 ; 4 uses
  %i.gv = add i32 %i.gt, %i.gu
  %i.gw = load i32, ptr %i.at, align 4, !tbaa !195
  %i.gx = icmp slt i32 %i.gw, 2                   ; 2 uses
  %i.gy = add nsw i32 %i.gm, %i.gu
  %i.gz = sext i32 %i.gy to i64
  %i.ha = mul i64 %i.gp, %i.gz
  %.sink.idx.i114 = select i1 %i.gx, i64 0, i64 %i.ha
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sink.idx.i114
  %i.hb = add nsw i32 %i.gs, %i.gu
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %.sink.i115, i64 %i.hc ; 4 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 3
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !28
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hd, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !28
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hd, i64 1
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !28
  %i.hk = load i8, ptr %i.hd, align 1, !tbaa !28
  %i.hl = xor i32 %i.gu, -1
  %i.hm = add i32 %i.gm, %i.hl
  %i.hn = sext i32 %i.hm to i64
  %i.ho = mul i64 %i.gp, %i.hn
  %.sink.idx.i = select i1 %i.gx, i64 0, i64 %i.ho
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sink.idx.i
  %i.hp = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.hc ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 3
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !28
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 2
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !28
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !28
  %i.hw = load i8, ptr %i.hp, align 1, !tbaa !28
  %i.hx = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.hy = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.hz = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.ia = zext i8 %i.hk to i32                    ; 2 uses
  %i.ib = zext i8 %i.hj to i32                    ; 2 uses
  %i.ic = zext i8 %i.hh to i32                    ; 2 uses
  %i.id = zext i8 %i.hf to i32                    ; 2 uses
  %i.ie = zext i8 %i.hw to i32                    ; 2 uses
  %i.if = zext i8 %i.hv to i32                    ; 2 uses
  %i.ig = zext i8 %i.ht to i32                    ; 2 uses
  %i.ih = zext i8 %i.hr to i32                    ; 2 uses
  %i.ii = sext i32 %i.gv to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %i.gq to i64   ; 4 uses
  %i.ij = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep = getelementptr i8, ptr %i.hx, i64 %i.ij
  %scevgep293.a = getelementptr i8, ptr %i.hy, i64 %i.ij
  %scevgep295.a = getelementptr i8, ptr %i.hz, i64 %i.ij
  %i.ik = shl nsw i64 %i.ii, 2                    ; 3 uses
  %scevgep297.a = getelementptr i8, ptr %i.go, i64 %i.ik
  %i.il = add nsw i64 %i.ik, %i.ij                ; 2 uses
  %scevgep299.a = getelementptr i8, ptr %i.go, i64 %i.il
  %scevgep301 = getelementptr i8, ptr %i.go, i64 %i.ik
  %scevgep303 = getelementptr i8, ptr %i.go, i64 %i.il
  %min.iters.check = icmp ult i32 %i.gq, 8
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert336 = insertelement <4 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat337 = shufflevector <4 x i32> %broadcast.splatinsert336, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert338 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat339 = shufflevector <4 x i32> %broadcast.splatinsert338, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert340 = insertelement <4 x i32> poison, i32 %i.id, i64 0
  %broadcast.splat341 = shufflevector <4 x i32> %broadcast.splatinsert340, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert342 = insertelement <4 x i32> poison, i32 %i.ie, i64 0
  %broadcast.splat343 = shufflevector <4 x i32> %broadcast.splatinsert342, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert344 = insertelement <4 x i32> poison, i32 %i.if, i64 0
  %broadcast.splat345 = shufflevector <4 x i32> %broadcast.splatinsert344, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert346 = insertelement <4 x i32> poison, i32 %i.ig, i64 0
  %broadcast.splat347 = shufflevector <4 x i32> %broadcast.splatinsert346, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <4 x i32> poison, i32 %i.ih, i64 0
  %broadcast.splat349 = shufflevector <4 x i32> %broadcast.splatinsert348, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph171, %._crit_edge
  %.091169 = phi i32 [ 0, %.lr.ph171 ], [ %i.pj, %._crit_edge ] ; 5 uses
  %i.im = load i32, ptr %i.g, align 4, !tbaa !201
  %i.in = mul i32 %i.im, %.091169
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = getelementptr [4 x i8], ptr %i.hx, i64 %i.io ; 6 uses
  %i.iq = load i32, ptr %i.q, align 4, !tbaa !206
  %i.ir = mul nsw i32 %i.iq, %.1203
  %i.is = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.it = mul nsw i32 %i.ir, %i.is
  %i.iu = sext i32 %i.it to i64                   ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.iu
  %i.iw = mul nsw i32 %i.is, %.091169
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.ix ; 6 uses
  %i.iz = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.ja = mul i32 %i.iz, %i.cb
  %i.jb = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.jc = mul i32 %i.ja, %i.jb
  %i.jd = sext i32 %i.jc to i64                   ; 2 uses
  %i.je = getelementptr inbounds [4 x i8], ptr %i.hz, i64 %i.jd
  %i.jf = mul nsw i32 %i.jb, %.091169
  %i.jg = sext i32 %i.jf to i64                   ; 2 uses
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.je, i64 %i.jg ; 6 uses
  %i.ji = load i32, ptr %i.as, align 4, !tbaa !281 ; 2 uses
  %i.jj = xor i32 %i.ji, -1
  %i.jk = add i32 %.091169, %i.gn                 ; 2 uses
  %i.jl = add i32 %i.jk, %i.jj
  %i.jm = sext i32 %i.jl to i64
  %i.jn = mul i64 %i.gp, %i.jm                    ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.jn ; 5 uses
  %i.jp = add i32 %i.jk, %i.ji
  %i.jq = sext i32 %i.jp to i64
  %i.jr = mul i64 %i.gp, %i.jq                    ; 3 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.go, i64 %i.jr ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jt = shl nsw i64 %i.io, 2
  %scevgep292 = getelementptr i8, ptr %scevgep, i64 %i.jt ; 4 uses
  %i.ju = add nsw i64 %i.iu, %i.ix
  %i.jv = shl nsw i64 %i.ju, 2
  %scevgep294 = getelementptr i8, ptr %scevgep293.a, i64 %i.jv ; 4 uses
  %i.jw = add nsw i64 %i.jd, %i.jg
  %i.jx = shl nsw i64 %i.jw, 2
  %scevgep296 = getelementptr i8, ptr %scevgep295.a, i64 %i.jx ; 4 uses
  %scevgep298 = getelementptr i8, ptr %scevgep297.a, i64 %i.jr ; 3 uses
  %scevgep300 = getelementptr i8, ptr %scevgep299.a, i64 %i.jr ; 3 uses
  %scevgep302 = getelementptr i8, ptr %scevgep301, i64 %i.jn ; 3 uses
  %scevgep304 = getelementptr i8, ptr %scevgep303, i64 %i.jn ; 3 uses
  %bound0 = icmp ult ptr %i.ip, %scevgep294
  %bound1 = icmp ult ptr %i.iy, %scevgep292
  %found.conflict = and i1 %bound0, %bound1
  %bound0305 = icmp ult ptr %i.ip, %scevgep296
  %bound1306 = icmp ult ptr %i.jh, %scevgep292
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx = or i1 %found.conflict, %found.conflict307
  %bound0308 = icmp ult ptr %i.ip, %scevgep300
  %bound1309 = icmp ult ptr %scevgep298, %scevgep292
  %found.conflict310 = and i1 %bound0308, %bound1309
  %conflict.rdx311 = or i1 %conflict.rdx, %found.conflict310
  %bound0312 = icmp ult ptr %i.ip, %scevgep304
  %bound1313 = icmp ult ptr %scevgep302, %scevgep292
  %found.conflict314 = and i1 %bound0312, %bound1313
  %conflict.rdx315 = or i1 %conflict.rdx311, %found.conflict314
  %bound0316 = icmp ult ptr %i.iy, %scevgep296
  %bound1317 = icmp ult ptr %i.jh, %scevgep294
  %found.conflict318 = and i1 %bound0316, %bound1317
  %conflict.rdx319 = or i1 %conflict.rdx315, %found.conflict318
  %bound0320 = icmp ult ptr %i.iy, %scevgep300
  %bound1321 = icmp ult ptr %scevgep298, %scevgep294
  %found.conflict322 = and i1 %bound0320, %bound1321
  %conflict.rdx323 = or i1 %conflict.rdx319, %found.conflict322
  %bound0324 = icmp ult ptr %i.iy, %scevgep304
  %bound1325 = icmp ult ptr %scevgep302, %scevgep294
  %found.conflict326 = and i1 %bound0324, %bound1325
  %conflict.rdx327 = or i1 %conflict.rdx323, %found.conflict326
  %bound0328 = icmp ult ptr %i.jh, %scevgep300
  %bound1329 = icmp ult ptr %scevgep298, %scevgep296
  %found.conflict330 = and i1 %bound0328, %bound1329
  %conflict.rdx331 = or i1 %conflict.rdx327, %found.conflict330
  %bound0332 = icmp ult ptr %i.jh, %scevgep304
  %bound1333 = icmp ult ptr %scevgep302, %scevgep296
  %found.conflict334 = and i1 %bound0332, %bound1333
  %conflict.rdx335 = or i1 %conflict.rdx331, %found.conflict334
  br i1 %conflict.rdx335, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.jy = or disjoint i64 %index, 1
  %i.jz = or disjoint i64 %index, 2
  %i.ka = or disjoint i64 %index, 3
end_hunk_5
begin_hunk_6_@_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiEclERKNS0_5RangeE:bb.a
  %i.lj = getelementptr inbounds nuw i8, ptr %i.kl, i64 2
  %i.lk = getelementptr inbounds nuw i8, ptr %i.km, i64 2
  %i.ll = load i8, ptr %i.lh, align 1, !tbaa !28, !alias.scope !1328
  %i.lm = load i8, ptr %i.li, align 1, !tbaa !28, !alias.scope !1328
  %i.ln = load i8, ptr %i.lj, align 1, !tbaa !28, !alias.scope !1328
  %i.lo = load i8, ptr %i.lk, align 1, !tbaa !28, !alias.scope !1328
  %i.lp = insertelement <4 x i8> poison, i8 %i.ll, i64 0
  %i.lq = insertelement <4 x i8> %i.lp, i8 %i.lm, i64 1
  %i.lr = insertelement <4 x i8> %i.lq, i8 %i.ln, i64 2
  %i.ls = insertelement <4 x i8> %i.lr, i8 %i.lo, i64 3
  %i.lt = getelementptr inbounds nuw i8, ptr %i.kj, i64 3
  %i.lu = getelementptr inbounds nuw i8, ptr %i.kk, i64 3
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kl, i64 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.km, i64 3
  %i.lx = load i8, ptr %i.lt, align 1, !tbaa !28, !alias.scope !1328
  %i.ly = load i8, ptr %i.lu, align 1, !tbaa !28, !alias.scope !1328
  %i.lz = load i8, ptr %i.lv, align 1, !tbaa !28, !alias.scope !1328
  %i.ma = load i8, ptr %i.lw, align 1, !tbaa !28, !alias.scope !1328
  %i.mb = insertelement <4 x i8> poison, i8 %i.lx, i64 0
  %i.mc = insertelement <4 x i8> %i.mb, i8 %i.ly, i64 1
  %i.md = insertelement <4 x i8> %i.mc, i8 %i.lz, i64 2
  %i.me = insertelement <4 x i8> %i.md, i8 %i.ma, i64 3
  %i.mf = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.ke ; 4 uses
  %i.mg = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.kf ; 4 uses
  %i.mh = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.kg ; 4 uses
  %i.mi = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.kh ; 4 uses
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !28, !alias.scope !1329
  %i.mk = load i8, ptr %i.mg, align 1, !tbaa !28, !alias.scope !1329
  %i.ml = load i8, ptr %i.mh, align 1, !tbaa !28, !alias.scope !1329
  %i.mm = load i8, ptr %i.mi, align 1, !tbaa !28, !alias.scope !1329
  %i.mn = insertelement <4 x i8> poison, i8 %i.mj, i64 0
  %i.mo = insertelement <4 x i8> %i.mn, i8 %i.mk, i64 1
  %i.mp = insertelement <4 x i8> %i.mo, i8 %i.ml, i64 2
  %i.mq = insertelement <4 x i8> %i.mp, i8 %i.mm, i64 3
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 1
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mh, i64 1
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mi, i64 1
  %i.mv = load i8, ptr %i.mr, align 1, !tbaa !28, !alias.scope !1329
  %i.mw = load i8, ptr %i.ms, align 1, !tbaa !28, !alias.scope !1329
  %i.mx = load i8, ptr %i.mt, align 1, !tbaa !28, !alias.scope !1329
  %i.my = load i8, ptr %i.mu, align 1, !tbaa !28, !alias.scope !1329
  %i.mz = insertelement <4 x i8> poison, i8 %i.mv, i64 0
  %i.na = insertelement <4 x i8> %i.mz, i8 %i.mw, i64 1
  %i.nb = insertelement <4 x i8> %i.na, i8 %i.mx, i64 2
  %i.nc = insertelement <4 x i8> %i.nb, i8 %i.my, i64 3
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mg, i64 2
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mi, i64 2
  %i.nh = load i8, ptr %i.nd, align 1, !tbaa !28, !alias.scope !1329
  %i.ni = load i8, ptr %i.ne, align 1, !tbaa !28, !alias.scope !1329
  %i.nj = load i8, ptr %i.nf, align 1, !tbaa !28, !alias.scope !1329
  %i.nk = load i8, ptr %i.ng, align 1, !tbaa !28, !alias.scope !1329
  %i.nl = insertelement <4 x i8> poison, i8 %i.nh, i64 0
  %i.nm = insertelement <4 x i8> %i.nl, i8 %i.ni, i64 1
  %i.nn = insertelement <4 x i8> %i.nm, i8 %i.nj, i64 2
  %i.no = insertelement <4 x i8> %i.nn, i8 %i.nk, i64 3
  %i.np = getelementptr inbounds nuw i8, ptr %i.mf, i64 3
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mg, i64 3
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mh, i64 3
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mi, i64 3
  %i.nt = load i8, ptr %i.np, align 1, !tbaa !28, !alias.scope !1329
  %i.nu = load i8, ptr %i.nq, align 1, !tbaa !28, !alias.scope !1329
  %i.nv = load i8, ptr %i.nr, align 1, !tbaa !28, !alias.scope !1329
  %i.nw = load i8, ptr %i.ns, align 1, !tbaa !28, !alias.scope !1329
  %i.nx = insertelement <4 x i8> poison, i8 %i.nt, i64 0
  %i.ny = insertelement <4 x i8> %i.nx, i8 %i.nu, i64 1
  %i.nz = insertelement <4 x i8> %i.ny, i8 %i.nv, i64 2
  %i.oa = insertelement <4 x i8> %i.nz, i8 %i.nw, i64 3
  %i.ob = zext <4 x i8> %i.mq to <4 x i32>
  %i.oc = sub nsw <4 x i32> %broadcast.splat, %i.ob
  %i.od = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oc, i1 true)
  %i.oe = zext <4 x i8> %i.nc to <4 x i32>
  %i.of = sub nsw <4 x i32> %broadcast.splat337, %i.oe
  %i.og = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.of, i1 true)
  %i.oh = zext <4 x i8> %i.no to <4 x i32>
  %i.oi = sub nsw <4 x i32> %broadcast.splat339, %i.oh
  %i.oj = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oi, i1 true)
  %i.ok = zext <4 x i8> %i.oa to <4 x i32>
  %i.ol = sub nsw <4 x i32> %broadcast.splat341, %i.ok
  %i.om = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ol, i1 true)
  %i.on = zext <4 x i8> %i.ku to <4 x i32>
  %i.oo = sub nsw <4 x i32> %broadcast.splat343, %i.on
  %i.op = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oo, i1 true)
  %i.oq = zext <4 x i8> %i.lg to <4 x i32>
  %i.or = sub nsw <4 x i32> %broadcast.splat345, %i.oq
  %i.os = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.or, i1 true)
  %i.ot = zext <4 x i8> %i.ls to <4 x i32>
  %i.ou = sub nsw <4 x i32> %broadcast.splat347, %i.ot
  %i.ov = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ou, i1 true)
  %i.ow = zext <4 x i8> %i.me to <4 x i32>
  %i.ox = sub nsw <4 x i32> %broadcast.splat349, %i.ow
  %i.oy = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ox, i1 true)
  %i.oz = add nuw nsw <4 x i32> %i.op, %i.os
  %i.pa = add nuw nsw <4 x i32> %i.oz, %i.ov
  %i.pb = add nuw nsw <4 x i32> %i.pa, %i.oy
  %i.pc = sub <4 x i32> %wide.load351, %i.pb
  %i.pd = add <4 x i32> %i.pc, %i.od
  %i.pe = add <4 x i32> %i.pd, %i.og
  %i.pf = add <4 x i32> %i.pe, %i.oj
  %i.pg = add <4 x i32> %i.pf, %i.om              ; 3 uses
  store <4 x i32> %i.pg, ptr %i.kb, align 4, !tbaa !91, !alias.scope !1322, !noalias !1323
  %wide.load352 = load <4 x i32>, ptr %i.kc, align 4, !tbaa !91, !alias.scope !1324, !noalias !1325
  %i.ph = add nsw <4 x i32> %i.pg, %wide.load352
  store <4 x i32> %i.ph, ptr %i.kc, align 4, !tbaa !91, !alias.scope !1324, !noalias !1325
  store <4 x i32> %i.pg, ptr %i.ki, align 4, !tbaa !91, !alias.scope !1326, !noalias !1327
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.pi = icmp eq i64 %index.next, %n.vec
  br i1 %i.pi, label %middle.block, label %vector.body, !llvm.loop !1312

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.pj = add nuw nsw i32 %.091169, 1             ; 2 uses
  %exitcond222.not = icmp eq i32 %i.pj, %i.gq
  br i1 %exitcond222.not, label %.loopexit, label %.lr.ph, !llvm.loop !1313

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %indvars.iv ; 3 uses
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !91
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.ip, i64 %indvars.iv ; 4 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !91
  %i.po = sub nsw i32 %i.pn, %i.pl
  store i32 %i.po, ptr %i.pm, align 4, !tbaa !91
  %i.pp = add nsw i64 %indvars.iv, %i.ii          ; 2 uses
  %i.pq = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv ; 2 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !91
  %i.ps = getelementptr inbounds [4 x i8], ptr %i.jo, i64 %i.pp ; 4 uses
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !28
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ps, i64 1
  %i.pv = load i8, ptr %i.pu, align 1, !tbaa !28
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ps, i64 2
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !28
  %i.py = getelementptr inbounds nuw i8, ptr %i.ps, i64 3
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !28
  %i.qa = getelementptr inbounds [4 x i8], ptr %i.js, i64 %i.pp ; 4 uses
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !28
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !28
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qa, i64 2
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !28
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qa, i64 3
  %i.qh = load i8, ptr %i.qg, align 1, !tbaa !28
  %i.qi = zext i8 %i.qb to i32
  %i.qj = sub nsw i32 %i.ia, %i.qi
  %i.qk = call i32 @llvm.abs.i32(i32 %i.qj, i1 true)
  %i.ql = zext i8 %i.qd to i32
  %i.qm = sub nsw i32 %i.ib, %i.ql
  %i.qn = call i32 @llvm.abs.i32(i32 %i.qm, i1 true)
  %i.qo = zext i8 %i.qf to i32
  %i.qp = sub nsw i32 %i.ic, %i.qo
  %i.qq = call i32 @llvm.abs.i32(i32 %i.qp, i1 true)
  %i.qr = zext i8 %i.qh to i32
  %i.qs = sub nsw i32 %i.id, %i.qr
  %i.qt = call i32 @llvm.abs.i32(i32 %i.qs, i1 true)
  %i.qu = zext i8 %i.pt to i32
  %i.qv = sub nsw i32 %i.ie, %i.qu
  %i.qw = call i32 @llvm.abs.i32(i32 %i.qv, i1 true)
  %i.qx = zext i8 %i.pv to i32
  %i.qy = sub nsw i32 %i.if, %i.qx
  %i.qz = call i32 @llvm.abs.i32(i32 %i.qy, i1 true)
  %i.ra = zext i8 %i.px to i32
  %i.rb = sub nsw i32 %i.ig, %i.ra
  %i.rc = call i32 @llvm.abs.i32(i32 %i.rb, i1 true)
  %i.rd = zext i8 %i.pz to i32
  %i.re = sub nsw i32 %i.ih, %i.rd
  %i.rf = call i32 @llvm.abs.i32(i32 %i.re, i1 true)
  %i.rg = add nuw nsw i32 %i.qw, %i.qz
  %i.rh = add nuw nsw i32 %i.rg, %i.rc
  %i.ri = add nuw nsw i32 %i.rh, %i.rf
  %.neg14.i = sub i32 %i.pr, %i.ri
  %.neg16.i = add i32 %.neg14.i, %i.qk
  %.neg18.i = add i32 %.neg16.i, %i.qn
  %i.rj = add i32 %.neg18.i, %i.qq
  %i.rk = add i32 %i.rj, %i.qt                    ; 2 uses
  store i32 %i.rk, ptr %i.pk, align 4, !tbaa !91
  %i.rl = load i32, ptr %i.pm, align 4, !tbaa !91
  %i.rm = add nsw i32 %i.rk, %i.rl
  store i32 %i.rm, ptr %i.pm, align 4, !tbaa !91
  %i.rn = load i32, ptr %i.pk, align 4, !tbaa !91
  store i32 %i.rn, ptr %i.pq, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1314

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.ro = add nsw i32 %.1203, 1
  %i.rp = load i32, ptr %i.m, align 4, !tbaa !262
  %i.rq = srem i32 %i.ro, %i.rp
  %.pre = load i32, ptr %i.d, align 8, !tbaa !261
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.rr = phi i32 [ %.pre, %.loopexit ], [ %i.gf, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.rq, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.rs = icmp sgt i32 %i.rr, 0
  br i1 %i.rs, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.rt = load i32, ptr %i.ar, align 8, !tbaa !259 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.rt
  %i.ru = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.rv = load i64, ptr %i.av, align 8, !tbaa !82
  %i.rw = load ptr, ptr %2, align 8, !tbaa !203
  %i.rx = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ry = add nsw i32 %i.cc, %i.rt
  %i.rz = sext i32 %i.ry to i64
  %i.sa = sext i32 %i.rx to i64
  %wide.trip.count234 = zext nneg i32 %i.rr to i64 ; 2 uses
  %.pre246 = load i32, ptr %i.aw, align 8, !tbaa !263
  %.pre247 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep281 = getelementptr [4 x i8], ptr %i.ru, i64 %i.rz
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph191, %._crit_edge178
  %indvars.iv231 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next232, %._crit_edge178 ] ; 3 uses
  %.lcssa185202 = phi i32 [ 0, %.lr.ph191 ], [ %i.ti, %._crit_edge178 ]
  %.lcssa183199 = phi i32 [ 0, %.lr.ph191 ], [ %i.tf, %._crit_edge178 ]
  %.lcssa181196 = phi i32 [ 0, %.lr.ph191 ], [ %i.tc, %._crit_edge178 ]
  %.sroa.0126.1189 = phi i32 [ 0, %.lr.ph191 ], [ %i.tj, %._crit_edge178 ]
  %.lcssa173187188 = phi i32 [ 0, %.lr.ph191 ], [ %i.sz, %._crit_edge178 ]
  %i.sb = trunc nuw nsw i64 %indvars.iv231 to i32
  %.reass = add i32 %invariant.op, %i.sb
  %i.sc = sext i32 %.reass to i64
  %i.sd = mul i64 %i.rv, %i.sc
  %i.se = mul nsw i64 %indvars.iv231, %i.sa
  %i.sf = getelementptr inbounds [4 x i8], ptr %i.rw, i64 %i.se
  %gep282 = getelementptr i8, ptr %invariant.gep281, i64 %i.sd
  br label %bb.r

._crit_edge178:                                   ; preds = %bb.r
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge192, label %.lr.ph177, !llvm.loop !1315

bb.r:                                             ; preds = %.lr.ph177, %bb.r
  %indvars.iv226 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next227, %bb.r ] ; 3 uses
  %i.sg = phi i32 [ %.lcssa185202, %.lr.ph177 ], [ %i.ti, %bb.r ]
  %i.sh = phi i32 [ %.lcssa183199, %.lr.ph177 ], [ %i.tf, %bb.r ]
  %i.si = phi i32 [ %.lcssa181196, %.lr.ph177 ], [ %i.tc, %bb.r ]
  %.sroa.0126.2174 = phi i32 [ %.sroa.0126.1189, %.lr.ph177 ], [ %i.tj, %bb.r ]
  %i.sj = phi i32 [ %.lcssa173187188, %.lr.ph177 ], [ %i.sz, %bb.r ]
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sf, i64 %indvars.iv226
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !91
  %i.sm = ashr i32 %i.sl, %.pre246
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %.pre247, i64 %i.sn
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !91 ; 5 uses
  %gep = getelementptr [4 x i8], ptr %gep282, i64 %indvars.iv226 ; 4 uses
  %i.sq = load i8, ptr %gep, align 1, !tbaa !28
  %i.sr = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.ss = load i8, ptr %i.sr, align 1, !tbaa !28
  %i.st = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.su = load i8, ptr %i.st, align 1, !tbaa !28
  %i.sv = getelementptr inbounds nuw i8, ptr %gep, i64 3
  %i.sw = load i8, ptr %i.sv, align 1, !tbaa !28
  %i.sx = zext i8 %i.sq to i32
  %i.sy = mul nsw i32 %i.sp, %i.sx
  %i.sz = add nsw i32 %i.sj, %i.sy                ; 3 uses
  %i.ta = zext i8 %i.ss to i32
  %i.tb = mul nsw i32 %i.sp, %i.ta
  %i.tc = add nsw i32 %i.si, %i.tb                ; 3 uses
  %i.td = zext i8 %i.su to i32
  %i.te = mul nsw i32 %i.sp, %i.td
  %i.tf = add nsw i32 %i.sh, %i.te                ; 3 uses
  %i.tg = zext i8 %i.sw to i32
  %i.th = mul nsw i32 %i.sp, %i.tg
  %i.ti = add nsw i32 %i.sg, %i.th                ; 3 uses
  %i.tj = add nsw i32 %i.sp, %.sroa.0126.2174     ; 3 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count234
  br i1 %exitcond230.not, label %._crit_edge178, label %bb.r, !llvm.loop !1316

._crit_edge192:                                   ; preds = %._crit_edge178, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2271 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge178 ] ; 2 uses
  %.sroa.5.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.tc, %._crit_edge178 ]
  %.sroa.9.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.tf, %._crit_edge178 ]
  %.sroa.13.0 = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.ti, %._crit_edge178 ]
  %.lcssa173187.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.sz, %._crit_edge178 ]
  %.sroa.0126.1.lcssa = phi i32 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.tj, %._crit_edge178 ] ; 5 uses
  %i.tk = sdiv i32 %.sroa.0126.1.lcssa, 2         ; 4 uses
  %i.tl = add i32 %.lcssa173187.lcssa, %i.tk
  %i.tm = udiv i32 %i.tl, %.sroa.0126.1.lcssa
  %i.tn = add i32 %.sroa.5.0, %i.tk
  %i.to = udiv i32 %i.tn, %.sroa.0126.1.lcssa
  %i.tp = add i32 %.sroa.9.0, %i.tk
  %i.tq = udiv i32 %i.tp, %.sroa.0126.1.lcssa
  %i.tr = add i32 %.sroa.13.0, %i.tk
  %i.ts = udiv i32 %i.tr, %.sroa.0126.1.lcssa
  %i.tt = call i32 @llvm.smax.i32(i32 %i.tm, i32 0)
  %i.tu = call i32 @llvm.umin.i32(i32 %i.tt, i32 255)
  %i.tv = call i32 @llvm.smax.i32(i32 %i.to, i32 0)
  %i.tw = call i32 @llvm.umin.i32(i32 %i.tv, i32 255)
  %i.tx = call i32 @llvm.smax.i32(i32 %i.tq, i32 0)
  %i.ty = call i32 @llvm.umin.i32(i32 %i.tx, i32 255)
  %i.tz = call i32 @llvm.smax.i32(i32 %i.ts, i32 0)
  %i.ua = call i32 @llvm.umin.i32(i32 %i.tz, i32 255)
  %i.ub = load ptr, ptr %i.ay, align 8, !tbaa !264, !nonnull !130, !align !131 ; 3 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !195
  %i.ue = icmp slt i32 %i.ud, 2
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 24
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !194
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 128
  %i.ui = load i64, ptr %i.uh, align 8
  %i.uj = mul i64 %i.ui, %indvars.iv239
  %.sink.idx.i116 = select i1 %i.ue, i64 0, i64 %i.uj
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.ug, i64 %.sink.idx.i116
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.sink.i117, i64 %indvars.iv236
  %.sroa.7.0.insert.shift = shl nuw i32 %i.ua, 24
  %.sroa.6.0.insert.shift = shl nuw nsw i32 %i.ty, 16
  %.sroa.6.0.insert.insert = or disjoint i32 %.sroa.7.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.shift = shl nuw nsw i32 %i.tw, 8
  %.sroa.5.0.insert.insert = or disjoint i32 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.insert, %i.tu
  store i32 %.sroa.0.0.insert.insert, ptr %i.uk, align 1
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.ul = load ptr, ptr %i.aa, align 8, !tbaa !260, !nonnull !130, !align !131 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 12
  %i.un = load i32, ptr %i.um, align 4, !tbaa !191
  %i.uo = sext i32 %i.un to i64
  %i.up = icmp slt i64 %indvars.iv.next237, %i.uo
  br i1 %i.up, label %bb.k, label %._crit_edge207, !llvm.loop !1317

bb.s:                                             ; preds = %bb.n
  %i.uq = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.ur = icmp eq ptr %i.uq, null
  br i1 %i.ur, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.uq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.t, %bb.s, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gi, %bb.n ], [ %i.gi, %bb.s ], [ %i.gi, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.us = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ut = trunc nuw i8 %i.us to i1
  br i1 %i.ut, label %bb.u, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.u:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.uu = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.uv = icmp eq ptr %i.uu, null
  br i1 %i.uv, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.uu) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.v, %bb.u, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.u ], [ %.pn107.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.uw = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.ux = trunc nuw i8 %i.uw to i1
  br i1 %i.ux, label %bb.w, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.w:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.uy = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.uz = icmp eq ptr %i.uy, null
  br i1 %i.uz, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.uy) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecIhLi4EEEij7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !261  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge96

.preheader.preheader:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !259  ; 2 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !280  ; 2 uses
  %i.j = sub i32 %i.g, %i.i
  %i.k = add nsw i32 %i.f, %2
  %i.l = load i32, ptr %i.a, align 4, !tbaa !281
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %5, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !76
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !76
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !76
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !294  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !295  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !294  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !293, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !294 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit115 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit115:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not182 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not182, label %.preheader147.lr.ph, label %._crit_edge185

.preheader147.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit115
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !293, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader147.preheader, label %._crit_edge185

.preheader147.preheader:                          ; preds = %.preheader147.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader147

.preheader147:                                    ; preds = %.preheader147.preheader, %._crit_edge180
  %i.be = phi ptr [ %i.az, %.preheader147.preheader ], [ %i.by, %._crit_edge180 ] ; 2 uses
  %indvars.iv210 = phi i64 [ %i.bd, %.preheader147.preheader ], [ %indvars.iv.next211, %._crit_edge180 ] ; 4 uses
  %.094183 = phi i32 [ -1, %.preheader147.preheader ], [ %.1.lcssa, %._crit_edge180 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph179, label %._crit_edge180

.lr.ph179:                                        ; preds = %.preheader147
  %i.bi = icmp eq i64 %indvars.iv210, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv210 to i32     ; 4 uses
  br label %bb.k

._crit_edge185:                                   ; preds = %._crit_edge180, %.preheader147.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit115
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge185
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge185, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit116

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit116, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit116

_ZN2cv7Array3dIiED2Ev.exit116:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit116
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit116, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit122

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit121

._crit_edge180:                                   ; preds = %._crit_edge171, %.preheader147
  %i.by = phi ptr [ %i.be, %.preheader147 ], [ %i.ps, %._crit_edge171 ]
  %.1.lcssa = phi i32 [ %.094183, %.preheader147 ], [ %.2240, %._crit_edge171 ]
  %indvars.iv.next211 = add nsw i64 %indvars.iv210, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next211 to i32
  %exitcond213.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond213.not, label %._crit_edge185, label %.preheader147, !llvm.loop !1463

bb.k:                                             ; preds = %.lr.ph179, %._crit_edge171
  %indvars.iv207 = phi i64 [ 0, %.lr.ph179 ], [ %indvars.iv.next208, %._crit_edge171 ] ; 4 uses
  %.1176 = phi i32 [ %.094183, %.lr.ph179 ], [ %.2240, %._crit_edge171 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !335 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv207 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv207, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !294
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge171

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gm
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1464

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !295 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !335 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !336 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1487
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1487 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !295 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1467

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.ft, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1468

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fs, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !292 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.sink.i.i.i, i64 %i.ee ; 2 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !334
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !334
  %i.ej = sext i32 %i.dw to i64
  %i.ek = mul i64 %i.eb, %i.ej
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.ek
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.el = sext i32 %i.dy to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %.sink.i6.i.i, i64 %i.el ; 2 uses
  %i.en = load i16, ptr %i.em, align 2, !tbaa !334
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 2
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !334
  %i.eq = zext i16 %i.eg to i32
  %i.er = zext i16 %i.en to i32
  %i.es = sub nsw i32 %i.eq, %i.er
  %i.et = call i32 @llvm.abs.i32(i32 %i.es, i1 true)
  %i.eu = zext i16 %i.ei to i32
  %i.ev = zext i16 %i.ep to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.ey = add nuw nsw i32 %i.ex, %i.et            ; 2 uses
  %i.ez = load i32, ptr %i.g, align 4, !tbaa !201
  %i.fa = mul nsw i32 %i.ez, %.084.i
  %i.fb = sext i32 %i.fa to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fb ; 2 uses
  %i.fc = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fd = add nsw i32 %i.ey, %i.fc
  store i32 %i.fd, ptr %gep.i, align 4, !tbaa !91
  %i.fe = load i32, ptr %i.as, align 4, !tbaa !336
  %i.ff = add nsw i32 %i.fe, %.04776.i
  %i.fg = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1488
  %i.fh = mul nsw i32 %i.fg, %i.ff
  %i.fi = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1488 ; 2 uses
  %i.fj = mul nsw i32 %i.fh, %i.fi
  %i.fk = sext i32 %i.fj to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fk
  %i.fm = mul nsw i32 %i.fi, %.084.i
  %i.fn = sext i32 %i.fm to i64
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.fn
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fo, i64 %indvars.iv.i ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !91
  %i.fr = add nsw i32 %i.fq, %i.ey
  store i32 %i.fr, ptr %i.fp, align 4, !tbaa !91
  %i.fs = add nsw i32 %.04776.i, 1
  %i.ft = load i32, ptr %i.as, align 4, !tbaa !336 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.ft
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1471

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !295
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fu = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.fv = add nsw i32 %i.fu, -1
  %i.fw = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1489
  %i.fx = mul nsw i32 %i.fw, %i.fv
  %i.fy = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1489 ; 2 uses
  %i.fz = mul nsw i32 %i.fx, %i.fy
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ga
  %i.gc = mul nsw i32 %i.fy, %.084.i
  %i.gd = sext i32 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.gb, i64 %i.gd
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.ge, i64 %indvars.iv.i
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !91
  %i.gh = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1490
  %i.gi = mul nsw i32 %i.gh, %.084.i
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gj
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.gk, i64 %indvars.iv.i
  store i32 %i.gg, ptr %i.gl, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gm = load i32, ptr %i.d, align 8, !tbaa !294 ; 3 uses
  %i.gn = sext i32 %i.gm to i64
  %i.go = icmp slt i64 %indvars.iv.next.i, %i.gn
  br i1 %i.go, label %bb.m, label %._crit_edge83.i, !llvm.loop !1476

bb.n:                                             ; preds = %bb.p
  %i.gp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gq = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.r, label %_ZN2cv7Array3dIiED2Ev.exit121

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1176, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gs = load i32, ptr %i.ar, align 8, !tbaa !292 ; 2 uses
  %i.gt = add nsw i32 %i.gs, %i.bj                ; 3 uses
  %i.gu = sub nsw i32 %i.gt, %i.bz
  %i.gv = load ptr, ptr %i.au, align 8, !tbaa !194 ; 4 uses
  %i.gw = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gx = load i32, ptr %i.d, align 8, !tbaa !294 ; 4 uses
  %i.gy = icmp sgt i32 %i.gx, 0
  br i1 %i.gy, label %.lr.ph154, label %.loopexit

.lr.ph154:                                        ; preds = %bb.q
  %i.gz = add nsw i32 %i.gs, %i.cb                ; 2 uses
  %i.ha = sub i32 %i.gz, %i.bz
  %i.hb = load i32, ptr %i.as, align 4, !tbaa !336 ; 4 uses
  %i.hc = add nsw i32 %i.ha, %i.hb
  %i.hd = load i32, ptr %i.at, align 4, !tbaa !195
  %i.he = icmp slt i32 %i.hd, 2                   ; 2 uses
  %i.hf = add nsw i32 %i.gt, %i.hb
  %i.hg = sext i32 %i.hf to i64
  %i.hh = mul i64 %i.gw, %i.hg
  %.sink.idx.i117 = select i1 %i.he, i64 0, i64 %i.hh
  %.sink.i118 = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i117
  %i.hi = add nsw i32 %i.gz, %i.hb
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %.sink.i118, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 2
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !334
  %i.hn = load i16, ptr %i.hk, align 2, !tbaa !334
  %i.ho = xor i32 %i.hb, -1
  %i.hp = add i32 %i.gt, %i.ho
  %i.hq = sext i32 %i.hp to i64
  %i.hr = mul i64 %i.gw, %i.hq
  %.sink.idx.i = select i1 %i.he, i64 0, i64 %i.hr
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink.idx.i
  %i.hs = getelementptr inbounds [4 x i8], ptr %.sink.i, i64 %i.hj ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 2
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !334
  %i.hv = load i16, ptr %i.hs, align 2, !tbaa !334
  %i.hw = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.hx = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.hy = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.hz = zext i16 %i.hn to i32                   ; 2 uses
  %i.ia = zext i16 %i.hm to i32                   ; 2 uses
  %i.ib = zext i16 %i.hv to i32                   ; 2 uses
  %i.ic = zext i16 %i.hu to i32                   ; 2 uses
  %i.id = sext i32 %i.hc to i64                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.gx to i64   ; 4 uses
  %i.ie = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hw, i64 %i.ie
  %scevgep258 = getelementptr i8, ptr %i.hx, i64 %i.ie
  %scevgep260 = getelementptr i8, ptr %i.hy, i64 %i.ie
  %min.iters.check = icmp ult i32 %i.gx, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.hz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert269 = insertelement <4 x i32> poison, i32 %i.ia, i64 0
  %broadcast.splat270 = shufflevector <4 x i32> %broadcast.splatinsert269, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert271 = insertelement <4 x i32> poison, i32 %i.ib, i64 0
  %broadcast.splat272 = shufflevector <4 x i32> %broadcast.splatinsert271, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert273 = insertelement <4 x i32> poison, i32 %i.ic, i64 0
  %broadcast.splat274 = shufflevector <4 x i32> %broadcast.splatinsert273, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph154, %._crit_edge
  %.091152 = phi i32 [ 0, %.lr.ph154 ], [ %i.kw, %._crit_edge ] ; 5 uses
  %i.if = load i32, ptr %i.g, align 4, !tbaa !201
  %i.ig = mul i32 %i.if, %.091152
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %i.ii = getelementptr [4 x i8], ptr %i.hw, i64 %i.ih ; 4 uses
  %i.ij = load i32, ptr %i.q, align 4, !tbaa !206
  %i.ik = mul nsw i32 %i.ij, %.1176
  %i.il = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.im = mul nsw i32 %i.ik, %i.il
  %i.in = sext i32 %i.im to i64                   ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %i.hx, i64 %i.in
  %i.ip = mul nsw i32 %i.il, %.091152
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.io, i64 %i.iq ; 4 uses
  %i.is = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.it = mul i32 %i.is, %i.cb
  %i.iu = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.iv = mul i32 %i.it, %i.iu
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %i.iw
  %i.iy = mul nsw i32 %i.iu, %.091152
  %i.iz = sext i32 %i.iy to i64                   ; 2 uses
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.ix, i64 %i.iz ; 4 uses
  %i.jb = load i32, ptr %i.as, align 4, !tbaa !336 ; 2 uses
  %i.jc = xor i32 %i.jb, -1
  %i.jd = add i32 %.091152, %i.gu                 ; 2 uses
  %i.je = add i32 %i.jd, %i.jc
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul i64 %i.gw, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jg ; 2 uses
  %i.ji = add i32 %i.jd, %i.jb
  %i.jj = sext i32 %i.ji to i64
  %i.jk = mul i64 %i.gw, %i.jj
  %i.jl = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.jk ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.jm = shl nsw i64 %i.ih, 2
  %scevgep257 = getelementptr i8, ptr %scevgep, i64 %i.jm ; 2 uses
  %i.jn = add nsw i64 %i.in, %i.iq
  %i.jo = shl nsw i64 %i.jn, 2
  %scevgep259 = getelementptr i8, ptr %scevgep258, i64 %i.jo ; 2 uses
  %i.jp = add nsw i64 %i.iw, %i.iz
  %i.jq = shl nsw i64 %i.jp, 2
  %scevgep261 = getelementptr i8, ptr %scevgep260, i64 %i.jq ; 2 uses
  %bound0 = icmp ult ptr %i.ii, %scevgep259
  %bound1 = icmp ult ptr %i.ir, %scevgep257
  %found.conflict = and i1 %bound0, %bound1
  %bound0262 = icmp ult ptr %i.ii, %scevgep261
  %bound1263 = icmp ult ptr %i.ja, %scevgep257
  %found.conflict264 = and i1 %bound0262, %bound1263
  %conflict.rdx = or i1 %found.conflict, %found.conflict264
  %bound0265 = icmp ult ptr %i.ir, %scevgep261
  %bound1266 = icmp ult ptr %i.ja, %scevgep259
  %found.conflict267 = and i1 %bound0265, %bound1266
  %conflict.rdx268 = or i1 %conflict.rdx, %found.conflict267
  br i1 %conflict.rdx268, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 5 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jr, align 4, !tbaa !91, !alias.scope !1491, !noalias !1492
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %index ; 4 uses
  %wide.load275 = load <4 x i32>, ptr %i.js, align 4, !tbaa !91, !alias.scope !1493, !noalias !1494
  %i.jt = sub nsw <4 x i32> %wide.load275, %wide.load
  store <4 x i32> %i.jt, ptr %i.js, align 4, !tbaa !91, !alias.scope !1493, !noalias !1494
  %i.ju = add nsw i64 %index, %i.id               ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %index ; 2 uses
  %wide.load276.a = load <4 x i32>, ptr %i.jv, align 4, !tbaa !91, !alias.scope !1492
  %i.jw = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.ju
  %wide.vec = load <8 x i16>, ptr %i.jw, align 2, !tbaa !334
  %i.jx = freeze <8 x i16> %wide.vec              ; 2 uses
  %i.jy = bitcast <8 x i16> %i.jx to <4 x i32>
  %i.jz = bitcast <8 x i16> %i.jx to <4 x i32>
  %i.ka = and <4 x i32> %i.jz, splat (i32 65535)
  %i.kb = lshr <4 x i32> %i.jy, splat (i32 16)
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.ju
  %wide.vec278 = load <8 x i16>, ptr %i.kc, align 2, !tbaa !334
  %i.kd = freeze <8 x i16> %wide.vec278           ; 2 uses
  %i.ke = bitcast <8 x i16> %i.kd to <4 x i32>
  %i.kf = bitcast <8 x i16> %i.kd to <4 x i32>
  %i.kg = and <4 x i32> %i.kf, splat (i32 65535)
  %i.kh = lshr <4 x i32> %i.ke, splat (i32 16)
  %i.ki = sub nsw <4 x i32> %broadcast.splat, %i.kg
  %i.kj = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ki, i1 true)
  %i.kk = sub nsw <4 x i32> %broadcast.splat270, %i.kh
  %i.kl = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.kk, i1 true)
  %i.km = sub nsw <4 x i32> %broadcast.splat272, %i.ka
  %i.kn = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.km, i1 true)
  %i.ko = sub nsw <4 x i32> %broadcast.splat274, %i.kb
  %i.kp = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ko, i1 true)
  %i.kq = add nuw nsw <4 x i32> %i.kn, %i.kp
  %i.kr = sub <4 x i32> %wide.load276.a, %i.kq
  %i.ks = add <4 x i32> %i.kr, %i.kj
  %i.kt = add <4 x i32> %i.ks, %i.kl              ; 3 uses
  store <4 x i32> %i.kt, ptr %i.jr, align 4, !tbaa !91, !alias.scope !1491, !noalias !1492
  %wide.load281 = load <4 x i32>, ptr %i.js, align 4, !tbaa !91, !alias.scope !1493, !noalias !1494
  %i.ku = add nsw <4 x i32> %i.kt, %wide.load281
  store <4 x i32> %i.ku, ptr %i.js, align 4, !tbaa !91, !alias.scope !1493, !noalias !1494
  store <4 x i32> %i.kt, ptr %i.jv, align 4, !tbaa !91, !alias.scope !1492
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !1481

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.kw = add nuw nsw i32 %.091152, 1             ; 2 uses
  %exitcond193.not = icmp eq i32 %i.kw, %i.gx
  br i1 %exitcond193.not, label %.loopexit, label %.lr.ph, !llvm.loop !1482

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %indvars.iv ; 3 uses
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !91
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %indvars.iv ; 4 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !91
  %i.lb = sub nsw i32 %i.la, %i.ky
  store i32 %i.lb, ptr %i.kz, align 4, !tbaa !91
  %i.lc = add nsw i64 %indvars.iv, %i.id          ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv ; 2 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !91
  %i.lf = getelementptr inbounds [4 x i8], ptr %i.jh, i64 %i.lc ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !334
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lf, i64 2
  %i.li = load i16, ptr %i.lh, align 2, !tbaa !334
  %i.lj = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %i.lc ; 2 uses
  %i.lk = load i16, ptr %i.lj, align 2, !tbaa !334
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lj, i64 2
  %i.lm = load i16, ptr %i.ll, align 2, !tbaa !334
  %i.ln = zext i16 %i.lk to i32
  %i.lo = sub nsw i32 %i.hz, %i.ln
  %i.lp = call i32 @llvm.abs.i32(i32 %i.lo, i1 true)
  %i.lq = zext i16 %i.lm to i32
  %i.lr = sub nsw i32 %i.ia, %i.lq
  %i.ls = call i32 @llvm.abs.i32(i32 %i.lr, i1 true)
  %i.lt = zext i16 %i.lg to i32
  %i.lu = sub nsw i32 %i.ib, %i.lt
  %i.lv = call i32 @llvm.abs.i32(i32 %i.lu, i1 true)
  %i.lw = zext i16 %i.li to i32
  %i.lx = sub nsw i32 %i.ic, %i.lw
  %i.ly = call i32 @llvm.abs.i32(i32 %i.lx, i1 true)
  %i.lz = add nuw nsw i32 %i.lv, %i.ly
  %.neg8.i = sub i32 %i.le, %i.lz
  %i.ma = add i32 %.neg8.i, %i.lp
  %i.mb = add i32 %i.ma, %i.ls                    ; 2 uses
  store i32 %i.mb, ptr %i.kx, align 4, !tbaa !91
  %i.mc = load i32, ptr %i.kz, align 4, !tbaa !91
  %i.md = add nsw i32 %i.mb, %i.mc
  store i32 %i.md, ptr %i.kz, align 4, !tbaa !91
  %i.me = load i32, ptr %i.kx, align 4, !tbaa !91
  store i32 %i.me, ptr %i.ld, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1483

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.mf = add nsw i32 %.1176, 1
  %i.mg = load i32, ptr %i.m, align 4, !tbaa !295
  %i.mh = srem i32 %i.mf, %i.mg
  %.pre = load i32, ptr %i.d, align 8, !tbaa !294
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.mi = phi i32 [ %.pre, %.loopexit ], [ %i.gm, %._crit_edge83.i ] ; 4 uses
  %.2 = phi i32 [ %i.mh, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.mk = load i32, ptr %i.ar, align 8, !tbaa !292 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.mk
  %i.ml = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.mm = load i64, ptr %i.av, align 8, !tbaa !82
  %i.mn = load ptr, ptr %2, align 8, !tbaa !203
  %i.mo = load i32, ptr %i.g, align 4, !tbaa !201
  %i.mp = add nsw i32 %i.cc, %i.mk
  %i.mq = sext i32 %i.mp to i64
  %i.mr = sext i32 %i.mo to i64
  %wide.trip.count205 = zext nneg i32 %i.mi to i64 ; 3 uses
  %.pre215 = load i32, ptr %i.aw, align 8, !tbaa !296 ; 3 uses
  %.pre216 = load ptr, ptr %i.ax, align 8, !tbaa !47 ; 3 uses
  %invariant.gep248 = getelementptr [4 x i8], ptr %i.ml, i64 %i.mq
  %xtraiter = and i64 %wide.trip.count205, 1
  %i.ms = icmp eq i32 %i.mi, 1
  %unroll_iter = and i64 %wide.trip.count205, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod296 = trunc i32 %i.mi to i1
  br label %.lr.ph160

.lr.ph160:                                        ; preds = %.lr.ph170, %._crit_edge161
  %indvars.iv202 = phi i64 [ 0, %.lr.ph170 ], [ %indvars.iv.next203, %._crit_edge161 ] ; 3 uses
  %.lcssa164175 = phi i64 [ 0, %.lr.ph170 ], [ %.lcssa288, %._crit_edge161 ] ; 2 uses
  %.sroa.0127.1168 = phi i64 [ 0, %.lr.ph170 ], [ %.lcssa287, %._crit_edge161 ] ; 2 uses
  %.lcssa156166167 = phi i64 [ 0, %.lr.ph170 ], [ %.lcssa289, %._crit_edge161 ] ; 2 uses
  %i.mt = trunc nuw nsw i64 %indvars.iv202 to i32
  %.reass = add i32 %invariant.op, %i.mt
  %i.mu = sext i32 %.reass to i64
  %i.mv = mul i64 %i.mm, %i.mu
  %i.mw = mul nsw i64 %indvars.iv202, %i.mr
  %i.mx = getelementptr inbounds [4 x i8], ptr %i.mn, i64 %i.mw ; 3 uses
  %gep249 = getelementptr i8, ptr %invariant.gep248, i64 %i.mv ; 3 uses
  br i1 %i.ms, label %.epil.preheader, label %.lr.ph160.new

._crit_edge161.unr-lcssa:                         ; preds = %.lr.ph160.new
  br i1 %lcmp.mod.not, label %._crit_edge161, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge161.unr-lcssa, %.lr.ph160
  %indvars.iv197.epil.init = phi i64 [ 0, %.lr.ph160 ], [ %indvars.iv.next198.1, %._crit_edge161.unr-lcssa ] ; 2 uses
  %.epil.init = phi i64 [ %.lcssa164175, %.lr.ph160 ], [ %i.ox, %._crit_edge161.unr-lcssa ]
  %.sroa.0127.2157.epil.init = phi i64 [ %.sroa.0127.1168, %.lr.ph160 ], [ %i.oy, %._crit_edge161.unr-lcssa ]
  %.epil.init292 = phi i64 [ %.lcssa156166167, %.lr.ph160 ], [ %i.ou, %._crit_edge161.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod296)
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv197.epil.init
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !91
  %i.na = ashr i32 %i.mz, %.pre215
  %i.nb = sext i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %.pre216, i64 %i.nb
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !91
  %gep.epil = getelementptr [4 x i8], ptr %gep249, i64 %indvars.iv197.epil.init ; 2 uses
  %i.ne = load i16, ptr %gep.epil, align 2, !tbaa !334
  %i.nf = getelementptr inbounds nuw i8, ptr %gep.epil, i64 2
  %i.ng = load i16, ptr %i.nf, align 2, !tbaa !334
  %i.nh = sext i32 %i.nd to i64                   ; 3 uses
  %i.ni = zext i16 %i.ne to i64
  %i.nj = mul nsw i64 %i.ni, %i.nh
  %i.nk = add nsw i64 %.epil.init292, %i.nj
  %i.nl = zext i16 %i.ng to i64
  %i.nm = mul nsw i64 %i.nl, %i.nh
  %i.nn = add nsw i64 %.epil.init, %i.nm
  %i.no = add nsw i64 %.sroa.0127.2157.epil.init, %i.nh
  br label %._crit_edge161

._crit_edge161:                                   ; preds = %._crit_edge161.unr-lcssa, %.epil.preheader
  %.lcssa289 = phi i64 [ %i.ou, %._crit_edge161.unr-lcssa ], [ %i.nk, %.epil.preheader ] ; 2 uses
  %.lcssa288 = phi i64 [ %i.ox, %._crit_edge161.unr-lcssa ], [ %i.nn, %.epil.preheader ] ; 2 uses
  %.lcssa287 = phi i64 [ %i.oy, %._crit_edge161.unr-lcssa ], [ %i.no, %.epil.preheader ] ; 2 uses
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge171, label %.lr.ph160, !llvm.loop !1484

.lr.ph160.new:                                    ; preds = %.lr.ph160, %.lr.ph160.new
  %indvars.iv197 = phi i64 [ %indvars.iv.next198.1, %.lr.ph160.new ], [ 0, %.lr.ph160 ] ; 4 uses
  %i.np = phi i64 [ %i.ox, %.lr.ph160.new ], [ %.lcssa164175, %.lr.ph160 ]
  %.sroa.0127.2157 = phi i64 [ %i.oy, %.lr.ph160.new ], [ %.sroa.0127.1168, %.lr.ph160 ]
  %i.nq = phi i64 [ %i.ou, %.lr.ph160.new ], [ %.lcssa156166167, %.lr.ph160 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph160.new ], [ 0, %.lr.ph160 ]
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv197
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !91
  %i.nt = ashr i32 %i.ns, %.pre215
  %i.nu = sext i32 %i.nt to i64
  %i.nv = getelementptr inbounds nuw [4 x i8], ptr %.pre216, i64 %i.nu
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !91
  %gep = getelementptr [4 x i8], ptr %gep249, i64 %indvars.iv197 ; 2 uses
  %i.nx = load i16, ptr %gep, align 2, !tbaa !334
  %i.ny = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.nz = load i16, ptr %i.ny, align 2, !tbaa !334
  %i.oa = sext i32 %i.nw to i64                   ; 3 uses
  %i.ob = zext i16 %i.nx to i64
  %i.oc = mul nsw i64 %i.ob, %i.oa
  %i.od = add nsw i64 %i.nq, %i.oc
  %i.oe = zext i16 %i.nz to i64
  %i.of = mul nsw i64 %i.oe, %i.oa
  %i.og = add nsw i64 %i.np, %i.of
  %i.oh = add nsw i64 %.sroa.0127.2157, %i.oa
  %indvars.iv.next198 = or disjoint i64 %indvars.iv197, 1 ; 2 uses
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %indvars.iv.next198
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !91
  %i.ok = ashr i32 %i.oj, %.pre215
  %i.ol = sext i32 %i.ok to i64
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.pre216, i64 %i.ol
  %i.on = load i32, ptr %i.om, align 4, !tbaa !91
  %gep.1 = getelementptr [4 x i8], ptr %gep249, i64 %indvars.iv.next198 ; 2 uses
  %i.oo = load i16, ptr %gep.1, align 2, !tbaa !334
  %i.op = getelementptr inbounds nuw i8, ptr %gep.1, i64 2
  %i.oq = load i16, ptr %i.op, align 2, !tbaa !334
  %i.or = sext i32 %i.on to i64                   ; 3 uses
  %i.os = zext i16 %i.oo to i64
  %i.ot = mul nsw i64 %i.os, %i.or
  %i.ou = add nsw i64 %i.od, %i.ot                ; 3 uses
  %i.ov = zext i16 %i.oq to i64
  %i.ow = mul nsw i64 %i.ov, %i.or
  %i.ox = add nsw i64 %i.og, %i.ow                ; 3 uses
  %i.oy = add nsw i64 %i.oh, %i.or                ; 3 uses
  %indvars.iv.next198.1 = add nuw nsw i64 %indvars.iv197, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge161.unr-lcssa, label %.lr.ph160.new, !llvm.loop !1485

._crit_edge171:                                   ; preds = %._crit_edge161, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2240 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge161 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa288, %._crit_edge161 ]
  %.lcssa156166.lcssa = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa289, %._crit_edge161 ]
  %.sroa.0127.1.lcssa = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi2EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.lcssa287, %._crit_edge161 ] ; 3 uses
  %i.oz = sdiv i64 %.sroa.0127.1.lcssa, 2         ; 2 uses
  %i.pa = add i64 %.lcssa156166.lcssa, %i.oz
  %i.pb = udiv i64 %i.pa, %.sroa.0127.1.lcssa
  %i.pc = add i64 %.sroa.5.0, %i.oz
  %i.pd = udiv i64 %i.pc, %.sroa.0127.1.lcssa
  %i.pe = call i64 @llvm.smax.i64(i64 %i.pb, i64 0)
  %i.pf = call i64 @llvm.umin.i64(i64 %i.pe, i64 65535)
  %.sroa.0.0.insert.ext = trunc nuw nsw i64 %i.pf to i32
  %i.pg = call i64 @llvm.smax.i64(i64 %i.pd, i64 0)
  %i.ph = call i64 @llvm.umin.i64(i64 %i.pg, i64 65535)
  %.sroa.5.0.insert.ext = trunc nuw nsw i64 %i.ph to i32
  %i.pi = load ptr, ptr %i.ay, align 8, !tbaa !297, !nonnull !130, !align !131 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !195
  %i.pl = icmp slt i32 %i.pk, 2
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 24
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !194
  %i.po = getelementptr inbounds nuw i8, ptr %i.pi, i64 128
  %i.pp = load i64, ptr %i.po, align 8
  %i.pq = mul i64 %i.pp, %indvars.iv210
  %.sink.idx.i119 = select i1 %i.pl, i64 0, i64 %i.pq
  %.sink.i120 = getelementptr inbounds nuw i8, ptr %i.pn, i64 %.sink.idx.i119
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %.sink.i120, i64 %indvars.iv207
  %.sroa.5.0.insert.shift = shl nuw i32 %.sroa.5.0.insert.ext, 16
  %.sroa.0.0.insert.insert = or disjoint i32 %.sroa.5.0.insert.shift, %.sroa.0.0.insert.ext
  store i32 %.sroa.0.0.insert.insert, ptr %i.pr, align 2
  %indvars.iv.next208 = add nuw nsw i64 %indvars.iv207, 1 ; 2 uses
  %i.ps = load ptr, ptr %i.aa, align 8, !tbaa !293, !nonnull !130, !align !131 ; 2 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 12
  %i.pu = load i32, ptr %i.pt, align 4, !tbaa !191
  %i.pv = sext i32 %i.pu to i64
  %i.pw = icmp slt i64 %indvars.iv.next208, %i.pv
  br i1 %i.pw, label %bb.k, label %._crit_edge180, !llvm.loop !1486

bb.r:                                             ; preds = %bb.n
  %i.px = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %_ZN2cv7Array3dIiED2Ev.exit121, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @_ZdaPv(ptr noundef nonnull %i.px) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit121

_ZN2cv7Array3dIiED2Ev.exit121:                    ; preds = %bb.s, %bb.r, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gp, %bb.n ], [ %i.gp, %bb.r ], [ %i.gp, %bb.s ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.pz = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.qa = trunc nuw i8 %i.pz to i1
  br i1 %i.qa, label %bb.t, label %_ZN2cv7Array3dIiED2Ev.exit122

bb.t:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit121
  %i.qb = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.qc = icmp eq ptr %i.qb, null
  br i1 %i.qc, label %_ZN2cv7Array3dIiED2Ev.exit122, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZdaPv(ptr noundef nonnull %i.qb) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit122

_ZN2cv7Array3dIiED2Ev.exit122:                    ; preds = %bb.u, %bb.t, %_ZN2cv7Array3dIiED2Ev.exit121, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit121 ], [ %.pn107.pn.pn, %bb.t ], [ %.pn107.pn.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.qd = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.qe = trunc nuw i8 %i.qd to i1
  br i1 %i.qe, label %bb.v, label %_ZN2cv7Array2dIiED2Ev.exit123

bb.v:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit122
  %i.qf = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.qg = icmp eq ptr %i.qf, null
  br i1 %i.qg, label %_ZN2cv7Array2dIiED2Ev.exit123, label %bb.w

end_hunk_7
begin_hunk_8_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !78
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !78
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !78
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !309  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !308  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !307, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !308 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit112 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit112:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not193 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not193, label %.preheader153.lr.ph, label %._crit_edge196

.preheader153.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !307, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader153.preheader, label %._crit_edge196

.preheader153.preheader:                          ; preds = %.preheader153.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.preheader, %._crit_edge191
  %i.be = phi ptr [ %i.az, %.preheader153.preheader ], [ %i.by, %._crit_edge191 ] ; 2 uses
  %indvars.iv222 = phi i64 [ %i.bd, %.preheader153.preheader ], [ %indvars.iv.next223, %._crit_edge191 ] ; 4 uses
  %.094194 = phi i32 [ -1, %.preheader153.preheader ], [ %.1.lcssa, %._crit_edge191 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph190, label %._crit_edge191

.lr.ph190:                                        ; preds = %.preheader153
  %i.bi = icmp eq i64 %indvars.iv222, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv222 to i32     ; 4 uses
  br label %bb.k

._crit_edge196:                                   ; preds = %._crit_edge191, %.preheader153.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge196
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge196, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit113

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit113
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit113, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit118

._crit_edge191:                                   ; preds = %._crit_edge179, %.preheader153
  %i.by = phi ptr [ %i.be, %.preheader153 ], [ %i.sw, %._crit_edge179 ]
  %.1.lcssa = phi i32 [ %.094194, %.preheader153 ], [ %.2253, %._crit_edge179 ]
  %indvars.iv.next223 = add nsw i64 %indvars.iv222, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next223 to i32
  %exitcond225.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond225.not, label %._crit_edge196, label %.preheader153, !llvm.loop !1569

bb.k:                                             ; preds = %.lr.ph190, %._crit_edge179
  %indvars.iv219 = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next220, %._crit_edge179 ] ; 4 uses
  %.1187 = phi i32 [ %.094194, %.lr.ph190 ], [ %.2253, %._crit_edge179 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !339 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv219 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv219, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !308
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge179

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.gv
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1570

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !309 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !339 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !340 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1593
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1593 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !309 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1573

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.gc, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1574

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.gb, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !306 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [6 x i8], ptr %.sink.i.i.i, i64 %i.ee ; 3 uses
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !334
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 2
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !334
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 4
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !334
  %i.el = sext i32 %i.dw to i64
  %i.em = mul i64 %i.eb, %i.el
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.em
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.en = sext i32 %i.dy to i64
  %i.eo = getelementptr inbounds [6 x i8], ptr %.sink.i6.i.i, i64 %i.en ; 3 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !334
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !334
  %i.es = getelementptr inbounds nuw i8, ptr %i.eo, i64 4
  %i.et = load i16, ptr %i.es, align 2, !tbaa !334
  %i.eu = zext i16 %i.eg to i32
  %i.ev = zext i16 %i.ep to i32
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = call i32 @llvm.abs.i32(i32 %i.ew, i1 true)
  %i.ey = zext i16 %i.ei to i32
  %i.ez = zext i16 %i.er to i32
  %i.fa = sub nsw i32 %i.ey, %i.ez
  %i.fb = call i32 @llvm.abs.i32(i32 %i.fa, i1 true)
  %i.fc = add nuw nsw i32 %i.fb, %i.ex
  %i.fd = zext i16 %i.ek to i32
  %i.fe = zext i16 %i.et to i32
  %i.ff = sub nsw i32 %i.fd, %i.fe
  %i.fg = call i32 @llvm.abs.i32(i32 %i.ff, i1 true)
  %i.fh = add nuw nsw i32 %i.fc, %i.fg            ; 2 uses
  %i.fi = load i32, ptr %i.g, align 4, !tbaa !201
  %i.fj = mul nsw i32 %i.fi, %.084.i
  %i.fk = sext i32 %i.fj to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.fk ; 2 uses
  %i.fl = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.fm = add nsw i32 %i.fh, %i.fl
  store i32 %i.fm, ptr %gep.i, align 4, !tbaa !91
  %i.fn = load i32, ptr %i.as, align 4, !tbaa !340
  %i.fo = add nsw i32 %i.fn, %.04776.i
  %i.fp = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1594
  %i.fq = mul nsw i32 %i.fp, %i.fo
  %i.fr = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1594 ; 2 uses
  %i.fs = mul nsw i32 %i.fq, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.ft
  %i.fv = mul nsw i32 %i.fr, %.084.i
  %i.fw = sext i32 %i.fv to i64
  %i.fx = getelementptr inbounds [4 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %indvars.iv.i ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !91
  %i.ga = add nsw i32 %i.fz, %i.fh
  store i32 %i.ga, ptr %i.fy, align 4, !tbaa !91
  %i.gb = add nsw i32 %.04776.i, 1
  %i.gc = load i32, ptr %i.as, align 4, !tbaa !340 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.gc
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1577

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !309
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.gd = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.ge = add nsw i32 %i.gd, -1
  %i.gf = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1595
  %i.gg = mul nsw i32 %i.gf, %i.ge
  %i.gh = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1595 ; 2 uses
  %i.gi = mul nsw i32 %i.gg, %i.gh
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.gj
  %i.gl = mul nsw i32 %i.gh, %.084.i
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gm
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.gn, i64 %indvars.iv.i
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !91
  %i.gq = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1596
  %i.gr = mul nsw i32 %i.gq, %.084.i
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gs
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv.i
  store i32 %i.gp, ptr %i.gu, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gv = load i32, ptr %i.d, align 8, !tbaa !308 ; 3 uses
  %i.gw = sext i32 %i.gv to i64
  %i.gx = icmp slt i64 %indvars.iv.next.i, %i.gw
  br i1 %i.gx, label %bb.m, label %._crit_edge83.i, !llvm.loop !1582

bb.n:                                             ; preds = %bb.p
  %i.gy = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gz = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.s, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1187, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.hb = load i32, ptr %i.ar, align 8, !tbaa !306 ; 2 uses
  %i.hc = add nsw i32 %i.hb, %i.bj                ; 3 uses
  %i.hd = sub nsw i32 %i.hc, %i.bz
  %i.he = load ptr, ptr %i.au, align 8, !tbaa !194 ; 4 uses
  %i.hf = load i64, ptr %i.av, align 8            ; 4 uses
  %i.hg = load i32, ptr %i.d, align 8, !tbaa !308 ; 4 uses
  %i.hh = icmp sgt i32 %i.hg, 0
  br i1 %i.hh, label %.lr.ph160, label %.loopexit

.lr.ph160:                                        ; preds = %bb.q
  %i.hi = add nsw i32 %i.hb, %i.cb                ; 2 uses
  %i.hj = sub i32 %i.hi, %i.bz
  %i.hk = load i32, ptr %i.as, align 4, !tbaa !340 ; 4 uses
  %i.hl = add nsw i32 %i.hj, %i.hk
  %i.hm = load i32, ptr %i.at, align 4, !tbaa !195
  %i.hn = icmp slt i32 %i.hm, 2                   ; 2 uses
  %i.ho = add nsw i32 %i.hc, %i.hk
  %i.hp = sext i32 %i.ho to i64
  %i.hq = mul i64 %i.hf, %i.hp
  %.sink.idx.i114 = select i1 %i.hn, i64 0, i64 %i.hq
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i114
  %i.hr = add nsw i32 %i.hi, %i.hk
  %i.hs = sext i32 %i.hr to i64                   ; 2 uses
  %i.ht = getelementptr inbounds [6 x i8], ptr %.sink.i115, i64 %i.hs ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i16, ptr %i.hu, align 2, !tbaa !334
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 2
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !334
  %i.hy = load i16, ptr %i.ht, align 2, !tbaa !334
  %i.hz = xor i32 %i.hk, -1
  %i.ia = add i32 %i.hc, %i.hz
  %i.ib = sext i32 %i.ia to i64
  %i.ic = mul i64 %i.hf, %i.ib
  %.sink.idx.i = select i1 %i.hn, i64 0, i64 %i.ic
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sink.idx.i
  %i.id = getelementptr inbounds [6 x i8], ptr %.sink.i, i64 %i.hs ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 4
  %i.if = load i16, ptr %i.ie, align 2, !tbaa !334
  %i.ig = getelementptr inbounds nuw i8, ptr %i.id, i64 2
  %i.ih = load i16, ptr %i.ig, align 2, !tbaa !334
  %i.ii = load i16, ptr %i.id, align 2, !tbaa !334
  %i.ij = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.ik = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.il = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.im = zext i16 %i.hy to i32                   ; 2 uses
  %i.in = zext i16 %i.hx to i32                   ; 2 uses
  %i.io = zext i16 %i.hv to i32                   ; 2 uses
  %i.ip = zext i16 %i.ii to i32                   ; 2 uses
  %i.iq = zext i16 %i.ih to i32                   ; 2 uses
  %i.ir = zext i16 %i.if to i32                   ; 2 uses
  %i.is = sext i32 %i.hl to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.hg to i64   ; 4 uses
  %i.it = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.ij, i64 %i.it
  %scevgep273 = getelementptr i8, ptr %i.ik, i64 %i.it
  %scevgep275 = getelementptr i8, ptr %i.il, i64 %i.it
  %min.iters.check = icmp ult i32 %i.hg, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.im, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert284 = insertelement <4 x i32> poison, i32 %i.in, i64 0
  %broadcast.splat285 = shufflevector <4 x i32> %broadcast.splatinsert284, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <4 x i32> poison, i32 %i.io, i64 0
  %broadcast.splat287 = shufflevector <4 x i32> %broadcast.splatinsert286, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert288 = insertelement <4 x i32> poison, i32 %i.ip, i64 0
  %broadcast.splat289 = shufflevector <4 x i32> %broadcast.splatinsert288, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert290 = insertelement <4 x i32> poison, i32 %i.iq, i64 0
  %broadcast.splat291 = shufflevector <4 x i32> %broadcast.splatinsert290, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert292 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat293 = shufflevector <4 x i32> %broadcast.splatinsert292, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph160, %._crit_edge
  %.091158 = phi i32 [ 0, %.lr.ph160 ], [ %i.ol, %._crit_edge ] ; 5 uses
  %i.iu = load i32, ptr %i.g, align 4, !tbaa !201
  %i.iv = mul i32 %i.iu, %.091158
  %i.iw = sext i32 %i.iv to i64                   ; 2 uses
  %i.ix = getelementptr [4 x i8], ptr %i.ij, i64 %i.iw ; 4 uses
  %i.iy = load i32, ptr %i.q, align 4, !tbaa !206
  %i.iz = mul nsw i32 %i.iy, %.1187
  %i.ja = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.jb = mul nsw i32 %i.iz, %i.ja
  %i.jc = sext i32 %i.jb to i64                   ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.jc
  %i.je = mul nsw i32 %i.ja, %.091158
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr inbounds [4 x i8], ptr %i.jd, i64 %i.jf ; 4 uses
  %i.jh = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.ji = mul i32 %i.jh, %i.cb
  %i.jj = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.jk = mul i32 %i.ji, %i.jj
  %i.jl = sext i32 %i.jk to i64                   ; 2 uses
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.il, i64 %i.jl
  %i.jn = mul nsw i32 %i.jj, %.091158
  %i.jo = sext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jm, i64 %i.jo ; 4 uses
  %i.jq = load i32, ptr %i.as, align 4, !tbaa !340 ; 2 uses
  %i.jr = xor i32 %i.jq, -1
  %i.js = add i32 %.091158, %i.hd                 ; 2 uses
  %i.jt = add i32 %i.js, %i.jr
  %i.ju = sext i32 %i.jt to i64
  %i.jv = mul i64 %i.hf, %i.ju
  %i.jw = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.jv ; 5 uses
  %i.jx = add i32 %i.js, %i.jq
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul i64 %i.hf, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.he, i64 %i.jz ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.kb = shl nsw i64 %i.iw, 2
  %scevgep272 = getelementptr i8, ptr %scevgep, i64 %i.kb ; 2 uses
  %i.kc = add nsw i64 %i.jc, %i.jf
  %i.kd = shl nsw i64 %i.kc, 2
  %scevgep274 = getelementptr i8, ptr %scevgep273, i64 %i.kd ; 2 uses
  %i.ke = add nsw i64 %i.jl, %i.jo
  %i.kf = shl nsw i64 %i.ke, 2
  %scevgep276 = getelementptr i8, ptr %scevgep275, i64 %i.kf ; 2 uses
  %bound0 = icmp ult ptr %i.ix, %scevgep274
  %bound1 = icmp ult ptr %i.jg, %scevgep272
  %found.conflict = and i1 %bound0, %bound1
  %bound0277 = icmp ult ptr %i.ix, %scevgep276
  %bound1278 = icmp ult ptr %i.jp, %scevgep272
  %found.conflict279 = and i1 %bound0277, %bound1278
  %conflict.rdx = or i1 %found.conflict, %found.conflict279
  %bound0280 = icmp ult ptr %i.jg, %scevgep276
  %bound1281 = icmp ult ptr %i.jp, %scevgep274
  %found.conflict282 = and i1 %bound0280, %bound1281
  %conflict.rdx283 = or i1 %conflict.rdx, %found.conflict282
  br i1 %conflict.rdx283, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.kg = or disjoint i64 %index, 1
  %i.kh = or disjoint i64 %index, 2
  %i.ki = or disjoint i64 %index, 3
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.kj, align 4, !tbaa !91, !alias.scope !1597, !noalias !1598
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %index ; 4 uses
  %wide.load294 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !91, !alias.scope !1599, !noalias !1600
  %i.kl = sub nsw <4 x i32> %wide.load294, %wide.load
  store <4 x i32> %i.kl, ptr %i.kk, align 4, !tbaa !91, !alias.scope !1599, !noalias !1600
  %i.km = add nsw i64 %index, %i.is               ; 2 uses
  %i.kn = add nsw i64 %i.kg, %i.is                ; 2 uses
  %i.ko = add nsw i64 %i.kh, %i.is                ; 2 uses
  %i.kp = add nsw i64 %i.ki, %i.is                ; 2 uses
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index ; 2 uses
  %wide.load295 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !91, !alias.scope !1598
  %i.kr = getelementptr inbounds [6 x i8], ptr %i.jw, i64 %i.km ; 3 uses
  %i.ks = getelementptr inbounds [6 x i8], ptr %i.jw, i64 %i.kn ; 3 uses
  %i.kt = getelementptr inbounds [6 x i8], ptr %i.jw, i64 %i.ko ; 3 uses
  %i.ku = getelementptr inbounds [6 x i8], ptr %i.jw, i64 %i.kp ; 3 uses
  %i.kv = load i16, ptr %i.kr, align 2, !tbaa !334
  %i.kw = load i16, ptr %i.ks, align 2, !tbaa !334
  %i.kx = load i16, ptr %i.kt, align 2, !tbaa !334
  %i.ky = load i16, ptr %i.ku, align 2, !tbaa !334
  %i.kz = insertelement <4 x i16> poison, i16 %i.kv, i64 0
  %i.la = insertelement <4 x i16> %i.kz, i16 %i.kw, i64 1
  %i.lb = insertelement <4 x i16> %i.la, i16 %i.kx, i64 2
  %i.lc = insertelement <4 x i16> %i.lb, i16 %i.ky, i64 3
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kr, i64 2
  %i.le = getelementptr inbounds nuw i8, ptr %i.ks, i64 2
  %i.lf = getelementptr inbounds nuw i8, ptr %i.kt, i64 2
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 2
  %i.lh = load i16, ptr %i.ld, align 2, !tbaa !334
  %i.li = load i16, ptr %i.le, align 2, !tbaa !334
  %i.lj = load i16, ptr %i.lf, align 2, !tbaa !334
  %i.lk = load i16, ptr %i.lg, align 2, !tbaa !334
  %i.ll = insertelement <4 x i16> poison, i16 %i.lh, i64 0
  %i.lm = insertelement <4 x i16> %i.ll, i16 %i.li, i64 1
  %i.ln = insertelement <4 x i16> %i.lm, i16 %i.lj, i64 2
  %i.lo = insertelement <4 x i16> %i.ln, i16 %i.lk, i64 3
  %i.lp = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.lq = getelementptr inbounds nuw i8, ptr %i.ks, i64 4
  %i.lr = getelementptr inbounds nuw i8, ptr %i.kt, i64 4
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.lt = load i16, ptr %i.lp, align 2, !tbaa !334
  %i.lu = load i16, ptr %i.lq, align 2, !tbaa !334
  %i.lv = load i16, ptr %i.lr, align 2, !tbaa !334
  %i.lw = load i16, ptr %i.ls, align 2, !tbaa !334
  %i.lx = insertelement <4 x i16> poison, i16 %i.lt, i64 0
  %i.ly = insertelement <4 x i16> %i.lx, i16 %i.lu, i64 1
  %i.lz = insertelement <4 x i16> %i.ly, i16 %i.lv, i64 2
  %i.ma = insertelement <4 x i16> %i.lz, i16 %i.lw, i64 3
  %i.mb = getelementptr inbounds [6 x i8], ptr %i.ka, i64 %i.km ; 3 uses
  %i.mc = getelementptr inbounds [6 x i8], ptr %i.ka, i64 %i.kn ; 3 uses
  %i.md = getelementptr inbounds [6 x i8], ptr %i.ka, i64 %i.ko ; 3 uses
  %i.me = getelementptr inbounds [6 x i8], ptr %i.ka, i64 %i.kp ; 3 uses
  %i.mf = load i16, ptr %i.mb, align 2, !tbaa !334
  %i.mg = load i16, ptr %i.mc, align 2, !tbaa !334
  %i.mh = load i16, ptr %i.md, align 2, !tbaa !334
  %i.mi = load i16, ptr %i.me, align 2, !tbaa !334
  %i.mj = insertelement <4 x i16> poison, i16 %i.mf, i64 0
  %i.mk = insertelement <4 x i16> %i.mj, i16 %i.mg, i64 1
  %i.ml = insertelement <4 x i16> %i.mk, i16 %i.mh, i64 2
  %i.mm = insertelement <4 x i16> %i.ml, i16 %i.mi, i64 3
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mb, i64 2
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mc, i64 2
  %i.mp = getelementptr inbounds nuw i8, ptr %i.md, i64 2
  %i.mq = getelementptr inbounds nuw i8, ptr %i.me, i64 2
  %i.mr = load i16, ptr %i.mn, align 2, !tbaa !334
  %i.ms = load i16, ptr %i.mo, align 2, !tbaa !334
  %i.mt = load i16, ptr %i.mp, align 2, !tbaa !334
  %i.mu = load i16, ptr %i.mq, align 2, !tbaa !334
  %i.mv = insertelement <4 x i16> poison, i16 %i.mr, i64 0
  %i.mw = insertelement <4 x i16> %i.mv, i16 %i.ms, i64 1
  %i.mx = insertelement <4 x i16> %i.mw, i16 %i.mt, i64 2
  %i.my = insertelement <4 x i16> %i.mx, i16 %i.mu, i64 3
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mb, i64 4
  %i.na = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  %i.nb = getelementptr inbounds nuw i8, ptr %i.md, i64 4
  %i.nc = getelementptr inbounds nuw i8, ptr %i.me, i64 4
  %i.nd = load i16, ptr %i.mz, align 2, !tbaa !334
  %i.ne = load i16, ptr %i.na, align 2, !tbaa !334
  %i.nf = load i16, ptr %i.nb, align 2, !tbaa !334
  %i.ng = load i16, ptr %i.nc, align 2, !tbaa !334
  %i.nh = insertelement <4 x i16> poison, i16 %i.nd, i64 0
  %i.ni = insertelement <4 x i16> %i.nh, i16 %i.ne, i64 1
  %i.nj = insertelement <4 x i16> %i.ni, i16 %i.nf, i64 2
  %i.nk = insertelement <4 x i16> %i.nj, i16 %i.ng, i64 3
  %i.nl = zext <4 x i16> %i.mm to <4 x i32>
  %i.nm = sub nsw <4 x i32> %broadcast.splat, %i.nl
  %i.nn = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nm, i1 true)
  %i.no = zext <4 x i16> %i.my to <4 x i32>
  %i.np = sub nsw <4 x i32> %broadcast.splat285, %i.no
  %i.nq = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.np, i1 true)
  %i.nr = zext <4 x i16> %i.nk to <4 x i32>
  %i.ns = sub nsw <4 x i32> %broadcast.splat287, %i.nr
  %i.nt = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ns, i1 true)
  %i.nu = zext <4 x i16> %i.lc to <4 x i32>
  %i.nv = sub nsw <4 x i32> %broadcast.splat289, %i.nu
  %i.nw = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nv, i1 true)
  %i.nx = zext <4 x i16> %i.lo to <4 x i32>
  %i.ny = sub nsw <4 x i32> %broadcast.splat291, %i.nx
  %i.nz = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ny, i1 true)
  %i.oa = zext <4 x i16> %i.ma to <4 x i32>
  %i.ob = sub nsw <4 x i32> %broadcast.splat293, %i.oa
  %i.oc = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ob, i1 true)
  %i.od = add nuw nsw <4 x i32> %i.nw, %i.nz
  %i.oe = add nuw nsw <4 x i32> %i.od, %i.oc
  %i.of = sub <4 x i32> %wide.load295, %i.oe
  %i.og = add <4 x i32> %i.of, %i.nn
  %i.oh = add <4 x i32> %i.og, %i.nq
  %i.oi = add <4 x i32> %i.oh, %i.nt              ; 3 uses
  store <4 x i32> %i.oi, ptr %i.kj, align 4, !tbaa !91, !alias.scope !1597, !noalias !1598
  %wide.load296 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !91, !alias.scope !1599, !noalias !1600
  %i.oj = add nsw <4 x i32> %i.oi, %wide.load296
  store <4 x i32> %i.oj, ptr %i.kk, align 4, !tbaa !91, !alias.scope !1599, !noalias !1600
  store <4 x i32> %i.oi, ptr %i.kq, align 4, !tbaa !91, !alias.scope !1598
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ok = icmp eq i64 %index.next, %n.vec
  br i1 %i.ok, label %middle.block, label %vector.body, !llvm.loop !1587

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ol = add nuw nsw i32 %.091158, 1             ; 2 uses
  %exitcond205.not = icmp eq i32 %i.ol, %i.hg
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph, !llvm.loop !1588

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %indvars.iv ; 3 uses
  %i.on = load i32, ptr %i.om, align 4, !tbaa !91
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %indvars.iv ; 4 uses
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !91
  %i.oq = sub nsw i32 %i.op, %i.on
  store i32 %i.oq, ptr %i.oo, align 4, !tbaa !91
  %i.or = add nsw i64 %indvars.iv, %i.is          ; 2 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %indvars.iv ; 2 uses
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !91
  %i.ou = getelementptr inbounds [6 x i8], ptr %i.jw, i64 %i.or ; 3 uses
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !334
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !334
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.oz = load i16, ptr %i.oy, align 2, !tbaa !334
  %i.pa = getelementptr inbounds [6 x i8], ptr %i.ka, i64 %i.or ; 3 uses
  %i.pb = load i16, ptr %i.pa, align 2, !tbaa !334
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 2
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !334
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 4
  %i.pf = load i16, ptr %i.pe, align 2, !tbaa !334
  %i.pg = zext i16 %i.pb to i32
  %i.ph = sub nsw i32 %i.im, %i.pg
  %i.pi = call i32 @llvm.abs.i32(i32 %i.ph, i1 true)
  %i.pj = zext i16 %i.pd to i32
  %i.pk = sub nsw i32 %i.in, %i.pj
  %i.pl = call i32 @llvm.abs.i32(i32 %i.pk, i1 true)
  %i.pm = zext i16 %i.pf to i32
  %i.pn = sub nsw i32 %i.io, %i.pm
  %i.po = call i32 @llvm.abs.i32(i32 %i.pn, i1 true)
  %i.pp = zext i16 %i.ov to i32
  %i.pq = sub nsw i32 %i.ip, %i.pp
  %i.pr = call i32 @llvm.abs.i32(i32 %i.pq, i1 true)
  %i.ps = zext i16 %i.ox to i32
  %i.pt = sub nsw i32 %i.iq, %i.ps
  %i.pu = call i32 @llvm.abs.i32(i32 %i.pt, i1 true)
  %i.pv = zext i16 %i.oz to i32
  %i.pw = sub nsw i32 %i.ir, %i.pv
  %i.px = call i32 @llvm.abs.i32(i32 %i.pw, i1 true)
  %i.py = add nuw nsw i32 %i.pr, %i.pu
  %i.pz = add nuw nsw i32 %i.py, %i.px
  %.neg11.i = sub i32 %i.ot, %i.pz
  %.neg13.i = add i32 %.neg11.i, %i.pi
  %i.qa = add i32 %.neg13.i, %i.pl
  %i.qb = add i32 %i.qa, %i.po                    ; 2 uses
  store i32 %i.qb, ptr %i.om, align 4, !tbaa !91
  %i.qc = load i32, ptr %i.oo, align 4, !tbaa !91
  %i.qd = add nsw i32 %i.qb, %i.qc
  store i32 %i.qd, ptr %i.oo, align 4, !tbaa !91
  %i.qe = load i32, ptr %i.om, align 4, !tbaa !91
  store i32 %i.qe, ptr %i.os, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1589

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.qf = add nsw i32 %.1187, 1
  %i.qg = load i32, ptr %i.m, align 4, !tbaa !309
  %i.qh = srem i32 %i.qf, %i.qg
  %.pre = load i32, ptr %i.d, align 8, !tbaa !308
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.qi = phi i32 [ %.pre, %.loopexit ], [ %i.gv, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.qh, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.qj = icmp sgt i32 %i.qi, 0
  br i1 %i.qj, label %.lr.ph178, label %._crit_edge179

.lr.ph178:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.qk = load i32, ptr %i.ar, align 8, !tbaa !306 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.qk
  %i.ql = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.qm = load i64, ptr %i.av, align 8, !tbaa !82
  %i.qn = load ptr, ptr %2, align 8, !tbaa !203
  %i.qo = load i32, ptr %i.g, align 4, !tbaa !201
  %i.qp = add nsw i32 %i.cc, %i.qk
  %i.qq = sext i32 %i.qp to i64
  %i.qr = sext i32 %i.qo to i64
  %wide.trip.count217 = zext nneg i32 %i.qi to i64 ; 2 uses
  %.pre228 = load i32, ptr %i.aw, align 8, !tbaa !310
  %.pre229 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep262 = getelementptr [6 x i8], ptr %i.ql, i64 %i.qq
  br label %.lr.ph166

.lr.ph166:                                        ; preds = %.lr.ph178, %._crit_edge167
  %indvars.iv214 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next215, %._crit_edge167 ] ; 3 uses
  %.lcssa172186 = phi i64 [ 0, %.lr.ph178 ], [ %i.ru, %._crit_edge167 ]
  %.lcssa170183 = phi i64 [ 0, %.lr.ph178 ], [ %i.rr, %._crit_edge167 ]
  %.sroa.0124.1176 = phi i64 [ 0, %.lr.ph178 ], [ %i.rv, %._crit_edge167 ]
  %.lcssa162174175 = phi i64 [ 0, %.lr.ph178 ], [ %i.ro, %._crit_edge167 ]
  %i.qs = trunc nuw nsw i64 %indvars.iv214 to i32
  %.reass = add i32 %invariant.op, %i.qs
  %i.qt = sext i32 %.reass to i64
  %i.qu = mul i64 %i.qm, %i.qt
  %i.qv = mul nsw i64 %indvars.iv214, %i.qr
  %i.qw = getelementptr inbounds [4 x i8], ptr %i.qn, i64 %i.qv
  %gep263 = getelementptr i8, ptr %invariant.gep262, i64 %i.qu
  br label %bb.r

._crit_edge167:                                   ; preds = %bb.r
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next215, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge179, label %.lr.ph166, !llvm.loop !1590

bb.r:                                             ; preds = %.lr.ph166, %bb.r
  %indvars.iv209 = phi i64 [ 0, %.lr.ph166 ], [ %indvars.iv.next210, %bb.r ] ; 3 uses
  %i.qx = phi i64 [ %.lcssa172186, %.lr.ph166 ], [ %i.ru, %bb.r ]
  %i.qy = phi i64 [ %.lcssa170183, %.lr.ph166 ], [ %i.rr, %bb.r ]
  %.sroa.0124.2163 = phi i64 [ %.sroa.0124.1176, %.lr.ph166 ], [ %i.rv, %bb.r ]
  %i.qz = phi i64 [ %.lcssa162174175, %.lr.ph166 ], [ %i.ro, %bb.r ]
  %i.ra = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %indvars.iv209
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !91
  %i.rc = ashr i32 %i.rb, %.pre228
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %.pre229, i64 %i.rd
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !91
  %gep = getelementptr [6 x i8], ptr %gep263, i64 %indvars.iv209 ; 3 uses
  %i.rg = load i16, ptr %gep, align 2, !tbaa !334
  %i.rh = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !334
  %i.rj = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !334
  %i.rl = sext i32 %i.rf to i64                   ; 4 uses
  %i.rm = zext i16 %i.rg to i64
  %i.rn = mul nsw i64 %i.rm, %i.rl
  %i.ro = add nsw i64 %i.qz, %i.rn                ; 3 uses
  %i.rp = zext i16 %i.ri to i64
  %i.rq = mul nsw i64 %i.rp, %i.rl
  %i.rr = add nsw i64 %i.qy, %i.rq                ; 3 uses
  %i.rs = zext i16 %i.rk to i64
  %i.rt = mul nsw i64 %i.rs, %i.rl
  %i.ru = add nsw i64 %i.qx, %i.rt                ; 3 uses
  %i.rv = add nsw i64 %.sroa.0124.2163, %i.rl     ; 3 uses
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count217
  br i1 %exitcond213.not, label %._crit_edge167, label %bb.r, !llvm.loop !1591

._crit_edge179:                                   ; preds = %._crit_edge167, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2253 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge167 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rr, %._crit_edge167 ]
  %.sroa.9.0 = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.ru, %._crit_edge167 ]
  %.lcssa162174.lcssa = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.ro, %._crit_edge167 ]
  %.sroa.0124.1.lcssa = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rv, %._crit_edge167 ] ; 4 uses
  %i.rw = sdiv i64 %.sroa.0124.1.lcssa, 2         ; 3 uses
  %i.rx = add i64 %.lcssa162174.lcssa, %i.rw
  %i.ry = udiv i64 %i.rx, %.sroa.0124.1.lcssa
  %i.rz = add i64 %.sroa.5.0, %i.rw
  %i.sa = udiv i64 %i.rz, %.sroa.0124.1.lcssa
  %i.sb = add i64 %.sroa.9.0, %i.rw
  %i.sc = udiv i64 %i.sb, %.sroa.0124.1.lcssa
  %i.sd = call i64 @llvm.smax.i64(i64 %i.ry, i64 0)
  %i.se = call i64 @llvm.umin.i64(i64 %i.sd, i64 65535)
  %i.sf = trunc nuw i64 %i.se to i16
  %i.sg = call i64 @llvm.smax.i64(i64 %i.sa, i64 0)
  %i.sh = call i64 @llvm.umin.i64(i64 %i.sg, i64 65535)
  %i.si = trunc nuw i64 %i.sh to i16
  %i.sj = call i64 @llvm.smax.i64(i64 %i.sc, i64 0)
  %i.sk = call i64 @llvm.umin.i64(i64 %i.sj, i64 65535)
  %i.sl = trunc nuw i64 %i.sk to i16
  %i.sm = load ptr, ptr %i.ay, align 8, !tbaa !311, !nonnull !130, !align !131 ; 3 uses
  %i.sn = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !195
  %i.sp = icmp slt i32 %i.so, 2
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 24
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !194
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 128
  %i.st = load i64, ptr %i.ss, align 8
  %i.su = mul i64 %i.st, %indvars.iv222
  %.sink.idx.i116 = select i1 %i.sp, i64 0, i64 %i.su
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.sr, i64 %.sink.idx.i116
  %i.sv = getelementptr inbounds nuw [6 x i8], ptr %.sink.i117, i64 %indvars.iv219 ; 3 uses
  store i16 %i.sf, ptr %i.sv, align 2
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 2
  store i16 %i.si, ptr %.sroa.5.0..sroa_idx, align 2
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.sv, i64 4
  store i16 %i.sl, ptr %.sroa.6.0..sroa_idx, align 2
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.sw = load ptr, ptr %i.aa, align 8, !tbaa !307, !nonnull !130, !align !131 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 12
  %i.sy = load i32, ptr %i.sx, align 4, !tbaa !191
  %i.sz = sext i32 %i.sy to i64
  %i.ta = icmp slt i64 %indvars.iv.next220, %i.sz
  br i1 %i.ta, label %bb.k, label %._crit_edge191, !llvm.loop !1592

bb.s:                                             ; preds = %bb.n
  %i.tb = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.tc = icmp eq ptr %i.tb, null
  br i1 %i.tc, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.tb) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.t, %bb.s, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gy, %bb.n ], [ %i.gy, %bb.s ], [ %i.gy, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.td = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.te = trunc nuw i8 %i.td to i1
  br i1 %i.te, label %bb.u, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.u:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.tf = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.tg = icmp eq ptr %i.tf, null
  br i1 %i.tg, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.tf) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.v, %bb.u, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.u ], [ %.pn107.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.th = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.ti = trunc nuw i8 %i.th to i1
  br i1 %i.ti, label %bb.w, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.w:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.tj = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.tk = icmp eq ptr %i.tj, null
  br i1 %i.tk, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.tj) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi3EEElm7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !308  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge96

.preheader.preheader:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !306  ; 2 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !339  ; 2 uses
  %i.j = sub i32 %i.g, %i.i
  %i.k = add nsw i32 %i.f, %2
  %i.l = load i32, ptr %i.a, align 4, !tbaa !340
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %5, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = sext i32 %i.m to i64
  %i.w = load ptr, ptr %6, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = sub i32 %i.m, %i.i
  %i.aa = sext i32 %i.g to i64
  %i.ab = sext i32 %i.z to i64
end_hunk_8
begin_hunk_9_@_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiED0Ev:bb.a
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22, !inline_history !80
  br label %_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiED2Ev.exit

_ZN27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20, !inline_history !80
  tail call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(288) %0) #20, !inline_history !80
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 288) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiEclERKNS0_5RangeE(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::Array2d", align 8      ; 13 uses
  %3 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %4 = alloca %"struct.cv::Array3d", align 8      ; 13 uses
  %i.a = load i32, ptr %1, align 4, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !42   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 7 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !322  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !200
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 5 uses
  store i32 %i.e, ptr %i.g, align 4, !tbaa !201
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  store i8 1, ptr %i.h, align 8, !tbaa !202
  %i.i = mul nsw i32 %i.e, %i.e
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #21
  store ptr %i.l, ptr %2, align 8, !tbaa !203
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !323  ; 2 uses
  %i.o = load i32, ptr %i.d, align 8, !tbaa !322  ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.n, ptr %i.p, align 8, !tbaa !205
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !206
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store i32 %i.o, ptr %i.r, align 8, !tbaa !207
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 3 uses
  store i8 1, ptr %i.s, align 4, !tbaa !208
  %i.t = mul nsw i32 %i.o, %i.n
  %i.u = mul nsw i32 %i.t, %i.o                   ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = icmp slt i32 %i.u, 0
  %i.x = shl nuw nsw i64 %i.v, 2
  %i.y = select i1 %i.w, i64 -1, i64 %i.x
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #21
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr %i.z, ptr %3, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !321, !nonnull !130, !align !131
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !191 ; 2 uses
  %i.ae = load i32, ptr %i.d, align 8, !tbaa !322 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %i.ad, ptr %i.af, align 8, !tbaa !205
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 2 uses
  store i32 %i.ae, ptr %i.ag, align 4, !tbaa !206
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i32 %i.ae, ptr %i.ah, align 8, !tbaa !207
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  store i8 1, ptr %i.ai, align 4, !tbaa !208
  %i.aj = mul nsw i32 %i.ae, %i.ad
  %i.ak = mul nsw i32 %i.aj, %i.ae                ; 2 uses
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = icmp slt i32 %i.ak, 0
  %i.an = shl nuw nsw i64 %i.al, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ao) #21
          to label %_ZN2cv7Array3dIiEC2Eiii.exit112 unwind label %bb.j

_ZN2cv7Array3dIiEC2Eiii.exit112:                  ; preds = %bb.b
  store ptr %i.ap, ptr %4, align 8, !tbaa !209
  %.not.not209 = icmp slt i32 %i.a, %i.c
  br i1 %.not.not209, label %.preheader164.lr.ph, label %._crit_edge212

.preheader164.lr.ph:                              ; preds = %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = load ptr, ptr %i.aa, align 8, !tbaa !321, !nonnull !130, !align !131 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !191
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %.preheader164.preheader, label %._crit_edge212

.preheader164.preheader:                          ; preds = %.preheader164.lr.ph
  %i.bd = sext i32 %i.a to i64                    ; 2 uses
  br label %.preheader164

.preheader164:                                    ; preds = %.preheader164.preheader, %._crit_edge207
  %i.be = phi ptr [ %i.az, %.preheader164.preheader ], [ %i.by, %._crit_edge207 ] ; 2 uses
  %indvars.iv239 = phi i64 [ %i.bd, %.preheader164.preheader ], [ %indvars.iv.next240, %._crit_edge207 ] ; 4 uses
  %.094210 = phi i32 [ -1, %.preheader164.preheader ], [ %.1.lcssa, %._crit_edge207 ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !191
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.preheader164
  %i.bi = icmp eq i64 %indvars.iv239, %i.bd
  %i.bj = trunc nsw i64 %indvars.iv239 to i32     ; 4 uses
  br label %bb.k

._crit_edge212:                                   ; preds = %._crit_edge207, %.preheader164.lr.ph, %_ZN2cv7Array3dIiEC2Eiii.exit112
  %i.bk = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.c, label %_ZN2cv7Array3dIiED2Ev.exit

bb.c:                                             ; preds = %._crit_edge212
  %i.bm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %_ZN2cv7Array3dIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZdaPv(ptr noundef nonnull %i.bm) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit

_ZN2cv7Array3dIiED2Ev.exit:                       ; preds = %._crit_edge212, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.bo = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.e, label %_ZN2cv7Array3dIiED2Ev.exit113

bb.e:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit
  %i.bq = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZN2cv7Array3dIiED2Ev.exit113, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.bq) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit113

_ZN2cv7Array3dIiED2Ev.exit113:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.bs = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.g, label %_ZN2cv7Array2dIiED2Ev.exit

bb.g:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit113
  %i.bu = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZN2cv7Array2dIiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit

_ZN2cv7Array2dIiED2Ev.exit:                       ; preds = %_ZN2cv7Array3dIiED2Ev.exit113, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.i:                                             ; preds = %bb.a
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit119

bb.j:                                             ; preds = %bb.b
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN2cv7Array3dIiED2Ev.exit118

._crit_edge207:                                   ; preds = %._crit_edge192, %.preheader164
  %i.by = phi ptr [ %i.be, %.preheader164 ], [ %i.sn, %._crit_edge192 ]
  %.1.lcssa = phi i32 [ %.094210, %.preheader164 ], [ %.2271, %._crit_edge192 ]
  %indvars.iv.next240 = add nsw i64 %indvars.iv239, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next240 to i32
  %exitcond242.not = icmp eq i32 %i.c, %lftr.wideiv
  br i1 %exitcond242.not, label %._crit_edge212, label %.preheader164, !llvm.loop !1675

bb.k:                                             ; preds = %.lr.ph206, %._crit_edge192
  %indvars.iv236 = phi i64 [ 0, %.lr.ph206 ], [ %indvars.iv.next237, %._crit_edge192 ] ; 4 uses
  %.1203 = phi i32 [ %.094210, %.lr.ph206 ], [ %.2271, %._crit_edge192 ] ; 3 uses
  %i.bz = load i32, ptr %i.aq, align 8, !tbaa !343 ; 4 uses
  %i.ca = sub i32 %i.bj, %i.bz
  %i.cb = trunc i64 %indvars.iv236 to i32         ; 4 uses
  %i.cc = sub i32 %i.cb, %i.bz
  %i.cd = icmp eq i64 %indvars.iv236, 0
  br i1 %i.cd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ce = load i32, ptr %i.d, align 8, !tbaa !322
  %i.cf = icmp sgt i32 %i.ce, 0
  br i1 %i.cf, label %.preheader.preheader.i, label %._crit_edge192

.preheader.preheader.i:                           ; preds = %bb.l
  %i.cg = load ptr, ptr %2, align 8               ; 2 uses
  %i.ch = load ptr, ptr %3, align 8               ; 3 uses
  %i.ci = load ptr, ptr %4, align 8
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge83.i, %.preheader.preheader.i
  %.084.i = phi i32 [ %i.cj, %._crit_edge83.i ], [ 0, %.preheader.preheader.i ] ; 8 uses
  %5 = add nsw i32 %.084.i, %i.bj
  br label %bb.m

._crit_edge83.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i
  %i.cj = add nuw nsw i32 %.084.i, 1              ; 2 uses
  %i.ck = icmp slt i32 %i.cj, %i.ge
  br i1 %i.ck, label %.preheader.i, label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit, !llvm.loop !1676

bb.m:                                             ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.i, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %_ZN2cv7Array2dIiED2Ev.exit55.i ] ; 8 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !201
  %i.cm = mul nsw i32 %i.cl, %.084.i
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 0, ptr %i.cp, align 4, !tbaa !91
  %i.cq = load i32, ptr %i.m, align 4, !tbaa !323 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %_ZN2cv7Array2dIiED2Ev.exit.i, %bb.m
  %i.cs = phi i32 [ %i.cq, %bb.m ], [ %i.dk, %_ZN2cv7Array2dIiED2Ev.exit.i ]
  %i.ct = load i32, ptr %i.aq, align 8, !tbaa !343 ; 2 uses
  %i.cu = sub i32 %5, %i.ct
  %i.cv = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.cw = sub i32 %i.cv, %i.ct
  %i.cx = load i32, ptr %i.as, align 4, !tbaa !344 ; 3 uses
  %.not78.i = icmp slt i32 %i.cx, 0
  br i1 %.not78.i, label %_ZN2cv7Array2dIiED2Ev.exit55.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i
  %i.cy = sub nsw i32 0, %i.cx
  %invariant.gep.i = getelementptr [4 x i8], ptr %i.cg, i64 %indvars.iv.i
  br label %.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit.i:                     ; preds = %bb.m, %_ZN2cv7Array2dIiED2Ev.exit.i
  %.04974.i = phi i32 [ %i.dj, %_ZN2cv7Array2dIiED2Ev.exit.i ], [ 0, %bb.m ] ; 2 uses
  %i.cz = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1699
  %i.da = mul nsw i32 %i.cz, %.04974.i
  %i.db = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1699 ; 2 uses
  %i.dc = mul nsw i32 %i.da, %i.db
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dd
  %i.df = mul nsw i32 %i.db, %.084.i
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv.i
  store i32 0, ptr %i.di, align 4, !tbaa !91
  %i.dj = add nuw nsw i32 %.04974.i, 1            ; 2 uses
  %i.dk = load i32, ptr %i.m, align 4, !tbaa !323 ; 2 uses
  %i.dl = icmp slt i32 %i.dj, %i.dk
  br i1 %i.dl, label %_ZN2cv7Array2dIiED2Ev.exit.i, label %._crit_edge.i, !llvm.loop !1679

.lr.ph.i:                                         ; preds = %._crit_edge77.i, %.lr.ph.preheader.i
  %i.dm = phi i32 [ %i.dr, %._crit_edge77.i ], [ %i.cx, %.lr.ph.preheader.i ] ; 3 uses
  %.04879.i = phi i32 [ %i.ds, %._crit_edge77.i ], [ %i.cy, %.lr.ph.preheader.i ] ; 4 uses
  %.not5275.i = icmp slt i32 %i.dm, 0
  br i1 %.not5275.i, label %._crit_edge77.i, label %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i

_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i:             ; preds = %.lr.ph.i
  %i.dn = sub nsw i32 0, %i.dm
  %i.do = add i32 %.04879.i, %i.bj
  %i.dp = add i32 %i.cu, %.04879.i
  %i.dq = load ptr, ptr %i.au, align 8, !tbaa !194 ; 2 uses
  br label %_ZN2cv7Array2dIiED2Ev.exit53.i

._crit_edge77.i:                                  ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %.lr.ph.i
  %i.dr = phi i32 [ %i.dm, %.lr.ph.i ], [ %i.fl, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 2 uses
  %i.ds = add nsw i32 %.04879.i, 1
  %.not.not.i = icmp slt i32 %.04879.i, %i.dr
  br i1 %.not.not.i, label %.lr.ph.i, label %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, !llvm.loop !1680

_ZN2cv7Array2dIiED2Ev.exit53.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit53.i, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i
  %.04776.i = phi i32 [ %i.dn, %_ZN2cv7Array2dIiED2Ev.exit53.lr.ph.i ], [ %i.fk, %_ZN2cv7Array2dIiED2Ev.exit53.i ] ; 5 uses
  %i.dt = load i32, ptr %i.ar, align 8, !tbaa !320 ; 4 uses
  %i.du = add i32 %i.do, %i.dt
  %i.dv = add nsw i32 %i.dt, %.04776.i
  %i.dw = add i32 %i.dp, %i.dt
  %i.dx = add i32 %i.cw, %.04776.i
  %i.dy = add i32 %i.dx, %i.dt
  %i.dz = load i32, ptr %i.at, align 4, !tbaa !195
  %i.ea = icmp slt i32 %i.dz, 2                   ; 2 uses
  %i.eb = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ec = sext i32 %i.du to i64
  %i.ed = mul i64 %i.eb, %i.ec
  %.sink.idx.i.i.i = select i1 %i.ea, i64 0, i64 %i.ed
  %.sink.i.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i.i.i
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds [8 x i8], ptr %.sink.i.i.i, i64 %i.ee
  %i.eg = sext i32 %i.dw to i64
  %i.eh = mul i64 %i.eb, %i.eg
  %.sink.idx.i5.i.i = select i1 %i.ea, i64 0, i64 %i.eh
  %.sink.i6.i.i = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.sink.idx.i5.i.i
  %i.ei = sext i32 %i.dy to i64
  %i.ej = getelementptr inbounds [8 x i8], ptr %.sink.i6.i.i, i64 %i.ei
  %i.ek = load <4 x i16>, ptr %i.ef, align 2, !tbaa !334
  %i.el = load <4 x i16>, ptr %i.ej, align 2, !tbaa !334
  %i.em = zext <4 x i16> %i.ek to <4 x i32>
  %i.en = zext <4 x i16> %i.el to <4 x i32>
  %i.eo = sub nsw <4 x i32> %i.em, %i.en
  %i.ep = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.eo, i1 true)
  %i.eq = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ep) ; 2 uses
  %i.er = load i32, ptr %i.g, align 4, !tbaa !201
  %i.es = mul nsw i32 %i.er, %.084.i
  %i.et = sext i32 %i.es to i64
  %gep.i = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.et ; 2 uses
  %i.eu = load i32, ptr %gep.i, align 4, !tbaa !91
  %i.ev = add nsw i32 %i.eq, %i.eu
  store i32 %i.ev, ptr %gep.i, align 4, !tbaa !91
  %i.ew = load i32, ptr %i.as, align 4, !tbaa !344
  %i.ex = add nsw i32 %i.ew, %.04776.i
  %i.ey = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1700
  %i.ez = mul nsw i32 %i.ey, %i.ex
  %i.fa = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1700 ; 2 uses
  %i.fb = mul nsw i32 %i.ez, %i.fa
  %i.fc = sext i32 %i.fb to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fc
  %i.fe = mul nsw i32 %i.fa, %.084.i
  %i.ff = sext i32 %i.fe to i64
  %i.fg = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %i.ff
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !91
  %i.fj = add nsw i32 %i.fi, %i.eq
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !91
  %i.fk = add nsw i32 %.04776.i, 1
  %i.fl = load i32, ptr %i.as, align 4, !tbaa !344 ; 2 uses
  %.not52.not.i = icmp slt i32 %.04776.i, %i.fl
  br i1 %.not52.not.i, label %_ZN2cv7Array2dIiED2Ev.exit53.i, label %._crit_edge77.i, !llvm.loop !1683

_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i:          ; preds = %._crit_edge77.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !323
  br label %_ZN2cv7Array2dIiED2Ev.exit55.i

_ZN2cv7Array2dIiED2Ev.exit55.i:                   ; preds = %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i, %._crit_edge.i
  %i.fm = phi i32 [ %.pre.i, %_ZN2cv7Array2dIiED2Ev.exit55.loopexit.i ], [ %i.cs, %._crit_edge.i ]
  %i.fn = add nsw i32 %i.fm, -1
  %i.fo = load i32, ptr %i.q, align 4, !tbaa !206, !noalias !1701
  %i.fp = mul nsw i32 %i.fo, %i.fn
  %i.fq = load i32, ptr %i.r, align 8, !tbaa !207, !noalias !1701 ; 2 uses
  %i.fr = mul nsw i32 %i.fp, %i.fq
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.fs
  %i.fu = mul nsw i32 %i.fq, %.084.i
  %i.fv = sext i32 %i.fu to i64
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.ft, i64 %i.fv
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fw, i64 %indvars.iv.i
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !91
  %i.fz = load i32, ptr %i.ah, align 8, !tbaa !207, !noalias !1702
  %i.ga = mul nsw i32 %i.fz, %.084.i
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.ci, i64 %i.gb
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.gc, i64 %indvars.iv.i
  store i32 %i.fy, ptr %i.gd, align 4, !tbaa !91
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ge = load i32, ptr %i.d, align 8, !tbaa !322 ; 3 uses
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next.i, %i.gf
  br i1 %i.gg, label %bb.m, label %._crit_edge83.i, !llvm.loop !1688

bb.n:                                             ; preds = %bb.p
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.gi = load i8, ptr %i.ai, align 4, !tbaa !208, !range !210, !noundef !130
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.s, label %_ZN2cv7Array3dIiED2Ev.exit118

bb.o:                                             ; preds = %bb.k
  br i1 %i.bi, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %i.a, i32 noundef %i.cb, i32 noundef %.1203, ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(21) %3, ptr noundef nonnull align 8 dereferenceable(21) %4)
          to label %.loopexit unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.gk = load i32, ptr %i.ar, align 8, !tbaa !320 ; 2 uses
  %i.gl = add nsw i32 %i.gk, %i.bj                ; 3 uses
  %i.gm = sub nsw i32 %i.gl, %i.bz
  %i.gn = load ptr, ptr %i.au, align 8, !tbaa !194 ; 4 uses
  %i.go = load i64, ptr %i.av, align 8            ; 4 uses
  %i.gp = load i32, ptr %i.d, align 8, !tbaa !322 ; 4 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph171, label %.loopexit

.lr.ph171:                                        ; preds = %bb.q
  %i.gr = add nsw i32 %i.gk, %i.cb                ; 2 uses
  %i.gs = sub i32 %i.gr, %i.bz
  %i.gt = load i32, ptr %i.as, align 4, !tbaa !344 ; 4 uses
  %i.gu = add nsw i32 %i.gs, %i.gt
  %i.gv = load i32, ptr %i.at, align 4, !tbaa !195
  %i.gw = icmp slt i32 %i.gv, 2                   ; 2 uses
  %i.gx = add nsw i32 %i.gl, %i.gt
  %i.gy = sext i32 %i.gx to i64
  %i.gz = mul i64 %i.go, %i.gy
  %.sink.idx.i114 = select i1 %i.gw, i64 0, i64 %i.gz
  %.sink.i115 = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sink.idx.i114
  %i.ha = add nsw i32 %i.gr, %i.gt
  %i.hb = sext i32 %i.ha to i64                   ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %.sink.i115, i64 %i.hb
  %i.hd = xor i32 %i.gt, -1
  %i.he = add i32 %i.gl, %i.hd
  %i.hf = sext i32 %i.he to i64
  %i.hg = mul i64 %i.go, %i.hf
  %.sink.idx.i = select i1 %i.gw, i64 0, i64 %i.hg
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 %.sink.idx.i
  %i.hh = getelementptr inbounds [8 x i8], ptr %.sink.i, i64 %i.hb
  %i.hi = load <4 x i16>, ptr %i.hc, align 2, !tbaa !334
  %i.hj = load <4 x i16>, ptr %i.hh, align 2, !tbaa !334
  %i.hk = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.hl = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.hm = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.hn = shufflevector <4 x i16> %i.hi, <4 x i16> %i.hj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ho = zext <8 x i16> %i.hn to <8 x i32>       ; 9 uses
  %i.hp = sext i32 %i.gu to i64                   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.gp to i64   ; 4 uses
  %i.hq = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %scevgep = getelementptr i8, ptr %i.hk, i64 %i.hq
  %scevgep293 = getelementptr i8, ptr %i.hl, i64 %i.hq
  %scevgep295 = getelementptr i8, ptr %i.hm, i64 %i.hq
  %min.iters.check = icmp ult i32 %i.gp, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splat305 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat307 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat309 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat311 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat313 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat315 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat317 = shufflevector <8 x i32> %i.ho, <8 x i32> poison, <4 x i32> <i32 7, i32 7, i32 7, i32 7>
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph171, %._crit_edge
  %.091169 = phi i32 [ 0, %.lr.ph171 ], [ %i.oo, %._crit_edge ] ; 5 uses
  %i.hr = load i32, ptr %i.g, align 4, !tbaa !201
  %i.hs = mul i32 %i.hr, %.091169
  %i.ht = sext i32 %i.hs to i64                   ; 2 uses
  %i.hu = getelementptr [4 x i8], ptr %i.hk, i64 %i.ht ; 4 uses
  %i.hv = load i32, ptr %i.q, align 4, !tbaa !206
  %i.hw = mul nsw i32 %i.hv, %.1203
  %i.hx = load i32, ptr %i.r, align 8, !tbaa !207 ; 2 uses
  %i.hy = mul nsw i32 %i.hw, %i.hx
  %i.hz = sext i32 %i.hy to i64                   ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %i.hz
  %i.ib = mul nsw i32 %i.hx, %.091169
  %i.ic = sext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds [4 x i8], ptr %i.ia, i64 %i.ic ; 4 uses
  %i.ie = load i32, ptr %i.ag, align 4, !tbaa !206
  %i.if = mul i32 %i.ie, %i.cb
  %i.ig = load i32, ptr %i.ah, align 8, !tbaa !207 ; 2 uses
  %i.ih = mul i32 %i.if, %i.ig
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = getelementptr inbounds [4 x i8], ptr %i.hm, i64 %i.ii
  %i.ik = mul nsw i32 %i.ig, %.091169
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  %i.im = getelementptr inbounds [4 x i8], ptr %i.ij, i64 %i.il ; 4 uses
  %i.in = load i32, ptr %i.as, align 4, !tbaa !344 ; 2 uses
  %i.io = xor i32 %i.in, -1
  %i.ip = add i32 %.091169, %i.gm                 ; 2 uses
  %i.iq = add i32 %i.ip, %i.io
  %i.ir = sext i32 %i.iq to i64
  %i.is = mul i64 %i.go, %i.ir
  %i.it = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.is ; 5 uses
  %i.iu = add i32 %i.ip, %i.in
  %i.iv = sext i32 %i.iu to i64
  %i.iw = mul i64 %i.go, %i.iv
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gn, i64 %i.iw ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.iy = shl nsw i64 %i.ht, 2
  %scevgep292 = getelementptr i8, ptr %scevgep, i64 %i.iy ; 2 uses
  %i.iz = add nsw i64 %i.hz, %i.ic
  %i.ja = shl nsw i64 %i.iz, 2
  %scevgep294 = getelementptr i8, ptr %scevgep293, i64 %i.ja ; 2 uses
  %i.jb = add nsw i64 %i.ii, %i.il
  %i.jc = shl nsw i64 %i.jb, 2
  %scevgep296 = getelementptr i8, ptr %scevgep295, i64 %i.jc ; 2 uses
  %bound0 = icmp ult ptr %i.hu, %scevgep294
  %bound1 = icmp ult ptr %i.id, %scevgep292
  %found.conflict = and i1 %bound0, %bound1
  %bound0297 = icmp ult ptr %i.hu, %scevgep296
  %bound1298 = icmp ult ptr %i.im, %scevgep292
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx = or i1 %found.conflict, %found.conflict299
  %bound0300 = icmp ult ptr %i.id, %scevgep296
  %bound1301 = icmp ult ptr %i.im, %scevgep294
  %found.conflict302 = and i1 %bound0300, %bound1301
  %conflict.rdx303 = or i1 %conflict.rdx, %found.conflict302
  br i1 %conflict.rdx303, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 8 uses
  %i.jd = or disjoint i64 %index, 1
  %i.je = or disjoint i64 %index, 2
  %i.jf = or disjoint i64 %index, 3
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %index ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jg, align 4, !tbaa !91, !alias.scope !1703, !noalias !1704
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %index ; 4 uses
  %wide.load318 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !91, !alias.scope !1705, !noalias !1706
  %i.ji = sub nsw <4 x i32> %wide.load318, %wide.load
  store <4 x i32> %i.ji, ptr %i.jh, align 4, !tbaa !91, !alias.scope !1705, !noalias !1706
  %i.jj = add nsw i64 %index, %i.hp               ; 2 uses
  %i.jk = add nsw i64 %i.jd, %i.hp                ; 2 uses
  %i.jl = add nsw i64 %i.je, %i.hp                ; 2 uses
  %i.jm = add nsw i64 %i.jf, %i.hp                ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %index ; 2 uses
  %wide.load319 = load <4 x i32>, ptr %i.jn, align 4, !tbaa !91, !alias.scope !1704
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jj ; 4 uses
  %i.jp = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jk ; 4 uses
  %i.jq = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jl ; 4 uses
  %i.jr = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.jm ; 4 uses
  %i.js = load i16, ptr %i.jo, align 2, !tbaa !334
  %i.jt = load i16, ptr %i.jp, align 2, !tbaa !334
  %i.ju = load i16, ptr %i.jq, align 2, !tbaa !334
  %i.jv = load i16, ptr %i.jr, align 2, !tbaa !334
  %i.jw = insertelement <4 x i16> poison, i16 %i.js, i64 0
  %i.jx = insertelement <4 x i16> %i.jw, i16 %i.jt, i64 1
  %i.jy = insertelement <4 x i16> %i.jx, i16 %i.ju, i64 2
  %i.jz = insertelement <4 x i16> %i.jy, i16 %i.jv, i64 3
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jo, i64 2
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jq, i64 2
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 2
  %i.ke = load i16, ptr %i.ka, align 2, !tbaa !334
  %i.kf = load i16, ptr %i.kb, align 2, !tbaa !334
  %i.kg = load i16, ptr %i.kc, align 2, !tbaa !334
  %i.kh = load i16, ptr %i.kd, align 2, !tbaa !334
  %i.ki = insertelement <4 x i16> poison, i16 %i.ke, i64 0
  %i.kj = insertelement <4 x i16> %i.ki, i16 %i.kf, i64 1
  %i.kk = insertelement <4 x i16> %i.kj, i16 %i.kg, i64 2
  %i.kl = insertelement <4 x i16> %i.kk, i16 %i.kh, i64 3
  %i.km = getelementptr inbounds nuw i8, ptr %i.jo, i64 4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jr, i64 4
  %i.kq = load i16, ptr %i.km, align 2, !tbaa !334
  %i.kr = load i16, ptr %i.kn, align 2, !tbaa !334
  %i.ks = load i16, ptr %i.ko, align 2, !tbaa !334
  %i.kt = load i16, ptr %i.kp, align 2, !tbaa !334
  %i.ku = insertelement <4 x i16> poison, i16 %i.kq, i64 0
  %i.kv = insertelement <4 x i16> %i.ku, i16 %i.kr, i64 1
  %i.kw = insertelement <4 x i16> %i.kv, i16 %i.ks, i64 2
  %i.kx = insertelement <4 x i16> %i.kw, i16 %i.kt, i64 3
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jo, i64 6
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jp, i64 6
  %i.la = getelementptr inbounds nuw i8, ptr %i.jq, i64 6
  %i.lb = getelementptr inbounds nuw i8, ptr %i.jr, i64 6
  %i.lc = load i16, ptr %i.ky, align 2, !tbaa !334
  %i.ld = load i16, ptr %i.kz, align 2, !tbaa !334
  %i.le = load i16, ptr %i.la, align 2, !tbaa !334
  %i.lf = load i16, ptr %i.lb, align 2, !tbaa !334
  %i.lg = insertelement <4 x i16> poison, i16 %i.lc, i64 0
  %i.lh = insertelement <4 x i16> %i.lg, i16 %i.ld, i64 1
  %i.li = insertelement <4 x i16> %i.lh, i16 %i.le, i64 2
  %i.lj = insertelement <4 x i16> %i.li, i16 %i.lf, i64 3
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.jj ; 4 uses
  %i.ll = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.jk ; 4 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.jl ; 4 uses
  %i.ln = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.jm ; 4 uses
  %i.lo = load i16, ptr %i.lk, align 2, !tbaa !334
  %i.lp = load i16, ptr %i.ll, align 2, !tbaa !334
  %i.lq = load i16, ptr %i.lm, align 2, !tbaa !334
  %i.lr = load i16, ptr %i.ln, align 2, !tbaa !334
  %i.ls = insertelement <4 x i16> poison, i16 %i.lo, i64 0
  %i.lt = insertelement <4 x i16> %i.ls, i16 %i.lp, i64 1
  %i.lu = insertelement <4 x i16> %i.lt, i16 %i.lq, i64 2
  %i.lv = insertelement <4 x i16> %i.lu, i16 %i.lr, i64 3
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lk, i64 2
  %i.lx = getelementptr inbounds nuw i8, ptr %i.ll, i64 2
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lm, i64 2
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ln, i64 2
  %i.ma = load i16, ptr %i.lw, align 2, !tbaa !334
  %i.mb = load i16, ptr %i.lx, align 2, !tbaa !334
  %i.mc = load i16, ptr %i.ly, align 2, !tbaa !334
  %i.md = load i16, ptr %i.lz, align 2, !tbaa !334
  %i.me = insertelement <4 x i16> poison, i16 %i.ma, i64 0
  %i.mf = insertelement <4 x i16> %i.me, i16 %i.mb, i64 1
  %i.mg = insertelement <4 x i16> %i.mf, i16 %i.mc, i64 2
  %i.mh = insertelement <4 x i16> %i.mg, i16 %i.md, i64 3
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lk, i64 4
  %i.mj = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ml = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  %i.mm = load i16, ptr %i.mi, align 2, !tbaa !334
  %i.mn = load i16, ptr %i.mj, align 2, !tbaa !334
  %i.mo = load i16, ptr %i.mk, align 2, !tbaa !334
  %i.mp = load i16, ptr %i.ml, align 2, !tbaa !334
  %i.mq = insertelement <4 x i16> poison, i16 %i.mm, i64 0
  %i.mr = insertelement <4 x i16> %i.mq, i16 %i.mn, i64 1
  %i.ms = insertelement <4 x i16> %i.mr, i16 %i.mo, i64 2
  %i.mt = insertelement <4 x i16> %i.ms, i16 %i.mp, i64 3
  %i.mu = getelementptr inbounds nuw i8, ptr %i.lk, i64 6
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ll, i64 6
  %i.mw = getelementptr inbounds nuw i8, ptr %i.lm, i64 6
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ln, i64 6
  %i.my = load i16, ptr %i.mu, align 2, !tbaa !334
  %i.mz = load i16, ptr %i.mv, align 2, !tbaa !334
  %i.na = load i16, ptr %i.mw, align 2, !tbaa !334
  %i.nb = load i16, ptr %i.mx, align 2, !tbaa !334
  %i.nc = insertelement <4 x i16> poison, i16 %i.my, i64 0
  %i.nd = insertelement <4 x i16> %i.nc, i16 %i.mz, i64 1
  %i.ne = insertelement <4 x i16> %i.nd, i16 %i.na, i64 2
  %i.nf = insertelement <4 x i16> %i.ne, i16 %i.nb, i64 3
  %i.ng = zext <4 x i16> %i.lv to <4 x i32>
  %i.nh = sub nsw <4 x i32> %broadcast.splat, %i.ng
  %i.ni = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nh, i1 true)
  %i.nj = zext <4 x i16> %i.mh to <4 x i32>
  %i.nk = sub nsw <4 x i32> %broadcast.splat305, %i.nj
  %i.nl = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nk, i1 true)
  %i.nm = zext <4 x i16> %i.mt to <4 x i32>
  %i.nn = sub nsw <4 x i32> %broadcast.splat307, %i.nm
  %i.no = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nn, i1 true)
  %i.np = zext <4 x i16> %i.nf to <4 x i32>
  %i.nq = sub nsw <4 x i32> %broadcast.splat309, %i.np
  %i.nr = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nq, i1 true)
  %i.ns = zext <4 x i16> %i.jz to <4 x i32>
  %i.nt = sub nsw <4 x i32> %broadcast.splat311, %i.ns
  %i.nu = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nt, i1 true)
  %i.nv = zext <4 x i16> %i.kl to <4 x i32>
  %i.nw = sub nsw <4 x i32> %broadcast.splat313, %i.nv
  %i.nx = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nw, i1 true)
  %i.ny = zext <4 x i16> %i.kx to <4 x i32>
  %i.nz = sub nsw <4 x i32> %broadcast.splat315, %i.ny
  %i.oa = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.nz, i1 true)
  %i.ob = zext <4 x i16> %i.lj to <4 x i32>
  %i.oc = sub nsw <4 x i32> %broadcast.splat317, %i.ob
  %i.od = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.oc, i1 true)
  %i.oe = add nuw nsw <4 x i32> %i.nu, %i.nx
  %i.of = add nuw nsw <4 x i32> %i.oe, %i.oa
  %i.og = add nuw nsw <4 x i32> %i.of, %i.od
  %i.oh = sub <4 x i32> %wide.load319, %i.og
  %i.oi = add <4 x i32> %i.oh, %i.ni
  %i.oj = add <4 x i32> %i.oi, %i.nl
  %i.ok = add <4 x i32> %i.oj, %i.no
  %i.ol = add <4 x i32> %i.ok, %i.nr              ; 3 uses
  store <4 x i32> %i.ol, ptr %i.jg, align 4, !tbaa !91, !alias.scope !1703, !noalias !1704
  %wide.load320 = load <4 x i32>, ptr %i.jh, align 4, !tbaa !91, !alias.scope !1705, !noalias !1706
  %i.om = add nsw <4 x i32> %i.ol, %wide.load320
  store <4 x i32> %i.om, ptr %i.jh, align 4, !tbaa !91, !alias.scope !1705, !noalias !1706
  store <4 x i32> %i.ol, ptr %i.jn, align 4, !tbaa !91, !alias.scope !1704
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !1693

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.oo = add nuw nsw i32 %.091169, 1             ; 2 uses
  %exitcond222.not = icmp eq i32 %i.oo, %i.gp
  br i1 %exitcond222.not, label %.loopexit, label %.lr.ph, !llvm.loop !1694

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.op = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv ; 3 uses
  %i.oq = load i32, ptr %i.op, align 4, !tbaa !91
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.hu, i64 %indvars.iv ; 4 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !91
  %i.ot = sub nsw i32 %i.os, %i.oq
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !91
  %i.ou = add nsw i64 %indvars.iv, %i.hp          ; 2 uses
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %i.im, i64 %indvars.iv ; 2 uses
  %i.ow = load i32, ptr %i.ov, align 4, !tbaa !91
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.it, i64 %i.ou
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ix, i64 %i.ou
  %i.oz = load <4 x i16>, ptr %i.ox, align 2, !tbaa !334
  %i.pa = load <4 x i16>, ptr %i.oy, align 2, !tbaa !334
  %i.pb = shufflevector <4 x i16> %i.pa, <4 x i16> %i.oz, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.pc = zext <8 x i16> %i.pb to <8 x i32>
  %i.pd = sub nsw <8 x i32> %i.ho, %i.pc
  %i.pe = call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.pd, i1 true) ; 8 uses
  %shift = shufflevector <8 x i32> %i.pe, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nuw nsw <8 x i32> %i.pe, %shift
  %shift323 = shufflevector <8 x i32> %i.pe, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 6, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop324 = add nuw nsw <8 x i32> %foldExtExtBinop, %shift323
  %shift326 = shufflevector <8 x i32> %i.pe, <8 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 7, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop327 = add nuw nsw <8 x i32> %foldExtExtBinop324, %shift326
  %i.pf = extractelement <8 x i32> %foldExtExtBinop327, i64 4
  %.neg14.i = sub i32 %i.ow, %i.pf
  %i.pg = extractelement <8 x i32> %i.pe, i64 0
  %.neg16.i = add i32 %.neg14.i, %i.pg
  %i.ph = extractelement <8 x i32> %i.pe, i64 1
  %.neg18.i = add i32 %.neg16.i, %i.ph
  %i.pi = extractelement <8 x i32> %i.pe, i64 2
  %i.pj = add i32 %.neg18.i, %i.pi
  %i.pk = extractelement <8 x i32> %i.pe, i64 3
  %i.pl = add i32 %i.pj, %i.pk                    ; 2 uses
  store i32 %i.pl, ptr %i.op, align 4, !tbaa !91
  %i.pm = load i32, ptr %i.or, align 4, !tbaa !91
  %i.pn = add nsw i32 %i.pl, %i.pm
  store i32 %i.pn, ptr %i.or, align 4, !tbaa !91
  %i.po = load i32, ptr %i.op, align 4, !tbaa !91
  store i32 %i.po, ptr %i.ov, align 4, !tbaa !91
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !1695

.loopexit:                                        ; preds = %._crit_edge, %bb.q, %bb.p
  %i.pp = add nsw i32 %.1203, 1
  %i.pq = load i32, ptr %i.m, align 4, !tbaa !323
  %i.pr = srem i32 %i.pp, %i.pq
  %.pre = load i32, ptr %i.d, align 8, !tbaa !322
  br label %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit

_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit: ; preds = %._crit_edge83.i, %.loopexit
  %i.ps = phi i32 [ %.pre, %.loopexit ], [ %i.ge, %._crit_edge83.i ] ; 2 uses
  %.2 = phi i32 [ %i.pr, %.loopexit ], [ 0, %._crit_edge83.i ] ; 2 uses
  %i.pt = icmp sgt i32 %i.ps, 0
  br i1 %i.pt, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %i.pu = load i32, ptr %i.ar, align 8, !tbaa !320 ; 2 uses
  %invariant.op = add i32 %i.ca, %i.pu
  %i.pv = load ptr, ptr %i.au, align 8, !tbaa !194
  %i.pw = load i64, ptr %i.av, align 8, !tbaa !82
  %i.px = load ptr, ptr %2, align 8, !tbaa !203
  %i.py = load i32, ptr %i.g, align 4, !tbaa !201
  %i.pz = add nsw i32 %i.cc, %i.pu
  %i.qa = sext i32 %i.pz to i64
  %i.qb = sext i32 %i.py to i64
  %wide.trip.count234 = zext nneg i32 %i.ps to i64 ; 2 uses
  %.pre246 = load i32, ptr %i.aw, align 8, !tbaa !324
  %.pre247 = load ptr, ptr %i.ax, align 8, !tbaa !47
  %invariant.gep281 = getelementptr [8 x i8], ptr %i.pv, i64 %i.qa
  br label %.lr.ph177

.lr.ph177:                                        ; preds = %.lr.ph191, %._crit_edge178
  %indvars.iv231 = phi i64 [ 0, %.lr.ph191 ], [ %indvars.iv.next232, %._crit_edge178 ] ; 3 uses
  %.lcssa185202 = phi i64 [ 0, %.lr.ph191 ], [ %i.rk, %._crit_edge178 ]
  %.lcssa183199 = phi i64 [ 0, %.lr.ph191 ], [ %i.rh, %._crit_edge178 ]
  %.lcssa181196 = phi i64 [ 0, %.lr.ph191 ], [ %i.re, %._crit_edge178 ]
  %.sroa.0126.1189 = phi i64 [ 0, %.lr.ph191 ], [ %i.rl, %._crit_edge178 ]
  %.lcssa173187188 = phi i64 [ 0, %.lr.ph191 ], [ %i.rb, %._crit_edge178 ]
  %i.qc = trunc nuw nsw i64 %indvars.iv231 to i32
  %.reass = add i32 %invariant.op, %i.qc
  %i.qd = sext i32 %.reass to i64
  %i.qe = mul i64 %i.pw, %i.qd
  %i.qf = mul nsw i64 %indvars.iv231, %i.qb
  %i.qg = getelementptr inbounds [4 x i8], ptr %i.px, i64 %i.qf
  %gep282 = getelementptr i8, ptr %invariant.gep281, i64 %i.qe
  br label %bb.r

._crit_edge178:                                   ; preds = %bb.r
  %indvars.iv.next232 = add nuw nsw i64 %indvars.iv231, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next232, %wide.trip.count234
  br i1 %exitcond235.not, label %._crit_edge192, label %.lr.ph177, !llvm.loop !1696

bb.r:                                             ; preds = %.lr.ph177, %bb.r
  %indvars.iv226 = phi i64 [ 0, %.lr.ph177 ], [ %indvars.iv.next227, %bb.r ] ; 3 uses
  %i.qh = phi i64 [ %.lcssa185202, %.lr.ph177 ], [ %i.rk, %bb.r ]
  %i.qi = phi i64 [ %.lcssa183199, %.lr.ph177 ], [ %i.rh, %bb.r ]
  %i.qj = phi i64 [ %.lcssa181196, %.lr.ph177 ], [ %i.re, %bb.r ]
  %.sroa.0126.2174 = phi i64 [ %.sroa.0126.1189, %.lr.ph177 ], [ %i.rl, %bb.r ]
  %i.qk = phi i64 [ %.lcssa173187188, %.lr.ph177 ], [ %i.rb, %bb.r ]
  %i.ql = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %indvars.iv226
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !91
  %i.qn = ashr i32 %i.qm, %.pre246
  %i.qo = sext i32 %i.qn to i64
  %i.qp = getelementptr inbounds nuw [4 x i8], ptr %.pre247, i64 %i.qo
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !91
  %gep = getelementptr [8 x i8], ptr %gep282, i64 %indvars.iv226 ; 4 uses
  %i.qr = load i16, ptr %gep, align 2, !tbaa !334
  %i.qs = getelementptr inbounds nuw i8, ptr %gep, i64 2
  %i.qt = load i16, ptr %i.qs, align 2, !tbaa !334
  %i.qu = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.qv = load i16, ptr %i.qu, align 2, !tbaa !334
  %i.qw = getelementptr inbounds nuw i8, ptr %gep, i64 6
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !334
  %i.qy = sext i32 %i.qq to i64                   ; 5 uses
  %i.qz = zext i16 %i.qr to i64
  %i.ra = mul nsw i64 %i.qz, %i.qy
  %i.rb = add nsw i64 %i.qk, %i.ra                ; 3 uses
  %i.rc = zext i16 %i.qt to i64
  %i.rd = mul nsw i64 %i.rc, %i.qy
  %i.re = add nsw i64 %i.qj, %i.rd                ; 3 uses
  %i.rf = zext i16 %i.qv to i64
  %i.rg = mul nsw i64 %i.rf, %i.qy
  %i.rh = add nsw i64 %i.qi, %i.rg                ; 3 uses
  %i.ri = zext i16 %i.qx to i64
  %i.rj = mul nsw i64 %i.ri, %i.qy
  %i.rk = add nsw i64 %i.qh, %i.rj                ; 3 uses
  %i.rl = add nsw i64 %.sroa.0126.2174, %i.qy     ; 3 uses
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond230.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count234
  br i1 %exitcond230.not, label %._crit_edge178, label %bb.r, !llvm.loop !1697

._crit_edge192:                                   ; preds = %._crit_edge178, %bb.l, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit
  %.2271 = phi i32 [ 0, %bb.l ], [ %.2, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %.2, %._crit_edge178 ] ; 2 uses
  %.sroa.5.0 = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.re, %._crit_edge178 ]
  %.sroa.9.0 = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rh, %._crit_edge178 ]
  %.sroa.13.0 = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rk, %._crit_edge178 ]
  %.lcssa173187.lcssa = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rb, %._crit_edge178 ]
  %.sroa.0126.1.lcssa = phi i64 [ 0, %bb.l ], [ 0, %_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForFirstElementInRowEiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_.exit ], [ %i.rl, %._crit_edge178 ] ; 5 uses
  %i.rm = sdiv i64 %.sroa.0126.1.lcssa, 2         ; 4 uses
  %i.rn = add i64 %.lcssa173187.lcssa, %i.rm
  %i.ro = udiv i64 %i.rn, %.sroa.0126.1.lcssa
  %i.rp = add i64 %.sroa.5.0, %i.rm
  %i.rq = udiv i64 %i.rp, %.sroa.0126.1.lcssa
  %i.rr = add i64 %.sroa.9.0, %i.rm
  %i.rs = udiv i64 %i.rr, %.sroa.0126.1.lcssa
  %i.rt = add i64 %.sroa.13.0, %i.rm
  %i.ru = udiv i64 %i.rt, %.sroa.0126.1.lcssa
  %i.rv = call i64 @llvm.smax.i64(i64 %i.ro, i64 0)
  %i.rw = call i64 @llvm.umin.i64(i64 %i.rv, i64 65535)
  %i.rx = call i64 @llvm.smax.i64(i64 %i.rq, i64 0)
  %i.ry = call i64 @llvm.umin.i64(i64 %i.rx, i64 65535)
  %i.rz = call i64 @llvm.smax.i64(i64 %i.rs, i64 0)
  %i.sa = call i64 @llvm.umin.i64(i64 %i.rz, i64 65535)
  %i.sb = call i64 @llvm.smax.i64(i64 %i.ru, i64 0)
  %i.sc = call i64 @llvm.umin.i64(i64 %i.sb, i64 65535)
  %i.sd = load ptr, ptr %i.ay, align 8, !tbaa !325, !nonnull !130, !align !131 ; 3 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !195
  %i.sg = icmp slt i32 %i.sf, 2
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !194
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sd, i64 128
  %i.sk = load i64, ptr %i.sj, align 8
  %i.sl = mul i64 %i.sk, %indvars.iv239
  %.sink.idx.i116 = select i1 %i.sg, i64 0, i64 %i.sl
  %.sink.i117 = getelementptr inbounds nuw i8, ptr %i.si, i64 %.sink.idx.i116
  %i.sm = getelementptr inbounds nuw [8 x i8], ptr %.sink.i117, i64 %indvars.iv236
  %.sroa.7.0.insert.shift = shl nuw i64 %i.sc, 48
  %.sroa.6.0.insert.shift = shl nuw nsw i64 %i.sa, 32
  %.sroa.6.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %.sroa.6.0.insert.shift
  %.sroa.5.0.insert.shift = shl nuw nsw i64 %i.ry, 16
  %.sroa.5.0.insert.insert = or disjoint i64 %.sroa.6.0.insert.insert, %.sroa.5.0.insert.shift
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.5.0.insert.insert, %i.rw
  store i64 %.sroa.0.0.insert.insert, ptr %i.sm, align 2
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.sn = load ptr, ptr %i.aa, align 8, !tbaa !321, !nonnull !130, !align !131 ; 2 uses
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 12
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !191
  %i.sq = sext i32 %i.sp to i64
  %i.sr = icmp slt i64 %indvars.iv.next237, %i.sq
  br i1 %i.sr, label %bb.k, label %._crit_edge207, !llvm.loop !1698

bb.s:                                             ; preds = %bb.n
  %i.ss = load ptr, ptr %4, align 8, !tbaa !209   ; 2 uses
  %i.st = icmp eq ptr %i.ss, null
  br i1 %i.st, label %_ZN2cv7Array3dIiED2Ev.exit118, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.ss) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit118

_ZN2cv7Array3dIiED2Ev.exit118:                    ; preds = %bb.t, %bb.s, %bb.n, %bb.j
  %.pn107.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.j ], [ %i.gh, %bb.n ], [ %i.gh, %bb.s ], [ %i.gh, %bb.t ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.su = load i8, ptr %i.s, align 4, !tbaa !208, !range !210, !noundef !130
  %i.sv = trunc nuw i8 %i.su to i1
  br i1 %i.sv, label %bb.u, label %_ZN2cv7Array3dIiED2Ev.exit119

bb.u:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit118
  %i.sw = load ptr, ptr %3, align 8, !tbaa !209   ; 2 uses
  %i.sx = icmp eq ptr %i.sw, null
  br i1 %i.sx, label %_ZN2cv7Array3dIiED2Ev.exit119, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @_ZdaPv(ptr noundef nonnull %i.sw) #22
  br label %_ZN2cv7Array3dIiED2Ev.exit119

_ZN2cv7Array3dIiED2Ev.exit119:                    ; preds = %bb.v, %bb.u, %_ZN2cv7Array3dIiED2Ev.exit118, %bb.i
  %.pn107.pn.pn.pn = phi { ptr, i32 } [ %i.bw, %bb.i ], [ %.pn107.pn.pn, %_ZN2cv7Array3dIiED2Ev.exit118 ], [ %.pn107.pn.pn, %bb.u ], [ %.pn107.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.sy = load i8, ptr %i.h, align 8, !tbaa !202, !range !210, !noundef !130
  %i.sz = trunc nuw i8 %i.sy to i1
  br i1 %i.sz, label %bb.w, label %_ZN2cv7Array2dIiED2Ev.exit120

bb.w:                                             ; preds = %_ZN2cv7Array3dIiED2Ev.exit119
  %i.ta = load ptr, ptr %2, align 8, !tbaa !203   ; 2 uses
  %i.tb = icmp eq ptr %i.ta, null
  br i1 %i.tb, label %_ZN2cv7Array2dIiED2Ev.exit120, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %i.ta) #22
  br label %_ZN2cv7Array2dIiED2Ev.exit120

_ZN2cv7Array2dIiED2Ev.exit120:                    ; preds = %_ZN2cv7Array3dIiED2Ev.exit119, %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn107.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK27FastNlMeansDenoisingInvokerIN2cv3VecItLi4EEElm7DistAbsiE32calcDistSumsForElementInFirstRowEiiiRNS0_7Array2dIiEERNS0_7Array3dIiEESA_(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(17) %4, ptr noundef nonnull align 8 dereferenceable(21) %5, ptr noundef nonnull align 8 dereferenceable(21) %6) local_unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !322  ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge96

.preheader.preheader:                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.f = load i32, ptr %i.e, align 8, !tbaa !320  ; 2 uses
  %i.g = add nsw i32 %i.f, %1                     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.i = load i32, ptr %i.h, align 8, !tbaa !343  ; 2 uses
  %i.j = sub i32 %i.g, %i.i
  %i.k = add nsw i32 %i.f, %2
  %i.l = load i32, ptr %i.a, align 4, !tbaa !344
  %i.m = add i32 %i.k, %i.l                       ; 2 uses
  %i.n = load ptr, ptr %5, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.q = load ptr, ptr %4, align 8                ; 2 uses
end_hunk_9
