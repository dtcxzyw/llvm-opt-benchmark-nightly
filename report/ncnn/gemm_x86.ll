inline.NumInlined: 231
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 115
loop-unroll.NumUnrolled: 126
begin_hunk_0_@_ZN4ncnnL14gemm_AT_BT_x86ERKNS_3MatES2_S2_RS0_iiiiiiiiiRKNS_6OptionE.omp_outlined:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.o, i8 0, i64 28, i1 false)
  %i.au = load i32, ptr %8, align 4, !tbaa !45
  %i.av = load i32, ptr %9, align 4, !tbaa !45
  %i.aw = icmp sgt i32 %i.au, %i.av
  br i1 %i.aw, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %10, align 4, !tbaa !45
  %i.ay = icmp eq i32 %i.ax, 3
  br i1 %i.ay, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.az = load i32, ptr %11, align 4, !tbaa !45
  %.not61 = icmp eq i32 %i.az, 0
  br i1 %.not61, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ba = invoke noundef i32 @_ZN4ncnn18get_omp_thread_numEv()
          to label %.noexc100 unwind label %bb.j

.noexc100:                                        ; preds = %bb.f
  %i.bb = load i32, ptr %i.v, align 4, !tbaa !86, !noalias !282 ; 2 uses
  %i.bc = load i32, ptr %i.w, align 8, !tbaa !88, !noalias !282 ; 2 uses
  %i.bd = load i32, ptr %i.x, align 4, !tbaa !285, !noalias !282
  %i.be = load ptr, ptr %12, align 8, !tbaa !18, !noalias !282
  %i.bf = load i64, ptr %i.y, align 8, !tbaa !20, !noalias !282
  %i.bg = sext i32 %i.ba to i64
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = load i64, ptr %i.z, align 8, !tbaa !59, !noalias !282 ; 4 uses
  %i.bj = mul i64 %i.bh, %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bj ; 4 uses
  %i.bl = load i32, ptr %i.aa, align 8, !tbaa !60, !noalias !282
  %i.bm = load ptr, ptr %i.ab, align 8, !tbaa !17, !noalias !282
  %i.bn = sext i32 %i.bb to i64
  %i.bo = sext i32 %i.bc to i64
  %i.bp = mul nsw i64 %i.bo, %i.bn                ; 2 uses
  %i.bq = mul i64 %i.bi, %i.bp
  %i.br = add i64 %i.bq, 15
  %i.bs = and i64 %i.br, -16
  %i.bt = udiv i64 %i.bs, %i.bi
  %i.bu = load i32, ptr %i.ac, align 8, !tbaa !85, !noalias !282 ; 2 uses
  %i.bv = add nsw i32 %i.bu, -1
  %i.bw = icmp eq i32 %i.bu, 4
  %spec.select = select i1 %i.bw, i64 %i.bp, i64 %i.bt
  store ptr %i.bk, ptr %17, align 8, !tbaa !18
  store ptr null, ptr %i.l, align 8, !tbaa !11
  store i64 %i.bi, ptr %i.m, align 8, !tbaa !59
  store i32 %i.bl, ptr %i.n, align 8, !tbaa !60
  store ptr %i.bm, ptr %i.o, align 8, !tbaa !17
  store i32 %i.bv, ptr %i.p, align 8, !tbaa !85
  store i32 %i.bb, ptr %i.q, align 4, !tbaa !86
  store i32 %i.bc, ptr %i.r, align 8, !tbaa !88
  store i32 1, ptr %i.s, align 4, !tbaa !285
  store i32 %i.bd, ptr %i.t, align 8, !tbaa !51
  store i64 %spec.select, ptr %i.u, align 8, !tbaa !20
  %.pr = load i32, ptr %10, align 4, !tbaa !45
  %i.bx = icmp eq i32 %.pr, 3
  br i1 %i.bx, label %bb.g, label %.thread

bb.g:                                             ; preds = %.noexc100
  call fastcc void @_ZN4ncnnL11pack_A_tileERKNS_3MatERS0_iiii(ptr noundef nonnull align 8 dereferenceable(72) %13, ptr %i.bk, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179)
  %.pre = load i32, ptr %10, align 4, !tbaa !45
  %i.by = icmp eq i32 %.pre, 3
  %i.bz = select i1 %i.by, ptr %17, ptr %13
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.e, %.noexc100
  %.val107 = phi ptr [ %i.bk, %bb.g ], [ null, %bb.e ], [ %i.bk, %.noexc100 ] ; 2 uses
  %i.ca = phi ptr [ %i.bz, %bb.g ], [ %13, %bb.e ], [ %13, %.noexc100 ]
  %i.cb = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4ncnn3MatD2Ev.exit67.lr.ph, label %._crit_edge

_ZN4ncnn3MatD2Ev.exit67.lr.ph:                    ; preds = %.thread
  %.pre192 = load i32, ptr %9, align 4, !tbaa !45
  br label %_ZN4ncnn3MatD2Ev.exit67

._crit_edge:                                      ; preds = %_ZN4ncnn3MatD2Ev.exit67, %.thread
  %i.cd = load i32, ptr %11, align 4, !tbaa !45
  %.not62 = icmp eq i32 %i.cd, 0
  br i1 %.not62, label %_ZN4ncnn3MatD2Ev.exit, label %bb.h

