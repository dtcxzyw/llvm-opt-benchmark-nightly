Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/sgemm?download=true
inline.NumInlined: 59
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 22
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_Z18MlasSgemmOperation15CBLAS_TRANSPOSES_mmmfPKfmS1_mfPfm:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %.01931.i, i64 8 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 1, !tbaa !16
  %i.as = fmul float %10, %i.ar
  store float %i.as, ptr %i.aq, align 1, !tbaa !16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.d, %bb.c, %.preheader22.i
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.01931.i, i64 %12
  %i.au = add i64 %i.ak, -1
  %.not.i149 = icmp eq i64 %i.ak, 0
  br i1 %.not.i149, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit, label %.preheader22.i, !llvm.loop !1

bb.e:                                             ; preds = %bb.a
  %i.av = icmp eq i64 %2, 1
  %i.aw = icmp eq i32 %0, 111                     ; 4 uses
  %or.cond = and i1 %i.aw, %i.av
  %i.ax = fcmp oeq float %5, 1.000000e+00         ; 2 uses
  %or.cond4 = and i1 %or.cond, %i.ax
  br i1 %or.cond4, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.ay = fcmp oeq float %10, 0.000000e+00
  %i.az = fcmp oeq float %10, 1.000000e+00
  %or.cond6 = or i1 %i.ay, %i.az
  br i1 %or.cond6, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ba = icmp eq i32 %1, 111
  %i.bb = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.bc = icmp eq i8 %i.bb, 0                     ; 2 uses
  br i1 %i.ba, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  br i1 %i.bc, label %bb.i, label %_Z15GetMlasPlatformv.exit, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i150 = icmp eq i32 %i.bd, 0
  br i1 %.not.i150, label %_Z15GetMlasPlatformv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %_Z15GetMlasPlatformv.exit.sink.split unwind label %bb.k

common.resume:                                    ; preds = %bb.aw, %bb.ap, %bb.z, %bb.v, %bb.o, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.be, %bb.k ], [ %i.bg, %bb.o ], [ %i.bp, %bb.v ], [ %i.br, %bb.z ], [ %i.eg, %bb.ap ], [ %i.jc, %bb.aw ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.j
  %i.be = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

bb.l:                                             ; preds = %bb.g
  br i1 %i.bc, label %bb.m, label %_Z15GetMlasPlatformv.exit, !prof !23

bb.m:                                             ; preds = %bb.l
  %i.bf = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i151 = icmp eq i32 %i.bf, 0
  br i1 %.not.i151, label %_Z15GetMlasPlatformv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %_Z15GetMlasPlatformv.exit.sink.split unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit.sink.split:             ; preds = %bb.n, %bb.j
  %.0133.in.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 256), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 264), %bb.n ]
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit

_Z15GetMlasPlatformv.exit:                        ; preds = %_Z15GetMlasPlatformv.exit.sink.split, %bb.m, %bb.l, %bb.i, %bb.h
  %.0133.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 264), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 256), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 256), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 264), %bb.l ], [ %.0133.in.ph, %_Z15GetMlasPlatformv.exit.sink.split ]
  %.0133 = load ptr, ptr %.0133.in, align 8, !tbaa !38 ; 2 uses
  %.not = icmp eq ptr %.0133, null
  br i1 %.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %_Z15GetMlasPlatformv.exit
  tail call void %.0133(ptr noundef %6, ptr noundef %8, ptr noundef %11, i64 noundef %4, i64 noundef %3, i64 noundef %9, float noundef %10)
  br label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit

.critedge:                                        ; preds = %_Z15GetMlasPlatformv.exit, %bb.f, %bb.e
  %i.bh = icmp eq i64 %3, 1
  %i.bi = icmp eq i64 %9, 1
  %or.cond8 = and i1 %i.bh, %i.bi
  %i.bj = icmp eq i64 %12, 1
  %or.cond10 = and i1 %or.cond8, %i.bj
  %or.cond12 = and i1 %i.ax, %or.cond10
  br i1 %or.cond12, label %bb.q, label %.critedge143

bb.q:                                             ; preds = %.critedge
  %i.bk = fcmp oeq float %10, 0.000000e+00
  %i.bl = fcmp oeq float %10, 1.000000e+00
  %or.cond14 = or i1 %i.bk, %i.bl
  br i1 %or.cond14, label %bb.r, label %.critedge143

bb.r:                                             ; preds = %bb.q
  %i.bm = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.bn = icmp eq i8 %i.bm, 0                     ; 2 uses
  br i1 %i.aw, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  br i1 %i.bn, label %bb.t, label %_Z15GetMlasPlatformv.exit154, !prof !23

bb.t:                                             ; preds = %bb.s
  %i.bo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i153 = icmp eq i32 %i.bo, 0
  br i1 %.not.i153, label %_Z15GetMlasPlatformv.exit154, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %_Z15GetMlasPlatformv.exit154.sink.split unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

bb.w:                                             ; preds = %bb.r
  br i1 %i.bn, label %bb.x, label %_Z15GetMlasPlatformv.exit154, !prof !23

bb.x:                                             ; preds = %bb.w
  %i.bq = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i155 = icmp eq i32 %i.bq, 0
  br i1 %.not.i155, label %_Z15GetMlasPlatformv.exit154, label %bb.y

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %_Z15GetMlasPlatformv.exit154.sink.split unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.br = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit154.sink.split:          ; preds = %bb.y, %bb.u
  %.0132.in.ph = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 264), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 256), %bb.y ]
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit154

_Z15GetMlasPlatformv.exit154:                     ; preds = %_Z15GetMlasPlatformv.exit154.sink.split, %bb.x, %bb.w, %bb.t, %bb.s
  %.0132.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 256), %bb.x ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 264), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 264), %bb.t ], [ getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 256), %bb.w ], [ %.0132.in.ph, %_Z15GetMlasPlatformv.exit154.sink.split ]
  %.0132 = load ptr, ptr %.0132.in, align 8, !tbaa !38 ; 2 uses
  %.not138 = icmp eq ptr %.0132, null
  br i1 %.not138, label %.critedge143, label %bb.aa

bb.aa:                                            ; preds = %_Z15GetMlasPlatformv.exit154
  tail call void %.0132(ptr noundef %8, ptr noundef %6, ptr noundef %11, i64 noundef %4, i64 noundef %2, i64 noundef %7, float noundef %10)
  br label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit

.critedge143:                                     ; preds = %_Z15GetMlasPlatformv.exit154, %bb.q, %.critedge
  %.not139 = icmp ult i64 %3, %4
  br i1 %.not139, label %bb.ab, label %.preheader220

.preheader220:                                    ; preds = %.critedge143, %.preheader220
  %.0213 = phi i64 [ %i.bs, %.preheader220 ], [ 128, %.critedge143 ] ; 2 uses
  %.0 = phi i64 [ %i.bt, %.preheader220 ], [ 128, %.critedge143 ] ; 2 uses
  %i.bs = lshr i64 %.0213, 1                      ; 2 uses
  %.not140 = icmp ult i64 %i.bs, %4
  %i.bt = shl i64 %.0, 1
  br i1 %.not140, label %.lr.ph244, label %.preheader220, !llvm.loop !63

