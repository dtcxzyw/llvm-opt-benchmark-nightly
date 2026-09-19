Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/fast_gemm?download=true
inline.NumInlined: 936
inline.NumDeleted: 360
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 34
begin_hunk_0_@_ZN2cv3dnn12MatMulHelper7computeEbbNS_8MatShapeES2_S2_:bb.a
bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106
  %i.dm = sub nuw i64 %i.dc, %i.dk
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr %i.df, i64 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre250 = load i64, ptr %i.bd, align 8, !tbaa !92
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109

bb.y:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit106
  %i.dn = icmp ult i64 %i.dc, %i.dk
  br i1 %i.dn, label %bb.z, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109

bb.z:                                             ; preds = %bb.y
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %i.dc ; 2 uses
  %.not.i.i107 = icmp eq ptr %i.df, %i.do
  br i1 %.not.i.i107, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108:     ; preds = %bb.z
  store ptr %i.do, ptr %i.de, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109

_ZNSt6vectorImSaImEE6resizeEmRKm.exit109:         ; preds = %bb.x, %bb.y, %bb.z, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108
  %i.dp = phi i64 [ %.pre250, %bb.x ], [ %i.dc, %bb.y ], [ %i.dc, %bb.z ], [ %i.dc, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i108 ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 0, ptr %i.f, align 8, !tbaa !20
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !103 ; 3 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !93 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv
  %i.dx = ashr exact i64 %i.dw, 3                 ; 3 uses
  %i.dy = icmp ugt i64 %i.dp, %i.dx
  br i1 %i.dy, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109
  %i.dz = sub nuw i64 %i.dp, %i.dx
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.dq, ptr %i.ds, i64 noundef %i.dz, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit109
  %i.ea = icmp ult i64 %i.dp, %i.dx
  br i1 %i.ea, label %bb.ac, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112

bb.ac:                                            ; preds = %bb.ab
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.dp ; 2 uses
  %.not.i.i110 = icmp eq ptr %i.ds, %i.eb
  br i1 %.not.i.i110, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i111

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i111:     ; preds = %bb.ac
  store ptr %i.eb, ptr %i.dr, align 8, !tbaa !103
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112

_ZNSt6vectorImSaImEE6resizeEmRKm.exit112:         ; preds = %bb.aa, %bb.ab, %bb.ac, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  %i.ec = call fastcc noundef i64 @_ZN2cv3dnn14dnn5_v20260605L5totalERKNS_8MatShapeEii(ptr noundef nonnull align 4 dereferenceable(52) %5, i32 noundef %i.bb, i32 noundef -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %20, i64 noundef %spec.select.i89, i32 noundef 1, i32 noundef 0)
  %i.ed = getelementptr inbounds nuw i8, ptr %20, i64 12 ; 3 uses
  %i.ee = sub nsw i64 %spec.select.i89, %spec.select.i
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ee
  %i.eg = shl nuw nsw i64 %spec.select.i, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ef, ptr nonnull align 4 %i.r, i64 %i.eg, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.eh = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i113 = call i32 @llvm.smax.i32(i32 %i.eh, i32 0)
  %spec.select.i114 = zext nneg i32 %narrow.i113 to i64
  call void @_ZN2cv8MatShapeC1EmiNS_10DataLayoutE(ptr noundef nonnull align 4 dereferenceable(52) %21, i64 noundef %spec.select.i114, i32 noundef 1, i32 noundef 0)
  %i.ei = getelementptr inbounds nuw i8, ptr %21, i64 12 ; 3 uses
  %i.ej = sub nsw i64 %spec.select.i89, %spec.select.i87
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ej
  %i.el = load i32, ptr %4, align 4, !tbaa !71
  %narrow.i115 = call i32 @llvm.smax.i32(i32 %i.el, i32 0)
  %spec.select.i116 = zext nneg i32 %narrow.i115 to i64
  %i.em = shl nuw nsw i64 %spec.select.i116, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr nonnull align 4 %i.af, i64 %i.em, i1 false)
  %.not.i.i.i.i = icmp slt i32 %i.i, 1
  br i1 %.not.i.i.i.i, label %.preheader, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112
  %i.en = shl nuw nsw i64 %spec.select.i89, 3     ; 5 uses
  %i.eo = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc unwind label %bb.ae    ; 12 uses

