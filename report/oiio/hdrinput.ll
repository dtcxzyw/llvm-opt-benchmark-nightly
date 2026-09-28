Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/hdrinput?download=true
inline.NumInlined: 3133
inline.NumDeleted: 958
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_18HdrInput19RGBE_ReadPixels_RLEEPfimi:bb.a

.lr.ph.3:                                         ; preds = %.lr.ph.3.preheader, %.lr.ph.3
  %.069188.3 = phi i32 [ %i.hf, %.lr.ph.3 ], [ %.069188.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %.2187.3 = phi ptr [ %i.hg, %.lr.ph.3 ], [ %.2187.3.ph, %.lr.ph.3.preheader ] ; 2 uses
  %i.hf = add nsw i32 %.069188.3, -1
  %i.hg = getelementptr inbounds nuw i8, ptr %.2187.3, i64 1 ; 2 uses
  store i8 %.pre327, ptr %.2187.3, align 1, !tbaa !54
  %i.hh = icmp samesign ugt i32 %.069188.3, 1
  br i1 %i.hh, label %.lr.ph.3, label %.loopexit.3, !llvm.loop !293

.loopexit.3:                                      ; preds = %.lr.ph.3, %middle.block, %vec.epilog.middle.block, %bb.at, %bb.aq
  %.3.3 = phi ptr [ %i.gg, %bb.aq ], [ %i.go, %bb.at ], [ %i.hd, %vec.epilog.middle.block ], [ %i.gv, %middle.block ], [ %i.hg, %.lr.ph.3 ] ; 2 uses
  %i.hi = icmp ult ptr %.3.3, %i.fp
  br i1 %i.hi, label %bb.am, label %.lr.ph196, !llvm.loop !289

.lr.ph196:                                        ; preds = %.loopexit.3, %.loopexit112.2
  %invariant.gep198 = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 %i.o
  br label %bb.be

.lr.ph190:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.hj = ptrtoint ptr %i.bz to i64
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph190, %.loopexit
  %.1189 = phi ptr [ %.sroa.0.4, %.lr.ph190 ], [ %.3, %.loopexit ] ; 13 uses
  %i.hk = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 56
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = invoke noundef i64 %i.hm(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.c, i64 noundef 2)
          to label %bb.aw unwind label %.loopexit113.loopexit

bb.aw:                                            ; preds = %bb.av
  %i.ho = icmp ult i64 %i.hn, 2
  br i1 %i.ho, label %.loopexit273.invoke, label %bb.ax

.loopexit273.invoke:                              ; preds = %bb.aw, %bb.bc, %bb.az, %bb.ay, %bb.v, %bb.aa, %bb.x, %bb.ac, %bb.ae, %bb.aj, %bb.ag, %bb.al, %bb.an, %bb.as, %bb.ap, %bb.au
  %i.hp = phi ptr [ @.str.20, %bb.ae ], [ @.str.20, %bb.as ], [ @.str.20, %bb.v ], [ @.str.20, %bb.an ], [ @.str.22, %bb.au ], [ @.str.22, %bb.ap ], [ @.str.20, %bb.aj ], [ @.str.22, %bb.ag ], [ @.str.22, %bb.al ], [ @.str.22, %bb.x ], [ @.str.20, %bb.aa ], [ @.str.22, %bb.ac ], [ @.str.22, %bb.ay ], [ @.str.20, %bb.bc ], [ @.str.22, %bb.az ], [ @.str.20, %bb.aw ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.hp, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.loopexit115 unwind label %.loopexit.split-lp

.loopexit113.loopexit:                            ; preds = %bb.bb, %bb.av
  %lpad.loopexit271 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit113

.loopexit113.loopexit.split-lp.loopexit:          ; preds = %bb.z, %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit113

.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.ad, %bb.ai
  %lpad.loopexit295 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit113

.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.am, %bb.ar
  %lpad.loopexit.split-lp296 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit113

.loopexit.split-lp:                               ; preds = %.loopexit273.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit113

bb.ax:                                            ; preds = %bb.aw
  %i.hq = load i8, ptr %i.c, align 1, !tbaa !54   ; 5 uses
  %i.hr = zext i8 %i.hq to i32                    ; 2 uses
  %i.hs = icmp ugt i8 %i.hq, -128
  %i.ht = ptrtoint ptr %.1189 to i64
  %i.hu = sub i64 %i.hj, %i.ht                    ; 2 uses
  br i1 %i.hs, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.hv = add nsw i32 %i.hr, -128                 ; 6 uses
  %i.hw = zext nneg i32 %i.hv to i64              ; 6 uses
  %i.hx = icmp slt i64 %i.hu, %i.hw
  br i1 %i.hx, label %.loopexit273.invoke, label %iter.check817

iter.check817:                                    ; preds = %bb.ay
  %.pre = load i8, ptr %i.n, align 1, !tbaa !54   ; 3 uses
  %min.iters.check802 = icmp ult i32 %i.hv, 4
  br i1 %min.iters.check802, label %.lr.ph.preheader, label %vector.main.loop.iter.check803

vector.main.loop.iter.check803:                   ; preds = %iter.check817
  %min.iters.check804 = icmp ult i32 %i.hv, 32
  br i1 %min.iters.check804, label %vec.epilog.ph821, label %vector.ph805

vector.ph805:                                     ; preds = %vector.main.loop.iter.check803
  %i.hy = and i64 %i.hw, 28
  %n.vec806 = and i64 %i.hw, 96                   ; 6 uses
  %i.hz = trunc nuw nsw i64 %n.vec806 to i32
  %i.ia = sub nsw i32 %i.hv, %i.hz
  %i.ib = getelementptr i8, ptr %.1189, i64 %n.vec806 ; 2 uses
  %broadcast.splatinsert807 = insertelement <16 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat808 = shufflevector <16 x i8> %broadcast.splatinsert807, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.ic = getelementptr i8, ptr %.1189, i64 16
  store <16 x i8> %broadcast.splat808, ptr %.1189, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat808, ptr %i.ic, align 1, !tbaa !54
  %i.id = icmp eq i64 %n.vec806, 32
  br i1 %i.id, label %middle.block813, label %vector.body809.1

vector.body809.1:                                 ; preds = %vector.ph805
  %next.gep811.1 = getelementptr i8, ptr %.1189, i64 32
  %i.ie = getelementptr i8, ptr %.1189, i64 48
  store <16 x i8> %broadcast.splat808, ptr %next.gep811.1, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat808, ptr %i.ie, align 1, !tbaa !54
  %i.if = icmp eq i64 %n.vec806, 64
  br i1 %i.if, label %middle.block813, label %vector.body809.2

vector.body809.2:                                 ; preds = %vector.body809.1
  %next.gep811.2 = getelementptr i8, ptr %.1189, i64 64
  %i.ig = getelementptr i8, ptr %.1189, i64 80
  store <16 x i8> %broadcast.splat808, ptr %next.gep811.2, align 1, !tbaa !54
  store <16 x i8> %broadcast.splat808, ptr %i.ig, align 1, !tbaa !54
  br label %middle.block813

middle.block813:                                  ; preds = %vector.body809.2, %vector.body809.1, %vector.ph805
  %cmp.n814 = icmp eq i64 %n.vec806, %i.hw
  br i1 %cmp.n814, label %.loopexit, label %vec.epilog.iter.check819

vec.epilog.iter.check819:                         ; preds = %middle.block813
  %min.epilog.iters.check820 = icmp eq i64 %i.hy, 0
  br i1 %min.epilog.iters.check820, label %.lr.ph.preheader, label %vec.epilog.ph821, !prof !115

vec.epilog.ph821:                                 ; preds = %vector.main.loop.iter.check803, %vec.epilog.iter.check819
  %vec.epilog.resume.val815 = phi i64 [ %n.vec806, %vec.epilog.iter.check819 ], [ 0, %vector.main.loop.iter.check803 ]
  %n.vec822 = and i64 %i.hw, 124                  ; 4 uses
  %i.ih = trunc nuw nsw i64 %n.vec822 to i32
  %i.ii = sub nsw i32 %i.hv, %i.ih
  %i.ij = getelementptr i8, ptr %.1189, i64 %n.vec822 ; 2 uses
  %broadcast.splatinsert823 = insertelement <4 x i8> poison, i8 %.pre, i64 0
  %broadcast.splat824 = shufflevector <4 x i8> %broadcast.splatinsert823, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body825

vec.epilog.vector.body825:                        ; preds = %vec.epilog.vector.body825, %vec.epilog.ph821
  %index826 = phi i64 [ %vec.epilog.resume.val815, %vec.epilog.ph821 ], [ %index.next828, %vec.epilog.vector.body825 ] ; 2 uses
  %next.gep827 = getelementptr i8, ptr %.1189, i64 %index826
  store <4 x i8> %broadcast.splat824, ptr %next.gep827, align 1, !tbaa !54
  %index.next828 = add nuw i64 %index826, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next828, %n.vec822
  br i1 %i.ik, label %vec.epilog.middle.block829, label %vec.epilog.vector.body825, !llvm.loop !294

vec.epilog.middle.block829:                       ; preds = %vec.epilog.vector.body825
  %cmp.n830 = icmp eq i64 %n.vec822, %i.hw
  br i1 %cmp.n830, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check817, %vec.epilog.iter.check819, %vec.epilog.middle.block829
  %.069188.ph = phi i32 [ %i.hv, %iter.check817 ], [ %i.ia, %vec.epilog.iter.check819 ], [ %i.ii, %vec.epilog.middle.block829 ]
  %.2187.ph = phi ptr [ %.1189, %iter.check817 ], [ %i.ib, %vec.epilog.iter.check819 ], [ %i.ij, %vec.epilog.middle.block829 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.069188 = phi i32 [ %i.il, %.lr.ph ], [ %.069188.ph, %.lr.ph.preheader ] ; 2 uses
  %.2187 = phi ptr [ %i.im, %.lr.ph ], [ %.2187.ph, %.lr.ph.preheader ] ; 2 uses
  %i.il = add nsw i32 %.069188, -1
  %i.im = getelementptr inbounds nuw i8, ptr %.2187, i64 1 ; 2 uses
  store i8 %.pre, ptr %.2187, align 1, !tbaa !54
  %i.in = icmp samesign ugt i32 %.069188, 1
  br i1 %i.in, label %.lr.ph, label %.loopexit, !llvm.loop !295

bb.az:                                            ; preds = %bb.ax
  %i.io = icmp eq i8 %i.hq, 0
  %i.ip = zext i8 %i.hq to i64
  %i.iq = icmp slt i64 %i.hu, %i.ip
  %or.cond91 = or i1 %i.io, %i.iq
  br i1 %or.cond91, label %.loopexit273.invoke, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ir = load i8, ptr %i.n, align 1, !tbaa !54
  %i.is = getelementptr inbounds nuw i8, ptr %.1189, i64 1 ; 3 uses
  store i8 %i.ir, ptr %.1189, align 1, !tbaa !54
  %.not85 = icmp eq i8 %i.hq, 1
  br i1 %.not85, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.it = add nsw i32 %i.hr, -1
  %i.iu = zext nneg i32 %i.it to i64              ; 3 uses
  %i.iv = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 56
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = invoke noundef i64 %i.ix(ptr noundef nonnull align 8 dereferenceable(88) %i.h, ptr noundef nonnull %i.is, i64 noundef %i.iu)
          to label %bb.bc unwind label %.loopexit113.loopexit

bb.bc:                                            ; preds = %bb.bb
  %i.iz = icmp ult i64 %i.iy, %i.iu
  br i1 %i.iz, label %.loopexit273.invoke, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ja = getelementptr inbounds nuw i8, ptr %i.is, i64 %i.iu
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %middle.block813, %vec.epilog.middle.block829, %bb.ba, %bb.bd
  %.3 = phi ptr [ %i.is, %bb.ba ], [ %i.ja, %bb.bd ], [ %i.ij, %vec.epilog.middle.block829 ], [ %i.ib, %middle.block813 ], [ %i.im, %.lr.ph ] ; 3 uses
  %i.jb = icmp ult ptr %.3, %i.bz
  br i1 %i.jb, label %bb.av, label %.loopexit112, !llvm.loop !289

.critedge._crit_edge:                             ; preds = %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93
  %i.jc = add nsw i32 %.071206, -1
  %i.jd = icmp sgt i32 %.071206, 1
  br i1 %i.jd, label %bb.d, label %.loopexit115, !llvm.loop !296

bb.be:                                            ; preds = %.lr.ph196, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93
  %.0195 = phi i64 [ 0, %.lr.ph196 ], [ %i.jw, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93 ] ; 5 uses
  %.177194 = phi ptr [ %.076205, %.lr.ph196 ], [ %i.jv, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93 ] ; 4 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.4, i64 %.0195
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !54  ; 2 uses
  store i8 %i.jf, ptr %i.b, align 1, !tbaa !54
  %gep = getelementptr i8, ptr %i.bz, i64 %.0195
  %i.jg = load i8, ptr %gep, align 1, !tbaa !54
  store i8 %i.jg, ptr %i.j, align 1, !tbaa !54
  %gep199 = getelementptr inbounds nuw i8, ptr %invariant.gep198, i64 %.0195
  %i.jh = load i8, ptr %gep199, align 1, !tbaa !54
  store i8 %i.jh, ptr %i.k, align 1, !tbaa !54
  %gep201 = getelementptr inbounds nuw i8, ptr %i.dv, i64 %.0195
  %i.ji = load i8, ptr %gep201, align 1, !tbaa !54 ; 3 uses
  store i8 %i.ji, ptr %i.l, align 1, !tbaa !54
  %i.jj = getelementptr inbounds nuw i8, ptr %.177194, i64 4
  %.not.i92 = icmp eq i8 %i.ji, 0
  br i1 %.not.i92, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.jk = zext i8 %i.ji to i64
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr @_ZN11OpenImageIO4v3_1L14exponent_tableE, i64 %i.jk
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !114 ; 2 uses
  %i.jn = uitofp i8 %i.jf to float
  %i.jo = fmul float %i.jm, %i.jn
  store float %i.jo, ptr %.177194, align 4, !tbaa !114
  %i.jp = load <2 x i8>, ptr %i.j, align 1, !tbaa !54
  %i.jq = uitofp <2 x i8> %i.jp to <2 x float>
  %i.jr = insertelement <2 x float> poison, float %i.jm, i64 0
  %i.js = shufflevector <2 x float> %i.jr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x float> %i.js, %i.jq
  br label %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93

bb.bg:                                            ; preds = %bb.be
  store float 0.000000e+00, ptr %.177194, align 4, !tbaa !114
  br label %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93

_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit93: ; preds = %bb.bf, %bb.bg
  %i.ju = phi <2 x float> [ zeroinitializer, %bb.bg ], [ %i.jt, %bb.bf ]
  store <2 x float> %i.ju, ptr %i.jj, align 4, !tbaa !114
  %i.jv = getelementptr inbounds nuw i8, ptr %.177194, i64 12 ; 2 uses
  %i.jw = add nuw nsw i64 %.0195, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.jw, %3
  br i1 %exitcond.not, label %.critedge._crit_edge, label %bb.be, !llvm.loop !297

.loopexit115:                                     ; preds = %.critedge._crit_edge, %.loopexit273.invoke, %.invoke, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.0202, %.invoke ], [ %.sroa.0.0202, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit ], [ %.sroa.0.4, %.loopexit273.invoke ], [ %.sroa.0.4, %.critedge._crit_edge ] ; 3 uses
  %.sroa.20.2 = phi ptr [ %.sroa.20.0204, %.invoke ], [ %.sroa.20.0204, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit ], [ %.sroa.20.4, %.loopexit273.invoke ], [ %.sroa.20.4, %.critedge._crit_edge ]
  %.274 = phi i1 [ false, %.invoke ], [ %i.av, %_ZN11OpenImageIO4v3_110rgbe2floatERfS1_S1_Ph.exit ], [ false, %.loopexit273.invoke ], [ true, %.critedge._crit_edge ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.bh

bb.bh:                                            ; preds = %.loopexit115
  %i.jx = ptrtoint ptr %.sroa.20.2 to i64
  %i.jy = ptrtoint ptr %.sroa.0.2 to i64
  %i.jz = sub i64 %i.jx, %i.jy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.jz) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.preheader114, %.loopexit115, %bb.bh
  %.274358 = phi i1 [ %.274, %bb.bh ], [ %.274, %.loopexit115 ], [ true, %.preheader114 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.bj

.loopexit113:                                     ; preds = %.loopexit113.loopexit, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit113.loopexit.split-lp.loopexit, %.loopexit.split-lp, %.loopexit116, %.loopexit.split-lp117
  %.sroa.0.3 = phi ptr [ %.sroa.0.1.ph, %.loopexit.split-lp117 ], [ %.sroa.0.0202, %.loopexit116 ], [ %.sroa.0.4, %.loopexit.split-lp ], [ %.sroa.0.4, %.loopexit113.loopexit.split-lp.loopexit ], [ %.sroa.0.4, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0.4, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.0.4, %.loopexit113.loopexit ] ; 3 uses
  %.sroa.20.3 = phi ptr [ %.sroa.20.1.ph, %.loopexit.split-lp117 ], [ %.sroa.20.0204, %.loopexit116 ], [ %.sroa.20.4, %.loopexit.split-lp ], [ %.sroa.20.4, %.loopexit113.loopexit.split-lp.loopexit ], [ %.sroa.20.4, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.20.4, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %.sroa.20.4, %.loopexit113.loopexit ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ], [ %lpad.loopexit118, %.loopexit116 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit113.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp296, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit295, %.loopexit113.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit271, %.loopexit113.loopexit ]
  %.not.i.i.i94 = icmp eq ptr %.sroa.0.3, null
  br i1 %.not.i.i.i94, label %_ZNSt6vectorIhSaIhEED2Ev.exit95, label %bb.bi

bb.bi:                                            ; preds = %.loopexit113
  %i.ka = ptrtoint ptr %.sroa.20.3 to i64
  %i.kb = ptrtoint ptr %.sroa.0.3 to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.3, i64 noundef %i.kc) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit95

_ZNSt6vectorIhSaIhEED2Ev.exit95:                  ; preds = %.loopexit113, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  resume { ptr, i32 } %.pn

bb.bj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.b
  %.375 = phi i1 [ %i.g, %bb.b ], [ %.274358, %_ZNSt6vectorIhSaIhEED2Ev.exit ]
  ret i1 %.375
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18HdrInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(248) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = or i32 %2, %1
  %or.cond.not.i = icmp eq i32 %i.a, 0
  br i1 %or.cond.not.i, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 5 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !91
  %.not = icmp eq i32 %i.c, %3
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = sext i32 %3 to i64
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !107
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !92   ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 3
  %i.m = add nsw i64 %i.l, -1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.m, i64 %i.d) ; 2 uses
  %i.n = trunc i64 %.sroa.speculated to i32
  store i32 %i.n, ptr %i.b, align 4, !tbaa !91
  %sext = shl i64 %.sroa.speculated, 32
  %i.o = ashr exact i64 %sext, 29
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.o
  %i.q = load i64, ptr %i.p, align 8, !tbaa !108
  %i.r = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.q, i32 noundef 0)
          to label %bb.e unwind label %bb.d       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %bb.e
  %i.x = load i32, ptr %i.b, align 4, !tbaa !91
  %.not19 = icmp sgt i32 %i.x, %3                 ; 3 uses
  br i1 %.not19, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load i32, ptr %i.t, align 4, !tbaa !299
  %i.z = sext i32 %i.y to i64
  %i.aa = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18HdrInput19RGBE_ReadPixels_RLEEPfimi(ptr noundef nonnull align 8 dereferenceable(248) %0, ptr noundef %5, i32 noundef %3, i64 noundef %i.z, i32 noundef 1)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.b, align 4, !tbaa !91
  %i.ac = add nsw i32 %i.ab, 1                    ; 2 uses
  store i32 %i.ac, ptr %i.b, align 4, !tbaa !91
  %i.ad = sext i32 %i.ac to i64
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !107
  %i.af = load ptr, ptr %i.u, align 8, !tbaa !92
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = icmp eq i64 %i.aj, %i.ad
  br i1 %i.ak, label %bb.i, label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.i:                                             ; preds = %bb.h
  %i.al = invoke noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %bb.j unwind label %.loopexit30 ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.v, align 8, !tbaa !107 ; 4 uses
  %i.an = load ptr, ptr %i.w, align 8, !tbaa !93
  %.not.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i64 %i.al, ptr %i.am, align 8, !tbaa !108
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  store ptr %i.ao, ptr %i.v, align 8, !tbaa !107
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.l:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.u, align 8, !tbaa !92  ; 4 uses
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = ptrtoint ptr %i.ap to i64               ; 2 uses
  %i.as = sub i64 %i.aq, %i.ar                    ; 5 uses
  %i.at = icmp eq i64 %i.as, 9223372036854775800
  br i1 %i.at, label %bb.m, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.67) #29
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.au = ashr exact i64 %i.as, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.au, i64 1)
  %i.av = add nsw i64 %.sroa.speculated.i.i.i.i, %i.au ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.au
  %i.ax = tail call i64 @llvm.umin.i64(i64 %i.av, i64 1152921504606846975)
  %i.ay = select i1 %i.aw, i64 1152921504606846975, i64 %i.ax ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ay, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.az = shl nuw nsw i64 %i.ay, 3
  %i.ba = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.az) #30
          to label %.noexc22 unwind label %.loopexit30 ; 4 uses