bb.ab:                                            ; preds = %.critedge143
  %i.bu = icmp ult i64 %3, 65
  %or.cond366 = and i1 %i.aw, %i.bu
  br i1 %or.cond366, label %.preheader.1, label %.loopexit

.preheader.1:                                     ; preds = %bb.ab
  %i.bv = icmp ult i64 %3, 33
  br i1 %i.bv, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.bw = icmp ult i64 %3, 17                     ; 2 uses
  %spec.select = select i1 %i.bw, i64 1024, i64 512
  %spec.select365 = select i1 %i.bw, i64 16, i64 32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.2, %.preheader.1, %bb.ab
  %.2215 = phi i64 [ 128, %bb.ab ], [ %spec.select, %.preheader.2 ], [ 256, %.preheader.1 ]
  %.2 = phi i64 [ 128, %bb.ab ], [ %spec.select365, %.preheader.2 ], [ 64, %.preheader.1 ]
  %.not245 = icmp eq i64 %3, 0
  br i1 %.not245, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit, label %.lr.ph244

.lr.ph244:                                        ; preds = %.preheader220, %.loopexit
  %.2278 = phi i64 [ %.2, %.loopexit ], [ %.0, %.preheader220 ]
  %.2215277 = phi i64 [ %.2215, %.loopexit ], [ %.0213, %.preheader220 ]
  %i.bx = fcmp une float %10, 0.000000e+00        ; 2 uses
  %i.by = fcmp une float %10, 1.000000e+00
  %or.cond16 = and i1 %i.bx, %i.by
  %i.bz = insertelement <4 x float> poison, float %10, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer ; 5 uses
  %i.cb = add i64 %2, -1                          ; 2 uses
  %.not30.i157 = icmp eq i64 %2, 0                ; 3 uses
  %.not258 = xor i1 %i.bx, true
  %i.cc = icmp eq i32 %1, 111
  %.idx74.i = shl i64 %7, 3                       ; 4 uses
  %.idx75.i = mul i64 %7, 12                      ; 3 uses
  %.idx77.i = shl i64 %7, 4
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph244, %bb.ag
  %.0131243 = phi i64 [ 0, %.lr.ph244 ], [ %i.dx, %bb.ag ] ; 6 uses
  %i.cd = sub i64 %3, %.0131243
  %.sroa.speculated199 = call i64 @llvm.umin.i64(i64 %.2278, i64 %i.cd) ; 12 uses
  br i1 %or.cond16, label %bb.ad, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.0131243 ; 2 uses
  br i1 %.not30.i157, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180, label %.preheader22.lr.ph.i158

.preheader22.lr.ph.i158:                          ; preds = %bb.ad
  %i.cf = icmp ugt i64 %.sroa.speculated199, 3
  br i1 %i.cf, label %.preheader22.us.i168.preheader, label %.preheader22.lr.ph.split.i159

.preheader22.us.i168.preheader:                   ; preds = %.preheader22.lr.ph.i158
  %i.cg = add i64 %.sroa.speculated199, -4        ; 2 uses
  %i.ch = lshr i64 %i.cg, 2
  %i.ci = add nuw nsw i64 %i.ch, 1
  %xtraiter = and i64 %i.ci, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.cj = icmp ult i64 %i.cg, 12
  br label %.preheader22.us.i168