.noexc:                                           ; preds = %bb.ad
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 %i.en
  %i.eq = add nsw i64 %i.en, -8                   ; 3 uses
  %i.er = lshr exact i64 %i.eq, 3
  %i.es = add nuw nsw i64 %i.er, 1                ; 2 uses
  %xtraiter = and i64 %i.es, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.prol:                    ; preds = %.noexc, %.lr.ph.i.i.i.i.i.i.i.i.i.prol
  %.06.i.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ %i.eo, %.noexc ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.noexc ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !220

.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol, %.noexc
  %.06.i.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.eo, %.noexc ], [ %i.et, %.lr.ph.i.i.i.i.i.i.i.i.i.prol ]
  %i.eu = icmp ult i64 %i.eq, 56
  br i1 %i.eu, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 8
  store i64 1, ptr %i.ev, align 8, !tbaa !20
  %i.ew = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 16
  store i64 1, ptr %i.ew, align 8, !tbaa !20
  %i.ex = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 24
  store i64 1, ptr %i.ex, align 8, !tbaa !20
  %i.ey = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 32
  store i64 1, ptr %i.ey, align 8, !tbaa !20
  %i.ez = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 40
  store i64 1, ptr %i.ez, align 8, !tbaa !20
  %i.fa = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 48
  store i64 1, ptr %i.fa, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 56
  store i64 1, ptr %i.fb, align 8, !tbaa !20
  %i.fc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.fc, %i.ep
  br i1 %.not.i.i.i.i.i.i.i.i.i.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !7

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.prol.loopexit
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %spec.select.i89 ; 6 uses
  %i.fe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.en) #24
          to label %.noexc123 unwind label %_ZNSt6vectorImSaImEED2Ev.exit180.thread ; 11 uses

.noexc123:                                        ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.en
  %xtraiter331 = and i64 %i.es, 7                 ; 2 uses
  %lcmp.mod332.not = icmp eq i64 %xtraiter331, 0
  br i1 %lcmp.mod332.not, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol

.lr.ph.i.i.i.i.i.i.i.i.i118.prol:                 ; preds = %.noexc123, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol
  %.06.i.i.i.i.i.i.i.i.i119.prol = phi ptr [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol ], [ %i.fe, %.noexc123 ] ; 2 uses
  %prol.iter333 = phi i64 [ %prol.iter333.next, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol ], [ 0, %.noexc123 ]
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i119.prol, align 8, !tbaa !20
  %i.fg = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119.prol, i64 8 ; 2 uses
  %prol.iter333.next = add i64 %prol.iter333, 1   ; 2 uses
  %prol.iter333.cmp.not = icmp eq i64 %prol.iter333.next, %xtraiter331
  br i1 %prol.iter333.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i118.prol, !llvm.loop !221

.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit:        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i118.prol, %.noexc123
  %.06.i.i.i.i.i.i.i.i.i119.unr = phi ptr [ %i.fe, %.noexc123 ], [ %i.fg, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol ]
  %i.fh = icmp ult i64 %i.eq, 56
  br i1 %i.fh, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124, label %.lr.ph.i.i.i.i.i.i.i.i.i118

.lr.ph.i.i.i.i.i.i.i.i.i118:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i118
  %.06.i.i.i.i.i.i.i.i.i119 = phi ptr [ %i.fp, %.lr.ph.i.i.i.i.i.i.i.i.i118 ], [ %.06.i.i.i.i.i.i.i.i.i119.unr, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit ] ; 9 uses
  store i64 1, ptr %.06.i.i.i.i.i.i.i.i.i119, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 8
  store i64 1, ptr %i.fi, align 8, !tbaa !20
  %i.fj = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 16
  store i64 1, ptr %i.fj, align 8, !tbaa !20
  %i.fk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 24
  store i64 1, ptr %i.fk, align 8, !tbaa !20
  %i.fl = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 32
  store i64 1, ptr %i.fl, align 8, !tbaa !20
  %i.fm = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 40
  store i64 1, ptr %i.fm, align 8, !tbaa !20
  %i.fn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 48
  store i64 1, ptr %i.fn, align 8, !tbaa !20
  %i.fo = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 56
  store i64 1, ptr %i.fo, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i119, i64 64 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i120.7 = icmp eq ptr %i.fp, %i.ff
  br i1 %.not.i.i.i.i.i.i.i.i.i120.7, label %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124, label %.lr.ph.i.i.i.i.i.i.i.i.i118, !llvm.loop !7