_ZN4ncnn3MatD2Ev.exit67:                          ; preds = %_ZN4ncnn3MatD2Ev.exit67.lr.ph, %_ZN4ncnn3MatD2Ev.exit67
  %i.ce = phi i32 [ %.pre192, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.dq, %_ZN4ncnn3MatD2Ev.exit67 ] ; 3 uses
  %i.cf = phi i32 [ %i.cb, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.ds, %_ZN4ncnn3MatD2Ev.exit67 ] ; 2 uses
  %.060186 = phi i32 [ 0, %_ZN4ncnn3MatD2Ev.exit67.lr.ph ], [ %i.dr, %_ZN4ncnn3MatD2Ev.exit67 ] ; 5 uses
  %i.cg = sub nsw i32 %i.cf, %.060186
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ce, i32 %i.cg)
  %i.ch = load i32, ptr %4, align 4, !tbaa !45
  %i.ci = sdiv i32 %i.an, %i.ch
  %i.cj = load i32, ptr %i.ad, align 4, !tbaa !86, !noalias !286
  %i.ck = load ptr, ptr %14, align 8, !tbaa !18, !noalias !286
  %i.cl = load i64, ptr %i.ae, align 8, !tbaa !20, !noalias !286
  %i.cm = sext i32 %i.ci to i64
  %i.cn = mul i64 %i.cl, %i.cm
  %i.co = load i64, ptr %i.af, align 8, !tbaa !59, !noalias !286 ; 2 uses
  %i.cp = mul i64 %i.cn, %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cp
  %i.cr = sext i32 %i.cj to i64
  %i.cs = sdiv i32 %.060186, %i.ce
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = mul i64 %i.co, %i.cr
  %i.cv = mul i64 %i.cu, %i.ct
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cv
  %i.cx = load i32, ptr %5, align 4, !tbaa !45
  %i.cy = sdiv i32 %i.ap, %i.cx
  %i.cz = load i32, ptr %i.ag, align 4, !tbaa !86, !noalias !289
  %i.da = load ptr, ptr %15, align 8, !tbaa !18, !noalias !289
  %i.db = load i64, ptr %i.ah, align 8, !tbaa !20, !noalias !289
  %i.dc = sext i32 %i.cy to i64
  %i.dd = mul i64 %i.db, %i.dc
  %i.de = load i64, ptr %i.ai, align 8, !tbaa !59, !noalias !289 ; 2 uses
  %i.df = mul i64 %i.dd, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.df
  %i.dh = sext i32 %i.cz to i64
  %i.di = mul i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, %i.ct
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.dj
  %i.dl = load i32, ptr %11, align 4, !tbaa !45
  %.not63 = icmp eq i32 %i.dl, 0
  %i.dm = add nsw i32 %i.ce, %.060186
  %i.dn = icmp sge i32 %i.dm, %i.cf
  %i.do = select i1 %.not63, i1 %i.dn, i1 false
  %i.dp = load i32, ptr %10, align 4, !tbaa !45
  call fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr %i.cw, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(72) %i.ca, ptr %.val107, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.dp, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179, i32 noundef %.060186, i32 noundef %.sroa.speculated, i1 noundef zeroext %i.do)
  %i.dq = load i32, ptr %9, align 4, !tbaa !45    ; 2 uses
  %i.dr = add nsw i32 %i.dq, %.060186             ; 2 uses
  %i.ds = load i32, ptr %8, align 4, !tbaa !45    ; 2 uses
  %i.dt = icmp slt i32 %i.dr, %i.ds
  br i1 %i.dt, label %_ZN4ncnn3MatD2Ev.exit67, label %._crit_edge, !llvm.loop !292

bb.h:                                             ; preds = %._crit_edge
  call fastcc void @_ZN4ncnnL28transpose_unpack_output_tileERKNS_3MatERS0_iiii(ptr %.val107, ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %i.an, i32 noundef %.sroa.speculated183, i32 noundef %i.ap, i32 noundef %.sroa.speculated179)
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %bb.h, %._crit_edge
  %.pre196 = load i32, ptr %i.b, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #9
  %i.du = add nsw i32 %.0188, 1
  %.not.not = icmp slt i32 %.0188, %.pre196
  br i1 %.not.not, label %bb.c, label %._crit_edge190

._crit_edge190:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge190, %bb.a
  ret void

bb.j:                                             ; preds = %bb.f
  %i.dv = landingpad { ptr, i32 }
          catch ptr null
  %i.dw = extractvalue { ptr, i32 } %i.dv, 0
  call void @__clang_call_terminate(ptr %i.dw) #23
  unreachable
}

declare noundef i32 @_ZN4ncnn18get_omp_thread_numEv() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib(ptr nofree readonly %.0.val, ptr nofree readonly %.0.val1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree %.0.val3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i1 noundef zeroext %9) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !60   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  %i.e = icmp eq i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %i.j = sext i32 %i.i to i64
  %i.k = select i1 %i.e, i64 %i.g, i64 %i.j       ; 15 uses
  %i.l = load ptr, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.m = icmp sgt i32 %4, 3
  br i1 %i.m, label %.lr.ph1063, label %.preheader918

.lr.ph1063:                                       ; preds = %bb.a
  %i.n = mul nsw i32 %i.b, %5
  %i.o = sext i32 %i.n to i64
  %i.p = add i32 %2, -1
  %or.cond = icmp ult i32 %i.p, 2                 ; 6 uses
  %i.q = icmp eq i32 %2, 4
  %i.r = sext i32 %5 to i64
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %i.t = icmp sgt i32 %6, 11
  %i.u = icmp eq i32 %7, 0                        ; 5 uses
  %i.v = icmp eq i32 %2, 0                        ; 5 uses
  %i.w = icmp sgt i32 %8, 0                       ; 5 uses
  %.idx1413 = shl i64 %i.k, 3                     ; 5 uses
  %.idx1414 = mul i64 %i.k, 12                    ; 5 uses
  %i.x = shl nsw i32 %8, 2
  %i.y = sext i32 %i.x to i64
  %i.z = add i32 %6, -12                          ; 2 uses
  %i.aa = urem i32 %i.z, 12
  %i.ab = sub nuw i32 %i.z, %i.aa
  %i.ac = add i32 %i.ab, 12
  %i.ad = add i32 %8, -1                          ; 2 uses
  %i.ae = zext i32 %i.ad to i64                   ; 4 uses
  %i.af = shl nuw nsw i64 %i.ae, 5
  %i.ag = shl nuw nsw i64 %i.ae, 4
  %i.ah = shl nuw nsw i64 %i.ae, 3
  %i.ai = shl nuw nsw i64 %i.ae, 2
  %i.aj = zext nneg i32 %4 to i64
  %xtraiter = and i32 %8, 1
  %i.ak = icmp eq i32 %8, 1
  %unroll_iter = and i32 %8, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod2237 = trunc i32 %8 to i1
  %xtraiter2238 = and i32 %8, 3                   ; 3 uses
  %i.al = icmp ult i32 %i.ad, 3
  %unroll_iter2242 = and i32 %8, 2147483644
  %lcmp.mod2239.not = icmp eq i32 %xtraiter2238, 0
  %lcmp.mod2241 = icmp ne i32 %xtraiter2238, 0
  br label %bb.b

.preheader918.loopexit:                           ; preds = %._crit_edge1055
  %i.am = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader918

.preheader918:                                    ; preds = %.preheader918.loopexit, %bb.a
  %.01314.lcssa = phi i32 [ 0, %bb.a ], [ %i.am, %.preheader918.loopexit ] ; 3 uses
  %.01296.lcssa = phi ptr [ %.0.val3, %bb.a ], [ %.51301.lcssa, %.preheader918.loopexit ] ; 2 uses
  %.01279.lcssa = phi ptr [ %i.l, %bb.a ], [ %.15.lcssa, %.preheader918.loopexit ] ; 2 uses
  %.01276.lcssa = phi ptr [ %.0.val, %bb.a ], [ %i.aaf, %.preheader918.loopexit ] ; 2 uses
  %i.an = or disjoint i32 %.01314.lcssa, 1
  %i.ao = icmp slt i32 %i.an, %4
  br i1 %i.ao, label %.lr.ph1192, label %.preheader913