.noexc22:                                         ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.as ; 2 uses
  store i64 %i.al, ptr %i.bb, align 8, !tbaa !108
  %i.bc = icmp sgt i64 %i.as, 0
  br i1 %i.bc, label %bb.n, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.n:                                             ; preds = %.noexc22
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.ap, i64 %i.as, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.n, %.noexc22
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %i.be = load ptr, ptr %i.w, align 8, !tbaa !93
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = sub i64 %i.bf, %i.ar
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bg) #27
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.o, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.ba, ptr %i.u, align 8, !tbaa !92
  store ptr %i.bd, ptr %i.v, align 8, !tbaa !107
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.ay
  store ptr %i.bh, ptr %i.w, align 8, !tbaa !93
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.p:                                             ; preds = %bb.g
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit30:                                      ; preds = %bb.i, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.k, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, %bb.h
  br i1 %i.aa, label %bb.f, label %.loopexit, !llvm.loop !298

.loopexit:                                        ; preds = %bb.f, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit, %bb.a
  %.2 = phi i1 [ false, %bb.a ], [ %.not19, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit ], [ %.not19, %bb.f ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.q

bb.q:                                             ; preds = %.loopexit
  %i.bj = landingpad { ptr, i32 }
          catch ptr null
  %i.bk = extractvalue { ptr, i32 } %i.bj, 0
end_hunk_0