_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i118, %.lr.ph.i.i.i.i.i.i.i.i.i118.prol.loopexit
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %spec.select.i89
  %i.fr = ptrtoint ptr %i.fq to i64               ; 5 uses
  %.not326 = icmp eq i32 %i.i, 1
  br i1 %.not326, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124
  %i.fs = load i32, ptr %20, align 4, !tbaa !71
  %i.ft = load i32, ptr %21, align 4
  %i.fu = zext i32 %i.bb to i64
  %.not297 = icmp sgt i32 %narrow.i88, %i.fs
  %.not298 = icmp sgt i32 %narrow.i88, %i.ft
  br label %bb.af

.preheader:                                       ; preds = %bb.an, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124
  %.sroa.12.0314 = phi i64 [ 0, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.fr, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.fr, %bb.an ] ; 2 uses
  %.sroa.0183.0313.a = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.fe, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.fe, %bb.an ] ; 6 uses
  %.sroa.12197.0202307 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.fd, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.fd, %bb.an ] ; 3 uses
  %.sroa.0191.0204303 = phi ptr [ null, %_ZNSt6vectorImSaImEE6resizeEmRKm.exit112 ], [ %i.eo, %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit124 ], [ %i.eo, %bb.an ] ; 6 uses
  %i.fv = load i64, ptr %i.bd, align 8, !tbaa !92
  %.not = icmp eq i64 %i.fv, 0
  br i1 %.not, label %._crit_edge240, label %.lr.ph239

.lr.ph239:                                        ; preds = %.preheader
  %i.fw = load ptr, ptr %i.cd, align 8, !tbaa !93
  %i.fx = load ptr, ptr %i.dq, align 8, !tbaa !93
  %i.fy = add nsw i32 %narrow.i88, -3             ; 4 uses
  %i.fz = icmp sgt i32 %i.i, 2
  %i.ga = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.gb = zext i32 %i.fy to i64
  br label %bb.ar

bb.ae:                                            ; preds = %bb.ad
  %i.gc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit182

_ZNSt6vectorImSaImEED2Ev.exit180.thread:          ; preds = %_ZNSt6vectorImSaImEEC2EmRKmRKS0_.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.bl

bb.af:                                            ; preds = %.lr.ph, %bb.an
  %indvars.iv = phi i64 [ %i.fu, %.lr.ph ], [ %indvars.iv.next, %bb.an ] ; 5 uses
  %i.ge = add nuw nsw i64 %indvars.iv, 1          ; 4 uses
  br i1 %.not297, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %.noexc130 unwind label %bb.ao

.noexc130:                                        ; preds = %bb.ag
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %.noexc130
  unreachable

bb.ai:                                            ; preds = %.noexc130
  %i.gf = landingpad { ptr, i32 }
          cleanup
  %i.gg = load ptr, ptr %14, align 8, !tbaa !74   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.ai
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !75
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %.body.thread317

bb.aj:                                            ; preds = %bb.af
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %i.ge
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !20
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %i.ge
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !59
  %i.gp = sext i32 %i.go to i64
  %i.gq = mul i64 %i.gm, %i.gp
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !20
  br i1 %.not298, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %.noexc137 unwind label %bb.ao

.noexc137:                                        ; preds = %bb.ak
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc137
  unreachable

bb.am:                                            ; preds = %.noexc137
  %i.gs = landingpad { ptr, i32 }
          cleanup
  %i.gt = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %.body.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134: ; preds = %bb.am
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !75
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #28
  br label %.body.thread

.body.thread:                                     ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %.body.thread317

bb.an:                                            ; preds = %bb.aj
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %i.ge
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !20
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %i.ge
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !59
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul i64 %i.gz, %i.hc
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %indvars.iv
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !20
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.hf = trunc nuw i64 %indvars.iv to i32
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %bb.af, label %.preheader, !llvm.loop !222