.lr.ph1192:                                       ; preds = %.preheader918
  %i.ap = sext i32 %5 to i64                      ; 2 uses
  %i.aq = add i32 %2, -1
  %or.cond13 = icmp ult i32 %i.aq, 2
  %i.ar = icmp eq i32 %2, 4
  %i.as = sext i32 %3 to i64                      ; 2 uses
  %i.at = icmp sgt i32 %6, 11
  %i.au = icmp eq i32 %7, 0                       ; 5 uses
  %i.av = icmp eq i32 %2, 0                       ; 5 uses
  %or.cond15 = icmp ult i32 %2, 3                 ; 5 uses
  %i.aw = icmp sgt i32 %8, 0                      ; 5 uses
  %i.ax = shl nsw i32 %8, 1
  %i.ay = sext i32 %i.ax to i64
  %i.az = add i32 %6, -12                         ; 2 uses
  %i.ba = urem i32 %i.az, 12
  %i.bb = sub nuw i32 %i.az, %i.ba
  %i.bc = add i32 %i.bb, 12
  %i.bd = add i32 %8, -1
  %i.be = zext i32 %i.bd to i64                   ; 4 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = shl nuw nsw i64 %i.be, 4
  %i.bh = shl nuw nsw i64 %i.be, 3
  %i.bi = shl nuw nsw i64 %i.be, 2
  %i.bj = zext nneg i32 %.01314.lcssa to i64
  %i.bk = sext i32 %4 to i64
  %invariant.op = add nsw i64 %i.bk, -1
  %xtraiter2244 = and i32 %8, 1
  %i.bl = icmp eq i32 %8, 1
  %unroll_iter2250 = and i32 %8, 2147483646
  %lcmp.mod2246.not = icmp eq i32 %xtraiter2244, 0
  %lcmp.mod2249 = trunc i32 %8 to i1
  %i.bm = zext nneg i32 %8 to i64                 ; 2 uses
  %min.iters.check1916 = icmp ult i32 %8, 4
  %n.vec1918 = and i64 %i.bm, 2147483644          ; 4 uses
  %i.bn = trunc nuw nsw i64 %n.vec1918 to i32
  %i.bo = shl nuw nsw i64 %n.vec1918, 3           ; 2 uses
  %cmp.n1935 = icmp eq i64 %n.vec1918, %i.bm
  %i.bp = zext nneg i32 %8 to i64                 ; 2 uses
  %min.iters.check = icmp ult i32 %8, 8
  %n.vec = and i64 %i.bp, 2147483640              ; 5 uses
  %i.bq = trunc nuw nsw i64 %n.vec to i32
  %i.br = shl nuw nsw i64 %n.vec, 3
  %i.bs = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %n.vec, %i.bp
  br label %bb.bo

bb.b:                                             ; preds = %.lr.ph1063, %._crit_edge1055
  %indvars.iv = phi i64 [ 0, %.lr.ph1063 ], [ %indvars.iv.next, %._crit_edge1055 ] ; 3 uses
  %.012761061 = phi ptr [ %.0.val, %.lr.ph1063 ], [ %i.aaf, %._crit_edge1055 ] ; 8 uses
  %.012791060 = phi ptr [ %i.l, %.lr.ph1063 ], [ %.15.lcssa, %._crit_edge1055 ] ; 2 uses
  %.012961059 = phi ptr [ %.0.val3, %.lr.ph1063 ], [ %.51301.lcssa, %._crit_edge1055 ] ; 2 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !18
  %i.bu = add nsw i64 %indvars.iv, %i.s
  %i.bv = mul i64 %i.k, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.o ; 2 uses
  %.not1402 = icmp eq ptr %.012791060, null
  br i1 %.not1402, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %or.cond, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  %i.by = load ptr, ptr %0, align 8, !tbaa !18
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.s
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cb = load ptr, ptr %0, align 8, !tbaa !18
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.cb, i64 %i.r
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.21281 = phi ptr [ %i.cc, %bb.e ], [ %.012791060, %bb.d ], [ null, %bb.b ], [ %i.ca, %.thread ] ; 2 uses
  br i1 %i.t, label %.lr.ph956, label %.preheader922

.preheader922:                                    ; preds = %bb.r, %bb.f
  %.01342.lcssa = phi i32 [ 0, %bb.f ], [ %i.ac, %bb.r ] ; 3 uses
  %.01332.lcssa = phi ptr [ %.0.val1, %bb.f ], [ %.11333.lcssa, %bb.r ] ; 2 uses
  %.01317.lcssa = phi ptr [ %i.bx, %bb.f ], [ %.21319, %bb.r ] ; 2 uses
  %.11297.lcssa = phi ptr [ %.012961059, %bb.f ], [ %i.le, %bb.r ] ; 2 uses
  %.31282.lcssa = phi ptr [ %.21281, %bb.f ], [ %.51284, %bb.r ] ; 2 uses
  %i.cd = add nuw nsw i32 %.01342.lcssa, 7
  %i.ce = icmp slt i32 %i.cd, %6
  br i1 %i.ce, label %.lr.ph989, label %.preheader921

.lr.ph956:                                        ; preds = %bb.f, %bb.r
  %.31282954 = phi ptr [ %.51284, %bb.r ], [ %.21281, %bb.f ] ; 33 uses
  %.11297953 = phi ptr [ %i.le, %bb.r ], [ %.012961059, %bb.f ] ; 25 uses
  %.01317952 = phi ptr [ %.21319, %bb.r ], [ %i.bx, %bb.f ] ; 22 uses
  %.01332951 = phi ptr [ %.11333.lcssa, %bb.r ], [ %.0.val1, %bb.f ] ; 2 uses
  %.01342950 = phi i32 [ %i.lf, %bb.r ], [ 0, %bb.f ] ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.n

bb.g:                                             ; preds = %.lr.ph956
  %.not1412 = icmp eq ptr %.31282954, null
  br i1 %.not1412, label %.thread706, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.v, label %.thread678, label %bb.i

.thread678:                                       ; preds = %bb.h
  %i.cf = load float, ptr %.31282954, align 4, !tbaa !68
  %i.cg = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer ; 12 uses
  br label %.thread706

bb.i:                                             ; preds = %bb.h
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ci = load <4 x float>, ptr %.31282954, align 1, !tbaa !113 ; 12 uses
  br label %.thread706