.preheader22.us.i168:                             ; preds = %.preheader22.us.i168.preheader, %._crit_edge.us.i178
  %i.ck = phi i64 [ %i.di, %._crit_edge.us.i178 ], [ %i.cb, %.preheader22.us.i168.preheader ] ; 2 uses
  %.01931.us.i169 = phi ptr [ %i.dh, %._crit_edge.us.i178 ], [ %i.ce, %.preheader22.us.i168.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader22.us.i168, %.prol.preheader
  %.024.us.i170.prol = phi i64 [ %i.co, %.prol.preheader ], [ %.sroa.speculated199, %.preheader22.us.i168 ]
  %.01723.us.i171.prol = phi ptr [ %i.cn, %.prol.preheader ], [ %.01931.us.i169, %.preheader22.us.i168 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader22.us.i168 ]
  %i.cl = load <4 x float>, ptr %.01723.us.i171.prol, align 1, !tbaa !16
  %i.cm = fmul <4 x float> %i.ca, %i.cl
  store <4 x float> %i.cm, ptr %.01723.us.i171.prol, align 1, !tbaa !16
  %i.cn = getelementptr inbounds nuw i8, ptr %.01723.us.i171.prol, i64 16 ; 3 uses
  %i.co = add i64 %.024.us.i170.prol, -4          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !64

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader22.us.i168
  %.024.us.i170.unr = phi i64 [ %.sroa.speculated199, %.preheader22.us.i168 ], [ %i.co, %.prol.preheader ]
  %.01723.us.i171.unr = phi ptr [ %.01931.us.i169, %.preheader22.us.i168 ], [ %i.cn, %.prol.preheader ]
  %.lcssa325.unr = phi ptr [ poison, %.preheader22.us.i168 ], [ %i.cn, %.prol.preheader ]
  %.lcssa324.unr = phi i64 [ poison, %.preheader22.us.i168 ], [ %i.co, %.prol.preheader ]
  br i1 %i.cj, label %..preheader_crit_edge.us.i172, label %.preheader22.us.i168.new

.preheader22.us.i168.new:                         ; preds = %.prol.loopexit, %.preheader22.us.i168.new
  %.024.us.i170 = phi i64 [ %i.db, %.preheader22.us.i168.new ], [ %.024.us.i170.unr, %.prol.loopexit ]
  %.01723.us.i171 = phi ptr [ %i.da, %.preheader22.us.i168.new ], [ %.01723.us.i171.unr, %.prol.loopexit ] ; 6 uses
  %i.cp = load <4 x float>, ptr %.01723.us.i171, align 1, !tbaa !16
  %i.cq = fmul <4 x float> %i.ca, %i.cp
  store <4 x float> %i.cq, ptr %.01723.us.i171, align 1, !tbaa !16
  %i.cr = getelementptr inbounds nuw i8, ptr %.01723.us.i171, i64 16 ; 2 uses
  %i.cs = load <4 x float>, ptr %i.cr, align 1, !tbaa !16
  %i.ct = fmul <4 x float> %i.ca, %i.cs
  store <4 x float> %i.ct, ptr %i.cr, align 1, !tbaa !16
  %i.cu = getelementptr inbounds nuw i8, ptr %.01723.us.i171, i64 32 ; 2 uses
  %i.cv = load <4 x float>, ptr %i.cu, align 1, !tbaa !16
  %i.cw = fmul <4 x float> %i.ca, %i.cv
  store <4 x float> %i.cw, ptr %i.cu, align 1, !tbaa !16
  %i.cx = getelementptr inbounds nuw i8, ptr %.01723.us.i171, i64 48 ; 2 uses
  %i.cy = load <4 x float>, ptr %i.cx, align 1, !tbaa !16
  %i.cz = fmul <4 x float> %i.ca, %i.cy
  store <4 x float> %i.cz, ptr %i.cx, align 1, !tbaa !16
  %i.da = getelementptr inbounds nuw i8, ptr %.01723.us.i171, i64 64 ; 2 uses
  %i.db = add i64 %.024.us.i170, -16              ; 3 uses
  %i.dc = icmp ugt i64 %i.db, 3
  br i1 %i.dc, label %.preheader22.us.i168.new, label %..preheader_crit_edge.us.i172, !llvm.loop !0

.lr.ph29.us.i174:                                 ; preds = %..preheader_crit_edge.us.i172, %.lr.ph29.us.i174
  %.128.us.i175 = phi i64 [ %i.dg, %.lr.ph29.us.i174 ], [ %.lcssa324, %..preheader_crit_edge.us.i172 ]
  %.11827.us.i176 = phi ptr [ %i.df, %.lr.ph29.us.i174 ], [ %.lcssa325, %..preheader_crit_edge.us.i172 ] ; 3 uses
  %i.dd = load float, ptr %.11827.us.i176, align 1, !tbaa !16
  %i.de = fmul float %10, %i.dd
  store float %i.de, ptr %.11827.us.i176, align 1, !tbaa !16
  %i.df = getelementptr inbounds nuw i8, ptr %.11827.us.i176, i64 4
  %i.dg = add nsw i64 %.128.us.i175, -1           ; 2 uses
  %.not21.us.i177 = icmp eq i64 %i.dg, 0
  br i1 %.not21.us.i177, label %._crit_edge.us.i178, label %.lr.ph29.us.i174, !llvm.loop !65

._crit_edge.us.i178:                              ; preds = %.lr.ph29.us.i174, %..preheader_crit_edge.us.i172
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.01931.us.i169, i64 %12
  %i.di = add i64 %i.ck, -1
  %.not.us.i179 = icmp eq i64 %i.ck, 0
  br i1 %.not.us.i179, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180, label %.preheader22.us.i168, !llvm.loop !1

..preheader_crit_edge.us.i172:                    ; preds = %.preheader22.us.i168.new, %.prol.loopexit
  %.lcssa325 = phi ptr [ %.lcssa325.unr, %.prol.loopexit ], [ %i.da, %.preheader22.us.i168.new ]
  %.lcssa324 = phi i64 [ %.lcssa324.unr, %.prol.loopexit ], [ %i.db, %.preheader22.us.i168.new ] ; 2 uses
  %.not2126.us.i173 = icmp eq i64 %.lcssa324, 0
  br i1 %.not2126.us.i173, label %._crit_edge.us.i178, label %.lr.ph29.us.i174

.preheader22.lr.ph.split.i159:                    ; preds = %.preheader22.lr.ph.i158
  %.not2126.i160 = icmp eq i64 %.sroa.speculated199, 0
  br i1 %.not2126.i160, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180, label %.preheader22.i161.preheader

.preheader22.i161.preheader:                      ; preds = %.preheader22.lr.ph.split.i159
  %.not21.i165 = icmp eq i64 %.sroa.speculated199, 1
  %.not21.i165.1 = icmp eq i64 %.sroa.speculated199, 2
  br label %.preheader22.i161

.preheader22.i161:                                ; preds = %.preheader22.i161.preheader, %._crit_edge.i166
  %i.dj = phi i64 [ %i.dt, %._crit_edge.i166 ], [ %i.cb, %.preheader22.i161.preheader ] ; 2 uses
  %.01931.i162 = phi ptr [ %i.ds, %._crit_edge.i166 ], [ %i.ce, %.preheader22.i161.preheader ] ; 5 uses
  %i.dk = load float, ptr %.01931.i162, align 1, !tbaa !16
  %i.dl = fmul float %10, %i.dk
  store float %i.dl, ptr %.01931.i162, align 1, !tbaa !16
  br i1 %.not21.i165, label %._crit_edge.i166, label %bb.ae

bb.ae:                                            ; preds = %.preheader22.i161
  %i.dm = getelementptr inbounds nuw i8, ptr %.01931.i162, i64 4 ; 2 uses
  %i.dn = load float, ptr %i.dm, align 1, !tbaa !16
  %i.do = fmul float %10, %i.dn
  store float %i.do, ptr %i.dm, align 1, !tbaa !16
  br i1 %.not21.i165.1, label %._crit_edge.i166, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dp = getelementptr inbounds nuw i8, ptr %.01931.i162, i64 8 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 1, !tbaa !16
  %i.dr = fmul float %10, %i.dq
  store float %i.dr, ptr %i.dp, align 1, !tbaa !16
  br label %._crit_edge.i166

._crit_edge.i166:                                 ; preds = %bb.af, %bb.ae, %.preheader22.i161
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.01931.i162, i64 %12
  %i.dt = add i64 %i.dj, -1
  %.not.i167 = icmp eq i64 %i.dj, 0
  br i1 %.not.i167, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180, label %.preheader22.i161, !llvm.loop !1

_Z21MlasSgemmMultiplyBetaPfmmmf.exit180:          ; preds = %._crit_edge.i166, %._crit_edge.us.i178, %.preheader22.lr.ph.split.i159, %bb.ad, %bb.ac
  %i.du = mul i64 %.0131243, %9
  %invariant.gep = getelementptr [4 x i8], ptr %8, i64 %i.du
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0131243
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.0131243 ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148
  %i.dx = add i64 %.sroa.speculated199, %.0131243 ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %3
  br i1 %i.dy, label %bb.ac, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit, !llvm.loop !66

bb.ah:                                            ; preds = %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148
  %.0129242 = phi i64 [ 0, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180 ], [ %i.jk, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148 ] ; 6 uses
  %.0130241 = phi i1 [ %.not258, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit180 ], [ false, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148 ] ; 2 uses
  %i.dz = sub nuw i64 %4, %.0129242
  %.sroa.speculated195 = call i64 @llvm.umin.i64(i64 %.2215277, i64 %i.dz) ; 27 uses
  br i1 %i.cc, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.ea = mul i64 %.0129242, %9
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ea
  call void @_Z18MlasSgemmCopyPackBPfPKfmmm(ptr noundef nonnull %i.b, ptr noundef %i.eb, i64 noundef %9, i64 noundef %.sroa.speculated199, i64 noundef %.sroa.speculated195)
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.0129242
  call void @_Z23MlasSgemmTransposePackBPfPKfmmm(ptr noundef nonnull %i.b, ptr noundef %gep, i64 noundef %9, i64 noundef %.sroa.speculated199, i64 noundef %.sroa.speculated195)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  br i1 %i.aw, label %bb.al, label %13

bb.al:                                            ; preds = %bb.ak
  br i1 %.not30.i157, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148, label %.lr.ph240.preheader

.lr.ph240.preheader:                              ; preds = %bb.al
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.0129242
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.lr.ph240.preheader, %_Z15GetMlasPlatformv.exit183
  %.0.i146239 = phi ptr [ %i.em, %_Z15GetMlasPlatformv.exit183 ], [ %i.ec, %.lr.ph240.preheader ] ; 2 uses
  %.019.i145238 = phi ptr [ %i.ek, %_Z15GetMlasPlatformv.exit183 ], [ %i.dw, %.lr.ph240.preheader ] ; 2 uses
  %.020.i144237 = phi i64 [ %i.en, %_Z15GetMlasPlatformv.exit183 ], [ %2, %.lr.ph240.preheader ] ; 2 uses
  %i.ed = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.ee = icmp eq i8 %i.ed, 0
  br i1 %i.ee, label %bb.am, label %_Z15GetMlasPlatformv.exit183, !prof !23

bb.am:                                            ; preds = %.lr.ph240
  %i.ef = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i182 = icmp eq i32 %i.ef, 0
  br i1 %.not.i182, label %_Z15GetMlasPlatformv.exit183, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.ao unwind label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit183

bb.ap:                                            ; preds = %bb.an
  %i.eg = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit183:                     ; preds = %.lr.ph240, %bb.am, %bb.ao
  %i.eh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 72), align 8, !tbaa !39
  %i.ei = call noundef i64 %i.eh(ptr noundef %.0.i146239, ptr noundef nonnull %i.b, ptr noundef %.019.i145238, i64 noundef %.sroa.speculated195, i64 noundef %.020.i144237, i64 noundef %.sroa.speculated199, i64 noundef %7, i64 noundef %12, float noundef %5, i1 noundef zeroext %.0130241), !inline_history !6 ; 3 uses
  %i.ej = mul i64 %i.ei, %12
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %.019.i145238, i64 %i.ej
  %i.el = mul i64 %i.ei, %7
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.0.i146239, i64 %i.el
  %i.en = sub i64 %.020.i144237, %i.ei            ; 2 uses
  %.not.i147 = icmp eq i64 %i.en, 0
  br i1 %.not.i147, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148, label %.lr.ph240, !llvm.loop !7