bb.ao:                                            ; preds = %bb.ak, %bb.ag
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread317

._crit_edge240:                                   ; preds = %._crit_edge, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.0183.0313.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge240
  %i.hi = ptrtoint ptr %.sroa.0183.0313.a to i64
  %i.hj = sub i64 %.sroa.12.0314, %i.hi
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0313.a, i64 noundef %i.hj) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge240, %bb.ap
  %.not.i.i.i141 = icmp eq ptr %.sroa.0191.0204303, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorImSaImEED2Ev.exit142, label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.hk = ptrtoint ptr %.sroa.12197.0202307 to i64
  %i.hl = ptrtoint ptr %.sroa.0191.0204303 to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0204303, i64 noundef %i.hm) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit142

_ZNSt6vectorImSaImEED2Ev.exit142:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  ret void

bb.ar:                                            ; preds = %.lr.ph239, %._crit_edge
  %.072238 = phi i64 [ 0, %.lr.ph239 ], [ %i.ik, %._crit_edge ] ; 10 uses
  %i.hn = mul i64 %.072238, %i.ec
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %.072238
  store i64 %i.hn, ptr %i.ho, align 8, !tbaa !20
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.fx, i64 %.072238
  store i64 %.072238, ptr %i.hp, align 8, !tbaa !20
  br i1 %i.fz, label %.lr.ph236, label %._crit_edge

.lr.ph236:                                        ; preds = %bb.ar
  %i.hq = load i32, ptr %5, align 4, !tbaa !71
  %narrow.i143 = call i32 @llvm.smax.i32(i32 %i.hq, i32 1)
  %i.hr = load i32, ptr %20, align 4
  %narrow.i161 = call i32 @llvm.smax.i32(i32 %i.hr, i32 1)
  %i.hs = load i32, ptr %21, align 4
  %narrow.i170 = call i32 @llvm.smax.i32(i32 %i.hs, i32 1)
  %.first_iter = icmp ult i32 %i.fy, %narrow.i143
  %.first_iter247 = icmp samesign ult i32 %i.fy, %narrow.i161
  %.first_iter248 = icmp samesign ult i32 %i.fy, %narrow.i170
  br label %bb.as

._crit_edge:                                      ; preds = %bb.bi, %bb.ar
  %.071.lcssa = phi i64 [ 0, %bb.ar ], [ %i.jo, %bb.bi ] ; 2 uses
  %.070.lcssa = phi i64 [ 0, %bb.ar ], [ %i.kd, %bb.bi ] ; 2 uses
  %i.ht = load ptr, ptr %0, align 8, !tbaa !93
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ht, i64 %.072238
  store i64 %.071.lcssa, ptr %i.hu, align 8, !tbaa !20
  %i.hv = load ptr, ptr %i.bq, align 8, !tbaa !93
  %i.hw = getelementptr inbounds nuw [8 x i8], ptr %i.hv, i64 %.072238
  store i64 %.070.lcssa, ptr %i.hw, align 8, !tbaa !20
  %i.hx = load i32, ptr %i.as, align 4, !tbaa !94
  %i.hy = load i32, ptr %i.aw, align 4, !tbaa !96 ; 2 uses
  %i.hz = mul nsw i32 %i.hy, %i.hx
  %i.ia = sext i32 %i.hz to i64
  %i.ib = udiv i64 %.071.lcssa, %i.ia
  %i.ic = load ptr, ptr %i.cq, align 8, !tbaa !93
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %.072238
  store i64 %i.ib, ptr %i.id, align 8, !tbaa !20
  %i.ie = load i32, ptr %i.au, align 8, !tbaa !95
  %i.if = mul nsw i32 %i.ie, %i.hy
  %i.ig = sext i32 %i.if to i64
  %i.ih = udiv i64 %.070.lcssa, %i.ig
  %i.ii = load ptr, ptr %i.dd, align 8, !tbaa !93
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %.072238
  store i64 %i.ih, ptr %i.ij, align 8, !tbaa !20
  %i.ik = add nuw i64 %.072238, 1                 ; 2 uses
  %i.il = load i64, ptr %i.bd, align 8, !tbaa !92
  %i.im = icmp ult i64 %i.ik, %i.il
  br i1 %i.im, label %bb.ar, label %._crit_edge240, !llvm.loop !223