bb.k:                                             ; preds = %bb.i
  switch i32 %2, label %.thread706 [
    i32 3, label %bb.l
    i32 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.cj = load <4 x float>, ptr %.31282954, align 1, !tbaa !113
  %i.ck = getelementptr inbounds nuw i8, ptr %.31282954, i64 16
  %i.cl = load <4 x float>, ptr %i.ck, align 1, !tbaa !113
  %i.cm = getelementptr inbounds nuw i8, ptr %.31282954, i64 32
  %i.cn = load <4 x float>, ptr %i.cm, align 1, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %.31282954, i64 48
  %i.cp = load <4 x float>, ptr %i.co, align 1, !tbaa !113
  %i.cq = getelementptr inbounds nuw i8, ptr %.31282954, i64 64
  %i.cr = load <4 x float>, ptr %i.cq, align 1, !tbaa !113
  %i.cs = getelementptr inbounds nuw i8, ptr %.31282954, i64 80
  %i.ct = load <4 x float>, ptr %i.cs, align 1, !tbaa !113
  %i.cu = getelementptr inbounds nuw i8, ptr %.31282954, i64 96
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !113
  %i.cw = getelementptr inbounds nuw i8, ptr %.31282954, i64 112
  %i.cx = load <4 x float>, ptr %i.cw, align 1, !tbaa !113
  %i.cy = getelementptr inbounds nuw i8, ptr %.31282954, i64 128
  %i.cz = load <4 x float>, ptr %i.cy, align 1, !tbaa !113
  %i.da = getelementptr inbounds nuw i8, ptr %.31282954, i64 144
  %i.db = load <4 x float>, ptr %i.da, align 1, !tbaa !113
  %i.dc = getelementptr inbounds nuw i8, ptr %.31282954, i64 160
  %i.dd = load <4 x float>, ptr %i.dc, align 1, !tbaa !113
  %i.de = getelementptr inbounds nuw i8, ptr %.31282954, i64 176
  %i.df = load <4 x float>, ptr %i.de, align 1, !tbaa !113
  %i.dg = getelementptr inbounds nuw i8, ptr %.31282954, i64 192
  br label %.thread706

bb.m:                                             ; preds = %bb.k
  %i.dh = load float, ptr %.31282954, align 4, !tbaa !68
  %i.di = insertelement <4 x float> poison, float %i.dh, i64 0
  %i.dj = shufflevector <4 x float> %i.di, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dk = getelementptr inbounds nuw i8, ptr %.31282954, i64 4
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !68
  %i.dm = insertelement <4 x float> poison, float %i.dl, i64 0
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.do = getelementptr inbounds nuw i8, ptr %.31282954, i64 8
  %i.dp = load float, ptr %i.do, align 4, !tbaa !68
  %i.dq = insertelement <4 x float> poison, float %i.dp, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = getelementptr inbounds nuw i8, ptr %.31282954, i64 12
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !68
  %i.du = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = getelementptr inbounds nuw i8, ptr %.31282954, i64 16
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !68
  %i.dy = insertelement <4 x float> poison, float %i.dx, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = getelementptr inbounds nuw i8, ptr %.31282954, i64 20
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !68
  %i.ec = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.ed = shufflevector <4 x float> %i.ec, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ee = getelementptr inbounds nuw i8, ptr %.31282954, i64 24
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !68
  %i.eg = insertelement <4 x float> poison, float %i.ef, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ei = getelementptr inbounds nuw i8, ptr %.31282954, i64 28
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !68
  %i.ek = insertelement <4 x float> poison, float %i.ej, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = getelementptr inbounds nuw i8, ptr %.31282954, i64 32
  %i.en = load float, ptr %i.em, align 4, !tbaa !68
  %i.eo = insertelement <4 x float> poison, float %i.en, i64 0
  %i.ep = shufflevector <4 x float> %i.eo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eq = getelementptr inbounds nuw i8, ptr %.31282954, i64 36
  %i.er = load float, ptr %i.eq, align 4, !tbaa !68
  %i.es = insertelement <4 x float> poison, float %i.er, i64 0
  %i.et = shufflevector <4 x float> %i.es, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eu = getelementptr inbounds nuw i8, ptr %.31282954, i64 40
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !68
  %i.ew = insertelement <4 x float> poison, float %i.ev, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = getelementptr inbounds nuw i8, ptr %.31282954, i64 44
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !68
  %i.fa = insertelement <4 x float> poison, float %i.ez, i64 0
  %i.fb = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fc = getelementptr inbounds nuw i8, ptr %.31282954, i64 48
  br label %.thread706

bb.n:                                             ; preds = %.lr.ph956
  %i.fd = load <4 x float>, ptr %.11297953, align 16, !tbaa !113
  %i.fe = getelementptr inbounds nuw i8, ptr %.11297953, i64 16
  %i.ff = load <4 x float>, ptr %i.fe, align 16, !tbaa !113
  %i.fg = getelementptr inbounds nuw i8, ptr %.11297953, i64 32
  %i.fh = load <4 x float>, ptr %i.fg, align 16, !tbaa !113
  %i.fi = getelementptr inbounds nuw i8, ptr %.11297953, i64 48
  %i.fj = load <4 x float>, ptr %i.fi, align 16, !tbaa !113
  %i.fk = getelementptr inbounds nuw i8, ptr %.11297953, i64 64
  %i.fl = load <4 x float>, ptr %i.fk, align 16, !tbaa !113
  %i.fm = getelementptr inbounds nuw i8, ptr %.11297953, i64 80
  %i.fn = load <4 x float>, ptr %i.fm, align 16, !tbaa !113
  %i.fo = getelementptr inbounds nuw i8, ptr %.11297953, i64 96
  %i.fp = load <4 x float>, ptr %i.fo, align 16, !tbaa !113
  %i.fq = getelementptr inbounds nuw i8, ptr %.11297953, i64 112
end_hunk_0
begin_hunk_1_@_ZN4ncnnL23gemm_transB_packed_tileERKNS_3MatES2_S2_RS0_S3_iiiiiiib:bb.a

.thread791:                                       ; preds = %bb.bd
  %i.xy = load float, ptr %.151053, align 4, !tbaa !68
  %i.xz = insertelement <4 x float> poison, float %i.xy, i64 0
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> zeroinitializer
  br label %.thread798

bb.be:                                            ; preds = %bb.bd
  br i1 %or.cond, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.yb = load <4 x float>, ptr %.151053, align 1, !tbaa !113
  br label %.thread798

bb.bg:                                            ; preds = %bb.be
  switch i32 %2, label %.thread798 [
    i32 3, label %bb.bh
    i32 4, label %bb.bi
  ]

bb.bh:                                            ; preds = %bb.bg
  %i.yc = load <4 x float>, ptr %.151053, align 1, !tbaa !113
  %i.yd = getelementptr inbounds nuw i8, ptr %.151053, i64 16
  br label %.thread798

bb.bi:                                            ; preds = %bb.bg
  %i.ye = load float, ptr %.151053, align 4, !tbaa !68
  %i.yf = insertelement <4 x float> poison, float %i.ye, i64 0
  %i.yg = shufflevector <4 x float> %i.yf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yh = getelementptr inbounds nuw i8, ptr %.151053, i64 4
  br label %.thread798

bb.bj:                                            ; preds = %.lr.ph1054
  %i.yi = load <4 x float>, ptr %.513011052, align 16, !tbaa !113
  br label %.thread798

.thread798:                                       ; preds = %bb.bg, %bb.bf, %.thread791, %bb.bh, %bb.bc, %bb.bi, %bb.bj
  %.3594 = phi nsz <4 x float> [ zeroinitializer, %bb.bc ], [ %i.yg, %bb.bi ], [ zeroinitializer, %bb.bg ], [ %i.yi, %bb.bj ], [ %i.yc, %bb.bh ], [ %i.ya, %.thread791 ], [ %i.yb, %bb.bf ] ; 3 uses
  %.17 = phi ptr [ null, %bb.bc ], [ %i.yh, %bb.bi ], [ %.151053, %bb.bg ], [ %.151053, %bb.bj ], [ %i.yd, %bb.bh ], [ %.151053, %.thread791 ], [ %.151053, %bb.bf ] ; 2 uses
  br i1 %i.w, label %.lr.ph1045.preheader, label %._crit_edge1046

.lr.ph1045.preheader:                             ; preds = %.thread798
  br i1 %i.al, label %.lr.ph1045.epil.preheader, label %.lr.ph1045

.lr.ph1045:                                       ; preds = %.lr.ph1045.preheader, %.lr.ph1045
  %.913411044 = phi ptr [ %i.zo, %.lr.ph1045 ], [ %.813401050, %.lr.ph1045.preheader ] ; 5 uses
  %.013571043 = phi ptr [ %i.zn, %.lr.ph1045 ], [ %.012761061, %.lr.ph1045.preheader ] ; 5 uses
  %.45951041 = phi <4 x float> [ %i.zm, %.lr.ph1045 ], [ %.3594, %.lr.ph1045.preheader ]
  %niter2243 = phi i32 [ %niter2243.next.3, %.lr.ph1045 ], [ 0, %.lr.ph1045.preheader ]
  %i.yj = load <4 x float>, ptr %.013571043, align 16, !tbaa !113
  %i.yk = load float, ptr %.913411044, align 4, !tbaa !68
  %i.yl = insertelement <4 x float> poison, float %i.yk, i64 0
  %i.ym = shufflevector <4 x float> %i.yl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yn = fmul fast <4 x float> %i.ym, %i.yj
  %i.yo = fadd fast <4 x float> %i.yn, %.45951041
  %i.yp = getelementptr inbounds nuw i8, ptr %.013571043, i64 16
  %i.yq = getelementptr inbounds nuw i8, ptr %.913411044, i64 4
  %i.yr = load <4 x float>, ptr %i.yp, align 16, !tbaa !113
  %i.ys = load float, ptr %i.yq, align 4, !tbaa !68
  %i.yt = insertelement <4 x float> poison, float %i.ys, i64 0
  %i.yu = shufflevector <4 x float> %i.yt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.yv = fmul fast <4 x float> %i.yu, %i.yr
  %i.yw = fadd fast <4 x float> %i.yv, %i.yo
  %i.yx = getelementptr inbounds nuw i8, ptr %.013571043, i64 32
  %i.yy = getelementptr inbounds nuw i8, ptr %.913411044, i64 8
  %i.yz = load <4 x float>, ptr %i.yx, align 16, !tbaa !113
  %i.za = load float, ptr %i.yy, align 4, !tbaa !68
  %i.zb = insertelement <4 x float> poison, float %i.za, i64 0
  %i.zc = shufflevector <4 x float> %i.zb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zd = fmul fast <4 x float> %i.zc, %i.yz
  %i.ze = fadd fast <4 x float> %i.zd, %i.yw
  %i.zf = getelementptr inbounds nuw i8, ptr %.013571043, i64 48
  %i.zg = getelementptr inbounds nuw i8, ptr %.913411044, i64 12
  %i.zh = load <4 x float>, ptr %i.zf, align 16, !tbaa !113
  %i.zi = load float, ptr %i.zg, align 4, !tbaa !68
  %i.zj = insertelement <4 x float> poison, float %i.zi, i64 0
  %i.zk = shufflevector <4 x float> %i.zj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zl = fmul fast <4 x float> %i.zk, %i.zh
  %i.zm = fadd fast <4 x float> %i.zl, %i.ze      ; 3 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %.013571043, i64 64 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.913411044, i64 16 ; 2 uses
  %niter2243.next.3 = add nuw nsw i32 %niter2243, 4 ; 2 uses
  %niter2243.ncmp.3 = icmp eq i32 %niter2243.next.3, %unroll_iter2242
  br i1 %niter2243.ncmp.3, label %._crit_edge1046.loopexit.unr-lcssa, label %.lr.ph1045, !llvm.loop !301

._crit_edge1046.loopexit.unr-lcssa:               ; preds = %.lr.ph1045
  br i1 %lcmp.mod2239.not, label %._crit_edge1046.loopexit, label %.lr.ph1045.epil.preheader

.lr.ph1045.epil.preheader:                        ; preds = %._crit_edge1046.loopexit.unr-lcssa, %.lr.ph1045.preheader
  %.913411044.epil.init = phi ptr [ %.813401050, %.lr.ph1045.preheader ], [ %i.zo, %._crit_edge1046.loopexit.unr-lcssa ]
  %.013571043.epil.init = phi ptr [ %.012761061, %.lr.ph1045.preheader ], [ %i.zn, %._crit_edge1046.loopexit.unr-lcssa ]
  %.45951041.epil.init = phi <4 x float> [ %.3594, %.lr.ph1045.preheader ], [ %i.zm, %._crit_edge1046.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod2241)
  br label %.lr.ph1045.epil

.lr.ph1045.epil:                                  ; preds = %.lr.ph1045.epil, %.lr.ph1045.epil.preheader
  %.913411044.epil = phi ptr [ %i.zw, %.lr.ph1045.epil ], [ %.913411044.epil.init, %.lr.ph1045.epil.preheader ] ; 2 uses
  %.013571043.epil = phi ptr [ %i.zv, %.lr.ph1045.epil ], [ %.013571043.epil.init, %.lr.ph1045.epil.preheader ] ; 2 uses
  %.45951041.epil = phi <4 x float> [ %i.zu, %.lr.ph1045.epil ], [ %.45951041.epil.init, %.lr.ph1045.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph1045.epil ], [ 0, %.lr.ph1045.epil.preheader ]
  %i.zp = load <4 x float>, ptr %.013571043.epil, align 16, !tbaa !113
  %i.zq = load float, ptr %.913411044.epil, align 4, !tbaa !68
  %i.zr = insertelement <4 x float> poison, float %i.zq, i64 0
  %i.zs = shufflevector <4 x float> %i.zr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zt = fmul fast <4 x float> %i.zs, %i.zp
  %i.zu = fadd fast <4 x float> %i.zt, %.45951041.epil ; 2 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %.013571043.epil, i64 16
  %i.zw = getelementptr inbounds nuw i8, ptr %.913411044.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter2238
  br i1 %epil.iter.cmp.not, label %._crit_edge1046.loopexit, label %.lr.ph1045.epil, !llvm.loop !302

._crit_edge1046.loopexit:                         ; preds = %.lr.ph1045.epil, %._crit_edge1046.loopexit.unr-lcssa
  %.lcssa2232 = phi <4 x float> [ %i.zm, %._crit_edge1046.loopexit.unr-lcssa ], [ %i.zu, %.lr.ph1045.epil ]
  %i.zx = getelementptr i8, ptr %.813401050, i64 %i.ai
  %scevgep1582 = getelementptr i8, ptr %i.zx, i64 4
  br label %._crit_edge1046

._crit_edge1046:                                  ; preds = %._crit_edge1046.loopexit, %.thread798
  %.4595.lcssa = phi <4 x float> [ %.3594, %.thread798 ], [ %.lcssa2232, %._crit_edge1046.loopexit ] ; 6 uses
  %.91341.lcssa = phi ptr [ %.813401050, %.thread798 ], [ %scevgep1582, %._crit_edge1046.loopexit ]
  br i1 %9, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %._crit_edge1046
  switch i32 %i.b, label %bb.bn [
    i32 4, label %.thread801
    i32 1, label %bb.bl
  ]

.thread801:                                       ; preds = %bb.bk
  store <4 x float> %.4595.lcssa, ptr %.1213291051, align 16, !tbaa !113
  %i.zy = getelementptr inbounds nuw i8, ptr %.1213291051, i64 16
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %.sroa.0.0.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 0
  store float %.sroa.0.0.vec.extract, ptr %.1213291051, align 4, !tbaa !68
  %.sroa.0.4.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 1
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.1213291051, i64 %i.k
  store float %.sroa.0.4.vec.extract, ptr %i.zz, align 4, !tbaa !68
  %.sroa.0.8.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 2
  %i.aaa = getelementptr inbounds nuw i8, ptr %.1213291051, i64 %.idx1413
  store float %.sroa.0.8.vec.extract, ptr %i.aaa, align 4, !tbaa !68
  %.sroa.0.12.vec.extract = extractelement <4 x float> %.4595.lcssa, i64 3
  %i.aab = getelementptr inbounds nuw i8, ptr %.1213291051, i64 %.idx1414
  store float %.sroa.0.12.vec.extract, ptr %i.aab, align 4, !tbaa !68
  %i.aac = getelementptr inbounds nuw i8, ptr %.1213291051, i64 4
  br label %bb.bn

bb.bm:                                            ; preds = %._crit_edge1046
  store <4 x float> %.4595.lcssa, ptr %.513011052, align 16, !tbaa !113
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bk, %.thread801, %bb.bl, %bb.bm
  %.141331 = phi ptr [ %i.aac, %bb.bl ], [ %.1213291051, %bb.bk ], [ %.1213291051, %bb.bm ], [ %i.zy, %.thread801 ]
  %i.aad = getelementptr inbounds nuw i8, ptr %.513011052, i64 16 ; 2 uses
  %i.aae = add nuw nsw i32 %.413461049, 1         ; 2 uses
  %exitcond1584.not = icmp eq i32 %i.aae, %6
  br i1 %exitcond1584.not, label %._crit_edge1055, label %.lr.ph1054, !llvm.loop !303

._crit_edge1055:                                  ; preds = %bb.bn, %.preheader919
  %.51301.lcssa = phi ptr [ %.41300.lcssa, %.preheader919 ], [ %i.aad, %bb.bn ] ; 2 uses
  %.15.lcssa = phi ptr [ %.121291.lcssa, %.preheader919 ], [ %.17, %bb.bn ] ; 2 uses
  %i.aaf = getelementptr inbounds [4 x i8], ptr %.012761061, i64 %i.y ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.aag = or disjoint i64 %indvars.iv.next, 3
  %i.aah = icmp samesign ult i64 %i.aag, %i.aj
  br i1 %i.aah, label %bb.b, label %.preheader918.loopexit, !llvm.loop !304

.preheader913.loopexit:                           ; preds = %._crit_edge1185
  %i.aai = trunc nuw nsw i64 %indvars.iv.next1597 to i32
  br label %.preheader913

.preheader913:                                    ; preds = %.preheader913.loopexit, %.preheader918
  %.11315.lcssa = phi i32 [ %.01314.lcssa, %.preheader918 ], [ %i.aai, %.preheader913.loopexit ] ; 2 uses
  %.61302.lcssa = phi ptr [ %.01296.lcssa, %.preheader918 ], [ %.111307.lcssa, %.preheader913.loopexit ]
  %.18.lcssa = phi ptr [ %.01279.lcssa, %.preheader918 ], [ %.33.lcssa, %.preheader913.loopexit ]
  %.11277.lcssa = phi ptr [ %.01276.lcssa, %.preheader918 ], [ %i.aqd, %.preheader913.loopexit ]
  %i.aaj = icmp slt i32 %.11315.lcssa, %4
  br i1 %i.aaj, label %.lr.ph1425, label %._crit_edge1426

.lr.ph1425:                                       ; preds = %.preheader913
  %i.aak = sext i32 %5 to i64                     ; 2 uses
  %i.aal = add i32 %2, -1
  %or.cond25 = icmp ult i32 %i.aal, 2
  %i.aam = icmp eq i32 %2, 4
  %i.aan = sext i32 %3 to i64                     ; 2 uses
  %i.aao = icmp sgt i32 %6, 11
  %i.aap = icmp eq i32 %7, 0                      ; 5 uses
  %or.cond29 = icmp ult i32 %2, 3                 ; 5 uses
  %i.aaq = add i32 %2, -3
  %or.cond31 = icmp ult i32 %i.aaq, 2             ; 5 uses
  %i.aar = icmp sgt i32 %8, 3                     ; 5 uses
  %i.aas = sext i32 %8 to i64
  %i.aat = add i32 %8, -4                         ; 4 uses
  %i.aau = and i32 %i.aat, -4
  %i.aav = add i32 %i.aau, 4                      ; 5 uses
  %i.aaw = add i32 %6, -12                        ; 2 uses
  %i.aax = urem i32 %i.aaw, 12
  %i.aay = sub nuw i32 %i.aaw, %i.aax
  %i.aaz = add i32 %i.aay, 12
  %i.aba = lshr i32 %i.aat, 2
  %i.abb = zext nneg i32 %i.aba to i64            ; 6 uses
  %i.abc = shl nuw nsw i64 %i.abb, 7
  %i.abd = shl nuw nsw i64 %i.abb, 6
  %i.abe = shl nuw nsw i64 %i.abb, 5
  %i.abf = shl nuw nsw i64 %i.abb, 4
  %i.abg = zext nneg i32 %.11315.lcssa to i64
  %wide.trip.count = zext i32 %4 to i64
  %i.abh = add nuw nsw i64 %i.abb, 1              ; 2 uses
  %min.iters.check2041 = icmp ult i32 %i.aat, 12
  %n.vec2043 = and i64 %i.abh, 2147483644         ; 5 uses
  %i.abi = trunc nuw nsw i64 %n.vec2043 to i32
  %i.abj = shl i32 %i.abi, 2
  %i.abk = shl nuw nsw i64 %n.vec2043, 4
  %i.abl = shl nuw nsw i64 %n.vec2043, 5
  %cmp.n2064 = icmp eq i64 %i.abh, %n.vec2043
  %i.abm = add nuw nsw i64 %i.abb, 1              ; 2 uses
  %min.iters.check1966 = icmp ult i32 %i.aat, 28
  %n.vec1968 = and i64 %i.abm, 2147483640         ; 4 uses
  %i.abn = trunc nuw nsw i64 %n.vec1968 to i32
  %i.abo = shl i32 %i.abn, 2
  %i.abp = shl nuw nsw i64 %n.vec1968, 4          ; 2 uses
  %cmp.n2001 = icmp eq i64 %i.abm, %n.vec1968
  br label %bb.dw

bb.bo:                                            ; preds = %.lr.ph1192, %._crit_edge1185
  %indvars.iv1596 = phi i64 [ %i.bj, %.lr.ph1192 ], [ %indvars.iv.next1597, %._crit_edge1185 ] ; 3 uses
  %.112771191 = phi ptr [ %.01276.lcssa, %.lr.ph1192 ], [ %i.aqd, %._crit_edge1185 ] ; 12 uses
  %.181190 = phi ptr [ %.01279.lcssa, %.lr.ph1192 ], [ %.33.lcssa, %._crit_edge1185 ] ; 2 uses
  %.613021189 = phi ptr [ %.01296.lcssa, %.lr.ph1192 ], [ %.111307.lcssa, %._crit_edge1185 ] ; 2 uses
  %i.abq = load ptr, ptr %1, align 8, !tbaa !18
  %i.abr = add nsw i64 %indvars.iv1596, %i.as
  %i.abs = mul i64 %i.k, %i.abr
  %i.abt = getelementptr inbounds nuw [4 x i8], ptr %i.abq, i64 %i.abs
  %i.abu = getelementptr inbounds [4 x i8], ptr %i.abt, i64 %i.ap ; 2 uses
  %.not1396 = icmp eq ptr %.181190, null
  br i1 %.not1396, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %or.cond13, label %.thread803, label %bb.bq

.thread803:                                       ; preds = %bb.bp
  %i.abv = load ptr, ptr %0, align 8, !tbaa !18
  %i.abw = getelementptr inbounds [4 x i8], ptr %i.abv, i64 %i.as
  %i.abx = getelementptr inbounds nuw [4 x i8], ptr %i.abw, i64 %indvars.iv1596
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  br i1 %i.ar, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.aby = load ptr, ptr %0, align 8, !tbaa !18
  %i.abz = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %i.ap
  br label %bb.bs

bb.bs:                                            ; preds = %.thread803, %bb.bq, %bb.br, %bb.bo
  %.20 = phi ptr [ %i.abz, %bb.br ], [ %.181190, %bb.bq ], [ null, %bb.bo ], [ %i.abx, %.thread803 ] ; 2 uses
  br i1 %i.at, label %.lr.ph1092, label %.preheader917

.preheader917:                                    ; preds = %bb.cd, %bb.bs
  %.01379.lcssa = phi i32 [ 0, %bb.bs ], [ %i.bc, %bb.cd ] ; 3 uses
  %.01369.lcssa = phi ptr [ %.0.val1, %bb.bs ], [ %.11370.lcssa, %bb.cd ] ; 2 uses
  %.01359.lcssa = phi ptr [ %i.abu, %bb.bs ], [ %.11360, %bb.cd ] ; 2 uses
  %.71303.lcssa = phi ptr [ %.613021189, %bb.bs ], [ %i.aft, %bb.cd ] ; 2 uses
  %.21.lcssa = phi ptr [ %.20, %bb.bs ], [ %.23, %bb.cd ] ; 2 uses
  %i.aca = add nuw nsw i32 %.01379.lcssa, 7
  %i.acb = icmp slt i32 %i.aca, %6
  br i1 %i.acb, label %.lr.ph1117, label %.preheader916

.lr.ph1092:                                       ; preds = %bb.bs, %bb.cd
  %.211090 = phi ptr [ %.23, %bb.cd ], [ %.20, %bb.bs ] ; 19 uses
  %.713031089 = phi ptr [ %i.aft, %bb.cd ], [ %.613021189, %bb.bs ] ; 13 uses
  %.013591088 = phi ptr [ %.11360, %bb.cd ], [ %i.abu, %bb.bs ] ; 6 uses
  %.013691087 = phi ptr [ %.11370.lcssa, %bb.cd ], [ %.0.val1, %bb.bs ] ; 2 uses
  %.013791086 = phi i32 [ %i.afu, %bb.cd ], [ 0, %bb.bs ] ; 2 uses
  br i1 %i.au, label %bb.bt, label %bb.ca

bb.bt:                                            ; preds = %.lr.ph1092
  %.not1401 = icmp eq ptr %.211090, null
  br i1 %.not1401, label %.thread822, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  br i1 %i.av, label %.thread805, label %bb.bv

.thread805:                                       ; preds = %bb.bu
  %i.acc = load float, ptr %.211090, align 4, !tbaa !68
  %i.acd = insertelement <4 x float> poison, float %i.acc, i64 0
  %i.ace = shufflevector <4 x float> %i.acd, <4 x float> poison, <4 x i32> zeroinitializer ; 6 uses
  br label %.thread822

bb.bv:                                            ; preds = %bb.bu
  br i1 %or.cond15, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.acf = load float, ptr %.211090, align 4, !tbaa !68
  %i.acg = insertelement <4 x float> poison, float %i.acf, i64 0
  %i.ach = shufflevector <4 x float> %i.acg, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %.211090, i64 4
  %i.acj = load float, ptr %i.aci, align 4, !tbaa !68
  %i.ack = insertelement <4 x float> poison, float %i.acj, i64 0
  %i.acl = shufflevector <4 x float> %i.ack, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %.thread822

bb.bx:                                            ; preds = %bb.bv
  switch i32 %2, label %.thread822 [
    i32 3, label %bb.by
    i32 4, label %bb.bz
  ]

bb.by:                                            ; preds = %bb.bx
  %i.acm = load <4 x float>, ptr %.211090, align 1, !tbaa !113 ; 2 uses
  %i.acn = getelementptr inbounds nuw i8, ptr %.211090, i64 16
  %i.aco = load <4 x float>, ptr %i.acn, align 1, !tbaa !113 ; 2 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.211090, i64 32
  %i.acq = load <4 x float>, ptr %i.acp, align 1, !tbaa !113 ; 2 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %.211090, i64 48
  %i.acs = load <4 x float>, ptr %i.acr, align 1, !tbaa !113 ; 2 uses
  %i.act = getelementptr inbounds nuw i8, ptr %.211090, i64 64
  %i.acu = load <4 x float>, ptr %i.act, align 1, !tbaa !113 ; 2 uses
  %i.acv = getelementptr inbounds nuw i8, ptr %.211090, i64 80
  %i.acw = load <4 x float>, ptr %i.acv, align 1, !tbaa !113 ; 2 uses
  %i.acx = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acy = shufflevector <4 x float> %i.acq, <4 x float> %i.acs, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.acz = shufflevector <4 x float> %i.acu, <4 x float> %i.acw, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ada = shufflevector <4 x float> %i.acm, <4 x float> %i.aco, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adb = shufflevector <4 x float> %i.acq, <4 x float> %i.acs, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adc = shufflevector <4 x float> %i.acu, <4 x float> %i.acw, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.add = getelementptr inbounds nuw i8, ptr %.211090, i64 96
  br label %.thread822

bb.bz:                                            ; preds = %bb.bx
  %i.ade = load <4 x float>, ptr %.211090, align 1, !tbaa !113 ; 2 uses
  %i.adf = getelementptr inbounds nuw i8, ptr %.211090, i64 16
  %i.adg = load <4 x float>, ptr %i.adf, align 1, !tbaa !113 ; 2 uses
  %i.adh = getelementptr inbounds nuw i8, ptr %.211090, i64 32
  %i.adi = load <4 x float>, ptr %i.adh, align 1, !tbaa !113 ; 2 uses
  %i.adj = getelementptr inbounds nuw i8, ptr %.211090, i64 48
  br label %.thread822

bb.ca:                                            ; preds = %.lr.ph1092
  %i.adk = load <4 x float>, ptr %.713031089, align 1, !tbaa !113 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %.713031089, i64 16
  %i.adm = load <4 x float>, ptr %i.adl, align 1, !tbaa !113 ; 2 uses
  %i.adn = getelementptr inbounds nuw i8, ptr %.713031089, i64 32
  %i.ado = load <4 x float>, ptr %i.adn, align 1, !tbaa !113 ; 2 uses
  %i.adp = getelementptr inbounds nuw i8, ptr %.713031089, i64 48
  %i.adq = load <4 x float>, ptr %i.adp, align 1, !tbaa !113 ; 2 uses
  %i.adr = getelementptr inbounds nuw i8, ptr %.713031089, i64 64
  %i.ads = load <4 x float>, ptr %i.adr, align 1, !tbaa !113 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.713031089, i64 80
  %i.adu = load <4 x float>, ptr %i.adt, align 1, !tbaa !113 ; 2 uses
  %i.adv = shufflevector <4 x float> %i.adk, <4 x float> %i.adm, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adw = shufflevector <4 x float> %i.ado, <4 x float> %i.adq, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.adx = shufflevector <4 x float> %i.ads, <4 x float> %i.adu, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ady = shufflevector <4 x float> %i.adk, <4 x float> %i.adm, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.adz = shufflevector <4 x float> %i.ado, <4 x float> %i.adq, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.aea = shufflevector <4 x float> %i.ads, <4 x float> %i.adu, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  br label %.thread822

.thread822:                                       ; preds = %bb.bx, %bb.bw, %.thread805, %bb.by, %bb.bt, %bb.bz, %bb.ca
  %.3624 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adi, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.aea, %bb.ca ], [ %i.adc, %bb.by ], [ %i.ace, %.thread805 ], [ %i.acl, %bb.bw ] ; 2 uses
  %.3619 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adg, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adz, %bb.ca ], [ %i.adb, %bb.by ], [ %i.ace, %.thread805 ], [ %i.acl, %bb.bw ] ; 2 uses
  %.3614 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.ade, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.ady, %bb.ca ], [ %i.ada, %bb.by ], [ %i.ace, %.thread805 ], [ %i.acl, %bb.bw ] ; 2 uses
  %.3609 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adi, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adx, %bb.ca ], [ %i.acz, %bb.by ], [ %i.ace, %.thread805 ], [ %i.ach, %bb.bw ] ; 2 uses
  %.3604 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.adg, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adw, %bb.ca ], [ %i.acy, %bb.by ], [ %i.ace, %.thread805 ], [ %i.ach, %bb.bw ] ; 2 uses
  %.3599 = phi nsz <4 x float> [ zeroinitializer, %bb.bt ], [ %i.ade, %bb.bz ], [ zeroinitializer, %bb.bx ], [ %i.adv, %bb.ca ], [ %i.acx, %bb.by ], [ %i.ace, %.thread805 ], [ %i.ach, %bb.bw ] ; 2 uses
  %.23 = phi ptr [ null, %bb.bt ], [ %i.adj, %bb.bz ], [ %.211090, %bb.bx ], [ %.211090, %bb.ca ], [ %i.add, %bb.by ], [ %.211090, %.thread805 ], [ %.211090, %bb.bw ] ; 2 uses
  br i1 %i.aw, label %.lr.ph1077, label %._crit_edge1078