13:                                               ; preds = %bb.ak
  br i1 %.not30.i157, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148, label %.lr.ph

.lr.ph:                                           ; preds = %13
  %i.eo = mul i64 %.0129242, %7
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %i.eo
  %i.eq = icmp ugt i64 %.sroa.speculated195, 3
  br label %bb.aq

_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit: ; preds = %_Z15GetMlasPlatformv.exit189
  %.not141 = icmp eq i64 %i.ix, 0
  br i1 %.not141, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148, label %bb.aq, !llvm.loop !67

bb.aq:                                            ; preds = %.lr.ph, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit
  %.0127235 = phi ptr [ %i.ep, %.lr.ph ], [ %i.iy, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit ] ; 3 uses
  %.0128234 = phi ptr [ %i.dw, %.lr.ph ], [ %i.jg, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit ]
  %.0212233 = phi i64 [ %2, %.lr.ph ], [ %i.ix, %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit ] ; 5 uses
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %.0212233, i64 12) ; 12 uses
  br i1 %i.eq, label %.preheader79.i.preheader, label %._crit_edge.i185

.preheader79.i.preheader:                         ; preds = %bb.aq
  %xtraiter332 = and i64 %.sroa.speculated, 1
  %lcmp.mod333.not = icmp eq i64 %xtraiter332, 0
  %i.er = add nsw i64 %.sroa.speculated, -1
  %i.es = icmp eq i64 %.0212233, 1
  br label %.preheader79.i

.preheader79.i:                                   ; preds = %.preheader79.i.preheader, %.unr-lcssa
  %.06182.i = phi ptr [ %i.ge, %.unr-lcssa ], [ %i.a, %.preheader79.i.preheader ] ; 7 uses
  %.06281.i = phi ptr [ %i.gf, %.unr-lcssa ], [ %.0127235, %.preheader79.i.preheader ] ; 7 uses
  %.06780.i = phi i64 [ %i.gg, %.unr-lcssa ], [ %.sroa.speculated195, %.preheader79.i.preheader ]
  br i1 %lcmp.mod333.not, label %.prol.loopexit331, label %.prol.loopexit331.unr-lcssa

.prol.loopexit331.unr-lcssa:                      ; preds = %.preheader79.i
  %i.et = load float, ptr %.06281.i, align 4, !tbaa !22
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %.06281.i, i64 %7
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !22
  %i.ew = getelementptr inbounds nuw i8, ptr %.06281.i, i64 %.idx74.i
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !22
  %i.ey = getelementptr inbounds nuw i8, ptr %.06281.i, i64 %.idx75.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !22
  store float %i.et, ptr %.06182.i, align 4, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %.06182.i, i64 4
  store float %i.ev, ptr %i.fa, align 4, !tbaa !22
  %i.fb = getelementptr inbounds nuw i8, ptr %.06182.i, i64 8
  store float %i.ex, ptr %i.fb, align 4, !tbaa !22
  %i.fc = getelementptr inbounds nuw i8, ptr %.06182.i, i64 12
  store float %i.ez, ptr %i.fc, align 4, !tbaa !22
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %.06182.i, i64 %.sroa.speculated195
  %i.fe = getelementptr inbounds nuw i8, ptr %.06281.i, i64 4
  br label %.prol.loopexit331

.prol.loopexit331:                                ; preds = %.prol.loopexit331.unr-lcssa, %.preheader79.i
  %.071.i.unr = phi i64 [ %.sroa.speculated, %.preheader79.i ], [ %i.er, %.prol.loopexit331.unr-lcssa ]
  %.070.i.unr = phi ptr [ %.06281.i, %.preheader79.i ], [ %i.fe, %.prol.loopexit331.unr-lcssa ]
  %.069.i.unr = phi ptr [ %.06182.i, %.preheader79.i ], [ %i.fd, %.prol.loopexit331.unr-lcssa ]
  br i1 %i.es, label %.unr-lcssa, label %.preheader79.i.new

.preheader79.i.new:                               ; preds = %.prol.loopexit331, %.preheader79.i.new
  %.071.i = phi i64 [ %i.gd, %.preheader79.i.new ], [ %.071.i.unr, %.prol.loopexit331 ]
  %.070.i = phi ptr [ %i.gc, %.preheader79.i.new ], [ %.070.i.unr, %.prol.loopexit331 ] ; 6 uses
  %.069.i = phi ptr [ %i.gb, %.preheader79.i.new ], [ %.069.i.unr, %.prol.loopexit331 ] ; 5 uses
  %i.ff = load float, ptr %.070.i, align 4, !tbaa !22
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.070.i, i64 %7
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !22
  %i.fi = getelementptr inbounds nuw i8, ptr %.070.i, i64 %.idx74.i
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !22
  %i.fk = getelementptr inbounds nuw i8, ptr %.070.i, i64 %.idx75.i
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !22
  store float %i.ff, ptr %.069.i, align 4, !tbaa !22
  %i.fm = getelementptr inbounds nuw i8, ptr %.069.i, i64 4
  store float %i.fh, ptr %i.fm, align 4, !tbaa !22
  %i.fn = getelementptr inbounds nuw i8, ptr %.069.i, i64 8
  store float %i.fj, ptr %i.fn, align 4, !tbaa !22
  %i.fo = getelementptr inbounds nuw i8, ptr %.069.i, i64 12
  store float %i.fl, ptr %i.fo, align 4, !tbaa !22
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %.069.i, i64 %.sroa.speculated195 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.070.i, i64 4 ; 4 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !22
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %7
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !22
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx74.i
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !22
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx75.i
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !22
  store float %i.fr, ptr %i.fp, align 4, !tbaa !22
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  store float %i.ft, ptr %i.fy, align 4, !tbaa !22
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store float %i.fv, ptr %i.fz, align 4, !tbaa !22
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  store float %i.fx, ptr %i.ga, align 4, !tbaa !22
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %.sroa.speculated195
  %i.gc = getelementptr inbounds nuw i8, ptr %.070.i, i64 8
  %i.gd = add i64 %.071.i, -2                     ; 2 uses
  %.not76.i.1 = icmp eq i64 %i.gd, 0
  br i1 %.not76.i.1, label %.unr-lcssa, label %.preheader79.i.new, !llvm.loop !2