bb.as:                                            ; preds = %.lr.ph236, %bb.bi
  %indvars.iv244 = phi i64 [ %i.gb, %.lr.ph236 ], [ %indvars.iv.next245, %bb.bi ] ; 7 uses
  %.070234 = phi i64 [ 0, %.lr.ph236 ], [ %i.kd, %bb.bi ]
  %.071233 = phi i64 [ 0, %.lr.ph236 ], [ %i.jo, %bb.bi ]
  %.073232 = phi i64 [ %.072238, %.lr.ph236 ], [ %i.iw, %bb.bi ] ; 2 uses
  br i1 %.first_iter, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %.noexc148 unwind label %bb.bj

.noexc148:                                        ; preds = %bb.at
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.au unwind label %bb.av

bb.au:                                            ; preds = %.noexc148
  unreachable

bb.av:                                            ; preds = %.noexc148
  %i.in = landingpad { ptr, i32 }
          cleanup
  %i.io = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145: ; preds = %bb.av
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !75
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146: ; preds = %bb.av, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %.body

bb.aw:                                            ; preds = %bb.as
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %indvars.iv244
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !59 ; 2 uses
  %i.iv = sext i32 %i.iu to i64
  %i.iw = udiv i64 %.073232, %i.iv                ; 2 uses
  %i.ix = zext i32 %i.iu to i64
  %i.iy = mul i64 %i.iw, %i.ix
  %i.iz = sub i64 %.073232, %i.iy                 ; 2 uses
  br i1 %.first_iter247, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc166 unwind label %bb.bk

.noexc166:                                        ; preds = %bb.ax
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.ay unwind label %bb.az

bb.ay:                                            ; preds = %.noexc166
  unreachable

bb.az:                                            ; preds = %.noexc166
  %i.ja = landingpad { ptr, i32 }
          cleanup
  %i.jb = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.jd = icmp eq ptr %i.jb, %i.jc
  br i1 %i.jd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163: ; preds = %bb.az
  %i.je = load i64, ptr %i.jc, align 8, !tbaa !75
  %i.jf = add i64 %i.je, 1
  call void @_ZdlPvm(ptr noundef %i.jb, i64 noundef %i.jf) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164: ; preds = %bb.az, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i163
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br label %.body

bb.ba:                                            ; preds = %bb.aw
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv244
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !59
  %i.ji = icmp eq i32 %i.jh, 1
  br i1 %i.ji, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %sext = shl i64 %i.iz, 32
  %i.jj = ashr exact i64 %sext, 32
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0191.0204303, i64 %indvars.iv244
  %i.jl = load i64, ptr %i.jk, align 8, !tbaa !20
  %i.jm = mul i64 %i.jl, %i.jj
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.jn = phi i64 [ %i.jm, %bb.bb ], [ 0, %bb.ba ]
  %i.jo = add i64 %i.jn, %.071233                 ; 2 uses
  br i1 %.first_iter248, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.72, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc175 unwind label %bb.bk

.noexc175:                                        ; preds = %bb.bd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN2cv8MatShapeixEm, ptr noundef nonnull @.str.73, i32 noundef 97) #27
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %.noexc175
  unreachable