.lr.ph1077:                                       ; preds = %.thread822, %.lr.ph1077
  %.113701076 = phi ptr [ %i.afa, %.lr.ph1077 ], [ %.013691087, %.thread822 ] ; 4 uses
  %.013841075 = phi ptr [ %i.aez, %.lr.ph1077 ], [ %.112771191, %.thread822 ] ; 3 uses
  %.013851074 = phi i32 [ %i.afb, %.lr.ph1077 ], [ 0, %.thread822 ]
  %.46001073 = phi <4 x float> [ %i.aek, %.lr.ph1077 ], [ %.3599, %.thread822 ]
  %.46051072 = phi <4 x float> [ %i.aem, %.lr.ph1077 ], [ %.3604, %.thread822 ]
  %.46101071 = phi <4 x float> [ %i.aeo, %.lr.ph1077 ], [ %.3609, %.thread822 ]
  %.46151070 = phi <4 x float> [ %i.aeu, %.lr.ph1077 ], [ %.3614, %.thread822 ]
  %.46201069 = phi <4 x float> [ %i.aew, %.lr.ph1077 ], [ %.3619, %.thread822 ]
  %.46251068 = phi <4 x float> [ %i.aey, %.lr.ph1077 ], [ %.3624, %.thread822 ]
  %i.aeb = load <4 x float>, ptr %.113701076, align 16, !tbaa !113 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %.113701076, i64 16
  %i.aed = load <4 x float>, ptr %i.aec, align 16, !tbaa !113 ; 2 uses
  %i.aee = getelementptr inbounds nuw i8, ptr %.113701076, i64 32
  %i.aef = load <4 x float>, ptr %i.aee, align 16, !tbaa !113 ; 2 uses
  %i.aeg = load float, ptr %.013841075, align 4, !tbaa !68
  %i.aeh = insertelement <4 x float> poison, float %i.aeg, i64 0
  %i.aei = shufflevector <4 x float> %i.aeh, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aej = fmul fast <4 x float> %i.aei, %i.aeb
  %i.aek = fadd fast <4 x float> %i.aej, %.46001073 ; 2 uses
  %i.ael = fmul fast <4 x float> %i.aei, %i.aed
  %i.aem = fadd fast <4 x float> %i.ael, %.46051072 ; 2 uses
  %i.aen = fmul fast <4 x float> %i.aei, %i.aef
  %i.aeo = fadd fast <4 x float> %i.aen, %.46101071 ; 2 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.013841075, i64 4
  %i.aeq = load float, ptr %i.aep, align 4, !tbaa !68
  %i.aer = insertelement <4 x float> poison, float %i.aeq, i64 0
  %i.aes = shufflevector <4 x float> %i.aer, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  %i.aet = fmul fast <4 x float> %i.aes, %i.aeb
  %i.aeu = fadd fast <4 x float> %i.aet, %.46151070 ; 2 uses
  %i.aev = fmul fast <4 x float> %i.aes, %i.aed
end_hunk_1