.unr-lcssa:                                       ; preds = %.preheader79.i.new, %.prol.loopexit331
  %i.ge = getelementptr inbounds nuw i8, ptr %.06182.i, i64 16 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.06281.i, i64 %.idx77.i ; 2 uses
  %i.gg = add i64 %.06780.i, -4                   ; 3 uses
  %i.gh = icmp ugt i64 %i.gg, 3
  br i1 %i.gh, label %.preheader79.i, label %._crit_edge.i185, !llvm.loop !3

._crit_edge.i185:                                 ; preds = %.unr-lcssa, %bb.aq
  %.067.lcssa.i = phi i64 [ %.sroa.speculated195, %bb.aq ], [ %i.gg, %.unr-lcssa ] ; 3 uses
  %.062.lcssa.i = phi ptr [ %.0127235, %bb.aq ], [ %i.gf, %.unr-lcssa ] ; 4 uses
  %.061.lcssa.i = phi ptr [ %i.a, %bb.aq ], [ %i.ge, %.unr-lcssa ] ; 4 uses
  %i.gi = icmp samesign ugt i64 %.067.lcssa.i, 1
  br i1 %i.gi, label %.preheader78.i.preheader, label %bb.ar

.preheader78.i.preheader:                         ; preds = %._crit_edge.i185
  %xtraiter335 = and i64 %.sroa.speculated, 3     ; 2 uses
  %lcmp.mod336.not = icmp eq i64 %xtraiter335, 0
  br i1 %lcmp.mod336.not, label %.preheader78.i.prol.loopexit, label %.preheader78.i.prol

.preheader78.i.prol:                              ; preds = %.preheader78.i.preheader, %.preheader78.i.prol
  %.066.i.prol = phi ptr [ %i.gn, %.preheader78.i.prol ], [ %.061.lcssa.i, %.preheader78.i.preheader ] ; 3 uses
  %.065.i.prol = phi ptr [ %i.go, %.preheader78.i.prol ], [ %.062.lcssa.i, %.preheader78.i.preheader ] ; 3 uses
  %.064.i.prol = phi i64 [ %i.gp, %.preheader78.i.prol ], [ %.sroa.speculated, %.preheader78.i.preheader ]
  %prol.iter337 = phi i64 [ %prol.iter337.next, %.preheader78.i.prol ], [ 0, %.preheader78.i.preheader ]
  %i.gj = load float, ptr %.065.i.prol, align 4, !tbaa !22
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %.065.i.prol, i64 %7
  %i.gl = load float, ptr %i.gk, align 4, !tbaa !22
  store float %i.gj, ptr %.066.i.prol, align 4, !tbaa !22
  %i.gm = getelementptr inbounds nuw i8, ptr %.066.i.prol, i64 4
  store float %i.gl, ptr %i.gm, align 4, !tbaa !22
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %.066.i.prol, i64 %.sroa.speculated195 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.065.i.prol, i64 4 ; 2 uses
  %i.gp = add i64 %.064.i.prol, -1                ; 2 uses
  %prol.iter337.next = add i64 %prol.iter337, 1   ; 2 uses
  %prol.iter337.cmp.not = icmp eq i64 %prol.iter337.next, %xtraiter335
  br i1 %prol.iter337.cmp.not, label %.preheader78.i.prol.loopexit, label %.preheader78.i.prol, !llvm.loop !68

.preheader78.i.prol.loopexit:                     ; preds = %.preheader78.i.prol, %.preheader78.i.preheader
  %.066.i.unr = phi ptr [ %.061.lcssa.i, %.preheader78.i.preheader ], [ %i.gn, %.preheader78.i.prol ]
  %.065.i.unr = phi ptr [ %.062.lcssa.i, %.preheader78.i.preheader ], [ %i.go, %.preheader78.i.prol ]
  %.064.i.unr = phi i64 [ %.sroa.speculated, %.preheader78.i.preheader ], [ %i.gp, %.preheader78.i.prol ]
  %i.gq = icmp ult i64 %.0212233, 4
  br i1 %i.gq, label %.unr-lcssa338, label %.preheader78.i

.preheader78.i:                                   ; preds = %.preheader78.i.prol.loopexit, %.preheader78.i
  %.066.i = phi ptr [ %i.hn, %.preheader78.i ], [ %.066.i.unr, %.preheader78.i.prol.loopexit ] ; 3 uses
  %.065.i = phi ptr [ %i.ho, %.preheader78.i ], [ %.065.i.unr, %.preheader78.i.prol.loopexit ] ; 6 uses
  %.064.i = phi i64 [ %i.hp, %.preheader78.i ], [ %.064.i.unr, %.preheader78.i.prol.loopexit ]
  %i.gr = load float, ptr %.065.i, align 4, !tbaa !22
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %.065.i, i64 %7
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !22
  store float %i.gr, ptr %.066.i, align 4, !tbaa !22
  %i.gu = getelementptr inbounds nuw i8, ptr %.066.i, i64 4
  store float %i.gt, ptr %i.gu, align 4, !tbaa !22
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %.066.i, i64 %.sroa.speculated195 ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.065.i, i64 4 ; 2 uses
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !22
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %7
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !22
  store float %i.gx, ptr %i.gv, align 4, !tbaa !22
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store float %i.gz, ptr %i.ha, align 4, !tbaa !22
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %.sroa.speculated195 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.065.i, i64 8 ; 2 uses
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !22
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %7
  %i.hf = load float, ptr %i.he, align 4, !tbaa !22
  store float %i.hd, ptr %i.hb, align 4, !tbaa !22
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  store float %i.hf, ptr %i.hg, align 4, !tbaa !22
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hb, i64 %.sroa.speculated195 ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.065.i, i64 12 ; 2 uses
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !22
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %7
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !22
  store float %i.hj, ptr %i.hh, align 4, !tbaa !22
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 4
  store float %i.hl, ptr %i.hm, align 4, !tbaa !22
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %i.hh, i64 %.sroa.speculated195
  %i.ho = getelementptr inbounds nuw i8, ptr %.065.i, i64 16
  %i.hp = add i64 %.064.i, -4                     ; 2 uses
  %.not.i187.3 = icmp eq i64 %i.hp, 0
  br i1 %.not.i187.3, label %.unr-lcssa338, label %.preheader78.i, !llvm.loop !4

.unr-lcssa338:                                    ; preds = %.preheader78.i, %.preheader78.i.prol.loopexit
  %i.hq = getelementptr inbounds nuw i8, ptr %.061.lcssa.i, i64 8
  %i.hr = getelementptr inbounds nuw i8, ptr %.062.lcssa.i, i64 %.idx74.i
  %i.hs = add nsw i64 %.067.lcssa.i, -2
  br label %bb.ar