bb.bf:                                            ; preds = %.noexc175
  %i.jp = landingpad { ptr, i32 }
          cleanup
  %i.jq = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.js = icmp eq ptr %i.jq, %i.jr
  br i1 %i.js, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172: ; preds = %bb.bf
  %i.jt = load i64, ptr %i.jr, align 8, !tbaa !75
  %i.ju = add i64 %i.jt, 1
  call void @_ZdlPvm(ptr noundef %i.jq, i64 noundef %i.ju) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173: ; preds = %bb.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i172
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.bg:                                            ; preds = %bb.bc
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv244
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !59
  %i.jx = icmp eq i32 %i.jw, 1
  br i1 %i.jx, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %sext81 = shl i64 %i.iz, 32
  %i.jy = ashr exact i64 %sext81, 32
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0183.0313.a, i64 %indvars.iv244
  %i.ka = load i64, ptr %i.jz, align 8, !tbaa !20
  %i.kb = mul i64 %i.ka, %i.jy
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh
  %i.kc = phi i64 [ %i.kb, %bb.bh ], [ 0, %bb.bg ]
  %i.kd = add i64 %i.kc, %.070234                 ; 2 uses
  %indvars.iv.next245 = add nsw i64 %indvars.iv244, -1
  %22 = trunc nuw i64 %indvars.iv244 to i32
  %i.ke = icmp sgt i32 %22, 0
  br i1 %i.ke, label %bb.as, label %._crit_edge, !llvm.loop !224

bb.bj:                                            ; preds = %bb.at
  %i.kf = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bk:                                            ; preds = %bb.bd, %bb.ax
  %i.kg = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164, %bb.bj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146
  %.pn82 = phi { ptr, i32 } [ %i.jp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i173 ], [ %i.in, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i146 ], [ %i.ja, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i164 ], [ %i.kg, %bb.bk ], [ %i.kf, %bb.bj ] ; 2 uses
  %.not.i.i.i179 = icmp eq ptr %.sroa.0183.0313.a, null
  br i1 %.not.i.i.i179, label %_ZNSt6vectorImSaImEED2Ev.exit180, label %.body.thread317

.body.thread317:                                  ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128, %.body.thread, %.body
  %.sroa.12.0315 = phi i64 [ %i.fr, %.body.thread ], [ %.sroa.12.0314, %.body ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.fr, %bb.ao ]
  %.sroa.0183.0311 = phi ptr [ %i.fe, %.body.thread ], [ %.sroa.0183.0313.a, %.body ], [ %i.fe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.fe, %bb.ao ] ; 2 uses
  %.sroa.12197.0202308 = phi ptr [ %i.fd, %.body.thread ], [ %.sroa.12197.0202307, %.body ], [ %i.fd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.fd, %bb.ao ]
  %.sroa.0191.0204304 = phi ptr [ %i.eo, %.body.thread ], [ %.sroa.0191.0204303, %.body ], [ %i.eo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.eo, %bb.ao ]
  %.pn82215 = phi { ptr, i32 } [ %i.gs, %.body.thread ], [ %.pn82, %.body ], [ %i.gf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i128 ], [ %i.hh, %bb.ao ]
  %i.kh = ptrtoint ptr %.sroa.0183.0311 to i64
  %i.ki = sub i64 %.sroa.12.0315, %i.kh
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0183.0311, i64 noundef %i.ki) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit180

_ZNSt6vectorImSaImEED2Ev.exit180:                 ; preds = %.body.thread317, %.body
  %.sroa.12197.0202309 = phi ptr [ %.sroa.12197.0202308, %.body.thread317 ], [ %.sroa.12197.0202307, %.body ]
  %.sroa.0191.0204305 = phi ptr [ %.sroa.0191.0204304, %.body.thread317 ], [ %.sroa.0191.0204303, %.body ] ; 2 uses
  %.pn82.pn = phi { ptr, i32 } [ %.pn82215, %.body.thread317 ], [ %.pn82, %.body ] ; 2 uses
  %.not.i.i.i181 = icmp eq ptr %.sroa.0191.0204305, null
  br i1 %.not.i.i.i181, label %_ZNSt6vectorImSaImEED2Ev.exit182, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit180.thread, %_ZNSt6vectorImSaImEED2Ev.exit180
  %.pn82.pn223 = phi { ptr, i32 } [ %i.gd, %_ZNSt6vectorImSaImEED2Ev.exit180.thread ], [ %.pn82.pn, %_ZNSt6vectorImSaImEED2Ev.exit180 ]
  %.sroa.12197.0201222 = phi ptr [ %i.fd, %_ZNSt6vectorImSaImEED2Ev.exit180.thread ], [ %.sroa.12197.0202309, %_ZNSt6vectorImSaImEED2Ev.exit180 ]
  %.sroa.0191.0206221 = phi ptr [ %i.eo, %_ZNSt6vectorImSaImEED2Ev.exit180.thread ], [ %.sroa.0191.0204305, %_ZNSt6vectorImSaImEED2Ev.exit180 ] ; 2 uses
  %i.kj = ptrtoint ptr %.sroa.12197.0201222 to i64
  %i.kk = ptrtoint ptr %.sroa.0191.0206221 to i64
  %i.kl = sub i64 %i.kj, %i.kk
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0191.0206221, i64 noundef %i.kl) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit182