bb.ar:                                            ; preds = %.unr-lcssa338, %._crit_edge.i185
  %.168.i = phi i64 [ %i.hs, %.unr-lcssa338 ], [ %.067.lcssa.i, %._crit_edge.i185 ]
  %.163.i = phi ptr [ %i.hr, %.unr-lcssa338 ], [ %.062.lcssa.i, %._crit_edge.i185 ] ; 2 uses
  %.1.i = phi ptr [ %i.hq, %.unr-lcssa338 ], [ %.061.lcssa.i, %._crit_edge.i185 ] ; 2 uses
  %.not72.i = icmp eq i64 %.168.i, 0
  br i1 %.not72.i, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %bb.ar
  %xtraiter339 = and i64 %.sroa.speculated, 7     ; 2 uses
  %lcmp.mod340.not = icmp eq i64 %xtraiter339, 0
  br i1 %lcmp.mod340.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol

.preheader.i.prol:                                ; preds = %.preheader.i.preheader, %.preheader.i.prol
  %.060.i.prol = phi ptr [ %i.hu, %.preheader.i.prol ], [ %.1.i, %.preheader.i.preheader ] ; 2 uses
  %.059.i.prol = phi ptr [ %i.hv, %.preheader.i.prol ], [ %.163.i, %.preheader.i.preheader ] ; 2 uses
  %.0.i186.prol = phi i64 [ %i.hw, %.preheader.i.prol ], [ %.sroa.speculated, %.preheader.i.preheader ]
  %prol.iter341 = phi i64 [ %prol.iter341.next, %.preheader.i.prol ], [ 0, %.preheader.i.preheader ]
  %i.ht = load float, ptr %.059.i.prol, align 4, !tbaa !22
  store float %i.ht, ptr %.060.i.prol, align 4, !tbaa !22
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %.060.i.prol, i64 %.sroa.speculated195 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.059.i.prol, i64 4 ; 2 uses
  %i.hw = add i64 %.0.i186.prol, -1               ; 2 uses
  %prol.iter341.next = add i64 %prol.iter341, 1   ; 2 uses
  %prol.iter341.cmp.not = icmp eq i64 %prol.iter341.next, %xtraiter339
  br i1 %prol.iter341.cmp.not, label %.preheader.i.prol.loopexit, label %.preheader.i.prol, !llvm.loop !69

.preheader.i.prol.loopexit:                       ; preds = %.preheader.i.prol, %.preheader.i.preheader
  %.060.i.unr = phi ptr [ %.1.i, %.preheader.i.preheader ], [ %i.hu, %.preheader.i.prol ]
  %.059.i.unr = phi ptr [ %.163.i, %.preheader.i.preheader ], [ %i.hv, %.preheader.i.prol ]
  %.0.i186.unr = phi i64 [ %.sroa.speculated, %.preheader.i.preheader ], [ %i.hw, %.preheader.i.prol ]
  %i.hx = icmp ult i64 %.0212233, 8
  br i1 %i.hx, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.prol.loopexit, %.preheader.i
  %.060.i = phi ptr [ %i.iu, %.preheader.i ], [ %.060.i.unr, %.preheader.i.prol.loopexit ] ; 2 uses
  %.059.i = phi ptr [ %i.iv, %.preheader.i ], [ %.059.i.unr, %.preheader.i.prol.loopexit ] ; 9 uses
  %.0.i186 = phi i64 [ %i.iw, %.preheader.i ], [ %.0.i186.unr, %.preheader.i.prol.loopexit ]
  %i.hy = load float, ptr %.059.i, align 4, !tbaa !22
  store float %i.hy, ptr %.060.i, align 4, !tbaa !22
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.060.i, i64 %.sroa.speculated195 ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.059.i, i64 4
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !22
  store float %i.ib, ptr %i.hz, align 4, !tbaa !22
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.hz, i64 %.sroa.speculated195 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.059.i, i64 8
  %i.ie = load float, ptr %i.id, align 4, !tbaa !22
  store float %i.ie, ptr %i.ic, align 4, !tbaa !22
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %.sroa.speculated195 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.059.i, i64 12
  %i.ih = load float, ptr %i.ig, align 4, !tbaa !22
  store float %i.ih, ptr %i.if, align 4, !tbaa !22
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.if, i64 %.sroa.speculated195 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.059.i, i64 16
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !22
  store float %i.ik, ptr %i.ii, align 4, !tbaa !22
  %i.il = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %.sroa.speculated195 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.059.i, i64 20
  %i.in = load float, ptr %i.im, align 4, !tbaa !22
  store float %i.in, ptr %i.il, align 4, !tbaa !22
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %.sroa.speculated195 ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %.059.i, i64 24
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !22
  store float %i.iq, ptr %i.io, align 4, !tbaa !22
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.io, i64 %.sroa.speculated195 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.059.i, i64 28
  %i.it = load float, ptr %i.is, align 4, !tbaa !22
  store float %i.it, ptr %i.ir, align 4, !tbaa !22
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.sroa.speculated195
  %i.iv = getelementptr inbounds nuw i8, ptr %.059.i, i64 32
  %i.iw = add i64 %.0.i186, -8                    ; 2 uses
  %.not73.i.7 = icmp eq i64 %i.iw, 0
  br i1 %.not73.i.7, label %_Z19MlasSgemmTransposeAPfPKfmmm.exit, label %.preheader.i, !llvm.loop !5

_Z19MlasSgemmTransposeAPfPKfmmm.exit:             ; preds = %.preheader.i.prol.loopexit, %.preheader.i, %bb.ar
  %i.ix = sub nuw i64 %.0212233, %.sroa.speculated ; 2 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0127235, i64 %.sroa.speculated
  br label %bb.as

bb.as:                                            ; preds = %_Z19MlasSgemmTransposeAPfPKfmmm.exit, %_Z15GetMlasPlatformv.exit189
  %.0.i231 = phi ptr [ %i.a, %_Z19MlasSgemmTransposeAPfPKfmmm.exit ], [ %i.ji, %_Z15GetMlasPlatformv.exit189 ] ; 2 uses
  %.019.i230 = phi ptr [ %.0128234, %_Z19MlasSgemmTransposeAPfPKfmmm.exit ], [ %i.jg, %_Z15GetMlasPlatformv.exit189 ] ; 2 uses
  %.020.i229 = phi i64 [ %.sroa.speculated, %_Z19MlasSgemmTransposeAPfPKfmmm.exit ], [ %i.jj, %_Z15GetMlasPlatformv.exit189 ] ; 2 uses
  %i.iz = load atomic i8, ptr @_ZGVZ15GetMlasPlatformvE12MlasPlatform acquire, align 8
  %i.ja = icmp eq i8 %i.iz, 0
  br i1 %i.ja, label %bb.at, label %_Z15GetMlasPlatformv.exit189, !prof !23

bb.at:                                            ; preds = %bb.as
  %i.jb = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  %.not.i188 = icmp eq i32 %i.jb, 0
  br i1 %.not.i188, label %_Z15GetMlasPlatformv.exit189, label %bb.au

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN13MLAS_PLATFORMC1Ev(ptr noundef nonnull align 8 dereferenceable(584) @_ZZ15GetMlasPlatformvE12MlasPlatform)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @__cxa_guard_release(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %_Z15GetMlasPlatformv.exit189

bb.aw:                                            ; preds = %bb.au
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_guard_abort(ptr nonnull @_ZGVZ15GetMlasPlatformvE12MlasPlatform) #13
  br label %common.resume

_Z15GetMlasPlatformv.exit189:                     ; preds = %bb.as, %bb.at, %bb.av
  %i.jd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZ15GetMlasPlatformvE12MlasPlatform, i64 72), align 8, !tbaa !39
  %i.je = call noundef i64 %i.jd(ptr noundef %.0.i231, ptr noundef nonnull %i.b, ptr noundef %.019.i230, i64 noundef %.sroa.speculated195, i64 noundef %.020.i229, i64 noundef %.sroa.speculated199, i64 noundef %.sroa.speculated195, i64 noundef %12, float noundef %5, i1 noundef zeroext %.0130241), !inline_history !6 ; 3 uses
  %i.jf = mul i64 %i.je, %12
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %.019.i230, i64 %i.jf ; 2 uses
  %i.jh = mul i64 %i.je, %.sroa.speculated195
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %.0.i231, i64 %i.jh
  %i.jj = sub i64 %.020.i229, %i.je               ; 2 uses
  %.not.i = icmp eq i64 %i.jj, 0
  br i1 %.not.i, label %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit, label %bb.as, !llvm.loop !7

_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit148:   ; preds = %_Z19MlasSgemmKernelLoopPKfS0_Pfmmmmmfb.exit.loopexit, %_Z15GetMlasPlatformv.exit183, %13, %bb.al
  %i.jk = add i64 %.sroa.speculated195, %.0129242 ; 2 uses
  %i.jl = icmp ult i64 %i.jk, %4
  br i1 %i.jl, label %bb.ah, label %bb.ag, !llvm.loop !70

_Z21MlasSgemmMultiplyBetaPfmmmf.exit:             ; preds = %bb.ag, %._crit_edge.i, %._crit_edge.us.i, %.loopexit, %.preheader22.lr.ph.split.i, %bb.b, %bb.aa, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_Z24MlasSgemmPackedOperation15CBLAS_TRANSPOSEmmmmfPKfmPKvmfPfm(i32 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, float noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef %8, i64 noundef %9, float noundef %10, ptr noundef %11, i64 noundef %12) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3072 x float], align 16          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge124, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.a
  %i.b = fcmp oeq float %10, 0.000000e+00         ; 3 uses
  %i.c = fcmp oeq float %10, 1.000000e+00
  %or.cond.not211 = or i1 %i.b, %i.c              ; 2 uses
  %i.d = insertelement <4 x float> poison, float %10, i64 0
  %i.e = shufflevector <4 x float> %i.d, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.f = add i64 %1, -1                           ; 4 uses
  %.not30.i = icmp eq i64 %1, 0                   ; 4 uses
  %.not167 = icmp eq i64 %4, 0
  %i.g = icmp eq i32 %0, 111                      ; 2 uses
  %.idx74.i = shl i64 %7, 3                       ; 4 uses
  %.idx75.i = mul i64 %7, 12                      ; 3 uses
  %.idx77.i = shl i64 %7, 4
  br i1 %.not167, label %.lr.ph123.split, label %.lr.ph123.split.us.preheader

.lr.ph123.split.us.preheader:                     ; preds = %.lr.ph123
  %broadcast.splatinsert = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123.split.us.preheader, %._crit_edge.us
  %.065121.us = phi i64 [ %i.hd, %._crit_edge.us ], [ 0, %.lr.ph123.split.us.preheader ] ; 6 uses
  %i.h = add i64 %.065121.us, %2                  ; 2 uses
  %i.i = sub i64 %3, %.065121.us                  ; 2 uses
  %.sroa.speculated93.us = call i64 @llvm.umin.i64(i64 %i.i, i64 128) ; 10 uses
  br i1 %or.cond.not211, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph123.split.us
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.065121.us ; 3 uses
  br i1 %.not30.i, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread, label %.preheader22.lr.ph.i.us

.preheader22.lr.ph.i.us:                          ; preds = %bb.b
  %i.k = icmp ugt i64 %i.i, 3
  br i1 %i.k, label %.preheader22.us.i.us.preheader, label %.preheader22.i.us.preheader

.preheader22.i.us.preheader:                      ; preds = %.preheader22.lr.ph.i.us
  %i.l = add nsw i64 %.sroa.speculated93.us, -1
  %lcmp.mod.not = icmp eq i64 %3, %.065121.us
  %i.m = icmp ult i64 %i.l, 3
  br label %.preheader22.i.us

.preheader22.us.i.us.preheader:                   ; preds = %.preheader22.lr.ph.i.us
  %i.n = add nsw i64 %.sroa.speculated93.us, -4   ; 2 uses
  %i.o = call i64 @llvm.umin.i64(i64 %i.n, i64 3)
  %i.p = xor i64 %i.o, -1
  %i.q = add nsw i64 %.sroa.speculated93.us, %i.p
  %i.r = and i64 %i.q, -4
  %i.s = sub nsw i64 %i.n, %i.r                   ; 3 uses
  %min.iters.check = icmp ult i64 %i.s, 8
  %n.vec = and i64 %i.s, -8                       ; 4 uses
  %i.t = shl nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br label %.preheader22.us.i.us