_ZNSt6vectorImSaImEED2Ev.exit182:                 ; preds = %bb.bl, %_ZNSt6vectorImSaImEED2Ev.exit180, %bb.ae
  %.pn82.pn.pn = phi { ptr, i32 } [ %i.gc, %bb.ae ], [ %.pn82.pn, %_ZNSt6vectorImSaImEED2Ev.exit180 ], [ %.pn82.pn223, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %common.resume
}

declare void @_ZN2cv8MatShapeC1ERKS0_(ptr noundef nonnull align 4 dereferenceable(52), ptr noundef nonnull align 4 dereferenceable(52)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv3dnn12MatMulHelperD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !102
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorImSaImEED2Ev.exit2, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !102
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit2

_ZNSt6vectorImSaImEED2Ev.exit2:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorImSaImEED2Ev.exit4, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !102
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit4

_ZNSt6vectorImSaImEED2Ev.exit4:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit2, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !93   ; 3 uses
  %.not.i.i.i5 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i5, label %_ZNSt6vectorImSaImEED2Ev.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !102
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.ab) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit6

_ZNSt6vectorImSaImEED2Ev.exit6:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit4, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i7 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i7, label %_ZNSt6vectorImSaImEED2Ev.exit8, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit6
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !102
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit8

_ZNSt6vectorImSaImEED2Ev.exit8:                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit6, %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !93 ; 3 uses
  %.not.i.i.i9 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorImSaImEED2Ev.exit10, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !102
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit10

_ZNSt6vectorImSaImEED2Ev.exit10:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit8, %bb.g
  %i.aq = load ptr, ptr %0, align 8, !tbaa !93    ; 3 uses
  %.not.i.i.i11 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i11, label %_ZNSt6vectorImSaImEED2Ev.exit12, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit10
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !102
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %i.av) #28
  br label %_ZNSt6vectorImSaImEED2Ev.exit12

_ZNSt6vectorImSaImEED2Ev.exit12:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit10, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv3dnn13fastGemmBatchEmRKSt6vectorImSaImEES5_S5_iiifRKNS_3MatEiiS8_iifRS6_iRNS0_11FastGemmOptE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %8, i32 noundef %9, i32 noundef %10, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %11, i32 noundef %12, i32 noundef %13, float noundef %14, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %15, i32 noundef %16, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(5) %17) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %i.d = alloca float, align 4                    ; 2 uses
  %i.e = alloca i32, align 4                      ; 2 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = alloca i32, align 4                      ; 2 uses
  %i.h = alloca float, align 4                    ; 2 uses
  %i.i = alloca i32, align 4                      ; 2 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca ptr, align 8                      ; 5 uses
  %18 = alloca %"class.cv::Range", align 4        ; 6 uses
  %19 = alloca %"class.std::function", align 8    ; 9 uses
  store i32 %4, ptr %i.a, align 4, !tbaa !59
  store i32 %5, ptr %i.b, align 4, !tbaa !59
  store i32 %6, ptr %i.c, align 4, !tbaa !59
  store float %7, ptr %i.d, align 4, !tbaa !18
  store i32 %9, ptr %i.e, align 4, !tbaa !59
  store i32 %10, ptr %i.f, align 4, !tbaa !59
  store i32 %12, ptr %i.g, align 4, !tbaa !59
  store float %14, ptr %i.h, align 4, !tbaa !18
  store i32 %16, ptr %i.i, align 4, !tbaa !59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #23
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76   ; 3 uses
  store ptr %i.n, ptr %i.j, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #23
  %i.o = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !76   ; 3 uses
  store ptr %i.p, ptr %i.k, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #23
  %i.q = getelementptr inbounds nuw i8, ptr %15, i64 24
end_hunk_0