.preheader22.i.us:                                ; preds = %.preheader22.i.us.preheader, %._crit_edge.i.us
  %i.u = phi i64 [ %i.an, %._crit_edge.i.us ], [ %i.f, %.preheader22.i.us.preheader ] ; 2 uses
  %.01931.i.us = phi ptr [ %i.am, %._crit_edge.i.us ], [ %i.j, %.preheader22.i.us.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader22.i.us, %.prol.preheader
  %.128.i.us.prol = phi i64 [ %i.y, %.prol.preheader ], [ %.sroa.speculated93.us, %.preheader22.i.us ]
  %.11827.i.us.prol = phi ptr [ %i.x, %.prol.preheader ], [ %.01931.i.us, %.preheader22.i.us ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader22.i.us ]
  %i.v = load float, ptr %.11827.i.us.prol, align 1, !tbaa !16
  %i.w = fmul float %10, %i.v
  store float %i.w, ptr %.11827.i.us.prol, align 1, !tbaa !16
  %i.x = getelementptr inbounds nuw i8, ptr %.11827.i.us.prol, i64 4 ; 2 uses
  %i.y = add nsw i64 %.128.i.us.prol, -1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %.sroa.speculated93.us
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !71

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader22.i.us
  %.128.i.us.unr = phi i64 [ %.sroa.speculated93.us, %.preheader22.i.us ], [ %i.y, %.prol.preheader ]
  %.11827.i.us.unr = phi ptr [ %.01931.i.us, %.preheader22.i.us ], [ %i.x, %.prol.preheader ]
  br i1 %i.m, label %._crit_edge.i.us, label %.preheader22.i.us.new

.preheader22.i.us.new:                            ; preds = %.prol.loopexit, %.preheader22.i.us.new
  %.128.i.us = phi i64 [ %i.al, %.preheader22.i.us.new ], [ %.128.i.us.unr, %.prol.loopexit ]
  %.11827.i.us = phi ptr [ %i.ak, %.preheader22.i.us.new ], [ %.11827.i.us.unr, %.prol.loopexit ] ; 6 uses
  %i.z = load float, ptr %.11827.i.us, align 1, !tbaa !16
  %i.aa = fmul float %10, %i.z
  store float %i.aa, ptr %.11827.i.us, align 1, !tbaa !16
  %i.ab = getelementptr inbounds nuw i8, ptr %.11827.i.us, i64 4 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 1, !tbaa !16
  %i.ad = fmul float %10, %i.ac
  store float %i.ad, ptr %i.ab, align 1, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %.11827.i.us, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 1, !tbaa !16
  %i.ag = fmul float %10, %i.af
  store float %i.ag, ptr %i.ae, align 1, !tbaa !16
  %i.ah = getelementptr inbounds nuw i8, ptr %.11827.i.us, i64 12 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 1, !tbaa !16
  %i.aj = fmul float %10, %i.ai
  store float %i.aj, ptr %i.ah, align 1, !tbaa !16
  %i.ak = getelementptr inbounds nuw i8, ptr %.11827.i.us, i64 16
  %i.al = add nsw i64 %.128.i.us, -4              ; 2 uses
  %.not21.i.us.3 = icmp eq i64 %i.al, 0
  br i1 %.not21.i.us.3, label %._crit_edge.i.us, label %.preheader22.i.us.new, !llvm.loop !72

._crit_edge.i.us:                                 ; preds = %.preheader22.i.us.new, %.prol.loopexit
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.01931.i.us, i64 %12
  %i.an = add i64 %i.u, -1
  %.not.i74.us = icmp eq i64 %i.u, 0
  br i1 %.not.i74.us, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us, label %.preheader22.i.us, !llvm.loop !1

.preheader22.us.i.us:                             ; preds = %.preheader22.us.i.us.preheader, %._crit_edge.us.i.us
  %i.ao = phi i64 [ %i.bg, %._crit_edge.us.i.us ], [ %i.f, %.preheader22.us.i.us.preheader ] ; 2 uses
  %.01931.us.i.us = phi ptr [ %i.bf, %._crit_edge.us.i.us ], [ %i.j, %.preheader22.us.i.us.preheader ] ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader22.us.i.us
  %.024.us.i.us = phi i64 [ %.sroa.speculated93.us, %.preheader22.us.i.us ], [ %i.as, %bb.c ]
  %.01723.us.i.us = phi ptr [ %.01931.us.i.us, %.preheader22.us.i.us ], [ %i.ar, %bb.c ] ; 3 uses
  %i.ap = load <4 x float>, ptr %.01723.us.i.us, align 1, !tbaa !16
  %i.aq = fmul <4 x float> %i.e, %i.ap
  store <4 x float> %i.aq, ptr %.01723.us.i.us, align 1, !tbaa !16
  %i.ar = getelementptr inbounds nuw i8, ptr %.01723.us.i.us, i64 16 ; 4 uses
  %i.as = add i64 %.024.us.i.us, -4               ; 5 uses
  %i.at = icmp ugt i64 %i.as, 3
  br i1 %i.at, label %bb.c, label %..preheader_crit_edge.us.i.us, !llvm.loop !0

..preheader_crit_edge.us.i.us:                    ; preds = %bb.c
  %.not2126.us.i.us = icmp eq i64 %i.as, 0
  br i1 %.not2126.us.i.us, label %._crit_edge.us.i.us, label %.lr.ph29.us.i.us.preheader

.lr.ph29.us.i.us.preheader:                       ; preds = %..preheader_crit_edge.us.i.us
  br i1 %min.iters.check, label %.lr.ph29.us.i.us.preheader244, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph29.us.i.us.preheader
  %i.au = sub nsw i64 %i.as, %n.vec
  %i.av = getelementptr i8, ptr %i.ar, i64 %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.aw ; 3 uses
  %i.ax = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %next.gep, align 1, !tbaa !16
  %wide.load223 = load <4 x float>, ptr %i.ax, align 1, !tbaa !16
  %i.ay = fmul <4 x float> %broadcast.splat, %wide.load
  %i.az = fmul <4 x float> %broadcast.splat, %wide.load223
  store <4 x float> %i.ay, ptr %next.gep, align 1, !tbaa !16
  store <4 x float> %i.az, ptr %i.ax, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.i.us, label %.lr.ph29.us.i.us.preheader244

.lr.ph29.us.i.us.preheader244:                    ; preds = %.lr.ph29.us.i.us.preheader, %middle.block
  %.128.us.i.us.ph = phi i64 [ %i.as, %.lr.ph29.us.i.us.preheader ], [ %i.au, %middle.block ]
  %.11827.us.i.us.ph = phi ptr [ %i.ar, %.lr.ph29.us.i.us.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph29.us.i.us

.lr.ph29.us.i.us:                                 ; preds = %.lr.ph29.us.i.us.preheader244, %.lr.ph29.us.i.us
  %.128.us.i.us = phi i64 [ %i.be, %.lr.ph29.us.i.us ], [ %.128.us.i.us.ph, %.lr.ph29.us.i.us.preheader244 ]
  %.11827.us.i.us = phi ptr [ %i.bd, %.lr.ph29.us.i.us ], [ %.11827.us.i.us.ph, %.lr.ph29.us.i.us.preheader244 ] ; 3 uses
  %i.bb = load float, ptr %.11827.us.i.us, align 1, !tbaa !16
  %i.bc = fmul float %10, %i.bb
  store float %i.bc, ptr %.11827.us.i.us, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %.11827.us.i.us, i64 4
  %i.be = add nsw i64 %.128.us.i.us, -1           ; 2 uses
  %.not21.us.i.us = icmp eq i64 %i.be, 0
  br i1 %.not21.us.i.us, label %._crit_edge.us.i.us, label %.lr.ph29.us.i.us, !llvm.loop !74

._crit_edge.us.i.us:                              ; preds = %.lr.ph29.us.i.us, %middle.block, %..preheader_crit_edge.us.i.us
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %.01931.us.i.us, i64 %12
  %i.bg = add i64 %i.ao, -1
  %.not.us.i.us = icmp eq i64 %i.ao, 0
  br i1 %.not.us.i.us, label %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us, label %.preheader22.us.i.us, !llvm.loop !1

_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us:          ; preds = %._crit_edge.i.us, %._crit_edge.us.i.us, %.lr.ph123.split.us
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.065121.us ; 2 uses
  br i1 %i.g, label %.lr.ph120.split.us.us, label %.lr.ph120.split.us125.preheader

_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread:   ; preds = %bb.b
  br i1 %i.g, label %._crit_edge.us, label %.lr.ph120.split.us125.preheader

.lr.ph120.split.us125.preheader:                  ; preds = %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us.thread, %_Z21MlasSgemmMultiplyBetaPfmmmf.exit.us
end_hunk_0
