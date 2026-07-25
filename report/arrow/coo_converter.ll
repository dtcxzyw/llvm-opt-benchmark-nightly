inline.NumInlined: 3398
inline.NumDeleted: 948
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIlmEEvRKNS_6TensorEPT_PT0_l:bb.a
_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new: ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader
  %unroll_iter238 = and i64 %3, 1152921504606846972
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127:        ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new
  %.0122.us124 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.ge, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 6 uses
  %.030121.us125 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.gc, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 2 uses
  %.031120.us126 = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %i.gd, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ] ; 2 uses
  %niter239 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader.new ], [ %niter239.next.3, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127 ]
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %.0122.us124
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0122.us124
  store i64 %i.fe, ptr %i.ff, align 8, !tbaa !10
  %i.fg = load i64, ptr %.030121.us125, align 8, !tbaa !10
  store i64 %i.fg, ptr %.031120.us126, align 8, !tbaa !10
  %i.fh = getelementptr inbounds [8 x i8], ptr %.030121.us125, i64 %i.k ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %.031120.us126, i64 %i.k ; 2 uses
  %i.fj = or disjoint i64 %.0122.us124, 1         ; 2 uses
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %i.fj
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fj
  store i64 %i.fl, ptr %i.fm, align 8, !tbaa !10
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !10
  store i64 %i.fn, ptr %i.fi, align 8, !tbaa !10
  %i.fo = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %i.k ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.k ; 2 uses
  %i.fq = or disjoint i64 %.0122.us124, 2         ; 2 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %i.fq
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !10
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fq
  store i64 %i.fs, ptr %i.ft, align 8, !tbaa !10
  %i.fu = load i64, ptr %i.fo, align 8, !tbaa !10
  store i64 %i.fu, ptr %i.fp, align 8, !tbaa !10
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %i.k ; 2 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.k ; 2 uses
  %i.fx = or disjoint i64 %.0122.us124, 3         ; 2 uses
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %i.fx
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !10
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.fx
  store i64 %i.fz, ptr %i.ga, align 8, !tbaa !10
  %i.gb = load i64, ptr %i.fv, align 8, !tbaa !10
  store i64 %i.gb, ptr %i.fw, align 8, !tbaa !10
  %i.gc = getelementptr inbounds [8 x i8], ptr %i.fv, i64 %i.k ; 2 uses
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.fw, i64 %i.k ; 2 uses
  %i.ge = add nuw nsw i64 %.0122.us124, 4         ; 2 uses
  %niter239.next.3 = add i64 %niter239, 4         ; 2 uses
  %niter239.ncmp.3 = icmp eq i64 %niter239.next.3, %unroll_iter238
  br i1 %niter239.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127, !llvm.loop !343

.loopexit.loopexit.unr-lcssa:                     ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.loopexit, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader: ; preds = %.loopexit.loopexit.unr-lcssa, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader
  %.0122.us124.epil.init = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader ], [ %i.ge, %.loopexit.loopexit.unr-lcssa ]
  %.030121.us125.epil.init = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader ], [ %i.gc, %.loopexit.loopexit.unr-lcssa ]
  %.031120.us126.epil.init = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.preheader ], [ %i.gd, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod237 = icmp ne i64 %xtraiter235, 0
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil:   ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader
  %.0122.us124.epil = phi i64 [ %i.gl, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil ], [ %.0122.us124.epil.init, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader ] ; 3 uses
  %.030121.us125.epil = phi ptr [ %i.gj, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil ], [ %.030121.us125.epil.init, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader ] ; 2 uses
  %.031120.us126.epil = phi ptr [ %i.gk, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil ], [ %.031120.us126.epil.init, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil ], [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil.preheader ]
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %.0122.us124.epil
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !10
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0122.us124.epil
  store i64 %i.gg, ptr %i.gh, align 8, !tbaa !10
  %i.gi = load i64, ptr %.030121.us125.epil, align 8, !tbaa !10
  store i64 %i.gi, ptr %.031120.us126.epil, align 8, !tbaa !10
  %i.gj = getelementptr inbounds [8 x i8], ptr %.030121.us125.epil, i64 %i.k
  %i.gk = getelementptr inbounds [8 x i8], ptr %.031120.us126.epil, i64 %i.k
  %i.gl = add nuw nsw i64 %.0122.us124.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter235
  br i1 %epil.iter.cmp.not, label %.loopexit, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil, !llvm.loop !344

.loopexit.loopexit215.unr-lcssa:                  ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit
  %lcmp.mod231.not = icmp eq i64 %xtraiter230, 0
  br i1 %lcmp.mod231.not, label %.loopexit, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader: ; preds = %.loopexit.loopexit215.unr-lcssa, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader
  %.0122.epil.init = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader ], [ %i.hh, %.loopexit.loopexit215.unr-lcssa ] ; 2 uses
  %.030121.epil.init = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader ], [ %i.hf, %.loopexit.loopexit215.unr-lcssa ]
  %.031120.epil.init = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader ], [ %i.hg, %.loopexit.loopexit215.unr-lcssa ]
  %lcmp.mod232 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod232)
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %.0122.epil.init
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !10
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0122.epil.init
  store i64 %i.gn, ptr %i.go, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.031120.epil.init, ptr align 8 %.030121.epil.init, i64 %.idx.i.i, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.epil.preheader, %.loopexit.loopexit215.unr-lcssa, %.loopexit.loopexit.unr-lcssa, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us127.epil, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.us.preheader
  %.idx = shl nuw nsw i64 %3, 3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aq, i64 noundef %.idx) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %.preheader106, %.loopexit
  %.not.i.i.i61 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i61, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.gp = ptrtoint ptr %.sroa.11.0 to i64
  %i.gq = ptrtoint ptr %.sroa.077.0 to i64
  %i.gr = sub i64 %i.gp, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.gr) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.aa
  %.not.i.i.i62 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i62, label %_ZNSt6vectorIlSaIlEED2Ev.exit63, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.gs = ptrtoint ptr %i.v to i64
  %i.gt = ptrtoint ptr %i.w to i64
  %i.gu = sub i64 %i.gs, %i.gt
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.gu) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit63

_ZNSt6vectorIlSaIlEED2Ev.exit63:                  ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.ac:                                            ; preds = %.loopexit188
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit:              ; preds = %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new
  %.0122 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hh, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 4 uses
  %.030121 = phi ptr [ %i.w, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hf, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %.031120 = phi ptr [ %1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %i.hg, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ] ; 2 uses
  %niter234 = phi i64 [ 0, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit.preheader.new ], [ %niter234.next.1, %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit ]
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %.0122
  %i.gx = load i64, ptr %i.gw, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.0122
  store i64 %i.gx, ptr %i.gy, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.031120, ptr align 8 %.030121, i64 %.idx.i.i, i1 false)
  %i.gz = getelementptr inbounds [8 x i8], ptr %.030121, i64 %i.k ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %.031120, i64 %i.k ; 2 uses
  %i.hb = or disjoint i64 %.0122, 1               ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.077.0, i64 %i.hb
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.hb
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !10
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.ha, ptr align 8 %i.gz, i64 %.idx.i.i, i1 false)
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.k ; 2 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.k ; 2 uses
  %i.hh = add nuw nsw i64 %.0122, 2               ; 2 uses
  %niter234.next.1 = add i64 %niter234, 2         ; 2 uses
  %niter234.ncmp.1 = icmp eq i64 %niter234.next.1, %unroll_iter233
  br i1 %niter234.ncmp.1, label %.loopexit.loopexit215.unr-lcssa, label %_ZSt6copy_nIPKliPlET1_T_T0_S3_.exit, !llvm.loop !343

bb.ad:                                            ; preds = %bb.ac, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.av, %bb.f ], [ %i.gv, %bb.ac ] ; 2 uses
  %.not.i.i.i66 = icmp eq ptr %.sroa.077.0, null
  br i1 %.not.i.i.i66, label %_ZNSt6vectorImSaImEED2Ev.exit67, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hi = ptrtoint ptr %.sroa.11.0 to i64
  %i.hj = ptrtoint ptr %.sroa.077.0 to i64
  %i.hk = sub i64 %i.hi, %i.hj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.077.0, i64 noundef %i.hk) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit67

_ZNSt6vectorImSaImEED2Ev.exit67:                  ; preds = %bb.ae, %bb.ad, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.au, %bb.e ], [ %.pn.pn.pn, %bb.ad ], [ %.pn.pn.pn, %bb.ae ]
  %.not.i.i.i68 = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i68, label %_ZNSt6vectorIlSaIlEED2Ev.exit69, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit67
  %i.hl = ptrtoint ptr %i.v to i64
  %i.hm = ptrtoint ptr %i.w to i64
  %i.hn = sub i64 %i.hl, %i.hm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.hn) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit69

_ZNSt6vectorIlSaIlEED2Ev.exit69:                  ; preds = %bb.af, %_ZNSt6vectorImSaImEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 16 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 5 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.029.0, i64 %i.y
  %min.iters.check29 = icmp ult i64 %i.t, 4
  %n.vec32 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n42 = icmp eq i64 %i.t, %n.vec32
  %min.iters.check14 = icmp ult i64 %i.h, 4
  %n.vec17 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %cmp.n25 = icmp eq i64 %i.h, %n.vec17
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01838.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.01937.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.body33

vector.body33:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body33
  %index34 = phi i64 [ %index.next40, %vector.body33 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi35 = phi <2 x i64> [ %i.ah, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index34 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load38, %wide.load36
  %i.af = mul nsw <2 x i64> %wide.load39, %wide.load37
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi35         ; 2 uses
  %index.next40 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next40, %n.vec32
  br i1 %i.ai, label %middle.block41, label %vector.body33, !llvm.loop !345

middle.block41:                                   ; preds = %vector.body33
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n42, label %.loopexit34.us, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block41
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec32, %middle.block41 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block41 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph28 ], [ %.011.i.i.i.us.ph, %scalar.ph28.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph28 ], [ %.0910.i.i.i.us.ph, %scalar.ph28.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph28, !llvm.loop !346

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.us, i64 1 ; 4 uses
  store i8 %i.dx, ptr %.01937.us, align 1, !tbaa !7
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader44, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.01838.us, i64 %i.x
  %bound010 = icmp ult ptr %.01838.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.029.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader44, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.01838.us, i64 %n.vec17 ; 2 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph15
  %index19 = phi i64 [ 0, %vector.ph15 ], [ %index.next23, %vector.body18 ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %.01838.us, i64 %index19 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.at, align 8, !tbaa !10, !alias.scope !347
  %wide.load22 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10, !alias.scope !347
  %i.av = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load22 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep20, i64 2
  store <2 x i8> %i.av, ptr %next.gep20, align 1, !tbaa !7, !alias.scope !350, !noalias !347
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7, !alias.scope !350, !noalias !347
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.ay, label %middle.block24, label %vector.body18, !llvm.loop !352

middle.block24:                                   ; preds = %vector.body18
  br i1 %cmp.n25, label %.loopexit.us, label %.lr.ph.us.preheader44

.lr.ph.us.preheader44:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block24
  %.01736.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec17, %middle.block24 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.01838.us, %vector.memcheck7 ], [ %.01838.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block24 ] ; 2 uses
  %i.az = sub nsw i64 %i.x, %.01736.us.ph
  %xtraiter51 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader44, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader44 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.135.us.prol, align 1, !tbaa !7
  %i.be = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !353

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader44
  %.lcssa48.unr = phi ptr [ poison, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader44 ], [ %i.be, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01736.us.ph, %i.x
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.135.us, i64 1
  store i8 %i.bj, ptr %.135.us, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.135.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.135.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.135.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.135.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.135.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.135.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !7
  %i.cu = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond69.not.7 = icmp eq i64 %i.h, %i.cu
  br i1 %exitcond69.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !354

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block24, %bb.b, %.loopexit34.us
  %.120.us = phi ptr [ %.01937.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block24 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.01838.us, %.loopexit34.us ], [ %.01838.us, %bb.b ], [ %i.as, %middle.block24 ], [ %.lcssa48.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cv = ptrtoint ptr %.val25.us to i64
  %i.cw = ptrtoint ptr %.val24.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !10
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !10
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.039.us, -1
  %i.ds = icmp sgt i64 %.039.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !355

.loopexit34.us:                                   ; preds = %scalar.ph28, %middle.block41
  %.lcssa = phi i64 [ %i.aj, %middle.block41 ], [ %i.ap, %scalar.ph28 ]
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !7   ; 2 uses
  %.not.us = icmp eq i8 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %i.dy = shl nuw nsw i64 %i.h, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.029.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.039.us41 = phi i64 [ %i.hd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.p, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.01838.us42 = phi ptr [ %.2.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 7 uses
  %.01937.us43 = phi ptr [ %.120.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.dz = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !7   ; 2 uses
  %.not.us44 = icmp eq i8 %i.ec, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us60, label %.lr.ph.us59, !prof !54

.lr.ph.us59:                                      ; preds = %.lr.ph40.split.split.us
  store i8 %i.ec, ptr %.01937.us43, align 1, !tbaa !7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us59
  %scevgep = getelementptr i8, ptr %.01838.us42, i64 %i.h
  %bound0 = icmp ult ptr %.01838.us42, %scevgep4
  %bound1 = icmp ult ptr %.sroa.029.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ed = getelementptr i8, ptr %.01838.us42, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.01838.us42, i64 %index ; 2 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load = load <2 x i64>, ptr %i.ee, align 8, !tbaa !10, !alias.scope !356
  %wide.load5 = load <2 x i64>, ptr %i.ef, align 8, !tbaa !10, !alias.scope !356
  %i.eg = trunc <2 x i64> %wide.load to <2 x i8>
  %i.eh = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.ei = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.eg, ptr %next.gep, align 1, !tbaa !7, !alias.scope !359, !noalias !356
  store <2 x i8> %i.eh, ptr %i.ei, align 1, !tbaa !7, !alias.scope !359, !noalias !356
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ej = icmp eq i64 %index.next, %n.vec
  br i1 %i.ej, label %middle.block, label %vector.body, !llvm.loop !361

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us59, %middle.block
  %.01736.us45.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us59 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us46.ph = phi ptr [ %.01838.us42, %vector.memcheck ], [ %.01838.us42, %.lr.ph.us59 ], [ %i.ed, %middle.block ] ; 2 uses
  %i.ek = sub nsw i64 %i.h, %.01736.us45.ph
  %xtraiter = and i64 %i.ek, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us45.prol = phi i64 [ %i.ep, %scalar.ph.prol ], [ %.01736.us45.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us46.prol = phi ptr [ %i.eo, %scalar.ph.prol ], [ %.135.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45.prol
  %i.em = load i64, ptr %i.el, align 8, !tbaa !10
  %i.en = trunc i64 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.135.us46.prol, i64 1 ; 3 uses
  store i8 %i.en, ptr %.135.us46.prol, align 1, !tbaa !7
  %i.ep = add nuw nsw i64 %.01736.us45.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !362

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa50.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.eo, %scalar.ph.prol ]
  %.01736.us45.unr = phi i64 [ %.01736.us45.ph, %scalar.ph.preheader ], [ %i.ep, %scalar.ph.prol ]
  %.135.us46.unr = phi ptr [ %.135.us46.ph, %scalar.ph.preheader ], [ %i.eo, %scalar.ph.prol ]
  %i.eq = sub nsw i64 %.01736.us45.ph, %i.h
  %i.er = icmp ugt i64 %i.eq, -8
  br i1 %i.er, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us45 = phi i64 [ %i.gf, %scalar.ph ], [ %.01736.us45.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us46 = phi ptr [ %i.ge, %scalar.ph ], [ %.135.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.et = load i64, ptr %i.es, align 8, !tbaa !10
  %i.eu = trunc i64 %i.et to i8
  %i.ev = getelementptr inbounds nuw i8, ptr %.135.us46, i64 1
  store i8 %i.eu, ptr %.135.us46, align 1, !tbaa !7
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !10
  %i.ez = trunc i64 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.135.us46, i64 2
  store i8 %i.ez, ptr %i.ev, align 1, !tbaa !7
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !10
  %i.fe = trunc i64 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.135.us46, i64 3
  store i8 %i.fe, ptr %i.fa, align 1, !tbaa !7
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !10
  %i.fj = trunc i64 %i.fi to i8
  %i.fk = getelementptr inbounds nuw i8, ptr %.135.us46, i64 4
  store i8 %i.fj, ptr %i.ff, align 1, !tbaa !7
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 32
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !10
  %i.fo = trunc i64 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.135.us46, i64 5
  store i8 %i.fo, ptr %i.fk, align 1, !tbaa !7
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 40
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !10
  %i.ft = trunc i64 %i.fs to i8
  %i.fu = getelementptr inbounds nuw i8, ptr %.135.us46, i64 6
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !7
  %i.fv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 48
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !10
  %i.fy = trunc i64 %i.fx to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.135.us46, i64 7
  store i8 %i.fy, ptr %i.fu, align 1, !tbaa !7
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !10
  %i.gd = trunc i64 %i.gc to i8
  %i.ge = getelementptr inbounds nuw i8, ptr %.135.us46, i64 8 ; 2 uses
  store i8 %i.gd, ptr %i.fz, align 1, !tbaa !7
  %i.gf = add nuw nsw i64 %.01736.us45, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.gf, %i.h
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph, !llvm.loop !363

..loopexit_crit_edge.us60.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.ed, %middle.block ], [ %.lcssa50.unr, %scalar.ph.prol.loopexit ], [ %i.ge, %scalar.ph ]
  %i.gg = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 1
  br label %..loopexit_crit_edge.us60

..loopexit_crit_edge.us60:                        ; preds = %..loopexit_crit_edge.us60.loopexit, %.lr.ph40.split.split.us
  %.120.us47 = phi ptr [ %.01937.us43, %.lr.ph40.split.split.us ], [ %i.gg, %..loopexit_crit_edge.us60.loopexit ]
  %.2.us48 = phi ptr [ %.01838.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us60.loopexit ]
  %.val24.us49 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us50 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.gh = ptrtoint ptr %.val25.us50 to i64
  %i.gi = ptrtoint ptr %.val24.us49 to i64
  %i.gj = sub i64 %i.gh, %i.gi
  %i.gk = ashr exact i64 %i.gj, 3                 ; 2 uses
  %i.gl = add nsw i64 %i.gk, -1                   ; 3 uses
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gl ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !10
  %i.go = add nsw i64 %i.gn, 1                    ; 3 uses
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %i.gl
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = icmp eq i64 %i.go, %i.gq
  %i.gs = icmp sgt i64 %i.gk, 1
  %or.cond.i.us51 = and i1 %i.gr, %i.gs
  br i1 %or.cond.i.us51, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us52:                                    ; preds = %..loopexit_crit_edge.us60, %bb.d
  %i.gt = phi i64 [ %i.hb, %bb.d ], [ %i.go, %..loopexit_crit_edge.us60 ]
  %.03.i.us53 = phi i64 [ %i.gy, %bb.d ], [ %i.gl, %..loopexit_crit_edge.us60 ] ; 4 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %.03.i.us53
  %i.gv = load i64, ptr %i.gu, align 8, !tbaa !10
  %i.gw = icmp eq i64 %i.gt, %i.gv
  br i1 %i.gw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us52
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us53
  store i64 0, ptr %i.gx, align 8, !tbaa !10
  %i.gy = add nsw i64 %.03.i.us53, -1             ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gy ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !10
  %i.hb = add nsw i64 %i.ha, 1                    ; 2 uses
  store i64 %i.hb, ptr %i.gz, align 8, !tbaa !10
  %i.hc = icmp sgt i64 %.03.i.us53, 1
  br i1 %i.hc, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us52, %bb.d, %..loopexit_crit_edge.us60
  %i.hd = add nsw i64 %.039.us41, -1
  %i.he = icmp sgt i64 %.039.us41, 1
  br i1 %i.he, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !355

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.hf = ptrtoint ptr %.sroa.029.0 to i64
  %i.hg = sub i64 %.sroa.13.0, %i.hf
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hg) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hh = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hi = ptrtoint ptr %.sroa.029.0 to i64
  %i.hj = sub i64 %.sroa.13.0, %i.hi
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.il, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split ] ; 2 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split ] ; 3 uses
  %i.hk = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hm = load ptr, ptr %i.hl, align 8
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !7   ; 2 uses
  %.not = icmp eq i8 %i.hn, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.ho = getelementptr inbounds nuw i8, ptr %.01937, i64 1
  store i8 %i.hn, ptr %.01937, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.ho, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.hp = ptrtoint ptr %.val25 to i64
  %i.hq = ptrtoint ptr %.val24 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = ashr exact i64 %i.hr, 3                 ; 2 uses
  %i.ht = add nsw i64 %i.hs, -1                   ; 3 uses
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ht ; 2 uses
  %i.hv = load i64, ptr %i.hu, align 8, !tbaa !10
  %i.hw = add nsw i64 %i.hv, 1                    ; 3 uses
  store i64 %i.hw, ptr %i.hu, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ht
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !10
  %i.hz = icmp eq i64 %i.hw, %i.hy
  %i.ia = icmp sgt i64 %i.hs, 1
  %or.cond.i = and i1 %i.hz, %i.ia
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ib = phi i64 [ %i.ij, %bb.h ], [ %i.hw, %bb.g ]
  %.03.i = phi i64 [ %i.ig, %bb.h ], [ %i.ht, %bb.g ] ; 4 uses
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !10
  %i.ie = icmp eq i64 %i.ib, %i.id
  br i1 %i.ie, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.if, align 8, !tbaa !10
  %i.ig = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ig ; 2 uses
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = add nsw i64 %i.ii, 1                    ; 2 uses
  store i64 %i.ij, ptr %i.ih, align 8, !tbaa !10
  %i.ik = icmp sgt i64 %.03.i, 1
  br i1 %i.ik, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.il = add nsw i64 %.039, -1
  %i.im = icmp sgt i64 %.039, 1
  br i1 %i.im, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !355

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hh
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 16 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 5 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.029.0, i64 %i.y
  %min.iters.check29 = icmp ult i64 %i.t, 4
  %n.vec32 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n42 = icmp eq i64 %i.t, %n.vec32
  %min.iters.check14 = icmp ult i64 %i.h, 4
  %n.vec17 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %cmp.n25 = icmp eq i64 %i.h, %n.vec17
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01838.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.01937.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.body33

vector.body33:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body33
  %index34 = phi i64 [ %index.next40, %vector.body33 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi35 = phi <2 x i64> [ %i.ah, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index34 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load38, %wide.load36
  %i.af = mul nsw <2 x i64> %wide.load39, %wide.load37
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi35         ; 2 uses
  %index.next40 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next40, %n.vec32
  br i1 %i.ai, label %middle.block41, label %vector.body33, !llvm.loop !364

middle.block41:                                   ; preds = %vector.body33
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n42, label %.loopexit34.us, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block41
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec32, %middle.block41 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block41 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph28 ], [ %.011.i.i.i.us.ph, %scalar.ph28.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph28 ], [ %.0910.i.i.i.us.ph, %scalar.ph28.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph28, !llvm.loop !365

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.us, i64 2 ; 4 uses
  store i16 %i.dx, ptr %.01937.us, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader44, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.01838.us, i64 %i.x
  %bound010 = icmp ult ptr %.01838.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.029.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader44, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.01838.us, i64 %n.vec17 ; 2 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph15
  %index19 = phi i64 [ 0, %vector.ph15 ], [ %index.next23, %vector.body18 ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %.01838.us, i64 %index19 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.at, align 8, !tbaa !10, !alias.scope !366
  %wide.load22 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10, !alias.scope !366
  %i.av = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load22 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep20, i64 2
  store <2 x i8> %i.av, ptr %next.gep20, align 1, !tbaa !7, !alias.scope !369, !noalias !366
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7, !alias.scope !369, !noalias !366
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.ay, label %middle.block24, label %vector.body18, !llvm.loop !371

middle.block24:                                   ; preds = %vector.body18
  br i1 %cmp.n25, label %.loopexit.us, label %.lr.ph.us.preheader44

.lr.ph.us.preheader44:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block24
  %.01736.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec17, %middle.block24 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.01838.us, %vector.memcheck7 ], [ %.01838.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block24 ] ; 2 uses
  %i.az = sub nsw i64 %i.x, %.01736.us.ph
  %xtraiter51 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader44, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader44 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.135.us.prol, align 1, !tbaa !7
  %i.be = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !372

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader44
  %.lcssa48.unr = phi ptr [ poison, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader44 ], [ %i.be, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01736.us.ph, %i.x
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.135.us, i64 1
  store i8 %i.bj, ptr %.135.us, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.135.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.135.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.135.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.135.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.135.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.135.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !7
  %i.cu = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond69.not.7 = icmp eq i64 %i.h, %i.cu
  br i1 %exitcond69.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !373

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block24, %bb.b, %.loopexit34.us
  %.120.us = phi ptr [ %.01937.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block24 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.01838.us, %.loopexit34.us ], [ %.01838.us, %bb.b ], [ %i.as, %middle.block24 ], [ %.lcssa48.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cv = ptrtoint ptr %.val25.us to i64
  %i.cw = ptrtoint ptr %.val24.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !10
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !10
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.039.us, -1
  %i.ds = icmp sgt i64 %.039.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !374

.loopexit34.us:                                   ; preds = %scalar.ph28, %middle.block41
  %.lcssa = phi i64 [ %i.aj, %middle.block41 ], [ %i.ap, %scalar.ph28 ]
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !8  ; 2 uses
  %.not.us = icmp eq i16 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split.preheader, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %i.dy = shl nuw nsw i64 %i.h, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.029.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ea = ptrtoint ptr %.val25 to i64
  %i.eb = ptrtoint ptr %.val24 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ee
  %i.eh = icmp sgt i64 %i.ed, 1
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.039.us41 = phi i64 [ %i.hm, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.p, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.01838.us42 = phi ptr [ %.2.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 7 uses
  %.01937.us43 = phi ptr [ %.120.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.ei = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !8  ; 2 uses
  %.not.us44 = icmp eq i16 %i.el, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us60, label %.lr.ph.us59, !prof !54

.lr.ph.us59:                                      ; preds = %.lr.ph40.split.split.us
  store i16 %i.el, ptr %.01937.us43, align 2, !tbaa !8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us59
  %scevgep = getelementptr i8, ptr %.01838.us42, i64 %i.h
  %bound0 = icmp ult ptr %.01838.us42, %scevgep4
  %bound1 = icmp ult ptr %.sroa.029.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.em = getelementptr i8, ptr %.01838.us42, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.01838.us42, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !10, !alias.scope !375
  %wide.load5 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !10, !alias.scope !375
  %i.ep = trunc <2 x i64> %wide.load to <2 x i8>
  %i.eq = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.er = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.ep, ptr %next.gep, align 1, !tbaa !7, !alias.scope !378, !noalias !375
  store <2 x i8> %i.eq, ptr %i.er, align 1, !tbaa !7, !alias.scope !378, !noalias !375
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !380

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us59, %middle.block
  %.01736.us45.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us59 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us46.ph = phi ptr [ %.01838.us42, %vector.memcheck ], [ %.01838.us42, %.lr.ph.us59 ], [ %i.em, %middle.block ] ; 2 uses
  %i.et = sub nsw i64 %i.h, %.01736.us45.ph
  %xtraiter = and i64 %i.et, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us45.prol = phi i64 [ %i.ey, %scalar.ph.prol ], [ %.01736.us45.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us46.prol = phi ptr [ %i.ex, %scalar.ph.prol ], [ %.135.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45.prol
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.135.us46.prol, i64 1 ; 3 uses
  store i8 %i.ew, ptr %.135.us46.prol, align 1, !tbaa !7
  %i.ey = add nuw nsw i64 %.01736.us45.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !381

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa50.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.01736.us45.unr = phi i64 [ %.01736.us45.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.135.us46.unr = phi ptr [ %.135.us46.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %i.ez = sub nsw i64 %.01736.us45.ph, %i.h
  %i.fa = icmp ugt i64 %i.ez, -8
  br i1 %i.fa, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us45 = phi i64 [ %i.go, %scalar.ph ], [ %.01736.us45.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us46 = phi ptr [ %i.gn, %scalar.ph ], [ %.135.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.135.us46, i64 1
  store i8 %i.fd, ptr %.135.us46, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !10
  %i.fi = trunc i64 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.135.us46, i64 2
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !7
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.135.us46, i64 3
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !7
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !10
  %i.fs = trunc i64 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.135.us46, i64 4
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !7
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !10
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.135.us46, i64 5
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !7
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.135.us46, i64 6
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !7
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !10
  %i.gh = trunc i64 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %.135.us46, i64 7
  store i8 %i.gh, ptr %i.gd, align 1, !tbaa !7
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !10
  %i.gm = trunc i64 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %.135.us46, i64 8 ; 2 uses
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !7
  %i.go = add nuw nsw i64 %.01736.us45, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.go, %i.h
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph, !llvm.loop !382

..loopexit_crit_edge.us60.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.em, %middle.block ], [ %.lcssa50.unr, %scalar.ph.prol.loopexit ], [ %i.gn, %scalar.ph ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 2
  br label %..loopexit_crit_edge.us60

..loopexit_crit_edge.us60:                        ; preds = %..loopexit_crit_edge.us60.loopexit, %.lr.ph40.split.split.us
  %.120.us47 = phi ptr [ %.01937.us43, %.lr.ph40.split.split.us ], [ %i.gp, %..loopexit_crit_edge.us60.loopexit ]
  %.2.us48 = phi ptr [ %.01838.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us60.loopexit ]
  %.val24.us49 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us50 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.gq = ptrtoint ptr %.val25.us50 to i64
  %i.gr = ptrtoint ptr %.val24.us49 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 3                 ; 2 uses
  %i.gu = add nsw i64 %i.gt, -1                   ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gu ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !10
  %i.gx = add nsw i64 %i.gw, 1                    ; 3 uses
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %i.gu
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !10
  %i.ha = icmp eq i64 %i.gx, %i.gz
  %i.hb = icmp sgt i64 %i.gt, 1
  %or.cond.i.us51 = and i1 %i.ha, %i.hb
  br i1 %or.cond.i.us51, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us52:                                    ; preds = %..loopexit_crit_edge.us60, %bb.d
  %i.hc = phi i64 [ %i.hk, %bb.d ], [ %i.gx, %..loopexit_crit_edge.us60 ]
  %.03.i.us53 = phi i64 [ %i.hh, %bb.d ], [ %i.gu, %..loopexit_crit_edge.us60 ] ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %.03.i.us53
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = icmp eq i64 %i.hc, %i.he
  br i1 %i.hf, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us52
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us53
  store i64 0, ptr %i.hg, align 8, !tbaa !10
  %i.hh = add nsw i64 %.03.i.us53, -1             ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.hh ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !10
  %i.hk = add nsw i64 %i.hj, 1                    ; 2 uses
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !10
  %i.hl = icmp sgt i64 %.03.i.us53, 1
  br i1 %i.hl, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us52, %bb.d, %..loopexit_crit_edge.us60
  %i.hm = add nsw i64 %.039.us41, -1
  %i.hn = icmp sgt i64 %.039.us41, 1
  br i1 %i.hn, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !374

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.ho = ptrtoint ptr %.sroa.029.0 to i64
  %i.hp = sub i64 %.sroa.13.0, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hr = ptrtoint ptr %.sroa.029.0 to i64
  %i.hs = sub i64 %.sroa.13.0, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.hs) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ik, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %i.ht = load ptr, ptr %i.dz, align 8
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !8  ; 2 uses
  %.not = icmp eq i16 %i.hu, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.hv = getelementptr inbounds nuw i8, ptr %.01937, i64 2
  store i16 %i.hu, ptr %.01937, align 2, !tbaa !8
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.hv, %.loopexit ]
  %i.hw = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.hx = add nsw i64 %i.hw, 1                    ; 3 uses
  store i64 %i.hx, ptr %i.ef, align 8, !tbaa !10
  %i.hy = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.hz = icmp eq i64 %i.hx, %i.hy
  %or.cond.i = and i1 %i.hz, %i.eh
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ia = phi i64 [ %i.ii, %bb.h ], [ %i.hx, %bb.g ]
  %.03.i = phi i64 [ %i.if, %bb.h ], [ %i.ee, %bb.g ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !10
  %i.id = icmp eq i64 %i.ia, %i.ic
  br i1 %i.id, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.ie, align 8, !tbaa !10
  %i.if = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.if ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !10
  %i.ii = add nsw i64 %i.ih, 1                    ; 2 uses
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !10
  %i.ij = icmp sgt i64 %.03.i, 1
  br i1 %i.ij, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ik = add nsw i64 %.039, -1
  %i.il = icmp sgt i64 %.039, 1
  br i1 %i.il, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !374

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hq
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 16 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph41.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph41
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 5 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.030.0, i64 %i.y
  %min.iters.check29 = icmp ult i64 %i.t, 4
  %n.vec32 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n42 = icmp eq i64 %i.t, %n.vec32
  %min.iters.check14 = icmp ult i64 %i.h, 4
  %n.vec17 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %cmp.n25 = icmp eq i64 %i.h, %n.vec17
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01839.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.01938.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.body33

vector.body33:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body33
  %index34 = phi i64 [ %index.next40, %vector.body33 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi35 = phi <2 x i64> [ %i.ah, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index34 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load38, %wide.load36
  %i.af = mul nsw <2 x i64> %wide.load39, %wide.load37
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi35         ; 2 uses
  %index.next40 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next40, %n.vec32
  br i1 %i.ai, label %middle.block41, label %vector.body33, !llvm.loop !383

middle.block41:                                   ; preds = %vector.body33
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n42, label %.loopexit35.us, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block41
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec32, %middle.block41 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block41 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph28 ], [ %.011.i.i.i.us.ph, %scalar.ph28.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph28 ], [ %.0910.i.i.i.us.ph, %scalar.ph28.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit35.us, label %scalar.ph28, !llvm.loop !384

bb.b:                                             ; preds = %.loopexit35.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01938.us, i64 4 ; 4 uses
  store i32 %i.dx, ptr %.01938.us, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader44, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.01839.us, i64 %i.x
  %bound010 = icmp ult ptr %.01839.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.030.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader44, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.01839.us, i64 %n.vec17 ; 2 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph15
  %index19 = phi i64 [ 0, %vector.ph15 ], [ %index.next23, %vector.body18 ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %.01839.us, i64 %index19 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.at, align 8, !tbaa !10, !alias.scope !385
  %wide.load22 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10, !alias.scope !385
  %i.av = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load22 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep20, i64 2
  store <2 x i8> %i.av, ptr %next.gep20, align 1, !tbaa !7, !alias.scope !388, !noalias !385
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7, !alias.scope !388, !noalias !385
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.ay, label %middle.block24, label %vector.body18, !llvm.loop !390

middle.block24:                                   ; preds = %vector.body18
  br i1 %cmp.n25, label %.loopexit.us, label %.lr.ph.us.preheader44

.lr.ph.us.preheader44:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block24
  %.01737.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec17, %middle.block24 ] ; 4 uses
  %.136.us.ph = phi ptr [ %.01839.us, %vector.memcheck7 ], [ %.01839.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block24 ] ; 2 uses
  %i.az = sub nsw i64 %i.x, %.01737.us.ph
  %xtraiter51 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader44, %.lr.ph.us.prol
  %.01737.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01737.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %.136.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.136.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader44 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.136.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.136.us.prol, align 1, !tbaa !7
  %i.be = add nuw nsw i64 %.01737.us.prol, 1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !391

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader44
  %.lcssa48.unr = phi ptr [ poison, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01737.us.unr = phi i64 [ %.01737.us.ph, %.lr.ph.us.preheader44 ], [ %i.be, %.lr.ph.us.prol ]
  %.136.us.unr = phi ptr [ %.136.us.ph, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01737.us.ph, %i.x
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01737.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01737.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.136.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.136.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.136.us, i64 1
  store i8 %i.bj, ptr %.136.us, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.136.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.136.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.136.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.136.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.136.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.136.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !7
  %i.cu = add nuw nsw i64 %.01737.us, 8           ; 2 uses
  %exitcond70.not.7 = icmp eq i64 %i.h, %i.cu
  br i1 %exitcond70.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !392

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block24, %bb.b, %.loopexit35.us
  %.120.us = phi ptr [ %.01938.us, %.loopexit35.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block24 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.01839.us, %.loopexit35.us ], [ %.01839.us, %bb.b ], [ %i.as, %middle.block24 ], [ %.lcssa48.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val25.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val26.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cv = ptrtoint ptr %.val26.us to i64
  %i.cw = ptrtoint ptr %.val25.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !10
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !10
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.040.us, -1
  %i.ds = icmp sgt i64 %.040.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !393

.loopexit35.us:                                   ; preds = %scalar.ph28, %middle.block41
  %.lcssa = phi i64 [ %i.aj, %middle.block41 ], [ %i.ap, %scalar.ph28 ]
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3  ; 2 uses
  %.not.us = icmp eq i32 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.split.preheader, label %.lr.ph41.split.split.us.preheader

.lr.ph41.split.split.us.preheader:                ; preds = %.lr.ph41.split
  %i.dy = shl nuw nsw i64 %i.h, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.030.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.split.us

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ea = ptrtoint ptr %.val26 to i64
  %i.eb = ptrtoint ptr %.val25 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ee
  %i.eh = icmp sgt i64 %i.ed, 1
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55
  %.040.us42 = phi i64 [ %i.hm, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ], [ %i.p, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.01839.us43 = phi ptr [ %.2.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ], [ %1, %.lr.ph41.split.split.us.preheader ] ; 7 uses
  %.01938.us44 = phi ptr [ %.120.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ], [ %2, %.lr.ph41.split.split.us.preheader ] ; 3 uses
  %i.ei = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 2 uses
  %.not.us45 = icmp eq i32 %i.el, 0
  br i1 %.not.us45, label %..loopexit_crit_edge.us61, label %.lr.ph.us60, !prof !54

.lr.ph.us60:                                      ; preds = %.lr.ph41.split.split.us
  store i32 %i.el, ptr %.01938.us44, align 4, !tbaa !3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us60
  %scevgep = getelementptr i8, ptr %.01839.us43, i64 %i.h
  %bound0 = icmp ult ptr %.01839.us43, %scevgep4
  %bound1 = icmp ult ptr %.sroa.030.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.em = getelementptr i8, ptr %.01839.us43, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.01839.us43, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !10, !alias.scope !394
  %wide.load5 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !10, !alias.scope !394
  %i.ep = trunc <2 x i64> %wide.load to <2 x i8>
  %i.eq = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.er = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.ep, ptr %next.gep, align 1, !tbaa !7, !alias.scope !397, !noalias !394
  store <2 x i8> %i.eq, ptr %i.er, align 1, !tbaa !7, !alias.scope !397, !noalias !394
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !399

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us61.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us60, %middle.block
  %.01737.us46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us60 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us47.ph = phi ptr [ %.01839.us43, %vector.memcheck ], [ %.01839.us43, %.lr.ph.us60 ], [ %i.em, %middle.block ] ; 2 uses
  %i.et = sub nsw i64 %i.h, %.01737.us46.ph
  %xtraiter = and i64 %i.et, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us46.prol = phi i64 [ %i.ey, %scalar.ph.prol ], [ %.01737.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us47.prol = phi ptr [ %i.ex, %scalar.ph.prol ], [ %.136.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46.prol
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.136.us47.prol, i64 1 ; 3 uses
  store i8 %i.ew, ptr %.136.us47.prol, align 1, !tbaa !7
  %i.ey = add nuw nsw i64 %.01737.us46.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !400

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa50.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.01737.us46.unr = phi i64 [ %.01737.us46.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.136.us47.unr = phi ptr [ %.136.us47.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %i.ez = sub nsw i64 %.01737.us46.ph, %i.h
  %i.fa = icmp ugt i64 %i.ez, -8
  br i1 %i.fa, label %..loopexit_crit_edge.us61.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us46 = phi i64 [ %i.go, %scalar.ph ], [ %.01737.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us47 = phi ptr [ %i.gn, %scalar.ph ], [ %.136.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.136.us47, i64 1
  store i8 %i.fd, ptr %.136.us47, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !10
  %i.fi = trunc i64 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.136.us47, i64 2
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !7
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.136.us47, i64 3
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !7
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !10
  %i.fs = trunc i64 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.136.us47, i64 4
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !7
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !10
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.136.us47, i64 5
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !7
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.136.us47, i64 6
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !7
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !10
  %i.gh = trunc i64 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %.136.us47, i64 7
  store i8 %i.gh, ptr %i.gd, align 1, !tbaa !7
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !10
  %i.gm = trunc i64 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %.136.us47, i64 8 ; 2 uses
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !7
  %i.go = add nuw nsw i64 %.01737.us46, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.go, %i.h
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us61.loopexit, label %scalar.ph, !llvm.loop !401

..loopexit_crit_edge.us61.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.em, %middle.block ], [ %.lcssa50.unr, %scalar.ph.prol.loopexit ], [ %i.gn, %scalar.ph ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 4
  br label %..loopexit_crit_edge.us61

..loopexit_crit_edge.us61:                        ; preds = %..loopexit_crit_edge.us61.loopexit, %.lr.ph41.split.split.us
  %.120.us48 = phi ptr [ %.01938.us44, %.lr.ph41.split.split.us ], [ %i.gp, %..loopexit_crit_edge.us61.loopexit ]
  %.2.us49 = phi ptr [ %.01839.us43, %.lr.ph41.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us61.loopexit ]
  %.val25.us50 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val26.us51 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.gq = ptrtoint ptr %.val26.us51 to i64
  %i.gr = ptrtoint ptr %.val25.us50 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 3                 ; 2 uses
  %i.gu = add nsw i64 %i.gt, -1                   ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gu ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !10
  %i.gx = add nsw i64 %i.gw, 1                    ; 3 uses
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.val25.us50, i64 %i.gu
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !10
  %i.ha = icmp eq i64 %i.gx, %i.gz
  %i.hb = icmp sgt i64 %i.gt, 1
  %or.cond.i.us52 = and i1 %i.ha, %i.hb
  br i1 %or.cond.i.us52, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us53:                                    ; preds = %..loopexit_crit_edge.us61, %bb.d
  %i.hc = phi i64 [ %i.hk, %bb.d ], [ %i.gx, %..loopexit_crit_edge.us61 ]
  %.03.i.us54 = phi i64 [ %i.hh, %bb.d ], [ %i.gu, %..loopexit_crit_edge.us61 ] ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val25.us50, i64 %.03.i.us54
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = icmp eq i64 %i.hc, %i.he
  br i1 %i.hf, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us53
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us54
  store i64 0, ptr %i.hg, align 8, !tbaa !10
  %i.hh = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.hh ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !10
  %i.hk = add nsw i64 %i.hj, 1                    ; 2 uses
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !10
  %i.hl = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.hl, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us53, %bb.d, %..loopexit_crit_edge.us61
  %i.hm = add nsw i64 %.040.us42, -1
  %i.hn = icmp sgt i64 %.040.us42, 1
  br i1 %i.hn, label %.lr.ph41.split.split.us, label %._crit_edge.thread, !llvm.loop !393

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.ho = ptrtoint ptr %.sroa.030.0 to i64
  %i.hp = sub i64 %.sroa.13.0, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hr = ptrtoint ptr %.sroa.030.0 to i64
  %i.hs = sub i64 %.sroa.13.0, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hs) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ik, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.ht = load ptr, ptr %i.dz, align 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.hu, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph41.split.split
  %i.hv = getelementptr inbounds nuw i8, ptr %.01938, i64 4
  store i32 %i.hu, ptr %.01938, align 4, !tbaa !3
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.hv, %.loopexit ]
  %i.hw = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.hx = add nsw i64 %i.hw, 1                    ; 3 uses
  store i64 %i.hx, ptr %i.ef, align 8, !tbaa !10
  %i.hy = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.hz = icmp eq i64 %i.hx, %i.hy
  %or.cond.i = and i1 %i.hz, %i.eh
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ia = phi i64 [ %i.ii, %bb.h ], [ %i.hx, %bb.g ]
  %.03.i = phi i64 [ %i.if, %bb.h ], [ %i.ee, %bb.g ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !10
  %i.id = icmp eq i64 %i.ia, %i.ic
  br i1 %i.id, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.ie, align 8, !tbaa !10
  %i.if = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.if ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !10
  %i.ii = add nsw i64 %i.ih, 1                    ; 2 uses
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !10
  %i.ij = icmp sgt i64 %.03.i, 1
  br i1 %i.ij, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ik = add nsw i64 %.040, -1
  %i.il = icmp sgt i64 %.040, 1
  br i1 %i.il, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !393

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hq
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIhmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 16 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 42 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph41.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph41
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 5 uses
  %i.y = shl nuw nsw i64 %i.x, 3
  %scevgep9 = getelementptr i8, ptr %.sroa.030.0, i64 %i.y
  %min.iters.check29 = icmp ult i64 %i.t, 4
  %n.vec32 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n42 = icmp eq i64 %i.t, %n.vec32
  %min.iters.check14 = icmp ult i64 %i.h, 4
  %n.vec17 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %cmp.n25 = icmp eq i64 %i.h, %n.vec17
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.040.us = phi i64 [ %i.dr, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01839.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 8 uses
  %.01938.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check29, label %scalar.ph28.preheader, label %vector.body33

vector.body33:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body33
  %index34 = phi i64 [ %index.next40, %vector.body33 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi35 = phi <2 x i64> [ %i.ah, %vector.body33 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index34 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index34 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load38, %wide.load36
  %i.af = mul nsw <2 x i64> %wide.load39, %wide.load37
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi35         ; 2 uses
  %index.next40 = add nuw i64 %index34, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next40, %n.vec32
  br i1 %i.ai, label %middle.block41, label %vector.body33, !llvm.loop !402

middle.block41:                                   ; preds = %vector.body33
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n42, label %.loopexit35.us, label %scalar.ph28.preheader

scalar.ph28.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block41
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec32, %middle.block41 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block41 ]
  br label %scalar.ph28

scalar.ph28:                                      ; preds = %scalar.ph28.preheader, %scalar.ph28
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph28 ], [ %.011.i.i.i.us.ph, %scalar.ph28.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph28 ], [ %.0910.i.i.i.us.ph, %scalar.ph28.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit35.us, label %scalar.ph28, !llvm.loop !403

bb.b:                                             ; preds = %.loopexit35.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01938.us, i64 8 ; 4 uses
  store i64 %i.dx, ptr %.01938.us, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check14, label %.lr.ph.us.preheader44, label %vector.memcheck7

vector.memcheck7:                                 ; preds = %.lr.ph.us.preheader
  %scevgep8 = getelementptr i8, ptr %.01839.us, i64 %i.x
  %bound010 = icmp ult ptr %.01839.us, %scevgep9
  %bound111 = icmp ult ptr %.sroa.030.0, %scevgep8
  %found.conflict12 = and i1 %bound010, %bound111
  br i1 %found.conflict12, label %.lr.ph.us.preheader44, label %vector.ph15

vector.ph15:                                      ; preds = %vector.memcheck7
  %i.as = getelementptr i8, ptr %.01839.us, i64 %n.vec17 ; 2 uses
  br label %vector.body18

vector.body18:                                    ; preds = %vector.body18, %vector.ph15
  %index19 = phi i64 [ 0, %vector.ph15 ], [ %index.next23, %vector.body18 ] ; 3 uses
  %next.gep20 = getelementptr i8, ptr %.01839.us, i64 %index19 ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index19 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load21 = load <2 x i64>, ptr %i.at, align 8, !tbaa !10, !alias.scope !404
  %wide.load22 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10, !alias.scope !404
  %i.av = trunc <2 x i64> %wide.load21 to <2 x i8>
  %i.aw = trunc <2 x i64> %wide.load22 to <2 x i8>
  %i.ax = getelementptr i8, ptr %next.gep20, i64 2
  store <2 x i8> %i.av, ptr %next.gep20, align 1, !tbaa !7, !alias.scope !407, !noalias !404
  store <2 x i8> %i.aw, ptr %i.ax, align 1, !tbaa !7, !alias.scope !407, !noalias !404
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next23, %n.vec17
  br i1 %i.ay, label %middle.block24, label %vector.body18, !llvm.loop !409

middle.block24:                                   ; preds = %vector.body18
  br i1 %cmp.n25, label %.loopexit.us, label %.lr.ph.us.preheader44

.lr.ph.us.preheader44:                            ; preds = %vector.memcheck7, %.lr.ph.us.preheader, %middle.block24
  %.01737.us.ph = phi i64 [ 0, %vector.memcheck7 ], [ 0, %.lr.ph.us.preheader ], [ %n.vec17, %middle.block24 ] ; 4 uses
  %.136.us.ph = phi ptr [ %.01839.us, %vector.memcheck7 ], [ %.01839.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block24 ] ; 2 uses
  %i.az = sub nsw i64 %i.x, %.01737.us.ph
  %xtraiter51 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader44, %.lr.ph.us.prol
  %.01737.us.prol = phi i64 [ %i.be, %.lr.ph.us.prol ], [ %.01737.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %.136.us.prol = phi ptr [ %i.bd, %.lr.ph.us.prol ], [ %.136.us.ph, %.lr.ph.us.preheader44 ] ; 2 uses
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader44 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = trunc i64 %i.bb to i8
  %i.bd = getelementptr inbounds nuw i8, ptr %.136.us.prol, i64 1 ; 3 uses
  store i8 %i.bc, ptr %.136.us.prol, align 1, !tbaa !7
  %i.be = add nuw nsw i64 %.01737.us.prol, 1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !410

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader44
  %.lcssa48.unr = phi ptr [ poison, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %.01737.us.unr = phi i64 [ %.01737.us.ph, %.lr.ph.us.preheader44 ], [ %i.be, %.lr.ph.us.prol ]
  %.136.us.unr = phi ptr [ %.136.us.ph, %.lr.ph.us.preheader44 ], [ %i.bd, %.lr.ph.us.prol ]
  %i.bf = sub nsw i64 %.01737.us.ph, %i.x
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01737.us = phi i64 [ %i.cu, %.lr.ph.us ], [ %.01737.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.136.us = phi ptr [ %i.ct, %.lr.ph.us ], [ %.136.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !10
  %i.bj = trunc i64 %i.bi to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %.136.us, i64 1
  store i8 %i.bj, ptr %.136.us, align 1, !tbaa !7
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !10
  %i.bo = trunc i64 %i.bn to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %.136.us, i64 2
  store i8 %i.bo, ptr %i.bk, align 1, !tbaa !7
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !10
  %i.bt = trunc i64 %i.bs to i8
  %i.bu = getelementptr inbounds nuw i8, ptr %.136.us, i64 3
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !7
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = trunc i64 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.136.us, i64 4
  store i8 %i.by, ptr %i.bu, align 1, !tbaa !7
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !10
  %i.cd = trunc i64 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us, i64 5
  store i8 %i.cd, ptr %i.bz, align 1, !tbaa !7
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = trunc i64 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.136.us, i64 6
  store i8 %i.ci, ptr %i.ce, align 1, !tbaa !7
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !10
  %i.cn = trunc i64 %i.cm to i8
  %i.co = getelementptr inbounds nuw i8, ptr %.136.us, i64 7
  store i8 %i.cn, ptr %i.cj, align 1, !tbaa !7
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 56
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !10
  %i.cs = trunc i64 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.136.us, i64 8 ; 2 uses
  store i8 %i.cs, ptr %i.co, align 1, !tbaa !7
  %i.cu = add nuw nsw i64 %.01737.us, 8           ; 2 uses
  %exitcond70.not.7 = icmp eq i64 %i.h, %i.cu
  br i1 %exitcond70.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !411

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block24, %bb.b, %.loopexit35.us
  %.120.us = phi ptr [ %.01938.us, %.loopexit35.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block24 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.01839.us, %.loopexit35.us ], [ %.01839.us, %bb.b ], [ %i.as, %middle.block24 ], [ %.lcssa48.unr, %.lr.ph.us.prol.loopexit ], [ %i.ct, %.lr.ph.us ]
  %.val25.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val26.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cv = ptrtoint ptr %.val26.us to i64
  %i.cw = ptrtoint ptr %.val25.us to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 2 uses
  %i.cz = add nsw i64 %i.cy, -1                   ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.cz ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.da, align 8, !tbaa !10
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %i.cz
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10
  %i.df = icmp eq i64 %i.dc, %i.de
  %i.dg = icmp sgt i64 %i.cy, 1
  %or.cond.i.us = and i1 %i.df, %i.dg
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.dh = phi i64 [ %i.dp, %bb.c ], [ %i.dc, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dm, %bb.c ], [ %i.cz, %.loopexit.us ] ; 4 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.val25.us, i64 %.03.i.us
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !10
  %i.dk = icmp eq i64 %i.dh, %i.dj
  br i1 %i.dk, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.dl, align 8, !tbaa !10
  %i.dm = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.dm ; 2 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !10
  %i.dp = add nsw i64 %i.do, 1                    ; 2 uses
  store i64 %i.dp, ptr %i.dn, align 8, !tbaa !10
  %i.dq = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dq, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.dr = add nsw i64 %.040.us, -1
  %i.ds = icmp sgt i64 %.040.us, 1
  br i1 %i.ds, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !412

.loopexit35.us:                                   ; preds = %scalar.ph28, %middle.block41
  %.lcssa = phi i64 [ %i.aj, %middle.block41 ], [ %i.ap, %scalar.ph28 ]
  %i.dt = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %.lcssa
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !10 ; 2 uses
  %.not.us = icmp eq i64 %i.dx, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.split.preheader, label %.lr.ph41.split.split.us.preheader

.lr.ph41.split.split.us.preheader:                ; preds = %.lr.ph41.split
  %i.dy = shl nuw nsw i64 %i.h, 3
  %scevgep4 = getelementptr i8, ptr %.sroa.030.0, i64 %i.dy
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.split.us

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dz = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ea = ptrtoint ptr %.val26 to i64
  %i.eb = ptrtoint ptr %.val25 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = ashr exact i64 %i.ec, 3                 ; 2 uses
  %i.ee = add nsw i64 %i.ed, -1                   ; 3 uses
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ee ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ee
  %i.eh = icmp sgt i64 %i.ed, 1
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55
  %.040.us42 = phi i64 [ %i.hm, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ], [ %i.p, %.lr.ph41.split.split.us.preheader ] ; 2 uses
  %.01839.us43 = phi ptr [ %.2.us49, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ], [ %1, %.lr.ph41.split.split.us.preheader ] ; 7 uses
  %.01938.us44 = phi ptr [ %.120.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ], [ %2, %.lr.ph41.split.split.us.preheader ] ; 3 uses
  %i.ei = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !10 ; 2 uses
  %.not.us45 = icmp eq i64 %i.el, 0
  br i1 %.not.us45, label %..loopexit_crit_edge.us61, label %.lr.ph.us60, !prof !54

.lr.ph.us60:                                      ; preds = %.lr.ph41.split.split.us
  store i64 %i.el, ptr %.01938.us44, align 8, !tbaa !10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.us60
  %scevgep = getelementptr i8, ptr %.01839.us43, i64 %i.h
  %bound0 = icmp ult ptr %.01839.us43, %scevgep4
  %bound1 = icmp ult ptr %.sroa.030.0, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.em = getelementptr i8, ptr %.01839.us43, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.01839.us43, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load = load <2 x i64>, ptr %i.en, align 8, !tbaa !10, !alias.scope !413
  %wide.load5 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !10, !alias.scope !413
  %i.ep = trunc <2 x i64> %wide.load to <2 x i8>
  %i.eq = trunc <2 x i64> %wide.load5 to <2 x i8>
  %i.er = getelementptr i8, ptr %next.gep, i64 2
  store <2 x i8> %i.ep, ptr %next.gep, align 1, !tbaa !7, !alias.scope !416, !noalias !413
  store <2 x i8> %i.eq, ptr %i.er, align 1, !tbaa !7, !alias.scope !416, !noalias !413
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.es = icmp eq i64 %index.next, %n.vec
  br i1 %i.es, label %middle.block, label %vector.body, !llvm.loop !418

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us61.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.us60, %middle.block
  %.01737.us46.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.us60 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us47.ph = phi ptr [ %.01839.us43, %vector.memcheck ], [ %.01839.us43, %.lr.ph.us60 ], [ %i.em, %middle.block ] ; 2 uses
  %i.et = sub nsw i64 %i.h, %.01737.us46.ph
  %xtraiter = and i64 %i.et, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us46.prol = phi i64 [ %i.ey, %scalar.ph.prol ], [ %.01737.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us47.prol = phi ptr [ %i.ex, %scalar.ph.prol ], [ %.136.us47.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46.prol
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10
  %i.ew = trunc i64 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.136.us47.prol, i64 1 ; 3 uses
  store i8 %i.ew, ptr %.136.us47.prol, align 1, !tbaa !7
  %i.ey = add nuw nsw i64 %.01737.us46.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !419

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa50.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %.01737.us46.unr = phi i64 [ %.01737.us46.ph, %scalar.ph.preheader ], [ %i.ey, %scalar.ph.prol ]
  %.136.us47.unr = phi ptr [ %.136.us47.ph, %scalar.ph.preheader ], [ %i.ex, %scalar.ph.prol ]
  %i.ez = sub nsw i64 %.01737.us46.ph, %i.h
  %i.fa = icmp ugt i64 %i.ez, -8
  br i1 %i.fa, label %..loopexit_crit_edge.us61.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us46 = phi i64 [ %i.go, %scalar.ph ], [ %.01737.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us47 = phi ptr [ %i.gn, %scalar.ph ], [ %.136.us47.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10
  %i.fd = trunc i64 %i.fc to i8
  %i.fe = getelementptr inbounds nuw i8, ptr %.136.us47, i64 1
  store i8 %i.fd, ptr %.136.us47, align 1, !tbaa !7
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !10
  %i.fi = trunc i64 %i.fh to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.136.us47, i64 2
  store i8 %i.fi, ptr %i.fe, align 1, !tbaa !7
  %i.fk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10
  %i.fn = trunc i64 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %.136.us47, i64 3
  store i8 %i.fn, ptr %i.fj, align 1, !tbaa !7
  %i.fp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 24
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !10
  %i.fs = trunc i64 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.136.us47, i64 4
  store i8 %i.fs, ptr %i.fo, align 1, !tbaa !7
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !10
  %i.fx = trunc i64 %i.fw to i8
  %i.fy = getelementptr inbounds nuw i8, ptr %.136.us47, i64 5
  store i8 %i.fx, ptr %i.ft, align 1, !tbaa !7
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 40
  %i.gb = load i64, ptr %i.ga, align 8, !tbaa !10
  %i.gc = trunc i64 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.136.us47, i64 6
  store i8 %i.gc, ptr %i.fy, align 1, !tbaa !7
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 48
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !10
  %i.gh = trunc i64 %i.gg to i8
  %i.gi = getelementptr inbounds nuw i8, ptr %.136.us47, i64 7
  store i8 %i.gh, ptr %i.gd, align 1, !tbaa !7
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us46
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 56
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !10
  %i.gm = trunc i64 %i.gl to i8
  %i.gn = getelementptr inbounds nuw i8, ptr %.136.us47, i64 8 ; 2 uses
  store i8 %i.gm, ptr %i.gi, align 1, !tbaa !7
  %i.go = add nuw nsw i64 %.01737.us46, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.go, %i.h
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us61.loopexit, label %scalar.ph, !llvm.loop !420

..loopexit_crit_edge.us61.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.em, %middle.block ], [ %.lcssa50.unr, %scalar.ph.prol.loopexit ], [ %i.gn, %scalar.ph ]
  %i.gp = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 8
  br label %..loopexit_crit_edge.us61

..loopexit_crit_edge.us61:                        ; preds = %..loopexit_crit_edge.us61.loopexit, %.lr.ph41.split.split.us
  %.120.us48 = phi ptr [ %.01938.us44, %.lr.ph41.split.split.us ], [ %i.gp, %..loopexit_crit_edge.us61.loopexit ]
  %.2.us49 = phi ptr [ %.01839.us43, %.lr.ph41.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us61.loopexit ]
  %.val25.us50 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val26.us51 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.gq = ptrtoint ptr %.val26.us51 to i64
  %i.gr = ptrtoint ptr %.val25.us50 to i64
  %i.gs = sub i64 %i.gq, %i.gr
  %i.gt = ashr exact i64 %i.gs, 3                 ; 2 uses
  %i.gu = add nsw i64 %i.gt, -1                   ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gu ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !10
  %i.gx = add nsw i64 %i.gw, 1                    ; 3 uses
  store i64 %i.gx, ptr %i.gv, align 8, !tbaa !10
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.val25.us50, i64 %i.gu
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !10
  %i.ha = icmp eq i64 %i.gx, %i.gz
  %i.hb = icmp sgt i64 %i.gt, 1
  %or.cond.i.us52 = and i1 %i.ha, %i.hb
  br i1 %or.cond.i.us52, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us53:                                    ; preds = %..loopexit_crit_edge.us61, %bb.d
  %i.hc = phi i64 [ %i.hk, %bb.d ], [ %i.gx, %..loopexit_crit_edge.us61 ]
  %.03.i.us54 = phi i64 [ %i.hh, %bb.d ], [ %i.gu, %..loopexit_crit_edge.us61 ] ; 4 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.val25.us50, i64 %.03.i.us54
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = icmp eq i64 %i.hc, %i.he
  br i1 %i.hf, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us53
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us54
  store i64 0, ptr %i.hg, align 8, !tbaa !10
  %i.hh = add nsw i64 %.03.i.us54, -1             ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.hh ; 2 uses
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !10
  %i.hk = add nsw i64 %i.hj, 1                    ; 2 uses
  store i64 %i.hk, ptr %i.hi, align 8, !tbaa !10
  %i.hl = icmp sgt i64 %.03.i.us54, 1
  br i1 %i.hl, label %.lr.ph.i.us53, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us53, %bb.d, %..loopexit_crit_edge.us61
  %i.hm = add nsw i64 %.040.us42, -1
  %i.hn = icmp sgt i64 %.040.us42, 1
  br i1 %i.hn, label %.lr.ph41.split.split.us, label %._crit_edge.thread, !llvm.loop !412

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.ho = ptrtoint ptr %.sroa.030.0 to i64
  %i.hp = sub i64 %.sroa.13.0, %i.ho
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hp) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.hq = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hr = ptrtoint ptr %.sroa.030.0 to i64
  %i.hs = sub i64 %.sroa.13.0, %i.hr
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.hs) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ik, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.ht = load ptr, ptr %i.dz, align 8
  %i.hu = load i64, ptr %i.ht, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.hu, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph41.split.split
  %i.hv = getelementptr inbounds nuw i8, ptr %.01938, i64 8
  store i64 %i.hu, ptr %.01938, align 8, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.hv, %.loopexit ]
  %i.hw = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.hx = add nsw i64 %i.hw, 1                    ; 3 uses
  store i64 %i.hx, ptr %i.ef, align 8, !tbaa !10
  %i.hy = load i64, ptr %i.eg, align 8, !tbaa !10
  %i.hz = icmp eq i64 %i.hx, %i.hy
  %or.cond.i = and i1 %i.hz, %i.eh
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ia = phi i64 [ %i.ii, %bb.h ], [ %i.hx, %bb.g ]
  %.03.i = phi i64 [ %i.if, %bb.h ], [ %i.ee, %bb.g ] ; 4 uses
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !10
  %i.id = icmp eq i64 %i.ia, %i.ic
  br i1 %i.id, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.ie, align 8, !tbaa !10
  %i.if = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.if ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !10
  %i.ii = add nsw i64 %i.ih, 1                    ; 2 uses
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !10
  %i.ij = icmp sgt i64 %.03.i, 1
  br i1 %i.ij, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ik = add nsw i64 %.040, -1
  %i.il = icmp sgt i64 %.040, 1
  br i1 %i.il, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !412

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.hq
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIthEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 11 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 22 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check22 = icmp ult i64 %i.t, 4
  %n.vec25 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n35 = icmp eq i64 %i.t, %n.vec25
  %min.iters.check7 = icmp ult i64 %i.h, 4
  %n.vec10 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec10, 1
  %cmp.n18 = icmp eq i64 %i.h, %n.vec10
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.cb, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01838.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 5 uses
  %.01937.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check22, label %scalar.ph21.preheader, label %vector.body26

vector.body26:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body26
  %index27 = phi i64 [ %index.next33, %vector.body26 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body26 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi28 = phi <2 x i64> [ %i.ah, %vector.body26 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index27 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load29 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load30 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load31 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load32 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load31, %wide.load29
  %i.af = mul nsw <2 x i64> %wide.load32, %wide.load30
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi28         ; 2 uses
  %index.next33 = add nuw i64 %index27, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next33, %n.vec25
  br i1 %i.ai, label %middle.block34, label %vector.body26, !llvm.loop !421

middle.block34:                                   ; preds = %vector.body26
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n35, label %.loopexit34.us, label %scalar.ph21.preheader

scalar.ph21.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block34
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec25, %middle.block34 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block34 ]
  br label %scalar.ph21

scalar.ph21:                                      ; preds = %scalar.ph21.preheader, %scalar.ph21
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph21 ], [ %.011.i.i.i.us.ph, %scalar.ph21.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph21 ], [ %.0910.i.i.i.us.ph, %scalar.ph21.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph21, !llvm.loop !422

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.us, i64 1 ; 3 uses
  store i8 %i.ch, ptr %.01937.us, align 1, !tbaa !7
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check7, label %.lr.ph.us.preheader37, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph.us.preheader
  %i.as = getelementptr i8, ptr %.01838.us, i64 %i.y ; 2 uses
  br label %vector.body11

vector.body11:                                    ; preds = %vector.body11, %vector.ph8
  %index12 = phi i64 [ 0, %vector.ph8 ], [ %index.next16, %vector.body11 ] ; 3 uses
  %i.at = shl i64 %index12, 1
  %next.gep13 = getelementptr i8, ptr %.01838.us, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load14 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10
  %wide.load15 = load <2 x i64>, ptr %i.av, align 8, !tbaa !10
  %i.aw = trunc <2 x i64> %wide.load14 to <2 x i16>
  %i.ax = trunc <2 x i64> %wide.load15 to <2 x i16>
  %i.ay = getelementptr i8, ptr %next.gep13, i64 4
  store <2 x i16> %i.aw, ptr %next.gep13, align 2, !tbaa !8
  store <2 x i16> %i.ax, ptr %i.ay, align 2, !tbaa !8
  %index.next16 = add nuw i64 %index12, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.az, label %middle.block17, label %vector.body11, !llvm.loop !423

middle.block17:                                   ; preds = %vector.body11
  br i1 %cmp.n18, label %.loopexit.us, label %.lr.ph.us.preheader37

.lr.ph.us.preheader37:                            ; preds = %.lr.ph.us.preheader, %middle.block17
  %.01736.us.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec10, %middle.block17 ]
  %.135.us.ph = phi ptr [ %.01838.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block17 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader37, %.lr.ph.us
  %.01736.us = phi i64 [ %i.be, %.lr.ph.us ], [ %.01736.us.ph, %.lr.ph.us.preheader37 ] ; 2 uses
  %.135.us = phi ptr [ %i.bd, %.lr.ph.us ], [ %.135.us.ph, %.lr.ph.us.preheader37 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = trunc i64 %i.bb to i16
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.us, i64 2 ; 2 uses
  store i16 %i.bc, ptr %.135.us, align 2, !tbaa !8
  %i.be = add nuw nsw i64 %.01736.us, 1           ; 2 uses
  %exitcond69.not = icmp eq i64 %i.be, %i.x
  br i1 %exitcond69.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !424

.loopexit.us:                                     ; preds = %.lr.ph.us, %middle.block17, %bb.b, %.loopexit34.us
  %.120.us = phi ptr [ %.01937.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block17 ], [ %i.ar, %.lr.ph.us ]
  %.2.us = phi ptr [ %.01838.us, %.loopexit34.us ], [ %.01838.us, %bb.b ], [ %i.as, %middle.block17 ], [ %i.bd, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.bf = ptrtoint ptr %.val25.us to i64
  %i.bg = ptrtoint ptr %.val24.us to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 2 uses
  %i.bj = add nsw i64 %i.bi, -1                   ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = add nsw i64 %i.bl, 1                    ; 3 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.bj
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = icmp eq i64 %i.bm, %i.bo
  %i.bq = icmp sgt i64 %i.bi, 1
  %or.cond.i.us = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.br = phi i64 [ %i.bz, %bb.c ], [ %i.bm, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.bw, %bb.c ], [ %i.bj, %.loopexit.us ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.bv, align 8, !tbaa !10
  %i.bw = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !10
  %i.bz = add nsw i64 %i.by, 1                    ; 2 uses
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !10
  %i.ca = icmp sgt i64 %.03.i.us, 1
  br i1 %i.ca, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.cb = add nsw i64 %.039.us, -1
  %i.cc = icmp sgt i64 %.039.us, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !425

.loopexit34.us:                                   ; preds = %scalar.ph21, %middle.block34
  %.lcssa = phi i64 [ %i.aj, %middle.block34 ], [ %i.ap, %scalar.ph21 ]
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.lcssa
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7   ; 2 uses
  %.not.us = icmp eq i8 %i.ch, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.ci = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.039.us41 = phi i64 [ %i.dx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.p, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.01838.us42 = phi ptr [ %.2.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 4 uses
  %.01937.us43 = phi ptr [ %.120.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 2 uses
  %.not.us44 = icmp eq i8 %i.cm, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us60, label %.lr.ph.us59, !prof !54

.lr.ph.us59:                                      ; preds = %.lr.ph40.split.split.us
  store i8 %i.cm, ptr %.01937.us43, align 1, !tbaa !7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us59
  %i.cn = getelementptr i8, ptr %.01838.us42, i64 %i.ci ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.01838.us42, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <2 x i64>, ptr %i.cp, align 8, !tbaa !10
  %wide.load4 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !10
  %i.cr = trunc <2 x i64> %wide.load to <2 x i16>
  %i.cs = trunc <2 x i64> %wide.load4 to <2 x i16>
  %i.ct = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.cr, ptr %next.gep, align 2, !tbaa !8
  store <2 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !426

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us59, %middle.block
  %.01736.us45.ph = phi i64 [ 0, %.lr.ph.us59 ], [ %n.vec, %middle.block ]
  %.135.us46.ph = phi ptr [ %.01838.us42, %.lr.ph.us59 ], [ %i.cn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01736.us45 = phi i64 [ %i.cz, %scalar.ph ], [ %.01736.us45.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us46 = phi ptr [ %i.cy, %scalar.ph ], [ %.135.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10
  %i.cx = trunc i64 %i.cw to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %.135.us46, i64 2 ; 2 uses
  store i16 %i.cx, ptr %.135.us46, align 2, !tbaa !8
  %i.cz = add nuw nsw i64 %.01736.us45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %i.h
  br i1 %exitcond.not, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph, !llvm.loop !427

..loopexit_crit_edge.us60.loopexit:               ; preds = %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.cn, %middle.block ], [ %i.cy, %scalar.ph ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 1
  br label %..loopexit_crit_edge.us60

..loopexit_crit_edge.us60:                        ; preds = %..loopexit_crit_edge.us60.loopexit, %.lr.ph40.split.split.us
  %.120.us47 = phi ptr [ %.01937.us43, %.lr.ph40.split.split.us ], [ %i.da, %..loopexit_crit_edge.us60.loopexit ]
  %.2.us48 = phi ptr [ %.01838.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us60.loopexit ]
  %.val24.us49 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us50 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.db = ptrtoint ptr %.val25.us50 to i64
  %i.dc = ptrtoint ptr %.val24.us49 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3                 ; 2 uses
  %i.df = add nsw i64 %i.de, -1                   ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1                    ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %i.df
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dl = icmp eq i64 %i.di, %i.dk
  %i.dm = icmp sgt i64 %i.de, 1
  %or.cond.i.us51 = and i1 %i.dl, %i.dm
  br i1 %or.cond.i.us51, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us52:                                    ; preds = %..loopexit_crit_edge.us60, %bb.d
  %i.dn = phi i64 [ %i.dv, %bb.d ], [ %i.di, %..loopexit_crit_edge.us60 ]
  %.03.i.us53 = phi i64 [ %i.ds, %bb.d ], [ %i.df, %..loopexit_crit_edge.us60 ] ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %.03.i.us53
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us53
  store i64 0, ptr %i.dr, align 8, !tbaa !10
  %i.ds = add nsw i64 %.03.i.us53, -1             ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ds ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !10
  %i.dv = add nsw i64 %i.du, 1                    ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !10
  %i.dw = icmp sgt i64 %.03.i.us53, 1
  br i1 %i.dw, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us52, %bb.d, %..loopexit_crit_edge.us60
  %i.dx = add nsw i64 %.039.us41, -1
  %i.dy = icmp sgt i64 %.039.us41, 1
  br i1 %i.dy, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !425

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dz = ptrtoint ptr %.sroa.029.0 to i64
  %i.ea = sub i64 %.sroa.13.0, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.ea) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = ptrtoint ptr %.sroa.029.0 to i64
  %i.ed = sub i64 %.sroa.13.0, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.ed) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ff, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split ] ; 2 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split ] ; 3 uses
  %i.ee = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !7   ; 2 uses
  %.not = icmp eq i8 %i.eh, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.ei = getelementptr inbounds nuw i8, ptr %.01937, i64 1
  store i8 %i.eh, ptr %.01937, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.ei, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ej = ptrtoint ptr %.val25 to i64
  %i.ek = ptrtoint ptr %.val24 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3                 ; 2 uses
  %i.en = add nsw i64 %i.em, -1                   ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !10
  %i.eq = add nsw i64 %i.ep, 1                    ; 3 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.en
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = icmp eq i64 %i.eq, %i.es
  %i.eu = icmp sgt i64 %i.em, 1
  %or.cond.i = and i1 %i.et, %i.eu
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ev = phi i64 [ %i.fd, %bb.h ], [ %i.eq, %bb.g ]
  %.03.i = phi i64 [ %i.fa, %bb.h ], [ %i.en, %bb.g ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !10
  %i.ey = icmp eq i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.ez, align 8, !tbaa !10
  %i.fa = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10
  %i.fd = add nsw i64 %i.fc, 1                    ; 2 uses
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !10
  %i.fe = icmp sgt i64 %.03.i, 1
  br i1 %i.fe, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ff = add nsw i64 %.039, -1
  %i.fg = icmp sgt i64 %.039, 1
  br i1 %i.fg, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !425

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.eb
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIttEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr79 = freeze i64 %i.g
  %sext = shl i64 %.fr79, 29
  %i.h = ashr i64 %sext, 32                       ; 17 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val25 to i64
  %i.aa = ptrtoint ptr %.val24 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph40.split, label %.lr.ph40.split.us

.lr.ph40.split.us:                                ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.us.split.us, label %.lr.ph40.split.us.split

.lr.ph40.split.us.split.us:                       ; preds = %.lr.ph40.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.t, 4
  %n.vec30 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.t, %n.vec30
  %min.iters.check12 = icmp ult i64 %i.h, 4
  %n.vec15 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec15, 1
  %cmp.n23 = icmp eq i64 %i.h, %n.vec15
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph40.split.us.split.us
  %.039.us.us = phi i64 [ %i.p, %.lr.ph40.split.us.split.us ], [ %i.br, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01838.us.us = phi ptr [ %1, %.lr.ph40.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 5 uses
  %.01937.us.us = phi ptr [ %2, %.lr.ph40.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ar, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load35 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ap = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.as, label %middle.block39, label %vector.body31, !llvm.loop !428

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit34.us.us, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block39
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block39 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph26 ], [ %.011.i.i.i.us.us.ph, %scalar.ph26.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph26 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph26.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit34.us.us, label %scalar.ph26, !llvm.loop !429

bb.b:                                             ; preds = %.loopexit34.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01937.us.us, i64 2 ; 3 uses
  store i16 %i.bv, ptr %.01937.us.us, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  br i1 %min.iters.check12, label %.lr.ph.us.us.preheader98, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bc = getelementptr i8, ptr %.01838.us.us, i64 %i.aj ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph13
  %index17 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body16 ] ; 3 uses
  %i.bd = shl i64 %index17, 1
  %next.gep18 = getelementptr i8, ptr %.01838.us.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.be, align 8, !tbaa !10
  %wide.load20 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = trunc <2 x i64> %wide.load19 to <2 x i16>
  %i.bh = trunc <2 x i64> %wide.load20 to <2 x i16>
  %i.bi = getelementptr i8, ptr %next.gep18, i64 4
  store <2 x i16> %i.bg, ptr %next.gep18, align 2, !tbaa !8
  store <2 x i16> %i.bh, ptr %i.bi, align 2, !tbaa !8
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.bj, label %middle.block22, label %vector.body16, !llvm.loop !430

middle.block22:                                   ; preds = %vector.body16
  br i1 %cmp.n23, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader98

.lr.ph.us.us.preheader98:                         ; preds = %.lr.ph.us.us.preheader, %middle.block22
  %.01736.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec15, %middle.block22 ]
  %.135.us.us.ph = phi ptr [ %.01838.us.us, %.lr.ph.us.us.preheader ], [ %i.bc, %middle.block22 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader98, %.lr.ph.us.us
  %.01736.us.us = phi i64 [ %i.bo, %.lr.ph.us.us ], [ %.01736.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %.135.us.us = phi ptr [ %i.bn, %.lr.ph.us.us ], [ %.135.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 2 ; 2 uses
  store i16 %i.bm, ptr %.135.us.us, align 2, !tbaa !8
  %i.bo = add nuw nsw i64 %.01736.us.us, 1        ; 2 uses
  %exitcond91.not = icmp eq i64 %i.bo, %i.ai
  br i1 %exitcond91.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !431

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us, %middle.block22, %bb.b, %.loopexit34.us.us
  %.120.us.us = phi ptr [ %.01937.us.us, %.loopexit34.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block22 ], [ %i.bb, %.lr.ph.us.us ]
  %.2.us.us = phi ptr [ %.01838.us.us, %.loopexit34.us.us ], [ %.01838.us.us, %bb.b ], [ %i.bc, %middle.block22 ], [ %i.bn, %.lr.ph.us.us ]
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !10
  %i.br = add nsw i64 %.039.us.us, -1
  %i.bs = icmp sgt i64 %.039.us.us, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !432

.loopexit34.us.us:                                ; preds = %scalar.ph26, %middle.block39
  %.lcssa6 = phi i64 [ %i.at, %middle.block39 ], [ %i.az, %scalar.ph26 ]
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.lcssa6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !8  ; 2 uses
  %.not.us.us = icmp eq i16 %i.bv, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph40.split.us.split:                          ; preds = %.lr.ph40.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.us.split.split.preheader, label %.lr.ph40.split.us.split.split.us.preheader

.lr.ph40.split.us.split.split.us.preheader:       ; preds = %.lr.ph40.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.us.split.split.us

.lr.ph40.split.us.split.split.preheader:          ; preds = %.lr.ph40.split.us.split
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.split.us.split.split.prol.loopexit, label %.lr.ph40.split.us.split.split.prol

.lr.ph40.split.us.split.split.prol:               ; preds = %.lr.ph40.split.us.split.split.preheader
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !8  ; 2 uses
  %.not.us.prol = icmp eq i16 %i.by, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph40.split.us.split.split.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.by, ptr %2, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph40.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph40.split.us.split.split.prol ], [ %i.bz, %.loopexit.us.prol ]
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.ae, align 8, !tbaa !10
  %i.cc = add nsw i64 %i.p, -1
  br label %.lr.ph40.split.us.split.split.prol.loopexit

.lr.ph40.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph40.split.us.split.split.preheader
  %.039.us.unr = phi i64 [ %i.p, %.lr.ph40.split.us.split.split.preheader ], [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01937.us.unr = phi ptr [ %2, %.lr.ph40.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.cd = icmp eq i64 %i.p, 1
  br i1 %i.cd, label %._crit_edge.thread, label %.lr.ph40.split.us.split.split

.lr.ph40.split.us.split.split.us:                 ; preds = %.lr.ph40.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68
  %.039.us.us62 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %i.p, %.lr.ph40.split.us.split.split.us.preheader ] ; 2 uses
  %.01838.us.us63 = phi ptr [ %.2.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %1, %.lr.ph40.split.us.split.split.us.preheader ] ; 4 uses
  %.01937.us.us64 = phi ptr [ %.120.us.us69, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %2, %.lr.ph40.split.us.split.split.us.preheader ] ; 3 uses
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !8  ; 2 uses
  %.not.us.us65 = icmp eq i16 %i.cf, 0
  br i1 %.not.us.us65, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, label %.lr.ph.us.us73, !prof !54

.lr.ph.us.us73:                                   ; preds = %.lr.ph40.split.us.split.split.us
  store i16 %i.cf, ptr %.01937.us.us64, align 2, !tbaa !8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us73
  %i.cg = getelementptr i8, ptr %.01838.us.us63, i64 %i.bw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.01838.us.us63, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !10
  %wide.load9 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !10
  %i.ck = trunc <2 x i64> %wide.load to <2 x i16>
  %i.cl = trunc <2 x i64> %wide.load9 to <2 x i16>
  %i.cm = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ck, ptr %next.gep, align 2, !tbaa !8
  store <2 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !433

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us73, %middle.block
  %.01736.us.us66.ph = phi i64 [ 0, %.lr.ph.us.us73 ], [ %n.vec, %middle.block ]
  %.135.us.us67.ph = phi ptr [ %.01838.us.us63, %.lr.ph.us.us73 ], [ %i.cg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01736.us.us66 = phi i64 [ %i.cs, %scalar.ph ], [ %.01736.us.us66.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us.us67 = phi ptr [ %i.cr, %scalar.ph ], [ %.135.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 2 ; 2 uses
  store i16 %i.cq, ptr %.135.us.us67, align 2, !tbaa !8
  %i.cs = add nuw nsw i64 %.01736.us.us66, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph, !llvm.loop !434

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.cg, %middle.block ], [ %i.cr, %scalar.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01937.us.us64, i64 2
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, %.lr.ph40.split.us.split.split.us
  %.120.us.us69 = phi ptr [ %.01937.us.us64, %.lr.ph40.split.us.split.split.us ], [ %i.ct, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %.2.us.us70 = phi ptr [ %.01838.us.us63, %.lr.ph40.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !10
  %i.cw = add nsw i64 %.039.us.us62, -1
  %i.cx = icmp sgt i64 %.039.us.us62, 1
  br i1 %i.cx, label %.lr.ph40.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !432

.lr.ph40.split.us.split.split:                    ; preds = %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.039.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.039.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01937.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01937.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.cy = load ptr, ptr %i.y, align 8
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !8  ; 2 uses
  %.not.us = icmp eq i16 %i.cz, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph40.split.us.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %.01937.us, i64 2
  store i16 %i.cz, ptr %.01937.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph40.split.us.split.split
  %.120.us = phi ptr [ %.01937.us, %.lr.ph40.split.us.split.split ], [ %i.da, %.loopexit.us ] ; 3 uses
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1
  store i64 %i.dc, ptr %i.ae, align 8, !tbaa !10
  %i.dd = load ptr, ptr %i.y, align 8
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !8  ; 2 uses
  %.not.us.1 = icmp eq i16 %i.de, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.df = getelementptr inbounds nuw i8, ptr %.120.us, i64 2
  store i16 %i.de, ptr %.120.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.df, %.loopexit.us.1 ]
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %.039.us, -2
  %i.dj = icmp sgt i64 %.039.us, 2
  br i1 %i.dj, label %.lr.ph40.split.us.split.split, label %._crit_edge.thread, !llvm.loop !432

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.split.us, label %.lr.ph40.split.split.preheader

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.h, 4
  %n.vec46 = and i64 %i.dk, 1152921504606846972   ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec46, 1
  %cmp.n54 = icmp eq i64 %i.h, %n.vec46
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.t, 4
  %n.vec76 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n88 = icmp eq i64 %i.t, %n.vec76
  %min.iters.check58 = icmp ult i64 %i.h, 4
  %n.vec61 = and i64 %i.dn, 1152921504606846972   ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec61, 1
  %cmp.n69 = icmp eq i64 %i.h, %n.vec61
  br label %.lr.ph.i.i.i.us44

.lr.ph.i.i.i.us44:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %.lr.ph40.split.split.us
  %.039.us41 = phi i64 [ %i.p, %.lr.ph40.split.split.us ], [ %i.fi, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 2 uses
  %.01838.us42 = phi ptr [ %1, %.lr.ph40.split.split.us ], [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 5 uses
  %.01937.us43 = phi ptr [ %2, %.lr.ph40.split.split.us ], [ %.120.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 3 uses
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph.i.i.i.us44, %vector.body77
  %index78 = phi i64 [ %index.next85, %vector.body77 ], [ 0, %.lr.ph.i.i.i.us44 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %i.dv, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %vec.phi80 = phi <2 x i64> [ %i.dw, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !10
  %wide.load82 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index78 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %wide.load84 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !10
  %i.dt = mul nsw <2 x i64> %wide.load83, %wide.load81
  %i.du = mul nsw <2 x i64> %wide.load84, %wide.load82
  %i.dv = add <2 x i64> %i.dt, %vec.phi79         ; 2 uses
  %i.dw = add <2 x i64> %i.du, %vec.phi80         ; 2 uses
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.dx, label %middle.block86, label %vector.body77, !llvm.loop !435

middle.block86:                                   ; preds = %vector.body77
  %bin.rdx87 = add <2 x i64> %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx87) ; 2 uses
  br i1 %cmp.n88, label %.loopexit34.us57, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.lr.ph.i.i.i.us44, %middle.block86
  %.011.i.i.i.us45.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %n.vec76, %middle.block86 ]
  %.0910.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %i.dy, %middle.block86 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.011.i.i.i.us45 = phi i64 [ %i.ef, %scalar.ph72 ], [ %.011.i.i.i.us45.ph, %scalar.ph72.preheader ] ; 3 uses
  %.0910.i.i.i.us46 = phi i64 [ %i.ee, %scalar.ph72 ], [ %.0910.i.i.i.us46.ph, %scalar.ph72.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us45
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.us45
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %i.ee = add nsw i64 %i.ed, %.0910.i.i.i.us46    ; 2 uses
  %i.ef = add nuw nsw i64 %.011.i.i.i.us45, 1     ; 2 uses
  %exitcond.not.i.i.i.us47 = icmp eq i64 %i.ef, %i.t
  br i1 %exitcond.not.i.i.i.us47, label %.loopexit34.us57, label %scalar.ph72, !llvm.loop !436

bb.c:                                             ; preds = %.loopexit34.us57
  %i.eg = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 2 ; 3 uses
  store i16 %i.fm, ptr %.01937.us43, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit.us55, label %.lr.ph.us59.preheader

.lr.ph.us59.preheader:                            ; preds = %bb.c
  br i1 %min.iters.check58, label %.lr.ph.us59.preheader91, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.us59.preheader
  %i.eh = getelementptr i8, ptr %.01838.us42, i64 %i.do ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body62 ] ; 3 uses
  %i.ei = shl i64 %index63, 1
  %next.gep64 = getelementptr i8, ptr %.01838.us42, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index63 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !10
  %wide.load66 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !10
  %i.el = trunc <2 x i64> %wide.load65 to <2 x i16>
  %i.em = trunc <2 x i64> %wide.load66 to <2 x i16>
  %i.en = getelementptr i8, ptr %next.gep64, i64 4
  store <2 x i16> %i.el, ptr %next.gep64, align 2, !tbaa !8
  store <2 x i16> %i.em, ptr %i.en, align 2, !tbaa !8
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.eo, label %middle.block68, label %vector.body62, !llvm.loop !437

middle.block68:                                   ; preds = %vector.body62
  br i1 %cmp.n69, label %.loopexit.us55, label %.lr.ph.us59.preheader91

.lr.ph.us59.preheader91:                          ; preds = %.lr.ph.us59.preheader, %middle.block68
  %.01736.us50.ph = phi i64 [ 0, %.lr.ph.us59.preheader ], [ %n.vec61, %middle.block68 ]
  %.135.us51.ph = phi ptr [ %.01838.us42, %.lr.ph.us59.preheader ], [ %i.eh, %middle.block68 ]
  br label %.lr.ph.us59

.lr.ph.us59:                                      ; preds = %.lr.ph.us59.preheader91, %.lr.ph.us59
  %.01736.us50 = phi i64 [ %i.et, %.lr.ph.us59 ], [ %.01736.us50.ph, %.lr.ph.us59.preheader91 ] ; 2 uses
  %.135.us51 = phi ptr [ %i.es, %.lr.ph.us59 ], [ %.135.us51.ph, %.lr.ph.us59.preheader91 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = trunc i64 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %.135.us51, i64 2 ; 2 uses
  store i16 %i.er, ptr %.135.us51, align 2, !tbaa !8
  %i.et = add nuw nsw i64 %.01736.us50, 1         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.et, %i.dn
  br i1 %exitcond95.not, label %.loopexit.us55, label %.lr.ph.us59, !llvm.loop !438

.loopexit.us55:                                   ; preds = %.lr.ph.us59, %middle.block68, %bb.c, %.loopexit34.us57
  %.120.us52 = phi ptr [ %.01937.us43, %.loopexit34.us57 ], [ %i.eg, %bb.c ], [ %i.eg, %middle.block68 ], [ %i.eg, %.lr.ph.us59 ]
  %.2.us53 = phi ptr [ %.01838.us42, %.loopexit34.us57 ], [ %.01838.us42, %bb.c ], [ %i.eh, %middle.block68 ], [ %i.es, %.lr.ph.us59 ]
  %i.eu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ev = add nsw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.ae, align 8, !tbaa !10
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us:                                      ; preds = %.loopexit.us55, %bb.d
  %i.ey = phi i64 [ %i.fg, %bb.d ], [ %i.ev, %.loopexit.us55 ]
  %.03.i.us = phi i64 [ %i.fd, %bb.d ], [ %i.ad, %.loopexit.us55 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i.us
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.fc, align 8, !tbaa !10
  %i.fd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = add nsw i64 %i.ff, 1                    ; 2 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10
  %i.fh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.fh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us55
  %i.fi = add nsw i64 %.039.us41, -1
  %i.fj = icmp sgt i64 %.039.us41, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.us44, label %._crit_edge.thread, !llvm.loop !432

.loopexit34.us57:                                 ; preds = %scalar.ph72, %middle.block86
  %.lcssa = phi i64 [ %i.dy, %middle.block86 ], [ %i.ee, %scalar.ph72 ]
  %i.fk = load ptr, ptr %i.y, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %.lcssa
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !8  ; 2 uses
  %.not.us49 = icmp eq i16 %i.fm, 0
  br i1 %.not.us49, label %.loopexit.us55, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.029.0 to i64
  %i.fo = sub i64 %.sroa.13.0, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.029.0 to i64
  %i.fr = sub i64 %.sroa.13.0, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.gw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.01838 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph40.split.split.preheader ] ; 5 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.y, align 8
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !8  ; 2 uses
  %.not = icmp eq i16 %i.ft, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph40.split.split
  %i.fu = getelementptr inbounds nuw i8, ptr %.01937, i64 2 ; 3 uses
  store i16 %i.ft, ptr %.01937, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %min.iters.check43, label %.lr.ph.preheader96, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.preheader
  %i.fv = getelementptr i8, ptr %.01838, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 1
  %next.gep49 = getelementptr i8, ptr %.01838, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i16>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i16>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 4
  store <2 x i16> %i.fz, ptr %next.gep49, align 2, !tbaa !8
  store <2 x i16> %i.ga, ptr %i.gb, align 2, !tbaa !8
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !439

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01736.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.135.ph = phi ptr [ %.01838, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01736 = phi i64 [ %i.gh, %.lr.ph ], [ %.01736.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.135 = phi ptr [ %i.gg, %.lr.ph ], [ %.135.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %.135, i64 2 ; 2 uses
  store i16 %i.gf, ptr %.135, align 2, !tbaa !8
  %i.gh = add nuw nsw i64 %.01736, 1              ; 2 uses
  %exitcond93.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond93.not, label %.loopexit, label %.lr.ph, !llvm.loop !440

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01838, %.lr.ph40.split.split ], [ %.01838, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.039, -1
  %i.gx = icmp sgt i64 %.039, 1
  br i1 %i.gx, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !432

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorItjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 17 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.t, 4
  %n.vec30 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.t, %n.vec30
  %min.iters.check12 = icmp ult i64 %i.h, 4
  %n.vec15 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec15, 1
  %cmp.n23 = icmp eq i64 %i.h, %n.vec15
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.br, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 5 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ar, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load35 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ap = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.as, label %middle.block39, label %vector.body31, !llvm.loop !441

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit35.us.us, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block39
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block39 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph26 ], [ %.011.i.i.i.us.us.ph, %scalar.ph26.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph26 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph26.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph26, !llvm.loop !442

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 4 ; 3 uses
  store i32 %i.bv, ptr %.01938.us.us, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  br i1 %min.iters.check12, label %.lr.ph.us.us.preheader98, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bc = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph13
  %index17 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body16 ] ; 3 uses
  %i.bd = shl i64 %index17, 1
  %next.gep18 = getelementptr i8, ptr %.01839.us.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.be, align 8, !tbaa !10
  %wide.load20 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = trunc <2 x i64> %wide.load19 to <2 x i16>
  %i.bh = trunc <2 x i64> %wide.load20 to <2 x i16>
  %i.bi = getelementptr i8, ptr %next.gep18, i64 4
  store <2 x i16> %i.bg, ptr %next.gep18, align 2, !tbaa !8
  store <2 x i16> %i.bh, ptr %i.bi, align 2, !tbaa !8
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.bj, label %middle.block22, label %vector.body16, !llvm.loop !443

middle.block22:                                   ; preds = %vector.body16
  br i1 %cmp.n23, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader98

.lr.ph.us.us.preheader98:                         ; preds = %.lr.ph.us.us.preheader, %middle.block22
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec15, %middle.block22 ]
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bc, %middle.block22 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader98, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.bo, %.lr.ph.us.us ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %.136.us.us = phi ptr [ %i.bn, %.lr.ph.us.us ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 2 ; 2 uses
  store i16 %i.bm, ptr %.136.us.us, align 2, !tbaa !8
  %i.bo = add nuw nsw i64 %.01737.us.us, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bo, %i.ai
  br i1 %exitcond92.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !444

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us, %middle.block22, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block22 ], [ %i.bb, %.lr.ph.us.us ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bc, %middle.block22 ], [ %i.bn, %.lr.ph.us.us ]
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !10
  %i.br = add nsw i64 %.040.us.us, -1
  %i.bs = icmp sgt i64 %.040.us.us, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !445

.loopexit35.us.us:                                ; preds = %scalar.ph26, %middle.block39
  %.lcssa6 = phi i64 [ %i.at, %middle.block39 ], [ %i.az, %scalar.ph26 ]
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.lcssa6
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3  ; 2 uses
  %.not.us.us = icmp eq i32 %i.bv, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %.not.us.prol = icmp eq i32 %i.by, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.by, ptr %2, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.bz, %.loopexit.us.prol ]
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.ae, align 8, !tbaa !10
  %i.cc = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.cd = icmp eq i64 %i.p, 1
  br i1 %i.cd, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 4 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %.not.us.us66 = icmp eq i32 %i.cf, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  store i32 %i.cf, ptr %.01938.us.us65, align 4, !tbaa !3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.cg = getelementptr i8, ptr %.01839.us.us64, i64 %i.bw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !10
  %wide.load9 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !10
  %i.ck = trunc <2 x i64> %wide.load to <2 x i16>
  %i.cl = trunc <2 x i64> %wide.load9 to <2 x i16>
  %i.cm = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ck, ptr %next.gep, align 2, !tbaa !8
  store <2 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !446

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ]
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.cg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.cs, %scalar.ph ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68 = phi ptr [ %i.cr, %scalar.ph ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 2 ; 2 uses
  store i16 %i.cq, ptr %.136.us.us68, align 2, !tbaa !8
  %i.cs = add nuw nsw i64 %.01737.us.us67, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !447

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.cg, %middle.block ], [ %i.cr, %scalar.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 4
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.ct, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !10
  %i.cw = add nsw i64 %.040.us.us63, -1
  %i.cx = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.cx, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !445

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.cy = load ptr, ptr %i.y, align 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 2 uses
  %.not.us = icmp eq i32 %i.cz, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %.01938.us, i64 4
  store i32 %i.cz, ptr %.01938.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.da, %.loopexit.us ] ; 3 uses
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1
  store i64 %i.dc, ptr %i.ae, align 8, !tbaa !10
  %i.dd = load ptr, ptr %i.y, align 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3  ; 2 uses
  %.not.us.1 = icmp eq i32 %i.de, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.df = getelementptr inbounds nuw i8, ptr %.120.us, i64 4
  store i32 %i.de, ptr %.120.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.df, %.loopexit.us.1 ]
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %.040.us, -2
  %i.dj = icmp sgt i64 %.040.us, 2
  br i1 %i.dj, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !445

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.h, 4
  %n.vec46 = and i64 %i.dk, 1152921504606846972   ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec46, 1
  %cmp.n54 = icmp eq i64 %i.h, %n.vec46
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.t, 4
  %n.vec76 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n88 = icmp eq i64 %i.t, %n.vec76
  %min.iters.check58 = icmp ult i64 %i.h, 4
  %n.vec61 = and i64 %i.dn, 1152921504606846972   ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec61, 1
  %cmp.n69 = icmp eq i64 %i.h, %n.vec61
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.fi, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 5 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body77
  %index78 = phi i64 [ %index.next85, %vector.body77 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %i.dv, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi80 = phi <2 x i64> [ %i.dw, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !10
  %wide.load82 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index78 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %wide.load84 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !10
  %i.dt = mul nsw <2 x i64> %wide.load83, %wide.load81
  %i.du = mul nsw <2 x i64> %wide.load84, %wide.load82
  %i.dv = add <2 x i64> %i.dt, %vec.phi79         ; 2 uses
  %i.dw = add <2 x i64> %i.du, %vec.phi80         ; 2 uses
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.dx, label %middle.block86, label %vector.body77, !llvm.loop !448

middle.block86:                                   ; preds = %vector.body77
  %bin.rdx87 = add <2 x i64> %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx87) ; 2 uses
  br i1 %cmp.n88, label %.loopexit35.us58, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block86
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec76, %middle.block86 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.dy, %middle.block86 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.011.i.i.i.us46 = phi i64 [ %i.ef, %scalar.ph72 ], [ %.011.i.i.i.us46.ph, %scalar.ph72.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.ee, %scalar.ph72 ], [ %.0910.i.i.i.us47.ph, %scalar.ph72.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.us46
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %i.ee = add nsw i64 %i.ed, %.0910.i.i.i.us47    ; 2 uses
  %i.ef = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.ef, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph72, !llvm.loop !449

bb.c:                                             ; preds = %.loopexit35.us58
  %i.eg = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 4 ; 3 uses
  store i32 %i.fm, ptr %.01938.us44, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  br i1 %min.iters.check58, label %.lr.ph.us60.preheader91, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.us60.preheader
  %i.eh = getelementptr i8, ptr %.01839.us43, i64 %i.do ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body62 ] ; 3 uses
  %i.ei = shl i64 %index63, 1
  %next.gep64 = getelementptr i8, ptr %.01839.us43, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index63 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !10
  %wide.load66 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !10
  %i.el = trunc <2 x i64> %wide.load65 to <2 x i16>
  %i.em = trunc <2 x i64> %wide.load66 to <2 x i16>
  %i.en = getelementptr i8, ptr %next.gep64, i64 4
  store <2 x i16> %i.el, ptr %next.gep64, align 2, !tbaa !8
  store <2 x i16> %i.em, ptr %i.en, align 2, !tbaa !8
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.eo, label %middle.block68, label %vector.body62, !llvm.loop !450

middle.block68:                                   ; preds = %vector.body62
  br i1 %cmp.n69, label %.loopexit.us56, label %.lr.ph.us60.preheader91

.lr.ph.us60.preheader91:                          ; preds = %.lr.ph.us60.preheader, %middle.block68
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec61, %middle.block68 ]
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.eh, %middle.block68 ]
  br label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.preheader91, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.et, %.lr.ph.us60 ], [ %.01737.us51.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %.136.us52 = phi ptr [ %i.es, %.lr.ph.us60 ], [ %.136.us52.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = trunc i64 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %.136.us52, i64 2 ; 2 uses
  store i16 %i.er, ptr %.136.us52, align 2, !tbaa !8
  %i.et = add nuw nsw i64 %.01737.us51, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.et, %i.dn
  br i1 %exitcond96.not, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !451

.loopexit.us56:                                   ; preds = %.lr.ph.us60, %middle.block68, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.eg, %bb.c ], [ %i.eg, %middle.block68 ], [ %i.eg, %.lr.ph.us60 ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.eh, %middle.block68 ], [ %i.es, %.lr.ph.us60 ]
  %i.eu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ev = add nsw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.ae, align 8, !tbaa !10
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.ey = phi i64 [ %i.fg, %bb.d ], [ %i.ev, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.fd, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.fc, align 8, !tbaa !10
  %i.fd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = add nsw i64 %i.ff, 1                    ; 2 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10
  %i.fh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.fh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.fi = add nsw i64 %.040.us42, -1
  %i.fj = icmp sgt i64 %.040.us42, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !445

.loopexit35.us58:                                 ; preds = %scalar.ph72, %middle.block86
  %.lcssa = phi i64 [ %i.dy, %middle.block86 ], [ %i.ee, %scalar.ph72 ]
  %i.fk = load ptr, ptr %i.y, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %.lcssa
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 2 uses
  %.not.us50 = icmp eq i32 %i.fm, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.030.0 to i64
  %i.fo = sub i64 %.sroa.13.0, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.030.0 to i64
  %i.fr = sub i64 %.sroa.13.0, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.gw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 5 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.y, align 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.ft, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.fu = getelementptr inbounds nuw i8, ptr %.01938, i64 4 ; 3 uses
  store i32 %i.ft, ptr %.01938, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %min.iters.check43, label %.lr.ph.preheader96, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.preheader
  %i.fv = getelementptr i8, ptr %.01839, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 1
  %next.gep49 = getelementptr i8, ptr %.01839, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i16>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i16>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 4
  store <2 x i16> %i.fz, ptr %next.gep49, align 2, !tbaa !8
  store <2 x i16> %i.ga, ptr %i.gb, align 2, !tbaa !8
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !452

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01737 = phi i64 [ %i.gh, %.lr.ph ], [ %.01737.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.136 = phi ptr [ %i.gg, %.lr.ph ], [ %.136.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %.136, i64 2 ; 2 uses
  store i16 %i.gf, ptr %.136, align 2, !tbaa !8
  %i.gh = add nuw nsw i64 %.01737, 1              ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph, !llvm.loop !453

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.040, -1
  %i.gx = icmp sgt i64 %.040, 1
  br i1 %i.gx, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !445

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorItmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 17 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.t, 4
  %n.vec30 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.t, %n.vec30
  %min.iters.check12 = icmp ult i64 %i.h, 4
  %n.vec15 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec15, 1
  %cmp.n23 = icmp eq i64 %i.h, %n.vec15
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.br, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 5 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ar, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load35 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ap = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.as, label %middle.block39, label %vector.body31, !llvm.loop !454

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit35.us.us, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block39
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block39 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph26 ], [ %.011.i.i.i.us.us.ph, %scalar.ph26.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph26 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph26.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph26, !llvm.loop !455

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 8 ; 3 uses
  store i64 %i.bv, ptr %.01938.us.us, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  br i1 %min.iters.check12, label %.lr.ph.us.us.preheader98, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bc = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph13
  %index17 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body16 ] ; 3 uses
  %i.bd = shl i64 %index17, 1
  %next.gep18 = getelementptr i8, ptr %.01839.us.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.be, align 8, !tbaa !10
  %wide.load20 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = trunc <2 x i64> %wide.load19 to <2 x i16>
  %i.bh = trunc <2 x i64> %wide.load20 to <2 x i16>
  %i.bi = getelementptr i8, ptr %next.gep18, i64 4
  store <2 x i16> %i.bg, ptr %next.gep18, align 2, !tbaa !8
  store <2 x i16> %i.bh, ptr %i.bi, align 2, !tbaa !8
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.bj, label %middle.block22, label %vector.body16, !llvm.loop !456

middle.block22:                                   ; preds = %vector.body16
  br i1 %cmp.n23, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader98

.lr.ph.us.us.preheader98:                         ; preds = %.lr.ph.us.us.preheader, %middle.block22
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec15, %middle.block22 ]
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bc, %middle.block22 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader98, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.bo, %.lr.ph.us.us ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %.136.us.us = phi ptr [ %i.bn, %.lr.ph.us.us ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = trunc i64 %i.bl to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 2 ; 2 uses
  store i16 %i.bm, ptr %.136.us.us, align 2, !tbaa !8
  %i.bo = add nuw nsw i64 %.01737.us.us, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bo, %i.ai
  br i1 %exitcond92.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !457

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us, %middle.block22, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block22 ], [ %i.bb, %.lr.ph.us.us ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bc, %middle.block22 ], [ %i.bn, %.lr.ph.us.us ]
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !10
  %i.br = add nsw i64 %.040.us.us, -1
  %i.bs = icmp sgt i64 %.040.us.us, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !458

.loopexit35.us.us:                                ; preds = %scalar.ph26, %middle.block39
  %.lcssa6 = phi i64 [ %i.at, %middle.block39 ], [ %i.az, %scalar.ph26 ]
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.lcssa6
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10 ; 2 uses
  %.not.us.us = icmp eq i64 %i.bv, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !10 ; 2 uses
  %.not.us.prol = icmp eq i64 %i.by, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.by, ptr %2, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.bz, %.loopexit.us.prol ]
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.ae, align 8, !tbaa !10
  %i.cc = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.cd = icmp eq i64 %i.p, 1
  br i1 %i.cd, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 4 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %.not.us.us66 = icmp eq i64 %i.cf, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  store i64 %i.cf, ptr %.01938.us.us65, align 8, !tbaa !10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.cg = getelementptr i8, ptr %.01839.us.us64, i64 %i.bw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !10
  %wide.load9 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !10
  %i.ck = trunc <2 x i64> %wide.load to <2 x i16>
  %i.cl = trunc <2 x i64> %wide.load9 to <2 x i16>
  %i.cm = getelementptr i8, ptr %next.gep, i64 4
  store <2 x i16> %i.ck, ptr %next.gep, align 2, !tbaa !8
  store <2 x i16> %i.cl, ptr %i.cm, align 2, !tbaa !8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !459

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ]
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.cg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.cs, %scalar.ph ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68 = phi ptr [ %i.cr, %scalar.ph ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = trunc i64 %i.cp to i16
  %i.cr = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 2 ; 2 uses
  store i16 %i.cq, ptr %.136.us.us68, align 2, !tbaa !8
  %i.cs = add nuw nsw i64 %.01737.us.us67, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !460

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.cg, %middle.block ], [ %i.cr, %scalar.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.ct, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !10
  %i.cw = add nsw i64 %.040.us.us63, -1
  %i.cx = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.cx, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !458

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.cy = load ptr, ptr %i.y, align 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !10 ; 2 uses
  %.not.us = icmp eq i64 %i.cz, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %.01938.us, i64 8
  store i64 %i.cz, ptr %.01938.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.da, %.loopexit.us ] ; 3 uses
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1
  store i64 %i.dc, ptr %i.ae, align 8, !tbaa !10
  %i.dd = load ptr, ptr %i.y, align 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.de, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.df = getelementptr inbounds nuw i8, ptr %.120.us, i64 8
  store i64 %i.de, ptr %.120.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.df, %.loopexit.us.1 ]
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %.040.us, -2
  %i.dj = icmp sgt i64 %.040.us, 2
  br i1 %i.dj, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !458

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.h, 4
  %n.vec46 = and i64 %i.dk, 1152921504606846972   ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec46, 1
  %cmp.n54 = icmp eq i64 %i.h, %n.vec46
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.t, 4
  %n.vec76 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n88 = icmp eq i64 %i.t, %n.vec76
  %min.iters.check58 = icmp ult i64 %i.h, 4
  %n.vec61 = and i64 %i.dn, 1152921504606846972   ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec61, 1
  %cmp.n69 = icmp eq i64 %i.h, %n.vec61
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.fi, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 5 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body77
  %index78 = phi i64 [ %index.next85, %vector.body77 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %i.dv, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi80 = phi <2 x i64> [ %i.dw, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !10
  %wide.load82 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index78 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %wide.load84 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !10
  %i.dt = mul nsw <2 x i64> %wide.load83, %wide.load81
  %i.du = mul nsw <2 x i64> %wide.load84, %wide.load82
  %i.dv = add <2 x i64> %i.dt, %vec.phi79         ; 2 uses
  %i.dw = add <2 x i64> %i.du, %vec.phi80         ; 2 uses
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.dx, label %middle.block86, label %vector.body77, !llvm.loop !461

middle.block86:                                   ; preds = %vector.body77
  %bin.rdx87 = add <2 x i64> %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx87) ; 2 uses
  br i1 %cmp.n88, label %.loopexit35.us58, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block86
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec76, %middle.block86 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.dy, %middle.block86 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.011.i.i.i.us46 = phi i64 [ %i.ef, %scalar.ph72 ], [ %.011.i.i.i.us46.ph, %scalar.ph72.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.ee, %scalar.ph72 ], [ %.0910.i.i.i.us47.ph, %scalar.ph72.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.us46
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %i.ee = add nsw i64 %i.ed, %.0910.i.i.i.us47    ; 2 uses
  %i.ef = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.ef, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph72, !llvm.loop !462

bb.c:                                             ; preds = %.loopexit35.us58
  %i.eg = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 8 ; 3 uses
  store i64 %i.fm, ptr %.01938.us44, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  br i1 %min.iters.check58, label %.lr.ph.us60.preheader91, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.us60.preheader
  %i.eh = getelementptr i8, ptr %.01839.us43, i64 %i.do ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body62 ] ; 3 uses
  %i.ei = shl i64 %index63, 1
  %next.gep64 = getelementptr i8, ptr %.01839.us43, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index63 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !10
  %wide.load66 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !10
  %i.el = trunc <2 x i64> %wide.load65 to <2 x i16>
  %i.em = trunc <2 x i64> %wide.load66 to <2 x i16>
  %i.en = getelementptr i8, ptr %next.gep64, i64 4
  store <2 x i16> %i.el, ptr %next.gep64, align 2, !tbaa !8
  store <2 x i16> %i.em, ptr %i.en, align 2, !tbaa !8
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.eo, label %middle.block68, label %vector.body62, !llvm.loop !463

middle.block68:                                   ; preds = %vector.body62
  br i1 %cmp.n69, label %.loopexit.us56, label %.lr.ph.us60.preheader91

.lr.ph.us60.preheader91:                          ; preds = %.lr.ph.us60.preheader, %middle.block68
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec61, %middle.block68 ]
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.eh, %middle.block68 ]
  br label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.preheader91, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.et, %.lr.ph.us60 ], [ %.01737.us51.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %.136.us52 = phi ptr [ %i.es, %.lr.ph.us60 ], [ %.136.us52.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = trunc i64 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %.136.us52, i64 2 ; 2 uses
  store i16 %i.er, ptr %.136.us52, align 2, !tbaa !8
  %i.et = add nuw nsw i64 %.01737.us51, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.et, %i.dn
  br i1 %exitcond96.not, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !464

.loopexit.us56:                                   ; preds = %.lr.ph.us60, %middle.block68, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.eg, %bb.c ], [ %i.eg, %middle.block68 ], [ %i.eg, %.lr.ph.us60 ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.eh, %middle.block68 ], [ %i.es, %.lr.ph.us60 ]
  %i.eu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ev = add nsw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.ae, align 8, !tbaa !10
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.ey = phi i64 [ %i.fg, %bb.d ], [ %i.ev, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.fd, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.fc, align 8, !tbaa !10
  %i.fd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = add nsw i64 %i.ff, 1                    ; 2 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10
  %i.fh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.fh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.fi = add nsw i64 %.040.us42, -1
  %i.fj = icmp sgt i64 %.040.us42, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !458

.loopexit35.us58:                                 ; preds = %scalar.ph72, %middle.block86
  %.lcssa = phi i64 [ %i.dy, %middle.block86 ], [ %i.ee, %scalar.ph72 ]
  %i.fk = load ptr, ptr %i.y, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %.lcssa
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10 ; 2 uses
  %.not.us50 = icmp eq i64 %i.fm, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.030.0 to i64
  %i.fo = sub i64 %.sroa.13.0, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.030.0 to i64
  %i.fr = sub i64 %.sroa.13.0, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.gw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 5 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.y, align 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.ft, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.fu = getelementptr inbounds nuw i8, ptr %.01938, i64 8 ; 3 uses
  store i64 %i.ft, ptr %.01938, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %min.iters.check43, label %.lr.ph.preheader96, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.preheader
  %i.fv = getelementptr i8, ptr %.01839, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 1
  %next.gep49 = getelementptr i8, ptr %.01839, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i16>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i16>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 4
  store <2 x i16> %i.fz, ptr %next.gep49, align 2, !tbaa !8
  store <2 x i16> %i.ga, ptr %i.gb, align 2, !tbaa !8
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !465

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01737 = phi i64 [ %i.gh, %.lr.ph ], [ %.01737.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.136 = phi ptr [ %i.gg, %.lr.ph ], [ %.136.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i16
  %i.gg = getelementptr inbounds nuw i8, ptr %.136, i64 2 ; 2 uses
  store i16 %i.gf, ptr %.136, align 2, !tbaa !8
  %i.gh = add nuw nsw i64 %.01737, 1              ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph, !llvm.loop !466

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.040, -1
  %i.gx = icmp sgt i64 %.040, 1
  br i1 %i.gx, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !458

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 11 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 22 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check22 = icmp ult i64 %i.t, 4
  %n.vec25 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n35 = icmp eq i64 %i.t, %n.vec25
  %min.iters.check7 = icmp ult i64 %i.h, 4
  %n.vec10 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec10, 2
  %cmp.n18 = icmp eq i64 %i.h, %n.vec10
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.cb, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01838.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 5 uses
  %.01937.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check22, label %scalar.ph21.preheader, label %vector.body26

vector.body26:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body26
  %index27 = phi i64 [ %index.next33, %vector.body26 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body26 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi28 = phi <2 x i64> [ %i.ah, %vector.body26 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index27 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load29 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load30 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index27 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load31 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load32 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load31, %wide.load29
  %i.af = mul nsw <2 x i64> %wide.load32, %wide.load30
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi28         ; 2 uses
  %index.next33 = add nuw i64 %index27, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next33, %n.vec25
  br i1 %i.ai, label %middle.block34, label %vector.body26, !llvm.loop !467

middle.block34:                                   ; preds = %vector.body26
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n35, label %.loopexit34.us, label %scalar.ph21.preheader

scalar.ph21.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block34
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec25, %middle.block34 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block34 ]
  br label %scalar.ph21

scalar.ph21:                                      ; preds = %scalar.ph21.preheader, %scalar.ph21
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph21 ], [ %.011.i.i.i.us.ph, %scalar.ph21.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph21 ], [ %.0910.i.i.i.us.ph, %scalar.ph21.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph21, !llvm.loop !468

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.us, i64 1 ; 3 uses
  store i8 %i.ch, ptr %.01937.us, align 1, !tbaa !7
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  br i1 %min.iters.check7, label %.lr.ph.us.preheader37, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph.us.preheader
  %i.as = getelementptr i8, ptr %.01838.us, i64 %i.y ; 2 uses
  br label %vector.body11

vector.body11:                                    ; preds = %vector.body11, %vector.ph8
  %index12 = phi i64 [ 0, %vector.ph8 ], [ %index.next16, %vector.body11 ] ; 3 uses
  %i.at = shl i64 %index12, 2
  %next.gep13 = getelementptr i8, ptr %.01838.us, i64 %i.at ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index12 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load14 = load <2 x i64>, ptr %i.au, align 8, !tbaa !10
  %wide.load15 = load <2 x i64>, ptr %i.av, align 8, !tbaa !10
  %i.aw = trunc <2 x i64> %wide.load14 to <2 x i32>
  %i.ax = trunc <2 x i64> %wide.load15 to <2 x i32>
  %i.ay = getelementptr i8, ptr %next.gep13, i64 8
  store <2 x i32> %i.aw, ptr %next.gep13, align 4, !tbaa !3
  store <2 x i32> %i.ax, ptr %i.ay, align 4, !tbaa !3
  %index.next16 = add nuw i64 %index12, 4         ; 2 uses
  %i.az = icmp eq i64 %index.next16, %n.vec10
  br i1 %i.az, label %middle.block17, label %vector.body11, !llvm.loop !469

middle.block17:                                   ; preds = %vector.body11
  br i1 %cmp.n18, label %.loopexit.us, label %.lr.ph.us.preheader37

.lr.ph.us.preheader37:                            ; preds = %.lr.ph.us.preheader, %middle.block17
  %.01736.us.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec10, %middle.block17 ]
  %.135.us.ph = phi ptr [ %.01838.us, %.lr.ph.us.preheader ], [ %i.as, %middle.block17 ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader37, %.lr.ph.us
  %.01736.us = phi i64 [ %i.be, %.lr.ph.us ], [ %.01736.us.ph, %.lr.ph.us.preheader37 ] ; 2 uses
  %.135.us = phi ptr [ %i.bd, %.lr.ph.us ], [ %.135.us.ph, %.lr.ph.us.preheader37 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.135.us, i64 4 ; 2 uses
  store i32 %i.bc, ptr %.135.us, align 4, !tbaa !3
  %i.be = add nuw nsw i64 %.01736.us, 1           ; 2 uses
  %exitcond69.not = icmp eq i64 %i.be, %i.x
  br i1 %exitcond69.not, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !470

.loopexit.us:                                     ; preds = %.lr.ph.us, %middle.block17, %bb.b, %.loopexit34.us
  %.120.us = phi ptr [ %.01937.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block17 ], [ %i.ar, %.lr.ph.us ]
  %.2.us = phi ptr [ %.01838.us, %.loopexit34.us ], [ %.01838.us, %bb.b ], [ %i.as, %middle.block17 ], [ %i.bd, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.bf = ptrtoint ptr %.val25.us to i64
  %i.bg = ptrtoint ptr %.val24.us to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = ashr exact i64 %i.bh, 3                 ; 2 uses
  %i.bj = add nsw i64 %i.bi, -1                   ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.bj ; 2 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = add nsw i64 %i.bl, 1                    ; 3 uses
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.bj
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !10
  %i.bp = icmp eq i64 %i.bm, %i.bo
  %i.bq = icmp sgt i64 %i.bi, 1
  %or.cond.i.us = and i1 %i.bp, %i.bq
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.br = phi i64 [ %i.bz, %bb.c ], [ %i.bm, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.bw, %bb.c ], [ %i.bj, %.loopexit.us ] ; 4 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = icmp eq i64 %i.br, %i.bt
  br i1 %i.bu, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.bv, align 8, !tbaa !10
  %i.bw = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.bw ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !10
  %i.bz = add nsw i64 %i.by, 1                    ; 2 uses
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !10
  %i.ca = icmp sgt i64 %.03.i.us, 1
  br i1 %i.ca, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.cb = add nsw i64 %.039.us, -1
  %i.cc = icmp sgt i64 %.039.us, 1
  br i1 %i.cc, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !471

.loopexit34.us:                                   ; preds = %scalar.ph21, %middle.block34
  %.lcssa = phi i64 [ %i.aj, %middle.block34 ], [ %i.ap, %scalar.ph21 ]
  %i.cd = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %.lcssa
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !7   ; 2 uses
  %.not.us = icmp eq i8 %i.ch, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.ci = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.039.us41 = phi i64 [ %i.dx, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.p, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.01838.us42 = phi ptr [ %.2.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 4 uses
  %.01937.us43 = phi ptr [ %.120.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.cj = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7   ; 2 uses
  %.not.us44 = icmp eq i8 %i.cm, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us60, label %.lr.ph.us59, !prof !54

.lr.ph.us59:                                      ; preds = %.lr.ph40.split.split.us
  store i8 %i.cm, ptr %.01937.us43, align 1, !tbaa !7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us59
  %i.cn = getelementptr i8, ptr %.01838.us42, i64 %i.ci ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.co = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01838.us42, i64 %i.co ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load = load <2 x i64>, ptr %i.cp, align 8, !tbaa !10
  %wide.load4 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !10
  %i.cr = trunc <2 x i64> %wide.load to <2 x i32>
  %i.cs = trunc <2 x i64> %wide.load4 to <2 x i32>
  %i.ct = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.cr, ptr %next.gep, align 4, !tbaa !3
  store <2 x i32> %i.cs, ptr %i.ct, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !472

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us59, %middle.block
  %.01736.us45.ph = phi i64 [ 0, %.lr.ph.us59 ], [ %n.vec, %middle.block ]
  %.135.us46.ph = phi ptr [ %.01838.us42, %.lr.ph.us59 ], [ %i.cn, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01736.us45 = phi i64 [ %i.cz, %scalar.ph ], [ %.01736.us45.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us46 = phi ptr [ %i.cy, %scalar.ph ], [ %.135.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !10
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %.135.us46, i64 4 ; 2 uses
  store i32 %i.cx, ptr %.135.us46, align 4, !tbaa !3
  %i.cz = add nuw nsw i64 %.01736.us45, 1         ; 2 uses
  %exitcond.not = icmp eq i64 %i.cz, %i.h
  br i1 %exitcond.not, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph, !llvm.loop !473

..loopexit_crit_edge.us60.loopexit:               ; preds = %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.cn, %middle.block ], [ %i.cy, %scalar.ph ]
  %i.da = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 1
  br label %..loopexit_crit_edge.us60

..loopexit_crit_edge.us60:                        ; preds = %..loopexit_crit_edge.us60.loopexit, %.lr.ph40.split.split.us
  %.120.us47 = phi ptr [ %.01937.us43, %.lr.ph40.split.split.us ], [ %i.da, %..loopexit_crit_edge.us60.loopexit ]
  %.2.us48 = phi ptr [ %.01838.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us60.loopexit ]
  %.val24.us49 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us50 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.db = ptrtoint ptr %.val25.us50 to i64
  %i.dc = ptrtoint ptr %.val24.us49 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = ashr exact i64 %i.dd, 3                 ; 2 uses
  %i.df = add nsw i64 %i.de, -1                   ; 3 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.df ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1                    ; 3 uses
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !10
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %i.df
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !10
  %i.dl = icmp eq i64 %i.di, %i.dk
  %i.dm = icmp sgt i64 %i.de, 1
  %or.cond.i.us51 = and i1 %i.dl, %i.dm
  br i1 %or.cond.i.us51, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us52:                                    ; preds = %..loopexit_crit_edge.us60, %bb.d
  %i.dn = phi i64 [ %i.dv, %bb.d ], [ %i.di, %..loopexit_crit_edge.us60 ]
  %.03.i.us53 = phi i64 [ %i.ds, %bb.d ], [ %i.df, %..loopexit_crit_edge.us60 ] ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %.03.i.us53
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !10
  %i.dq = icmp eq i64 %i.dn, %i.dp
  br i1 %i.dq, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us52
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us53
  store i64 0, ptr %i.dr, align 8, !tbaa !10
  %i.ds = add nsw i64 %.03.i.us53, -1             ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ds ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !10
  %i.dv = add nsw i64 %i.du, 1                    ; 2 uses
  store i64 %i.dv, ptr %i.dt, align 8, !tbaa !10
  %i.dw = icmp sgt i64 %.03.i.us53, 1
  br i1 %i.dw, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us52, %bb.d, %..loopexit_crit_edge.us60
  %i.dx = add nsw i64 %.039.us41, -1
  %i.dy = icmp sgt i64 %.039.us41, 1
  br i1 %i.dy, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !471

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.dz = ptrtoint ptr %.sroa.029.0 to i64
  %i.ea = sub i64 %.sroa.13.0, %i.dz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.ea) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.eb = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ec = ptrtoint ptr %.sroa.029.0 to i64
  %i.ed = sub i64 %.sroa.13.0, %i.ec
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.ed) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ff, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split ] ; 2 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split ] ; 3 uses
  %i.ee = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !7   ; 2 uses
  %.not = icmp eq i8 %i.eh, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.ei = getelementptr inbounds nuw i8, ptr %.01937, i64 1
  store i8 %i.eh, ptr %.01937, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.ei, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ej = ptrtoint ptr %.val25 to i64
  %i.ek = ptrtoint ptr %.val24 to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = ashr exact i64 %i.el, 3                 ; 2 uses
  %i.en = add nsw i64 %i.em, -1                   ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.en ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !10
  %i.eq = add nsw i64 %i.ep, 1                    ; 3 uses
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.en
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = icmp eq i64 %i.eq, %i.es
  %i.eu = icmp sgt i64 %i.em, 1
  %or.cond.i = and i1 %i.et, %i.eu
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.ev = phi i64 [ %i.fd, %bb.h ], [ %i.eq, %bb.g ]
  %.03.i = phi i64 [ %i.fa, %bb.h ], [ %i.en, %bb.g ] ; 4 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !10
  %i.ey = icmp eq i64 %i.ev, %i.ex
  br i1 %i.ey, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.ez, align 8, !tbaa !10
  %i.fa = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.fa ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !10
  %i.fd = add nsw i64 %i.fc, 1                    ; 2 uses
  store i64 %i.fd, ptr %i.fb, align 8, !tbaa !10
  %i.fe = icmp sgt i64 %.03.i, 1
  br i1 %i.fe, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ff = add nsw i64 %.039, -1
  %i.fg = icmp sgt i64 %.039, 1
  br i1 %i.fg, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !471

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.eb
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjtEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr79 = freeze i64 %i.g
  %sext = shl i64 %.fr79, 29
  %i.h = ashr i64 %sext, 32                       ; 17 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val25 to i64
  %i.aa = ptrtoint ptr %.val24 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph40.split, label %.lr.ph40.split.us

.lr.ph40.split.us:                                ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.us.split.us, label %.lr.ph40.split.us.split

.lr.ph40.split.us.split.us:                       ; preds = %.lr.ph40.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.t, 4
  %n.vec30 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.t, %n.vec30
  %min.iters.check12 = icmp ult i64 %i.h, 4
  %n.vec15 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec15, 2
  %cmp.n23 = icmp eq i64 %i.h, %n.vec15
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph40.split.us.split.us
  %.039.us.us = phi i64 [ %i.p, %.lr.ph40.split.us.split.us ], [ %i.br, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01838.us.us = phi ptr [ %1, %.lr.ph40.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 5 uses
  %.01937.us.us = phi ptr [ %2, %.lr.ph40.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ar, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load35 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ap = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.as, label %middle.block39, label %vector.body31, !llvm.loop !474

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit34.us.us, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block39
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block39 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph26 ], [ %.011.i.i.i.us.us.ph, %scalar.ph26.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph26 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph26.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit34.us.us, label %scalar.ph26, !llvm.loop !475

bb.b:                                             ; preds = %.loopexit34.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01937.us.us, i64 2 ; 3 uses
  store i16 %i.bv, ptr %.01937.us.us, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  br i1 %min.iters.check12, label %.lr.ph.us.us.preheader98, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bc = getelementptr i8, ptr %.01838.us.us, i64 %i.aj ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph13
  %index17 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body16 ] ; 3 uses
  %i.bd = shl i64 %index17, 2
  %next.gep18 = getelementptr i8, ptr %.01838.us.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.be, align 8, !tbaa !10
  %wide.load20 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = trunc <2 x i64> %wide.load19 to <2 x i32>
  %i.bh = trunc <2 x i64> %wide.load20 to <2 x i32>
  %i.bi = getelementptr i8, ptr %next.gep18, i64 8
  store <2 x i32> %i.bg, ptr %next.gep18, align 4, !tbaa !3
  store <2 x i32> %i.bh, ptr %i.bi, align 4, !tbaa !3
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.bj, label %middle.block22, label %vector.body16, !llvm.loop !476

middle.block22:                                   ; preds = %vector.body16
  br i1 %cmp.n23, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader98

.lr.ph.us.us.preheader98:                         ; preds = %.lr.ph.us.us.preheader, %middle.block22
  %.01736.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec15, %middle.block22 ]
  %.135.us.us.ph = phi ptr [ %.01838.us.us, %.lr.ph.us.us.preheader ], [ %i.bc, %middle.block22 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader98, %.lr.ph.us.us
  %.01736.us.us = phi i64 [ %i.bo, %.lr.ph.us.us ], [ %.01736.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %.135.us.us = phi ptr [ %i.bn, %.lr.ph.us.us ], [ %.135.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 4 ; 2 uses
  store i32 %i.bm, ptr %.135.us.us, align 4, !tbaa !3
  %i.bo = add nuw nsw i64 %.01736.us.us, 1        ; 2 uses
  %exitcond91.not = icmp eq i64 %i.bo, %i.ai
  br i1 %exitcond91.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !477

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us, %middle.block22, %bb.b, %.loopexit34.us.us
  %.120.us.us = phi ptr [ %.01937.us.us, %.loopexit34.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block22 ], [ %i.bb, %.lr.ph.us.us ]
  %.2.us.us = phi ptr [ %.01838.us.us, %.loopexit34.us.us ], [ %.01838.us.us, %bb.b ], [ %i.bc, %middle.block22 ], [ %i.bn, %.lr.ph.us.us ]
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !10
  %i.br = add nsw i64 %.039.us.us, -1
  %i.bs = icmp sgt i64 %.039.us.us, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !478

.loopexit34.us.us:                                ; preds = %scalar.ph26, %middle.block39
  %.lcssa6 = phi i64 [ %i.at, %middle.block39 ], [ %i.az, %scalar.ph26 ]
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.lcssa6
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !8  ; 2 uses
  %.not.us.us = icmp eq i16 %i.bv, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph40.split.us.split:                          ; preds = %.lr.ph40.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.us.split.split.preheader, label %.lr.ph40.split.us.split.split.us.preheader

.lr.ph40.split.us.split.split.us.preheader:       ; preds = %.lr.ph40.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.us.split.split.us

.lr.ph40.split.us.split.split.preheader:          ; preds = %.lr.ph40.split.us.split
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph40.split.us.split.split.prol.loopexit, label %.lr.ph40.split.us.split.split.prol

.lr.ph40.split.us.split.split.prol:               ; preds = %.lr.ph40.split.us.split.split.preheader
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !8  ; 2 uses
  %.not.us.prol = icmp eq i16 %i.by, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph40.split.us.split.split.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.by, ptr %2, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph40.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph40.split.us.split.split.prol ], [ %i.bz, %.loopexit.us.prol ]
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.ae, align 8, !tbaa !10
  %i.cc = add nsw i64 %i.p, -1
  br label %.lr.ph40.split.us.split.split.prol.loopexit

.lr.ph40.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph40.split.us.split.split.preheader
  %.039.us.unr = phi i64 [ %i.p, %.lr.ph40.split.us.split.split.preheader ], [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01937.us.unr = phi ptr [ %2, %.lr.ph40.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.cd = icmp eq i64 %i.p, 1
  br i1 %i.cd, label %._crit_edge.thread, label %.lr.ph40.split.us.split.split

.lr.ph40.split.us.split.split.us:                 ; preds = %.lr.ph40.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68
  %.039.us.us62 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %i.p, %.lr.ph40.split.us.split.split.us.preheader ] ; 2 uses
  %.01838.us.us63 = phi ptr [ %.2.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %1, %.lr.ph40.split.us.split.split.us.preheader ] ; 4 uses
  %.01937.us.us64 = phi ptr [ %.120.us.us69, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %2, %.lr.ph40.split.us.split.split.us.preheader ] ; 3 uses
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !8  ; 2 uses
  %.not.us.us65 = icmp eq i16 %i.cf, 0
  br i1 %.not.us.us65, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, label %.lr.ph.us.us73, !prof !54

.lr.ph.us.us73:                                   ; preds = %.lr.ph40.split.us.split.split.us
  store i16 %i.cf, ptr %.01937.us.us64, align 2, !tbaa !8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us73
  %i.cg = getelementptr i8, ptr %.01838.us.us63, i64 %i.bw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01838.us.us63, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !10
  %wide.load9 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !10
  %i.ck = trunc <2 x i64> %wide.load to <2 x i32>
  %i.cl = trunc <2 x i64> %wide.load9 to <2 x i32>
  %i.cm = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ck, ptr %next.gep, align 4, !tbaa !3
  store <2 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !479

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us73, %middle.block
  %.01736.us.us66.ph = phi i64 [ 0, %.lr.ph.us.us73 ], [ %n.vec, %middle.block ]
  %.135.us.us67.ph = phi ptr [ %.01838.us.us63, %.lr.ph.us.us73 ], [ %i.cg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01736.us.us66 = phi i64 [ %i.cs, %scalar.ph ], [ %.01736.us.us66.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us.us67 = phi ptr [ %i.cr, %scalar.ph ], [ %.135.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.135.us.us67, align 4, !tbaa !3
  %i.cs = add nuw nsw i64 %.01736.us.us66, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph, !llvm.loop !480

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.cg, %middle.block ], [ %i.cr, %scalar.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01937.us.us64, i64 2
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, %.lr.ph40.split.us.split.split.us
  %.120.us.us69 = phi ptr [ %.01937.us.us64, %.lr.ph40.split.us.split.split.us ], [ %i.ct, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %.2.us.us70 = phi ptr [ %.01838.us.us63, %.lr.ph40.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !10
  %i.cw = add nsw i64 %.039.us.us62, -1
  %i.cx = icmp sgt i64 %.039.us.us62, 1
  br i1 %i.cx, label %.lr.ph40.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !478

.lr.ph40.split.us.split.split:                    ; preds = %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.039.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.039.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01937.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01937.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.cy = load ptr, ptr %i.y, align 8
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !8  ; 2 uses
  %.not.us = icmp eq i16 %i.cz, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph40.split.us.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %.01937.us, i64 2
  store i16 %i.cz, ptr %.01937.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph40.split.us.split.split
  %.120.us = phi ptr [ %.01937.us, %.lr.ph40.split.us.split.split ], [ %i.da, %.loopexit.us ] ; 3 uses
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1
  store i64 %i.dc, ptr %i.ae, align 8, !tbaa !10
  %i.dd = load ptr, ptr %i.y, align 8
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !8  ; 2 uses
  %.not.us.1 = icmp eq i16 %i.de, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.df = getelementptr inbounds nuw i8, ptr %.120.us, i64 2
  store i16 %i.de, ptr %.120.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.df, %.loopexit.us.1 ]
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %.039.us, -2
  %i.dj = icmp sgt i64 %.039.us, 2
  br i1 %i.dj, label %.lr.ph40.split.us.split.split, label %._crit_edge.thread, !llvm.loop !478

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.split.us, label %.lr.ph40.split.split.preheader

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.h, 4
  %n.vec46 = and i64 %i.dk, 1152921504606846972   ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec46, 2
  %cmp.n54 = icmp eq i64 %i.h, %n.vec46
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.t, 4
  %n.vec76 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n88 = icmp eq i64 %i.t, %n.vec76
  %min.iters.check58 = icmp ult i64 %i.h, 4
  %n.vec61 = and i64 %i.dn, 1152921504606846972   ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec61, 2
  %cmp.n69 = icmp eq i64 %i.h, %n.vec61
  br label %.lr.ph.i.i.i.us44

.lr.ph.i.i.i.us44:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %.lr.ph40.split.split.us
  %.039.us41 = phi i64 [ %i.p, %.lr.ph40.split.split.us ], [ %i.fi, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 2 uses
  %.01838.us42 = phi ptr [ %1, %.lr.ph40.split.split.us ], [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 5 uses
  %.01937.us43 = phi ptr [ %2, %.lr.ph40.split.split.us ], [ %.120.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 3 uses
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph.i.i.i.us44, %vector.body77
  %index78 = phi i64 [ %index.next85, %vector.body77 ], [ 0, %.lr.ph.i.i.i.us44 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %i.dv, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %vec.phi80 = phi <2 x i64> [ %i.dw, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !10
  %wide.load82 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index78 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %wide.load84 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !10
  %i.dt = mul nsw <2 x i64> %wide.load83, %wide.load81
  %i.du = mul nsw <2 x i64> %wide.load84, %wide.load82
  %i.dv = add <2 x i64> %i.dt, %vec.phi79         ; 2 uses
  %i.dw = add <2 x i64> %i.du, %vec.phi80         ; 2 uses
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.dx, label %middle.block86, label %vector.body77, !llvm.loop !481

middle.block86:                                   ; preds = %vector.body77
  %bin.rdx87 = add <2 x i64> %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx87) ; 2 uses
  br i1 %cmp.n88, label %.loopexit34.us57, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.lr.ph.i.i.i.us44, %middle.block86
  %.011.i.i.i.us45.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %n.vec76, %middle.block86 ]
  %.0910.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %i.dy, %middle.block86 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.011.i.i.i.us45 = phi i64 [ %i.ef, %scalar.ph72 ], [ %.011.i.i.i.us45.ph, %scalar.ph72.preheader ] ; 3 uses
  %.0910.i.i.i.us46 = phi i64 [ %i.ee, %scalar.ph72 ], [ %.0910.i.i.i.us46.ph, %scalar.ph72.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us45
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.us45
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %i.ee = add nsw i64 %i.ed, %.0910.i.i.i.us46    ; 2 uses
  %i.ef = add nuw nsw i64 %.011.i.i.i.us45, 1     ; 2 uses
  %exitcond.not.i.i.i.us47 = icmp eq i64 %i.ef, %i.t
  br i1 %exitcond.not.i.i.i.us47, label %.loopexit34.us57, label %scalar.ph72, !llvm.loop !482

bb.c:                                             ; preds = %.loopexit34.us57
  %i.eg = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 2 ; 3 uses
  store i16 %i.fm, ptr %.01937.us43, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit.us55, label %.lr.ph.us59.preheader

.lr.ph.us59.preheader:                            ; preds = %bb.c
  br i1 %min.iters.check58, label %.lr.ph.us59.preheader91, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.us59.preheader
  %i.eh = getelementptr i8, ptr %.01838.us42, i64 %i.do ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body62 ] ; 3 uses
  %i.ei = shl i64 %index63, 2
  %next.gep64 = getelementptr i8, ptr %.01838.us42, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index63 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !10
  %wide.load66 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !10
  %i.el = trunc <2 x i64> %wide.load65 to <2 x i32>
  %i.em = trunc <2 x i64> %wide.load66 to <2 x i32>
  %i.en = getelementptr i8, ptr %next.gep64, i64 8
  store <2 x i32> %i.el, ptr %next.gep64, align 4, !tbaa !3
  store <2 x i32> %i.em, ptr %i.en, align 4, !tbaa !3
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.eo, label %middle.block68, label %vector.body62, !llvm.loop !483

middle.block68:                                   ; preds = %vector.body62
  br i1 %cmp.n69, label %.loopexit.us55, label %.lr.ph.us59.preheader91

.lr.ph.us59.preheader91:                          ; preds = %.lr.ph.us59.preheader, %middle.block68
  %.01736.us50.ph = phi i64 [ 0, %.lr.ph.us59.preheader ], [ %n.vec61, %middle.block68 ]
  %.135.us51.ph = phi ptr [ %.01838.us42, %.lr.ph.us59.preheader ], [ %i.eh, %middle.block68 ]
  br label %.lr.ph.us59

.lr.ph.us59:                                      ; preds = %.lr.ph.us59.preheader91, %.lr.ph.us59
  %.01736.us50 = phi i64 [ %i.et, %.lr.ph.us59 ], [ %.01736.us50.ph, %.lr.ph.us59.preheader91 ] ; 2 uses
  %.135.us51 = phi ptr [ %i.es, %.lr.ph.us59 ], [ %.135.us51.ph, %.lr.ph.us59.preheader91 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.135.us51, i64 4 ; 2 uses
  store i32 %i.er, ptr %.135.us51, align 4, !tbaa !3
  %i.et = add nuw nsw i64 %.01736.us50, 1         ; 2 uses
  %exitcond95.not = icmp eq i64 %i.et, %i.dn
  br i1 %exitcond95.not, label %.loopexit.us55, label %.lr.ph.us59, !llvm.loop !484

.loopexit.us55:                                   ; preds = %.lr.ph.us59, %middle.block68, %bb.c, %.loopexit34.us57
  %.120.us52 = phi ptr [ %.01937.us43, %.loopexit34.us57 ], [ %i.eg, %bb.c ], [ %i.eg, %middle.block68 ], [ %i.eg, %.lr.ph.us59 ]
  %.2.us53 = phi ptr [ %.01838.us42, %.loopexit34.us57 ], [ %.01838.us42, %bb.c ], [ %i.eh, %middle.block68 ], [ %i.es, %.lr.ph.us59 ]
  %i.eu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ev = add nsw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.ae, align 8, !tbaa !10
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us:                                      ; preds = %.loopexit.us55, %bb.d
  %i.ey = phi i64 [ %i.fg, %bb.d ], [ %i.ev, %.loopexit.us55 ]
  %.03.i.us = phi i64 [ %i.fd, %bb.d ], [ %i.ad, %.loopexit.us55 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i.us
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.fc, align 8, !tbaa !10
  %i.fd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = add nsw i64 %i.ff, 1                    ; 2 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10
  %i.fh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.fh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us55
  %i.fi = add nsw i64 %.039.us41, -1
  %i.fj = icmp sgt i64 %.039.us41, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.us44, label %._crit_edge.thread, !llvm.loop !478

.loopexit34.us57:                                 ; preds = %scalar.ph72, %middle.block86
  %.lcssa = phi i64 [ %i.dy, %middle.block86 ], [ %i.ee, %scalar.ph72 ]
  %i.fk = load ptr, ptr %i.y, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %.lcssa
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !8  ; 2 uses
  %.not.us49 = icmp eq i16 %i.fm, 0
  br i1 %.not.us49, label %.loopexit.us55, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.029.0 to i64
  %i.fo = sub i64 %.sroa.13.0, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.029.0 to i64
  %i.fr = sub i64 %.sroa.13.0, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.gw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.01838 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph40.split.split.preheader ] ; 5 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.y, align 8
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !8  ; 2 uses
  %.not = icmp eq i16 %i.ft, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph40.split.split
  %i.fu = getelementptr inbounds nuw i8, ptr %.01937, i64 2 ; 3 uses
  store i16 %i.ft, ptr %.01937, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %min.iters.check43, label %.lr.ph.preheader96, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.preheader
  %i.fv = getelementptr i8, ptr %.01838, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 2
  %next.gep49 = getelementptr i8, ptr %.01838, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i32>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i32>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 8
  store <2 x i32> %i.fz, ptr %next.gep49, align 4, !tbaa !3
  store <2 x i32> %i.ga, ptr %i.gb, align 4, !tbaa !3
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !485

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01736.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.135.ph = phi ptr [ %.01838, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01736 = phi i64 [ %i.gh, %.lr.ph ], [ %.01736.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.135 = phi ptr [ %i.gg, %.lr.ph ], [ %.135.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.135, i64 4 ; 2 uses
  store i32 %i.gf, ptr %.135, align 4, !tbaa !3
  %i.gh = add nuw nsw i64 %.01736, 1              ; 2 uses
  %exitcond93.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond93.not, label %.loopexit, label %.lr.ph, !llvm.loop !486

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01838, %.lr.ph40.split.split ], [ %.01838, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.039, -1
  %i.gx = icmp sgt i64 %.039, 1
  br i1 %i.gx, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !478

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjjEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 17 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.t, 4
  %n.vec30 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.t, %n.vec30
  %min.iters.check12 = icmp ult i64 %i.h, 4
  %n.vec15 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec15, 2
  %cmp.n23 = icmp eq i64 %i.h, %n.vec15
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.br, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 5 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ar, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load35 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ap = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.as, label %middle.block39, label %vector.body31, !llvm.loop !487

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit35.us.us, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block39
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block39 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph26 ], [ %.011.i.i.i.us.us.ph, %scalar.ph26.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph26 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph26.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph26, !llvm.loop !488

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 4 ; 3 uses
  store i32 %i.bv, ptr %.01938.us.us, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  br i1 %min.iters.check12, label %.lr.ph.us.us.preheader98, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bc = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph13
  %index17 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body16 ] ; 3 uses
  %i.bd = shl i64 %index17, 2
  %next.gep18 = getelementptr i8, ptr %.01839.us.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.be, align 8, !tbaa !10
  %wide.load20 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = trunc <2 x i64> %wide.load19 to <2 x i32>
  %i.bh = trunc <2 x i64> %wide.load20 to <2 x i32>
  %i.bi = getelementptr i8, ptr %next.gep18, i64 8
  store <2 x i32> %i.bg, ptr %next.gep18, align 4, !tbaa !3
  store <2 x i32> %i.bh, ptr %i.bi, align 4, !tbaa !3
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.bj, label %middle.block22, label %vector.body16, !llvm.loop !489

middle.block22:                                   ; preds = %vector.body16
  br i1 %cmp.n23, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader98

.lr.ph.us.us.preheader98:                         ; preds = %.lr.ph.us.us.preheader, %middle.block22
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec15, %middle.block22 ]
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bc, %middle.block22 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader98, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.bo, %.lr.ph.us.us ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %.136.us.us = phi ptr [ %i.bn, %.lr.ph.us.us ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 4 ; 2 uses
  store i32 %i.bm, ptr %.136.us.us, align 4, !tbaa !3
  %i.bo = add nuw nsw i64 %.01737.us.us, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bo, %i.ai
  br i1 %exitcond92.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !490

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us, %middle.block22, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block22 ], [ %i.bb, %.lr.ph.us.us ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bc, %middle.block22 ], [ %i.bn, %.lr.ph.us.us ]
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !10
  %i.br = add nsw i64 %.040.us.us, -1
  %i.bs = icmp sgt i64 %.040.us.us, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !491

.loopexit35.us.us:                                ; preds = %scalar.ph26, %middle.block39
  %.lcssa6 = phi i64 [ %i.at, %middle.block39 ], [ %i.az, %scalar.ph26 ]
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.lcssa6
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3  ; 2 uses
  %.not.us.us = icmp eq i32 %i.bv, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !3  ; 2 uses
  %.not.us.prol = icmp eq i32 %i.by, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.by, ptr %2, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.bz, %.loopexit.us.prol ]
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.ae, align 8, !tbaa !10
  %i.cc = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.cd = icmp eq i64 %i.p, 1
  br i1 %i.cd, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 4 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3  ; 2 uses
  %.not.us.us66 = icmp eq i32 %i.cf, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  store i32 %i.cf, ptr %.01938.us.us65, align 4, !tbaa !3
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.cg = getelementptr i8, ptr %.01839.us.us64, i64 %i.bw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !10
  %wide.load9 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !10
  %i.ck = trunc <2 x i64> %wide.load to <2 x i32>
  %i.cl = trunc <2 x i64> %wide.load9 to <2 x i32>
  %i.cm = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ck, ptr %next.gep, align 4, !tbaa !3
  store <2 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !492

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ]
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.cg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.cs, %scalar.ph ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68 = phi ptr [ %i.cr, %scalar.ph ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.136.us.us68, align 4, !tbaa !3
  %i.cs = add nuw nsw i64 %.01737.us.us67, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !493

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.cg, %middle.block ], [ %i.cr, %scalar.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 4
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.ct, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !10
  %i.cw = add nsw i64 %.040.us.us63, -1
  %i.cx = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.cx, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !491

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.cy = load ptr, ptr %i.y, align 8
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !3  ; 2 uses
  %.not.us = icmp eq i32 %i.cz, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %.01938.us, i64 4
  store i32 %i.cz, ptr %.01938.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.da, %.loopexit.us ] ; 3 uses
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1
  store i64 %i.dc, ptr %i.ae, align 8, !tbaa !10
  %i.dd = load ptr, ptr %i.y, align 8
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !3  ; 2 uses
  %.not.us.1 = icmp eq i32 %i.de, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.df = getelementptr inbounds nuw i8, ptr %.120.us, i64 4
  store i32 %i.de, ptr %.120.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.df, %.loopexit.us.1 ]
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %.040.us, -2
  %i.dj = icmp sgt i64 %.040.us, 2
  br i1 %i.dj, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !491

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.h, 4
  %n.vec46 = and i64 %i.dk, 1152921504606846972   ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec46, 2
  %cmp.n54 = icmp eq i64 %i.h, %n.vec46
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.t, 4
  %n.vec76 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n88 = icmp eq i64 %i.t, %n.vec76
  %min.iters.check58 = icmp ult i64 %i.h, 4
  %n.vec61 = and i64 %i.dn, 1152921504606846972   ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec61, 2
  %cmp.n69 = icmp eq i64 %i.h, %n.vec61
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.fi, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 5 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body77
  %index78 = phi i64 [ %index.next85, %vector.body77 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %i.dv, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi80 = phi <2 x i64> [ %i.dw, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !10
  %wide.load82 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index78 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %wide.load84 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !10
  %i.dt = mul nsw <2 x i64> %wide.load83, %wide.load81
  %i.du = mul nsw <2 x i64> %wide.load84, %wide.load82
  %i.dv = add <2 x i64> %i.dt, %vec.phi79         ; 2 uses
  %i.dw = add <2 x i64> %i.du, %vec.phi80         ; 2 uses
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.dx, label %middle.block86, label %vector.body77, !llvm.loop !494

middle.block86:                                   ; preds = %vector.body77
  %bin.rdx87 = add <2 x i64> %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx87) ; 2 uses
  br i1 %cmp.n88, label %.loopexit35.us58, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block86
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec76, %middle.block86 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.dy, %middle.block86 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.011.i.i.i.us46 = phi i64 [ %i.ef, %scalar.ph72 ], [ %.011.i.i.i.us46.ph, %scalar.ph72.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.ee, %scalar.ph72 ], [ %.0910.i.i.i.us47.ph, %scalar.ph72.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.us46
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %i.ee = add nsw i64 %i.ed, %.0910.i.i.i.us47    ; 2 uses
  %i.ef = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.ef, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph72, !llvm.loop !495

bb.c:                                             ; preds = %.loopexit35.us58
  %i.eg = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 4 ; 3 uses
  store i32 %i.fm, ptr %.01938.us44, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  br i1 %min.iters.check58, label %.lr.ph.us60.preheader91, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.us60.preheader
  %i.eh = getelementptr i8, ptr %.01839.us43, i64 %i.do ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body62 ] ; 3 uses
  %i.ei = shl i64 %index63, 2
  %next.gep64 = getelementptr i8, ptr %.01839.us43, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index63 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !10
  %wide.load66 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !10
  %i.el = trunc <2 x i64> %wide.load65 to <2 x i32>
  %i.em = trunc <2 x i64> %wide.load66 to <2 x i32>
  %i.en = getelementptr i8, ptr %next.gep64, i64 8
  store <2 x i32> %i.el, ptr %next.gep64, align 4, !tbaa !3
  store <2 x i32> %i.em, ptr %i.en, align 4, !tbaa !3
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.eo, label %middle.block68, label %vector.body62, !llvm.loop !496

middle.block68:                                   ; preds = %vector.body62
  br i1 %cmp.n69, label %.loopexit.us56, label %.lr.ph.us60.preheader91

.lr.ph.us60.preheader91:                          ; preds = %.lr.ph.us60.preheader, %middle.block68
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec61, %middle.block68 ]
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.eh, %middle.block68 ]
  br label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.preheader91, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.et, %.lr.ph.us60 ], [ %.01737.us51.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %.136.us52 = phi ptr [ %i.es, %.lr.ph.us60 ], [ %.136.us52.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.136.us52, i64 4 ; 2 uses
  store i32 %i.er, ptr %.136.us52, align 4, !tbaa !3
  %i.et = add nuw nsw i64 %.01737.us51, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.et, %i.dn
  br i1 %exitcond96.not, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !497

.loopexit.us56:                                   ; preds = %.lr.ph.us60, %middle.block68, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.eg, %bb.c ], [ %i.eg, %middle.block68 ], [ %i.eg, %.lr.ph.us60 ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.eh, %middle.block68 ], [ %i.es, %.lr.ph.us60 ]
  %i.eu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ev = add nsw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.ae, align 8, !tbaa !10
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.ey = phi i64 [ %i.fg, %bb.d ], [ %i.ev, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.fd, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.fc, align 8, !tbaa !10
  %i.fd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = add nsw i64 %i.ff, 1                    ; 2 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10
  %i.fh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.fh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.fi = add nsw i64 %.040.us42, -1
  %i.fj = icmp sgt i64 %.040.us42, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !491

.loopexit35.us58:                                 ; preds = %scalar.ph72, %middle.block86
  %.lcssa = phi i64 [ %i.dy, %middle.block86 ], [ %i.ee, %scalar.ph72 ]
  %i.fk = load ptr, ptr %i.y, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %.lcssa
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !3  ; 2 uses
  %.not.us50 = icmp eq i32 %i.fm, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.030.0 to i64
  %i.fo = sub i64 %.sroa.13.0, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.030.0 to i64
  %i.fr = sub i64 %.sroa.13.0, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.gw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 5 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.y, align 8
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.ft, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.fu = getelementptr inbounds nuw i8, ptr %.01938, i64 4 ; 3 uses
  store i32 %i.ft, ptr %.01938, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %min.iters.check43, label %.lr.ph.preheader96, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.preheader
  %i.fv = getelementptr i8, ptr %.01839, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 2
  %next.gep49 = getelementptr i8, ptr %.01839, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i32>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i32>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 8
  store <2 x i32> %i.fz, ptr %next.gep49, align 4, !tbaa !3
  store <2 x i32> %i.ga, ptr %i.gb, align 4, !tbaa !3
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !498

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01737 = phi i64 [ %i.gh, %.lr.ph ], [ %.01737.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.136 = phi ptr [ %i.gg, %.lr.ph ], [ %.136.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.136, i64 4 ; 2 uses
  store i32 %i.gf, ptr %.136, align 4, !tbaa !3
  %i.gh = add nuw nsw i64 %.01737, 1              ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph, !llvm.loop !499

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.040, -1
  %i.gx = icmp sgt i64 %.040, 1
  br i1 %i.gx, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !491

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIjmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 17 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 24 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.t, 4
  %n.vec30 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n40 = icmp eq i64 %i.t, %n.vec30
  %min.iters.check12 = icmp ult i64 %i.h, 4
  %n.vec15 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec15, 2
  %cmp.n23 = icmp eq i64 %i.h, %n.vec15
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.br, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 5 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  br i1 %min.iters.check27, label %scalar.ph26.preheader, label %vector.body31

vector.body31:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body31
  %index32 = phi i64 [ %index.next38, %vector.body31 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi33 = phi <2 x i64> [ %i.ar, %vector.body31 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load34 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load35 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load36 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load37 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ap = mul nsw <2 x i64> %wide.load37, %wide.load35
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi33         ; 2 uses
  %index.next38 = add nuw i64 %index32, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next38, %n.vec30
  br i1 %i.as, label %middle.block39, label %vector.body31, !llvm.loop !500

middle.block39:                                   ; preds = %vector.body31
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n40, label %.loopexit35.us.us, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block39
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec30, %middle.block39 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block39 ]
  br label %scalar.ph26

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph26 ], [ %.011.i.i.i.us.us.ph, %scalar.ph26.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph26 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph26.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph26, !llvm.loop !501

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 8 ; 3 uses
  store i64 %i.bv, ptr %.01938.us.us, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  br i1 %min.iters.check12, label %.lr.ph.us.us.preheader98, label %vector.ph13

vector.ph13:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bc = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph13
  %index17 = phi i64 [ 0, %vector.ph13 ], [ %index.next21, %vector.body16 ] ; 3 uses
  %i.bd = shl i64 %index17, 2
  %next.gep18 = getelementptr i8, ptr %.01839.us.us, i64 %i.bd ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index17 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load19 = load <2 x i64>, ptr %i.be, align 8, !tbaa !10
  %wide.load20 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %i.bg = trunc <2 x i64> %wide.load19 to <2 x i32>
  %i.bh = trunc <2 x i64> %wide.load20 to <2 x i32>
  %i.bi = getelementptr i8, ptr %next.gep18, i64 8
  store <2 x i32> %i.bg, ptr %next.gep18, align 4, !tbaa !3
  store <2 x i32> %i.bh, ptr %i.bi, align 4, !tbaa !3
  %index.next21 = add nuw i64 %index17, 4         ; 2 uses
  %i.bj = icmp eq i64 %index.next21, %n.vec15
  br i1 %i.bj, label %middle.block22, label %vector.body16, !llvm.loop !502

middle.block22:                                   ; preds = %vector.body16
  br i1 %cmp.n23, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader98

.lr.ph.us.us.preheader98:                         ; preds = %.lr.ph.us.us.preheader, %middle.block22
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec15, %middle.block22 ]
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bc, %middle.block22 ]
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader98, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.bo, %.lr.ph.us.us ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %.136.us.us = phi ptr [ %i.bn, %.lr.ph.us.us ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader98 ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 4 ; 2 uses
  store i32 %i.bm, ptr %.136.us.us, align 4, !tbaa !3
  %i.bo = add nuw nsw i64 %.01737.us.us, 1        ; 2 uses
  %exitcond92.not = icmp eq i64 %i.bo, %i.ai
  br i1 %exitcond92.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !503

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us, %middle.block22, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block22 ], [ %i.bb, %.lr.ph.us.us ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bc, %middle.block22 ], [ %i.bn, %.lr.ph.us.us ]
  %i.bp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.bq = add nsw i64 %i.bp, 1
  store i64 %i.bq, ptr %i.ae, align 8, !tbaa !10
  %i.br = add nsw i64 %.040.us.us, -1
  %i.bs = icmp sgt i64 %.040.us.us, 1
  br i1 %i.bs, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !504

.loopexit35.us.us:                                ; preds = %scalar.ph26, %middle.block39
  %.lcssa6 = phi i64 [ %i.at, %middle.block39 ], [ %i.az, %scalar.ph26 ]
  %i.bt = load ptr, ptr %i.y, align 8
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %.lcssa6
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10 ; 2 uses
  %.not.us.us = icmp eq i64 %i.bv, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.bw = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter = and i64 %i.p, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.bx = load ptr, ptr %i.y, align 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !10 ; 2 uses
  %.not.us.prol = icmp eq i64 %i.by, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.by, ptr %2, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.bz, %.loopexit.us.prol ]
  %i.ca = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.ae, align 8, !tbaa !10
  %i.cc = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.cc, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.cd = icmp eq i64 %i.p, 1
  br i1 %i.cd, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.cw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 4 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.ce = load ptr, ptr %i.y, align 8
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %.not.us.us66 = icmp eq i64 %i.cf, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  store i64 %i.cf, ptr %.01938.us.us65, align 8, !tbaa !10
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.cg = getelementptr i8, ptr %.01839.us.us64, i64 %i.bw ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ch = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.ch ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !10
  %wide.load9 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !10
  %i.ck = trunc <2 x i64> %wide.load to <2 x i32>
  %i.cl = trunc <2 x i64> %wide.load9 to <2 x i32>
  %i.cm = getelementptr i8, ptr %next.gep, i64 8
  store <2 x i32> %i.ck, ptr %next.gep, align 4, !tbaa !3
  store <2 x i32> %i.cl, ptr %i.cm, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !505

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ]
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.cg, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.cs, %scalar.ph ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68 = phi ptr [ %i.cr, %scalar.ph ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 4 ; 2 uses
  store i32 %i.cq, ptr %.136.us.us68, align 4, !tbaa !3
  %i.cs = add nuw nsw i64 %.01737.us.us67, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.cs, %i.h
  br i1 %exitcond.not, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !506

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.cg, %middle.block ], [ %i.cr, %scalar.ph ]
  %i.ct = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.ct, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.cu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cv = add nsw i64 %i.cu, 1
  store i64 %i.cv, ptr %i.ae, align 8, !tbaa !10
  %i.cw = add nsw i64 %.040.us.us63, -1
  %i.cx = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.cx, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !504

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.cy = load ptr, ptr %i.y, align 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !10 ; 2 uses
  %.not.us = icmp eq i64 %i.cz, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.da = getelementptr inbounds nuw i8, ptr %.01938.us, i64 8
  store i64 %i.cz, ptr %.01938.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.da, %.loopexit.us ] ; 3 uses
  %i.db = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dc = add nsw i64 %i.db, 1
  store i64 %i.dc, ptr %i.ae, align 8, !tbaa !10
  %i.dd = load ptr, ptr %i.y, align 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !10 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.de, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.df = getelementptr inbounds nuw i8, ptr %.120.us, i64 8
  store i64 %i.de, ptr %.120.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.df, %.loopexit.us.1 ]
  %i.dg = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.dh = add nsw i64 %i.dg, 1
  store i64 %i.dh, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %.040.us, -2
  %i.dj = icmp sgt i64 %.040.us, 2
  br i1 %i.dj, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !504

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.dk = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.h, 4
  %n.vec46 = and i64 %i.dk, 1152921504606846972   ; 4 uses
  %i.dl = shl nuw nsw i64 %n.vec46, 2
  %cmp.n54 = icmp eq i64 %i.h, %n.vec46
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.dm = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.dn = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 2 uses
  %min.iters.check73 = icmp ult i64 %i.t, 4
  %n.vec76 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n88 = icmp eq i64 %i.t, %n.vec76
  %min.iters.check58 = icmp ult i64 %i.h, 4
  %n.vec61 = and i64 %i.dn, 1152921504606846972   ; 4 uses
  %i.do = shl nuw nsw i64 %n.vec61, 2
  %cmp.n69 = icmp eq i64 %i.h, %n.vec61
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.fi, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 5 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  br i1 %min.iters.check73, label %scalar.ph72.preheader, label %vector.body77

vector.body77:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body77
  %index78 = phi i64 [ %index.next85, %vector.body77 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi79 = phi <2 x i64> [ %i.dv, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi80 = phi <2 x i64> [ %i.dw, %vector.body77 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index78 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load81 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !10
  %wide.load82 = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %index78 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load83 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %wide.load84 = load <2 x i64>, ptr %i.ds, align 8, !tbaa !10
  %i.dt = mul nsw <2 x i64> %wide.load83, %wide.load81
  %i.du = mul nsw <2 x i64> %wide.load84, %wide.load82
  %i.dv = add <2 x i64> %i.dt, %vec.phi79         ; 2 uses
  %i.dw = add <2 x i64> %i.du, %vec.phi80         ; 2 uses
  %index.next85 = add nuw i64 %index78, 4         ; 2 uses
  %i.dx = icmp eq i64 %index.next85, %n.vec76
  br i1 %i.dx, label %middle.block86, label %vector.body77, !llvm.loop !507

middle.block86:                                   ; preds = %vector.body77
  %bin.rdx87 = add <2 x i64> %i.dw, %i.dv
  %i.dy = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx87) ; 2 uses
  br i1 %cmp.n88, label %.loopexit35.us58, label %scalar.ph72.preheader

scalar.ph72.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block86
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec76, %middle.block86 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.dy, %middle.block86 ]
  br label %scalar.ph72

scalar.ph72:                                      ; preds = %scalar.ph72.preheader, %scalar.ph72
  %.011.i.i.i.us46 = phi i64 [ %i.ef, %scalar.ph72 ], [ %.011.i.i.i.us46.ph, %scalar.ph72.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.ee, %scalar.ph72 ], [ %.0910.i.i.i.us47.ph, %scalar.ph72.preheader ]
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %.011.i.i.i.us46
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = mul nsw i64 %i.ec, %i.ea
  %i.ee = add nsw i64 %i.ed, %.0910.i.i.i.us47    ; 2 uses
  %i.ef = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.ef, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph72, !llvm.loop !508

bb.c:                                             ; preds = %.loopexit35.us58
  %i.eg = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 8 ; 3 uses
  store i64 %i.fm, ptr %.01938.us44, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  br i1 %min.iters.check58, label %.lr.ph.us60.preheader91, label %vector.ph59

vector.ph59:                                      ; preds = %.lr.ph.us60.preheader
  %i.eh = getelementptr i8, ptr %.01839.us43, i64 %i.do ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph59
  %index63 = phi i64 [ 0, %vector.ph59 ], [ %index.next67, %vector.body62 ] ; 3 uses
  %i.ei = shl i64 %index63, 2
  %next.gep64 = getelementptr i8, ptr %.01839.us43, i64 %i.ei ; 2 uses
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index63 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %wide.load65 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !10
  %wide.load66 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !10
  %i.el = trunc <2 x i64> %wide.load65 to <2 x i32>
  %i.em = trunc <2 x i64> %wide.load66 to <2 x i32>
  %i.en = getelementptr i8, ptr %next.gep64, i64 8
  store <2 x i32> %i.el, ptr %next.gep64, align 4, !tbaa !3
  store <2 x i32> %i.em, ptr %i.en, align 4, !tbaa !3
  %index.next67 = add nuw i64 %index63, 4         ; 2 uses
  %i.eo = icmp eq i64 %index.next67, %n.vec61
  br i1 %i.eo, label %middle.block68, label %vector.body62, !llvm.loop !509

middle.block68:                                   ; preds = %vector.body62
  br i1 %cmp.n69, label %.loopexit.us56, label %.lr.ph.us60.preheader91

.lr.ph.us60.preheader91:                          ; preds = %.lr.ph.us60.preheader, %middle.block68
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec61, %middle.block68 ]
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.eh, %middle.block68 ]
  br label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.preheader91, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.et, %.lr.ph.us60 ], [ %.01737.us51.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %.136.us52 = phi ptr [ %i.es, %.lr.ph.us60 ], [ %.136.us52.ph, %.lr.ph.us60.preheader91 ] ; 2 uses
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !10
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %.136.us52, i64 4 ; 2 uses
  store i32 %i.er, ptr %.136.us52, align 4, !tbaa !3
  %i.et = add nuw nsw i64 %.01737.us51, 1         ; 2 uses
  %exitcond96.not = icmp eq i64 %i.et, %i.dn
  br i1 %exitcond96.not, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !510

.loopexit.us56:                                   ; preds = %.lr.ph.us60, %middle.block68, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.eg, %bb.c ], [ %i.eg, %middle.block68 ], [ %i.eg, %.lr.ph.us60 ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.eh, %middle.block68 ], [ %i.es, %.lr.ph.us60 ]
  %i.eu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ev = add nsw i64 %i.eu, 1                    ; 3 uses
  store i64 %i.ev, ptr %i.ae, align 8, !tbaa !10
  %i.ew = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ex = icmp eq i64 %i.ev, %i.ew
  br i1 %i.ex, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.ey = phi i64 [ %i.fg, %bb.d ], [ %i.ev, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.fd, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = icmp eq i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.fc, align 8, !tbaa !10
  %i.fd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.fd ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !10
  %i.fg = add nsw i64 %i.ff, 1                    ; 2 uses
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !10
  %i.fh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.fh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.fi = add nsw i64 %.040.us42, -1
  %i.fj = icmp sgt i64 %.040.us42, 1
  br i1 %i.fj, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !504

.loopexit35.us58:                                 ; preds = %scalar.ph72, %middle.block86
  %.lcssa = phi i64 [ %i.dy, %middle.block86 ], [ %i.ee, %scalar.ph72 ]
  %i.fk = load ptr, ptr %i.y, align 8
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 %.lcssa
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !10 ; 2 uses
  %.not.us50 = icmp eq i64 %i.fm, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.fn = ptrtoint ptr %.sroa.030.0 to i64
  %i.fo = sub i64 %.sroa.13.0, %i.fn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fo) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.fp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fq = ptrtoint ptr %.sroa.030.0 to i64
  %i.fr = sub i64 %.sroa.13.0, %i.fq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.fr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.gw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 5 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %i.fs = load ptr, ptr %i.y, align 8
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.ft, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.fu = getelementptr inbounds nuw i8, ptr %.01938, i64 8 ; 3 uses
  store i64 %i.ft, ptr %.01938, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  br i1 %min.iters.check43, label %.lr.ph.preheader96, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.preheader
  %i.fv = getelementptr i8, ptr %.01839, i64 %i.dl ; 2 uses
  br label %vector.body47

vector.body47:                                    ; preds = %vector.body47, %vector.ph44
  %index48 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body47 ] ; 3 uses
  %i.fw = shl i64 %index48, 2
  %next.gep49 = getelementptr i8, ptr %.01839, i64 %i.fw ; 2 uses
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index48 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %wide.load50 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !10
  %wide.load51 = load <2 x i64>, ptr %i.fy, align 8, !tbaa !10
  %i.fz = trunc <2 x i64> %wide.load50 to <2 x i32>
  %i.ga = trunc <2 x i64> %wide.load51 to <2 x i32>
  %i.gb = getelementptr i8, ptr %next.gep49, i64 8
  store <2 x i32> %i.fz, ptr %next.gep49, align 4, !tbaa !3
  store <2 x i32> %i.ga, ptr %i.gb, align 4, !tbaa !3
  %index.next52 = add nuw i64 %index48, 4         ; 2 uses
  %i.gc = icmp eq i64 %index.next52, %n.vec46
  br i1 %i.gc, label %middle.block53, label %vector.body47, !llvm.loop !511

middle.block53:                                   ; preds = %vector.body47
  br i1 %cmp.n54, label %.loopexit, label %.lr.ph.preheader96

.lr.ph.preheader96:                               ; preds = %.lr.ph.preheader, %middle.block53
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec46, %middle.block53 ]
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.fv, %middle.block53 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader96, %.lr.ph
  %.01737 = phi i64 [ %i.gh, %.lr.ph ], [ %.01737.ph, %.lr.ph.preheader96 ] ; 2 uses
  %.136 = phi ptr [ %i.gg, %.lr.ph ], [ %.136.ph, %.lr.ph.preheader96 ] ; 2 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !10
  %i.gf = trunc i64 %i.ge to i32
  %i.gg = getelementptr inbounds nuw i8, ptr %.136, i64 4 ; 2 uses
  store i32 %i.gf, ptr %.136, align 4, !tbaa !3
  %i.gh = add nuw nsw i64 %.01737, 1              ; 2 uses
  %exitcond94.not = icmp eq i64 %i.gh, %i.dk
  br i1 %exitcond94.not, label %.loopexit, label %.lr.ph, !llvm.loop !512

.loopexit:                                        ; preds = %.lr.ph, %middle.block53, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.fu, %bb.g ], [ %i.fu, %middle.block53 ], [ %i.fu, %.lr.ph ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.fv, %middle.block53 ], [ %i.gg, %.lr.ph ]
  %i.gi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 3 uses
  store i64 %i.gj, ptr %i.ae, align 8, !tbaa !10
  %i.gk = load i64, ptr %i.af, align 8, !tbaa !10
  %i.gl = icmp eq i64 %i.gj, %i.gk
  br i1 %i.gl, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.gm = phi i64 [ %i.gu, %bb.h ], [ %i.gj, %.loopexit ]
  %.03.i = phi i64 [ %i.gr, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = icmp eq i64 %i.gm, %i.go
  br i1 %i.gp, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.gq, align 8, !tbaa !10
  %i.gr = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.gr ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !10
  %i.gu = add nsw i64 %i.gt, 1                    ; 2 uses
  store i64 %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = icmp sgt i64 %.03.i, 1
  br i1 %i.gv, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.gw = add nsw i64 %.040, -1
  %i.gx = icmp sgt i64 %.040, 1
  br i1 %i.gx, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !504

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.fp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlhEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr = freeze i64 %i.g
  %sext = shl i64 %.fr, 29
  %i.h = ashr i64 %sext, 32                       ; 14 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 38 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 4 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64         ; 3 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 5 uses
  %i.u = icmp sgt i64 %i.t, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br i1 %i.u, label %.lr.ph.i.i.i.us.preheader, label %.lr.ph40.split

.lr.ph.i.i.i.us.preheader:                        ; preds = %.lr.ph40
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check26 = icmp ult i64 %i.t, 4
  %n.vec29 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n39 = icmp eq i64 %i.t, %n.vec29
  %min.iters.check11 = icmp ult i64 %i.h, 4
  %n.vec14 = and i64 %i.x, 1152921504606846972    ; 4 uses
  %i.y = shl nuw nsw i64 %n.vec14, 3
  %cmp.n22 = icmp eq i64 %i.h, %n.vec14
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.039.us = phi i64 [ %i.di, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.p, %.lr.ph.i.i.i.us.preheader ] ; 2 uses
  %.01838.us = phi ptr [ %.2.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %1, %.lr.ph.i.i.i.us.preheader ] ; 6 uses
  %.01937.us = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %2, %.lr.ph.i.i.i.us.preheader ] ; 3 uses
  %.01838.us8 = ptrtoaddr ptr %.01838.us to i64
  %i.z = load ptr, ptr %i.v, align 8, !tbaa !53   ; 2 uses
  br i1 %min.iters.check26, label %scalar.ph25.preheader, label %vector.body30

vector.body30:                                    ; preds = %.lr.ph.i.i.i.us, %vector.body30
  %index31 = phi i64 [ %index.next37, %vector.body30 ], [ 0, %.lr.ph.i.i.i.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.ag, %vector.body30 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %vec.phi32 = phi <2 x i64> [ %i.ah, %vector.body30 ], [ zeroinitializer, %.lr.ph.i.i.i.us ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index31 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load33 = load <2 x i64>, ptr %i.aa, align 8, !tbaa !10
  %wide.load34 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !10
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %index31 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load35 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !10
  %wide.load36 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !10
  %i.ae = mul nsw <2 x i64> %wide.load35, %wide.load33
  %i.af = mul nsw <2 x i64> %wide.load36, %wide.load34
  %i.ag = add <2 x i64> %i.ae, %vec.phi           ; 2 uses
  %i.ah = add <2 x i64> %i.af, %vec.phi32         ; 2 uses
  %index.next37 = add nuw i64 %index31, 4         ; 2 uses
  %i.ai = icmp eq i64 %index.next37, %n.vec29
  br i1 %i.ai, label %middle.block38, label %vector.body30, !llvm.loop !513

middle.block38:                                   ; preds = %vector.body30
  %bin.rdx = add <2 x i64> %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n39, label %.loopexit34.us, label %scalar.ph25.preheader

scalar.ph25.preheader:                            ; preds = %.lr.ph.i.i.i.us, %middle.block38
  %.011.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %n.vec29, %middle.block38 ]
  %.0910.i.i.i.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us ], [ %i.aj, %middle.block38 ]
  br label %scalar.ph25

scalar.ph25:                                      ; preds = %scalar.ph25.preheader, %scalar.ph25
  %.011.i.i.i.us = phi i64 [ %i.aq, %scalar.ph25 ], [ %.011.i.i.i.us.ph, %scalar.ph25.preheader ] ; 3 uses
  %.0910.i.i.i.us = phi i64 [ %i.ap, %scalar.ph25 ], [ %.0910.i.i.i.us.ph, %scalar.ph25.preheader ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.011.i.i.i.us
  %i.an = load i64, ptr %i.am, align 8, !tbaa !10
  %i.ao = mul nsw i64 %i.an, %i.al
  %i.ap = add nsw i64 %i.ao, %.0910.i.i.i.us      ; 2 uses
  %i.aq = add nuw nsw i64 %.011.i.i.i.us, 1       ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.aq, %i.t
  br i1 %exitcond.not.i.i.i.us, label %.loopexit34.us, label %scalar.ph25, !llvm.loop !514

bb.b:                                             ; preds = %.loopexit34.us
  %i.ar = getelementptr inbounds nuw i8, ptr %.01937.us, i64 1 ; 4 uses
  store i8 %i.do, ptr %.01937.us, align 1, !tbaa !7
  br i1 %.not.i.i.i.i, label %.loopexit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.as = sub i64 %i.r, %.01838.us8
  %diff.check9 = icmp ugt i64 %i.as, -32
  %or.cond = select i1 %min.iters.check11, i1 true, i1 %diff.check9
  br i1 %or.cond, label %.lr.ph.us.preheader42, label %vector.ph12

vector.ph12:                                      ; preds = %.lr.ph.us.preheader
  %i.at = getelementptr i8, ptr %.01838.us, i64 %i.y ; 2 uses
  br label %vector.body15

vector.body15:                                    ; preds = %vector.body15, %vector.ph12
  %index16 = phi i64 [ 0, %vector.ph12 ], [ %index.next20, %vector.body15 ] ; 3 uses
  %i.au = shl i64 %index16, 3
  %next.gep17 = getelementptr i8, ptr %.01838.us, i64 %i.au ; 2 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load18 = load <2 x i64>, ptr %i.av, align 8, !tbaa !10
  %wide.load19 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !10
  %i.ax = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x i64> %wide.load18, ptr %next.gep17, align 8, !tbaa !10
  store <2 x i64> %wide.load19, ptr %i.ax, align 8, !tbaa !10
  %index.next20 = add nuw i64 %index16, 4         ; 2 uses
  %i.ay = icmp eq i64 %index.next20, %n.vec14
  br i1 %i.ay, label %middle.block21, label %vector.body15, !llvm.loop !515

middle.block21:                                   ; preds = %vector.body15
  br i1 %cmp.n22, label %.loopexit.us, label %.lr.ph.us.preheader42

.lr.ph.us.preheader42:                            ; preds = %.lr.ph.us.preheader, %middle.block21
  %.01736.us.ph = phi i64 [ 0, %.lr.ph.us.preheader ], [ %n.vec14, %middle.block21 ] ; 4 uses
  %.135.us.ph = phi ptr [ %.01838.us, %.lr.ph.us.preheader ], [ %i.at, %middle.block21 ] ; 2 uses
  %i.az = sub nsw i64 %i.x, %.01736.us.ph
  %xtraiter49 = and i64 %i.az, 7                  ; 2 uses
  %lcmp.mod50.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod50.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader42, %.lr.ph.us.prol
  %.01736.us.prol = phi i64 [ %i.bd, %.lr.ph.us.prol ], [ %.01736.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %.135.us.prol = phi ptr [ %i.bc, %.lr.ph.us.prol ], [ %.135.us.ph, %.lr.ph.us.preheader42 ] ; 2 uses
  %prol.iter51 = phi i64 [ %prol.iter51.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader42 ]
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.prol
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !10
  %i.bc = getelementptr inbounds nuw i8, ptr %.135.us.prol, i64 8 ; 3 uses
  store i64 %i.bb, ptr %.135.us.prol, align 8, !tbaa !10
  %i.bd = add nuw nsw i64 %.01736.us.prol, 1      ; 2 uses
  %prol.iter51.next = add i64 %prol.iter51, 1     ; 2 uses
  %prol.iter51.cmp.not = icmp eq i64 %prol.iter51.next, %xtraiter49
  br i1 %prol.iter51.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !516

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader42
  %.lcssa46.unr = phi ptr [ poison, %.lr.ph.us.preheader42 ], [ %i.bc, %.lr.ph.us.prol ]
  %.01736.us.unr = phi i64 [ %.01736.us.ph, %.lr.ph.us.preheader42 ], [ %i.bd, %.lr.ph.us.prol ]
  %.135.us.unr = phi ptr [ %.135.us.ph, %.lr.ph.us.preheader42 ], [ %i.bc, %.lr.ph.us.prol ]
  %i.be = sub nsw i64 %.01736.us.ph, %i.x
  %i.bf = icmp ugt i64 %i.be, -8
  br i1 %i.bf, label %.loopexit.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.01736.us = phi i64 [ %i.cl, %.lr.ph.us ], [ %.01736.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %.135.us = phi ptr [ %i.ck, %.lr.ph.us ], [ %.135.us.unr, %.lr.ph.us.prol.loopexit ] ; 9 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %.135.us, i64 8
  store i64 %i.bh, ptr %.135.us, align 8, !tbaa !10
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.135.us, i64 16
  store i64 %i.bl, ptr %i.bi, align 8, !tbaa !10
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %.135.us, i64 24
  store i64 %i.bp, ptr %i.bm, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !10
  %i.bu = getelementptr inbounds nuw i8, ptr %.135.us, i64 32
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !10
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %.135.us, i64 40
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %.135.us, i64 48
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !10
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !10
  %i.cg = getelementptr inbounds nuw i8, ptr %.135.us, i64 56
  store i64 %i.cf, ptr %i.cc, align 8, !tbaa !10
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !10
  %i.ck = getelementptr inbounds nuw i8, ptr %.135.us, i64 64 ; 2 uses
  store i64 %i.cj, ptr %i.cg, align 8, !tbaa !10
  %i.cl = add nuw nsw i64 %.01736.us, 8           ; 2 uses
  %exitcond69.not.7 = icmp eq i64 %i.h, %i.cl
  br i1 %exitcond69.not.7, label %.loopexit.us, label %.lr.ph.us, !llvm.loop !517

.loopexit.us:                                     ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %middle.block21, %bb.b, %.loopexit34.us
  %.120.us = phi ptr [ %.01937.us, %.loopexit34.us ], [ %i.ar, %bb.b ], [ %i.ar, %middle.block21 ], [ %i.ar, %.lr.ph.us ], [ %i.ar, %.lr.ph.us.prol.loopexit ]
  %.2.us = phi ptr [ %.01838.us, %.loopexit34.us ], [ %.01838.us, %bb.b ], [ %i.at, %middle.block21 ], [ %.lcssa46.unr, %.lr.ph.us.prol.loopexit ], [ %i.ck, %.lr.ph.us ]
  %.val24.us = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cm = ptrtoint ptr %.val25.us to i64
  %i.cn = ptrtoint ptr %.val24.us to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 3                 ; 2 uses
  %i.cq = add nsw i64 %i.cp, -1                   ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.cq ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !10
  %i.ct = add nsw i64 %i.cs, 1                    ; 3 uses
  store i64 %i.ct, ptr %i.cr, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %i.cq
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !10
  %i.cw = icmp eq i64 %i.ct, %i.cv
  %i.cx = icmp sgt i64 %i.cp, 1
  %or.cond.i.us = and i1 %i.cw, %i.cx
  br i1 %or.cond.i.us, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

.lr.ph.i.us:                                      ; preds = %.loopexit.us, %bb.c
  %i.cy = phi i64 [ %i.dg, %bb.c ], [ %i.ct, %.loopexit.us ]
  %.03.i.us = phi i64 [ %i.dd, %bb.c ], [ %i.cq, %.loopexit.us ] ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.val24.us, i64 %.03.i.us
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !10
  %i.db = icmp eq i64 %i.cy, %i.da
  br i1 %i.db, label %bb.c, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

bb.c:                                             ; preds = %.lr.ph.i.us
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.dc, align 8, !tbaa !10
  %i.dd = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.dd ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10
  %i.dg = add nsw i64 %i.df, 1                    ; 2 uses
  store i64 %i.dg, ptr %i.de, align 8, !tbaa !10
  %i.dh = icmp sgt i64 %.03.i.us, 1
  br i1 %i.dh, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.lr.ph.i.us, %bb.c, %.loopexit.us
  %i.di = add nsw i64 %.039.us, -1
  %i.dj = icmp sgt i64 %.039.us, 1
  br i1 %i.dj, label %.lr.ph.i.i.i.us, label %._crit_edge.thread, !llvm.loop !518

.loopexit34.us:                                   ; preds = %scalar.ph25, %middle.block38
  %.lcssa = phi i64 [ %i.aj, %middle.block38 ], [ %i.ap, %scalar.ph25 ]
  %i.dk = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.lcssa
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !7   ; 2 uses
  %.not.us = icmp eq i8 %i.do, 0
  br i1 %.not.us, label %.loopexit.us, label %bb.b, !prof !54

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.split, label %.lr.ph40.split.split.us.preheader

.lr.ph40.split.split.us.preheader:                ; preds = %.lr.ph40.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dp = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.split.us

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54
  %.039.us41 = phi i64 [ %i.gl, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %i.p, %.lr.ph40.split.split.us.preheader ] ; 2 uses
  %.01838.us42 = phi ptr [ %.2.us48, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %1, %.lr.ph40.split.split.us.preheader ] ; 5 uses
  %.01937.us43 = phi ptr [ %.120.us47, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ], [ %2, %.lr.ph40.split.split.us.preheader ] ; 3 uses
  %i.dq = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !7   ; 2 uses
  %.not.us44 = icmp eq i8 %i.dt, 0
  br i1 %.not.us44, label %..loopexit_crit_edge.us60, label %.lr.ph.us59, !prof !54

.lr.ph.us59:                                      ; preds = %.lr.ph40.split.split.us
  %.01838.us424 = ptrtoaddr ptr %.01838.us42 to i64
  store i8 %i.dt, ptr %.01937.us43, align 1, !tbaa !7
  %i.du = sub i64 %i.r, %.01838.us424
  %diff.check = icmp ugt i64 %i.du, -32
  %or.cond41 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond41, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us59
  %i.dv = getelementptr i8, ptr %.01838.us42, i64 %i.dp ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dw = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01838.us42, i64 %i.dw ; 2 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load = load <2 x i64>, ptr %i.dx, align 8, !tbaa !10
  %wide.load5 = load <2 x i64>, ptr %i.dy, align 8, !tbaa !10
  %i.dz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load5, ptr %i.dz, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ea = icmp eq i64 %index.next, %n.vec
  br i1 %i.ea, label %middle.block, label %vector.body, !llvm.loop !519

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us59, %middle.block
  %.01736.us45.ph = phi i64 [ 0, %.lr.ph.us59 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us46.ph = phi ptr [ %.01838.us42, %.lr.ph.us59 ], [ %i.dv, %middle.block ] ; 2 uses
  %i.eb = sub nsw i64 %i.h, %.01736.us45.ph
  %xtraiter = and i64 %i.eb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us45.prol = phi i64 [ %i.ef, %scalar.ph.prol ], [ %.01736.us45.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us46.prol = phi ptr [ %i.ee, %scalar.ph.prol ], [ %.135.us46.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45.prol
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw i8, ptr %.135.us46.prol, i64 8 ; 3 uses
  store i64 %i.ed, ptr %.135.us46.prol, align 8, !tbaa !10
  %i.ef = add nuw nsw i64 %.01736.us45.prol, 1    ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !520

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa48.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.ee, %scalar.ph.prol ]
  %.01736.us45.unr = phi i64 [ %.01736.us45.ph, %scalar.ph.preheader ], [ %i.ef, %scalar.ph.prol ]
  %.135.us46.unr = phi ptr [ %.135.us46.ph, %scalar.ph.preheader ], [ %i.ee, %scalar.ph.prol ]
  %i.eg = sub nsw i64 %.01736.us45.ph, %i.h
  %i.eh = icmp ugt i64 %i.eg, -8
  br i1 %i.eh, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us45 = phi i64 [ %i.fn, %scalar.ph ], [ %.01736.us45.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us46 = phi ptr [ %i.fm, %scalar.ph ], [ %.135.us46.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !10
  %i.ek = getelementptr inbounds nuw i8, ptr %.135.us46, i64 8
  store i64 %i.ej, ptr %.135.us46, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.en = load i64, ptr %i.em, align 8, !tbaa !10
  %i.eo = getelementptr inbounds nuw i8, ptr %.135.us46, i64 16
  store i64 %i.en, ptr %i.ek, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !10
  %i.es = getelementptr inbounds nuw i8, ptr %.135.us46, i64 24
  store i64 %i.er, ptr %i.eo, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !10
  %i.ew = getelementptr inbounds nuw i8, ptr %.135.us46, i64 32
  store i64 %i.ev, ptr %i.es, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !10
  %i.fa = getelementptr inbounds nuw i8, ptr %.135.us46, i64 40
  store i64 %i.ez, ptr %i.ew, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 40
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !10
  %i.fe = getelementptr inbounds nuw i8, ptr %.135.us46, i64 48
  store i64 %i.fd, ptr %i.fa, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 48
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !10
  %i.fi = getelementptr inbounds nuw i8, ptr %.135.us46, i64 56
  store i64 %i.fh, ptr %i.fe, align 8, !tbaa !10
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us45
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 56
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !10
  %i.fm = getelementptr inbounds nuw i8, ptr %.135.us46, i64 64 ; 2 uses
  store i64 %i.fl, ptr %i.fi, align 8, !tbaa !10
  %i.fn = add nuw nsw i64 %.01736.us45, 8         ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fn, %i.h
  br i1 %exitcond.not.7, label %..loopexit_crit_edge.us60.loopexit, label %scalar.ph, !llvm.loop !521

..loopexit_crit_edge.us60.loopexit:               ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa3 = phi ptr [ %i.dv, %middle.block ], [ %.lcssa48.unr, %scalar.ph.prol.loopexit ], [ %i.fm, %scalar.ph ]
  %i.fo = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 1
  br label %..loopexit_crit_edge.us60

..loopexit_crit_edge.us60:                        ; preds = %..loopexit_crit_edge.us60.loopexit, %.lr.ph40.split.split.us
  %.120.us47 = phi ptr [ %.01937.us43, %.lr.ph40.split.split.us ], [ %i.fo, %..loopexit_crit_edge.us60.loopexit ]
  %.2.us48 = phi ptr [ %.01838.us42, %.lr.ph40.split.split.us ], [ %.lcssa3, %..loopexit_crit_edge.us60.loopexit ]
  %.val24.us49 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25.us50 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.fp = ptrtoint ptr %.val25.us50 to i64
  %i.fq = ptrtoint ptr %.val24.us49 to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 3                 ; 2 uses
  %i.ft = add nsw i64 %i.fs, -1                   ; 3 uses
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ft ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !10
  %i.fw = add nsw i64 %i.fv, 1                    ; 3 uses
  store i64 %i.fw, ptr %i.fu, align 8, !tbaa !10
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %i.ft
  %i.fy = load i64, ptr %i.fx, align 8, !tbaa !10
  %i.fz = icmp eq i64 %i.fw, %i.fy
  %i.ga = icmp sgt i64 %i.fs, 1
  %or.cond.i.us51 = and i1 %i.fz, %i.ga
  br i1 %or.cond.i.us51, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us52:                                    ; preds = %..loopexit_crit_edge.us60, %bb.d
  %i.gb = phi i64 [ %i.gj, %bb.d ], [ %i.fw, %..loopexit_crit_edge.us60 ]
  %.03.i.us53 = phi i64 [ %i.gg, %bb.d ], [ %i.ft, %..loopexit_crit_edge.us60 ] ; 4 uses
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %.val24.us49, i64 %.03.i.us53
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !10
  %i.ge = icmp eq i64 %i.gb, %i.gd
  br i1 %i.ge, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us52
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us53
  store i64 0, ptr %i.gf, align 8, !tbaa !10
  %i.gg = add nsw i64 %.03.i.us53, -1             ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.gg ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !10
  %i.gj = add nsw i64 %i.gi, 1                    ; 2 uses
  store i64 %i.gj, ptr %i.gh, align 8, !tbaa !10
  %i.gk = icmp sgt i64 %.03.i.us53, 1
  br i1 %i.gk, label %.lr.ph.i.us52, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us52, %bb.d, %..loopexit_crit_edge.us60
  %i.gl = add nsw i64 %.039.us41, -1
  %i.gm = icmp sgt i64 %.039.us41, 1
  br i1 %i.gm, label %.lr.ph40.split.split.us, label %._crit_edge.thread, !llvm.loop !518

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, %._crit_edge
  %i.gn = ptrtoint ptr %.sroa.029.0 to i64
  %i.go = sub i64 %.sroa.13.0, %i.gn
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.go) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.gq = ptrtoint ptr %.sroa.029.0 to i64
  %i.gr = sub i64 %.sroa.13.0, %i.gq
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.gr) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ht, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split ] ; 2 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split ] ; 3 uses
  %i.gs = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !7   ; 2 uses
  %.not = icmp eq i8 %i.gv, 0
  br i1 %.not, label %bb.g, label %.loopexit, !prof !54

.loopexit:                                        ; preds = %.lr.ph40.split.split
  %i.gw = getelementptr inbounds nuw i8, ptr %.01937, i64 1
  store i8 %i.gv, ptr %.01937, align 1, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %.loopexit, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.gw, %.loopexit ]
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 3 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.gx = ptrtoint ptr %.val25 to i64
  %i.gy = ptrtoint ptr %.val24 to i64
  %i.gz = sub i64 %i.gx, %i.gy
  %i.ha = ashr exact i64 %i.gz, 3                 ; 2 uses
  %i.hb = add nsw i64 %i.ha, -1                   ; 3 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.hb ; 2 uses
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !10
  %i.he = add nsw i64 %i.hd, 1                    ; 3 uses
  store i64 %i.he, ptr %i.hc, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.hb
  %i.hg = load i64, ptr %i.hf, align 8, !tbaa !10
  %i.hh = icmp eq i64 %i.he, %i.hg
  %i.hi = icmp sgt i64 %i.ha, 1
  %or.cond.i = and i1 %i.hh, %i.hi
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %i.hj = phi i64 [ %i.hr, %bb.h ], [ %i.he, %bb.g ]
  %.03.i = phi i64 [ %i.ho, %bb.h ], [ %i.hb, %bb.g ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !10
  %i.hm = icmp eq i64 %i.hj, %i.hl
  br i1 %i.hm, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.hn, align 8, !tbaa !10
  %i.ho = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ho ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !10
  %i.hr = add nsw i64 %i.hq, 1                    ; 2 uses
  store i64 %i.hr, ptr %i.hp, align 8, !tbaa !10
  %i.hs = icmp sgt i64 %.03.i, 1
  br i1 %i.hs, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %bb.g
  %i.ht = add nsw i64 %.039, -1
  %i.hu = icmp sgt i64 %.039, 1
  br i1 %i.hu, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !518

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.gp
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIltEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr79 = freeze i64 %i.g
  %sext = shl i64 %.fr79, 29
  %i.h = ashr i64 %sext, 32                       ; 22 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc26

.noexc26:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc26, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc26 ] ; 2 uses
  %.sroa.029.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc26 ] ; 56 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc26 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph40, label %._crit_edge

.lr.ph40:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.029.0 to i64         ; 5 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val24 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val25 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val25 to i64
  %i.aa = ptrtoint ptr %.val24 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph40.split, label %.lr.ph40.split.us

.lr.ph40.split.us:                                ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.us.split.us, label %.lr.ph40.split.us.split

.lr.ph40.split.us.split.us:                       ; preds = %.lr.ph40.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check31 = icmp ult i64 %i.t, 4
  %n.vec34 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.t, %n.vec34
  %min.iters.check16 = icmp ult i64 %i.h, 4
  %n.vec19 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec19, 3
  %cmp.n27 = icmp eq i64 %i.h, %n.vec19
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph40.split.us.split.us
  %.039.us.us = phi i64 [ %i.p, %.lr.ph40.split.us.split.us ], [ %i.cy, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01838.us.us = phi ptr [ %1, %.lr.ph40.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 6 uses
  %.01937.us.us = phi ptr [ %2, %.lr.ph40.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  %.01838.us.us13 = ptrtoaddr ptr %.01838.us.us to i64
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.body35

vector.body35:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body35
  %index36 = phi i64 [ %index.next42, %vector.body35 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi37 = phi <2 x i64> [ %i.ar, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load40, %wide.load38
  %i.ap = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi37         ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.as, label %middle.block43, label %vector.body35, !llvm.loop !522

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n44, label %.loopexit34.us.us, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block43
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec34, %middle.block43 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block43 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph30 ], [ %.011.i.i.i.us.us.ph, %scalar.ph30.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph30 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph30.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit34.us.us, label %scalar.ph30, !llvm.loop !523

bb.b:                                             ; preds = %.loopexit34.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01937.us.us, i64 2 ; 4 uses
  store i16 %i.dc, ptr %.01937.us.us, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bc = sub i64 %i.r, %.01838.us.us13
  %diff.check14 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check16, i1 true, i1 %diff.check14
  br i1 %or.cond, label %.lr.ph.us.us.preheader111, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bd = getelementptr i8, ptr %.01838.us.us, i64 %i.aj ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body20 ] ; 3 uses
  %i.be = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %.01838.us.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load23, ptr %next.gep22, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.bh, align 8, !tbaa !10
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.bi, label %middle.block26, label %vector.body20, !llvm.loop !524

middle.block26:                                   ; preds = %vector.body20
  br i1 %cmp.n27, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader111

.lr.ph.us.us.preheader111:                        ; preds = %.lr.ph.us.us.preheader, %middle.block26
  %.01736.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec19, %middle.block26 ] ; 4 uses
  %.135.us.us.ph = phi ptr [ %.01838.us.us, %.lr.ph.us.us.preheader ], [ %i.bd, %middle.block26 ] ; 2 uses
  %i.bj = sub nsw i64 %i.ai, %.01736.us.us.ph
  %xtraiter123 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader111, %.lr.ph.us.us.prol
  %.01736.us.us.prol = phi i64 [ %i.bn, %.lr.ph.us.us.prol ], [ %.01736.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %.135.us.us.prol = phi ptr [ %i.bm, %.lr.ph.us.us.prol ], [ %.135.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader111 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.135.us.us.prol, i64 8 ; 3 uses
  store i64 %i.bl, ptr %.135.us.us.prol, align 8, !tbaa !10
  %i.bn = add nuw nsw i64 %.01736.us.us.prol, 1   ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !525

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader111
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %.01736.us.us.unr = phi i64 [ %.01736.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bn, %.lr.ph.us.us.prol ]
  %.135.us.us.unr = phi ptr [ %.135.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %i.bo = sub nsw i64 %.01736.us.us.ph, %i.ai
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.01736.us.us = phi i64 [ %i.cv, %.lr.ph.us.us ], [ %.01736.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %.135.us.us = phi ptr [ %i.cu, %.lr.ph.us.us ], [ %.135.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 8
  store i64 %i.br, ptr %.135.us.us, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 16
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 24
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 40
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 48
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 56
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.135.us.us, i64 64 ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.01736.us.us, 8        ; 2 uses
  %exitcond91.not.7 = icmp eq i64 %i.h, %i.cv
  br i1 %exitcond91.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !526

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block26, %bb.b, %.loopexit34.us.us
  %.120.us.us = phi ptr [ %.01937.us.us, %.loopexit34.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block26 ], [ %i.bb, %.lr.ph.us.us ], [ %i.bb, %.lr.ph.us.us.prol.loopexit ]
  %.2.us.us = phi ptr [ %.01838.us.us, %.loopexit34.us.us ], [ %.01838.us.us, %bb.b ], [ %i.bd, %middle.block26 ], [ %.lcssa116.unr, %.lr.ph.us.us.prol.loopexit ], [ %i.cu, %.lr.ph.us.us ]
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ae, align 8, !tbaa !10
  %i.cy = add nsw i64 %.039.us.us, -1
  %i.cz = icmp sgt i64 %.039.us.us, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !527

.loopexit34.us.us:                                ; preds = %scalar.ph30, %middle.block43
  %.lcssa6 = phi i64 [ %i.at, %middle.block43 ], [ %i.az, %scalar.ph30 ]
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.lcssa6
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !8  ; 2 uses
  %.not.us.us = icmp eq i16 %i.dc, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph40.split.us.split:                          ; preds = %.lr.ph40.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph40.split.us.split.split.preheader, label %.lr.ph40.split.us.split.split.us.preheader

.lr.ph40.split.us.split.split.us.preheader:       ; preds = %.lr.ph40.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph40.split.us.split.split.us

.lr.ph40.split.us.split.split.preheader:          ; preds = %.lr.ph40.split.us.split
  %xtraiter120 = and i64 %i.p, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph40.split.us.split.split.prol.loopexit, label %.lr.ph40.split.us.split.split.prol

.lr.ph40.split.us.split.split.prol:               ; preds = %.lr.ph40.split.us.split.split.preheader
  %i.de = load ptr, ptr %i.y, align 8
  %i.df = load i16, ptr %i.de, align 2, !tbaa !8  ; 2 uses
  %.not.us.prol = icmp eq i16 %i.df, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph40.split.us.split.split.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 2
  store i16 %i.df, ptr %2, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph40.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph40.split.us.split.split.prol ], [ %i.dg, %.loopexit.us.prol ]
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.ae, align 8, !tbaa !10
  %i.dj = add nsw i64 %i.p, -1
  br label %.lr.ph40.split.us.split.split.prol.loopexit

.lr.ph40.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph40.split.us.split.split.preheader
  %.039.us.unr = phi i64 [ %i.p, %.lr.ph40.split.us.split.split.preheader ], [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01937.us.unr = phi ptr [ %2, %.lr.ph40.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.dk = icmp eq i64 %i.p, 1
  br i1 %i.dk, label %._crit_edge.thread, label %.lr.ph40.split.us.split.split

.lr.ph40.split.us.split.split.us:                 ; preds = %.lr.ph40.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68
  %.039.us.us62 = phi i64 [ %i.fk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %i.p, %.lr.ph40.split.us.split.split.us.preheader ] ; 2 uses
  %.01838.us.us63 = phi ptr [ %.2.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %1, %.lr.ph40.split.us.split.split.us.preheader ] ; 5 uses
  %.01937.us.us64 = phi ptr [ %.120.us.us69, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68 ], [ %2, %.lr.ph40.split.us.split.split.us.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %i.y, align 8
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !8  ; 2 uses
  %.not.us.us65 = icmp eq i16 %i.dm, 0
  br i1 %.not.us.us65, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, label %.lr.ph.us.us73, !prof !54

.lr.ph.us.us73:                                   ; preds = %.lr.ph40.split.us.split.split.us
  %.01838.us.us639 = ptrtoaddr ptr %.01838.us.us63 to i64
  store i16 %i.dm, ptr %.01937.us.us64, align 2, !tbaa !8
  %i.dn = sub i64 %i.r, %.01838.us.us639
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us73
  %i.do = getelementptr i8, ptr %.01838.us.us63, i64 %i.dd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01838.us.us63, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load10, ptr %i.ds, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !528

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us73, %middle.block
  %.01736.us.us66.ph = phi i64 [ 0, %.lr.ph.us.us73 ], [ %n.vec, %middle.block ] ; 4 uses
  %.135.us.us67.ph = phi ptr [ %.01838.us.us63, %.lr.ph.us.us73 ], [ %i.do, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %i.h, %.01736.us.us66.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01736.us.us66.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.01736.us.us66.ph, %scalar.ph.preheader ] ; 2 uses
  %.135.us.us67.prol = phi ptr [ %i.dx, %scalar.ph.prol ], [ %.135.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66.prol
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.135.us.us67.prol, i64 8 ; 3 uses
  store i64 %i.dw, ptr %.135.us.us67.prol, align 8, !tbaa !10
  %i.dy = add nuw nsw i64 %.01736.us.us66.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !529

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %.01736.us.us66.unr = phi i64 [ %.01736.us.us66.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %.135.us.us67.unr = phi ptr [ %.135.us.us67.ph, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.01736.us.us66.ph, %i.h
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01736.us.us66 = phi i64 [ %i.fg, %scalar.ph ], [ %.01736.us.us66.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.135.us.us67 = phi ptr [ %i.ff, %scalar.ph ], [ %.135.us.us67.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 8
  store i64 %i.ec, ptr %.135.us.us67, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 16
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 24
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 32
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 40
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 48
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 56
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us.us66
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.135.us.us67, i64 64 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.fg = add nuw nsw i64 %.01736.us.us66, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fg, %i.h
  br i1 %exitcond.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, label %scalar.ph, !llvm.loop !530

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.do, %middle.block ], [ %.lcssa119.unr, %scalar.ph.prol.loopexit ], [ %i.ff, %scalar.ph ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.01937.us.us64, i64 2
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit, %.lr.ph40.split.us.split.split.us
  %.120.us.us69 = phi ptr [ %.01937.us.us64, %.lr.ph40.split.us.split.split.us ], [ %i.fh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %.2.us.us70 = phi ptr [ %.01838.us.us63, %.lr.ph40.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68.loopexit ]
  %i.fi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ae, align 8, !tbaa !10
  %i.fk = add nsw i64 %.039.us.us62, -1
  %i.fl = icmp sgt i64 %.039.us.us62, 1
  br i1 %i.fl, label %.lr.ph40.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !527

.lr.ph40.split.us.split.split:                    ; preds = %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.039.us = phi i64 [ %i.fw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.039.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01937.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01937.us.unr, %.lr.ph40.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.fm = load ptr, ptr %i.y, align 8
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !8  ; 2 uses
  %.not.us = icmp eq i16 %i.fn, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph40.split.us.split.split
  %i.fo = getelementptr inbounds nuw i8, ptr %.01937.us, i64 2
  store i16 %i.fn, ptr %.01937.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph40.split.us.split.split
  %.120.us = phi ptr [ %.01937.us, %.lr.ph40.split.us.split.split ], [ %i.fo, %.loopexit.us ] ; 3 uses
  %i.fp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fq = add nsw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.ae, align 8, !tbaa !10
  %i.fr = load ptr, ptr %i.y, align 8
  %i.fs = load i16, ptr %i.fr, align 2, !tbaa !8  ; 2 uses
  %.not.us.1 = icmp eq i16 %i.fs, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.ft = getelementptr inbounds nuw i8, ptr %.120.us, i64 2
  store i16 %i.fs, ptr %.120.us, align 2, !tbaa !8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.ft, %.loopexit.us.1 ]
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8, !tbaa !10
  %i.fw = add nsw i64 %.039.us, -2
  %i.fx = icmp sgt i64 %.039.us, 2
  br i1 %i.fx, label %.lr.ph40.split.us.split.split, label %._crit_edge.thread, !llvm.loop !527

.lr.ph40.split:                                   ; preds = %.lr.ph40
  br i1 %i.u, label %.lr.ph40.split.split.us, label %.lr.ph40.split.split.preheader

.lr.ph40.split.split.preheader:                   ; preds = %.lr.ph40.split
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.h, 4
  %n.vec53 = and i64 %i.fy, 1152921504606846972   ; 4 uses
  %i.fz = shl nuw nsw i64 %n.vec53, 3
  %cmp.n61 = icmp eq i64 %i.h, %n.vec53
  br label %.lr.ph40.split.split

.lr.ph40.split.split.us:                          ; preds = %.lr.ph40.split
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.t, 4
  %n.vec86 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.t, %n.vec86
  %min.iters.check68 = icmp ult i64 %i.h, 4
  %n.vec71 = and i64 %i.gb, 1152921504606846972   ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec71, 3
  %cmp.n79 = icmp eq i64 %i.h, %n.vec71
  br label %.lr.ph.i.i.i.us44

.lr.ph.i.i.i.us44:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %.lr.ph40.split.split.us
  %.039.us41 = phi i64 [ %i.p, %.lr.ph40.split.split.us ], [ %i.jd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 2 uses
  %.01838.us42 = phi ptr [ %1, %.lr.ph40.split.split.us ], [ %.2.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 6 uses
  %.01937.us43 = phi ptr [ %2, %.lr.ph40.split.split.us ], [ %.120.us52, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54 ] ; 3 uses
  %.01838.us4265 = ptrtoaddr ptr %.01838.us42 to i64
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.body87

vector.body87:                                    ; preds = %.lr.ph.i.i.i.us44, %vector.body87
  %index88 = phi i64 [ %index.next95, %vector.body87 ], [ 0, %.lr.ph.i.i.i.us44 ] ; 3 uses
  %vec.phi89 = phi <2 x i64> [ %i.gj, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %vec.phi90 = phi <2 x i64> [ %i.gk, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us44 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index88 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load91 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !10
  %wide.load92 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index88 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !10
  %wide.load94 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !10
  %i.gh = mul nsw <2 x i64> %wide.load93, %wide.load91
  %i.gi = mul nsw <2 x i64> %wide.load94, %wide.load92
  %i.gj = add <2 x i64> %i.gh, %vec.phi89         ; 2 uses
  %i.gk = add <2 x i64> %i.gi, %vec.phi90         ; 2 uses
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.gl, label %middle.block96, label %vector.body87, !llvm.loop !531

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx97 = add <2 x i64> %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx97) ; 2 uses
  br i1 %cmp.n98, label %.loopexit34.us57, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.i.i.i.us44, %middle.block96
  %.011.i.i.i.us45.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %n.vec86, %middle.block96 ]
  %.0910.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us44 ], [ %i.gm, %middle.block96 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.011.i.i.i.us45 = phi i64 [ %i.gt, %scalar.ph82 ], [ %.011.i.i.i.us45.ph, %scalar.ph82.preheader ] ; 3 uses
  %.0910.i.i.i.us46 = phi i64 [ %i.gs, %scalar.ph82 ], [ %.0910.i.i.i.us46.ph, %scalar.ph82.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.011.i.i.i.us45
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.011.i.i.i.us45
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = mul nsw i64 %i.gq, %i.go
  %i.gs = add nsw i64 %i.gr, %.0910.i.i.i.us46    ; 2 uses
  %i.gt = add nuw nsw i64 %.011.i.i.i.us45, 1     ; 2 uses
  %exitcond.not.i.i.i.us47 = icmp eq i64 %i.gt, %i.t
  br i1 %exitcond.not.i.i.i.us47, label %.loopexit34.us57, label %scalar.ph82, !llvm.loop !532

bb.c:                                             ; preds = %.loopexit34.us57
  %i.gu = getelementptr inbounds nuw i8, ptr %.01937.us43, i64 2 ; 4 uses
  store i16 %i.jh, ptr %.01937.us43, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit.us55, label %.lr.ph.us59.preheader

.lr.ph.us59.preheader:                            ; preds = %bb.c
  %i.gv = sub i64 %i.r, %.01838.us4265
  %diff.check66 = icmp ugt i64 %i.gv, -32
  %or.cond102 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond102, label %.lr.ph.us59.preheader104, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.us59.preheader
  %i.gw = getelementptr i8, ptr %.01838.us42, i64 %i.gc ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 3 uses
  %i.gx = shl i64 %index73, 3
  %next.gep74 = getelementptr i8, ptr %.01838.us42, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !10
  %wide.load76 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep74, align 8, !tbaa !10
  store <2 x i64> %wide.load76, ptr %i.ha, align 8, !tbaa !10
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.hb, label %middle.block78, label %vector.body72, !llvm.loop !533

middle.block78:                                   ; preds = %vector.body72
  br i1 %cmp.n79, label %.loopexit.us55, label %.lr.ph.us59.preheader104

.lr.ph.us59.preheader104:                         ; preds = %.lr.ph.us59.preheader, %middle.block78
  %.01736.us50.ph = phi i64 [ 0, %.lr.ph.us59.preheader ], [ %n.vec71, %middle.block78 ] ; 4 uses
  %.135.us51.ph = phi ptr [ %.01838.us42, %.lr.ph.us59.preheader ], [ %i.gw, %middle.block78 ] ; 2 uses
  %i.hc = sub nsw i64 %i.gb, %.01736.us50.ph
  %xtraiter129 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.us59.prol.loopexit, label %.lr.ph.us59.prol

.lr.ph.us59.prol:                                 ; preds = %.lr.ph.us59.preheader104, %.lr.ph.us59.prol
  %.01736.us50.prol = phi i64 [ %i.hg, %.lr.ph.us59.prol ], [ %.01736.us50.ph, %.lr.ph.us59.preheader104 ] ; 2 uses
  %.135.us51.prol = phi ptr [ %i.hf, %.lr.ph.us59.prol ], [ %.135.us51.ph, %.lr.ph.us59.preheader104 ] ; 2 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.us59.prol ], [ 0, %.lr.ph.us59.preheader104 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.135.us51.prol, i64 8 ; 3 uses
  store i64 %i.he, ptr %.135.us51.prol, align 8, !tbaa !10
  %i.hg = add nuw nsw i64 %.01736.us50.prol, 1    ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.us59.prol.loopexit, label %.lr.ph.us59.prol, !llvm.loop !534

.lr.ph.us59.prol.loopexit:                        ; preds = %.lr.ph.us59.prol, %.lr.ph.us59.preheader104
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.us59.preheader104 ], [ %i.hf, %.lr.ph.us59.prol ]
  %.01736.us50.unr = phi i64 [ %.01736.us50.ph, %.lr.ph.us59.preheader104 ], [ %i.hg, %.lr.ph.us59.prol ]
  %.135.us51.unr = phi ptr [ %.135.us51.ph, %.lr.ph.us59.preheader104 ], [ %i.hf, %.lr.ph.us59.prol ]
  %i.hh = sub nsw i64 %.01736.us50.ph, %i.gb
  %i.hi = icmp ugt i64 %i.hh, -8
  br i1 %i.hi, label %.loopexit.us55, label %.lr.ph.us59

.lr.ph.us59:                                      ; preds = %.lr.ph.us59.prol.loopexit, %.lr.ph.us59
  %.01736.us50 = phi i64 [ %i.io, %.lr.ph.us59 ], [ %.01736.us50.unr, %.lr.ph.us59.prol.loopexit ] ; 9 uses
  %.135.us51 = phi ptr [ %i.in, %.lr.ph.us59 ], [ %.135.us51.unr, %.lr.ph.us59.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.135.us51, i64 8
  store i64 %i.hk, ptr %.135.us51, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %.135.us51, i64 16
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.135.us51, i64 24
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %.135.us51, i64 32
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.135.us51, i64 40
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.135.us51, i64 48
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.135.us51, i64 56
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.us50
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %.135.us51, i64 64 ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !tbaa !10
  %i.io = add nuw nsw i64 %.01736.us50, 8         ; 2 uses
  %exitcond95.not.7 = icmp eq i64 %i.h, %i.io
  br i1 %exitcond95.not.7, label %.loopexit.us55, label %.lr.ph.us59, !llvm.loop !535

.loopexit.us55:                                   ; preds = %.lr.ph.us59.prol.loopexit, %.lr.ph.us59, %middle.block78, %bb.c, %.loopexit34.us57
  %.120.us52 = phi ptr [ %.01937.us43, %.loopexit34.us57 ], [ %i.gu, %bb.c ], [ %i.gu, %middle.block78 ], [ %i.gu, %.lr.ph.us59 ], [ %i.gu, %.lr.ph.us59.prol.loopexit ]
  %.2.us53 = phi ptr [ %.01838.us42, %.loopexit34.us57 ], [ %.01838.us42, %bb.c ], [ %i.gw, %middle.block78 ], [ %.lcssa108.unr, %.lr.ph.us59.prol.loopexit ], [ %i.in, %.lr.ph.us59 ]
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.iq = add nsw i64 %i.ip, 1                    ; 3 uses
  store i64 %i.iq, ptr %i.ae, align 8, !tbaa !10
  %i.ir = load i64, ptr %i.af, align 8, !tbaa !10
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

.lr.ph.i.us:                                      ; preds = %.loopexit.us55, %bb.d
  %i.it = phi i64 [ %i.jb, %bb.d ], [ %i.iq, %.loopexit.us55 ]
  %.03.i.us = phi i64 [ %i.iy, %bb.d ], [ %i.ad, %.loopexit.us55 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i.us
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i.us
  store i64 0, ptr %i.ix, align 8, !tbaa !10
  %i.iy = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !10
  %i.jb = add nsw i64 %i.ja, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !10
  %i.jc = icmp sgt i64 %.03.i.us, 1
  br i1 %i.jc, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us55
  %i.jd = add nsw i64 %.039.us41, -1
  %i.je = icmp sgt i64 %.039.us41, 1
  br i1 %i.je, label %.lr.ph.i.i.i.us44, label %._crit_edge.thread, !llvm.loop !527

.loopexit34.us57:                                 ; preds = %scalar.ph82, %middle.block96
  %.lcssa = phi i64 [ %i.gm, %middle.block96 ], [ %i.gs, %scalar.ph82 ]
  %i.jf = load ptr, ptr %i.y, align 8
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.lcssa
  %i.jh = load i16, ptr %i.jg, align 2, !tbaa !8  ; 2 uses
  %.not.us49 = icmp eq i16 %i.jh, 0
  br i1 %.not.us49, label %.loopexit.us55, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us68, %.lr.ph40.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us54, %._crit_edge
  %i.ji = ptrtoint ptr %.sroa.029.0 to i64
  %i.jj = sub i64 %.sroa.13.0, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i27 = icmp eq ptr %.sroa.029.0, null
  br i1 %.not.i.i.i27, label %_ZNSt6vectorIlSaIlEED2Ev.exit28, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jl = ptrtoint ptr %.sroa.029.0 to i64
  %i.jm = sub i64 %.sroa.13.0, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.029.0, i64 noundef %i.jm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit28

.lr.ph40.split.split:                             ; preds = %.lr.ph40.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.039 = phi i64 [ %i.ly, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph40.split.split.preheader ] ; 2 uses
  %.01838 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph40.split.split.preheader ] ; 6 uses
  %.01937 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph40.split.split.preheader ] ; 3 uses
  %.0183847 = ptrtoaddr ptr %.01838 to i64
  %i.jn = load ptr, ptr %i.y, align 8
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !8  ; 2 uses
  %.not = icmp eq i16 %i.jo, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph40.split.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.01937, i64 2 ; 4 uses
  store i16 %i.jo, ptr %.01937, align 2, !tbaa !8
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jq = sub i64 %i.r, %.0183847
  %diff.check48 = icmp ugt i64 %i.jq, -32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jr = getelementptr i8, ptr %.01838, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.js = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01838, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %index55 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !10
  %i.jv = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jv, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.jw, label %middle.block60, label %vector.body54, !llvm.loop !536

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01736.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.135.ph = phi ptr [ %.01838, %.lr.ph.preheader ], [ %i.jr, %middle.block60 ] ; 2 uses
  %i.jx = sub nsw i64 %i.fy, %.01736.ph
  %xtraiter126 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01736.prol = phi i64 [ %i.kb, %.lr.ph.prol ], [ %.01736.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.135.prol = phi ptr [ %i.ka, %.lr.ph.prol ], [ %.135.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736.prol
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %.135.prol, i64 8 ; 3 uses
  store i64 %i.jz, ptr %.135.prol, align 8, !tbaa !10
  %i.kb = add nuw nsw i64 %.01736.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !537

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %.01736.unr = phi i64 [ %.01736.ph, %.lr.ph.preheader109 ], [ %i.kb, %.lr.ph.prol ]
  %.135.unr = phi ptr [ %.135.ph, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %i.kc = sub nsw i64 %.01736.ph, %i.fy
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01736 = phi i64 [ %i.lj, %.lr.ph ], [ %.01736.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.135 = phi ptr [ %i.li, %.lr.ph ], [ %.135.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.135, i64 8
  store i64 %i.kf, ptr %.135, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %.135, i64 16
  store i64 %i.kj, ptr %i.kg, align 8, !tbaa !10
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.135, i64 24
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !10
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.135, i64 32
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %.135, i64 40
  store i64 %i.kv, ptr %i.ks, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.135, i64 48
  store i64 %i.kz, ptr %i.kw, align 8, !tbaa !10
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.135, i64 56
  store i64 %i.ld, ptr %i.la, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.01736
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %.135, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !10
  %i.lj = add nuw nsw i64 %.01736, 8              ; 2 uses
  %exitcond93.not.7 = icmp eq i64 %i.h, %i.lj
  br i1 %exitcond93.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !538

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph40.split.split
  %.120 = phi ptr [ %.01937, %.lr.ph40.split.split ], [ %i.jp, %bb.g ], [ %i.jp, %middle.block60 ], [ %i.jp, %.lr.ph ], [ %i.jp, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01838, %.lr.ph40.split.split ], [ %.01838, %bb.g ], [ %i.jr, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.li, %.lr.ph ]
  %i.lk = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ll = add nsw i64 %i.lk, 1                    ; 3 uses
  store i64 %i.ll, ptr %i.ae, align 8, !tbaa !10
  %i.lm = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lo = phi i64 [ %i.lw, %bb.h ], [ %i.ll, %.loopexit ]
  %.03.i = phi i64 [ %i.lt, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val24, i64 %.03.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10
  %i.lr = icmp eq i64 %i.lo, %i.lq
  br i1 %i.lr, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %.03.i
  store i64 0, ptr %i.ls, align 8, !tbaa !10
  %i.lt = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.029.0, i64 %i.lt ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = add nsw i64 %i.lv, 1                    ; 2 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !10
  %i.lx = icmp sgt i64 %.03.i, 1
  br i1 %i.lx, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.ly = add nsw i64 %.039, -1
  %i.lz = icmp sgt i64 %.039, 1
  br i1 %i.lz, label %.lr.ph40.split.split, label %._crit_edge, !llvm.loop !527

_ZNSt6vectorIlSaIlEED2Ev.exit28:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.jk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIljEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 22 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 56 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64         ; 5 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check31 = icmp ult i64 %i.t, 4
  %n.vec34 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.t, %n.vec34
  %min.iters.check16 = icmp ult i64 %i.h, 4
  %n.vec19 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec19, 3
  %cmp.n27 = icmp eq i64 %i.h, %n.vec19
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.cy, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 6 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  %.01839.us.us13 = ptrtoaddr ptr %.01839.us.us to i64
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.body35

vector.body35:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body35
  %index36 = phi i64 [ %index.next42, %vector.body35 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi37 = phi <2 x i64> [ %i.ar, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load40, %wide.load38
  %i.ap = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi37         ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.as, label %middle.block43, label %vector.body35, !llvm.loop !539

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n44, label %.loopexit35.us.us, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block43
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec34, %middle.block43 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block43 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph30 ], [ %.011.i.i.i.us.us.ph, %scalar.ph30.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph30 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph30.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph30, !llvm.loop !540

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 4 ; 4 uses
  store i32 %i.dc, ptr %.01938.us.us, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bc = sub i64 %i.r, %.01839.us.us13
  %diff.check14 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check16, i1 true, i1 %diff.check14
  br i1 %or.cond, label %.lr.ph.us.us.preheader111, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bd = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body20 ] ; 3 uses
  %i.be = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %.01839.us.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load23, ptr %next.gep22, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.bh, align 8, !tbaa !10
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.bi, label %middle.block26, label %vector.body20, !llvm.loop !541

middle.block26:                                   ; preds = %vector.body20
  br i1 %cmp.n27, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader111

.lr.ph.us.us.preheader111:                        ; preds = %.lr.ph.us.us.preheader, %middle.block26
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec19, %middle.block26 ] ; 4 uses
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bd, %middle.block26 ] ; 2 uses
  %i.bj = sub nsw i64 %i.ai, %.01737.us.us.ph
  %xtraiter123 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader111, %.lr.ph.us.us.prol
  %.01737.us.us.prol = phi i64 [ %i.bn, %.lr.ph.us.us.prol ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %.136.us.us.prol = phi ptr [ %i.bm, %.lr.ph.us.us.prol ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader111 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.136.us.us.prol, i64 8 ; 3 uses
  store i64 %i.bl, ptr %.136.us.us.prol, align 8, !tbaa !10
  %i.bn = add nuw nsw i64 %.01737.us.us.prol, 1   ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !542

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader111
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %.01737.us.us.unr = phi i64 [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bn, %.lr.ph.us.us.prol ]
  %.136.us.us.unr = phi ptr [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %i.bo = sub nsw i64 %.01737.us.us.ph, %i.ai
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.cv, %.lr.ph.us.us ], [ %.01737.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %.136.us.us = phi ptr [ %i.cu, %.lr.ph.us.us ], [ %.136.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 8
  store i64 %i.br, ptr %.136.us.us, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 16
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 24
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 40
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 48
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 56
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 64 ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.01737.us.us, 8        ; 2 uses
  %exitcond92.not.7 = icmp eq i64 %i.h, %i.cv
  br i1 %exitcond92.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !543

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block26, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block26 ], [ %i.bb, %.lr.ph.us.us ], [ %i.bb, %.lr.ph.us.us.prol.loopexit ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bd, %middle.block26 ], [ %.lcssa116.unr, %.lr.ph.us.us.prol.loopexit ], [ %i.cu, %.lr.ph.us.us ]
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ae, align 8, !tbaa !10
  %i.cy = add nsw i64 %.040.us.us, -1
  %i.cz = icmp sgt i64 %.040.us.us, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !544

.loopexit35.us.us:                                ; preds = %scalar.ph30, %middle.block43
  %.lcssa6 = phi i64 [ %i.at, %middle.block43 ], [ %i.az, %scalar.ph30 ]
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.lcssa6
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3  ; 2 uses
  %.not.us.us = icmp eq i32 %i.dc, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter120 = and i64 %i.p, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.de = load ptr, ptr %i.y, align 8
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3  ; 2 uses
  %.not.us.prol = icmp eq i32 %i.df, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.df, ptr %2, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.dg, %.loopexit.us.prol ]
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.ae, align 8, !tbaa !10
  %i.dj = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.dk = icmp eq i64 %i.p, 1
  br i1 %i.dk, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.fk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 5 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %i.y, align 8
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !3  ; 2 uses
  %.not.us.us66 = icmp eq i32 %i.dm, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  %.01839.us.us649 = ptrtoaddr ptr %.01839.us.us64 to i64
  store i32 %i.dm, ptr %.01938.us.us65, align 4, !tbaa !3
  %i.dn = sub i64 %i.r, %.01839.us.us649
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.do = getelementptr i8, ptr %.01839.us.us64, i64 %i.dd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load10, ptr %i.ds, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.do, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %i.h, %.01737.us.us67.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us.us67.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68.prol = phi ptr [ %i.dx, %scalar.ph.prol ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67.prol
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.136.us.us68.prol, i64 8 ; 3 uses
  store i64 %i.dw, ptr %.136.us.us68.prol, align 8, !tbaa !10
  %i.dy = add nuw nsw i64 %.01737.us.us67.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !546

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %.01737.us.us67.unr = phi i64 [ %.01737.us.us67.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %.136.us.us68.unr = phi ptr [ %.136.us.us68.ph, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.01737.us.us67.ph, %i.h
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.fg, %scalar.ph ], [ %.01737.us.us67.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us.us68 = phi ptr [ %i.ff, %scalar.ph ], [ %.136.us.us68.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 8
  store i64 %i.ec, ptr %.136.us.us68, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 16
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 24
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 32
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 40
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 48
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 56
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 64 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.fg = add nuw nsw i64 %.01737.us.us67, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fg, %i.h
  br i1 %exitcond.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !547

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.do, %middle.block ], [ %.lcssa119.unr, %scalar.ph.prol.loopexit ], [ %i.ff, %scalar.ph ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 4
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.fh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.fi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ae, align 8, !tbaa !10
  %i.fk = add nsw i64 %.040.us.us63, -1
  %i.fl = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.fl, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !544

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.fw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.fm = load ptr, ptr %i.y, align 8
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !3  ; 2 uses
  %.not.us = icmp eq i32 %i.fn, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.fo = getelementptr inbounds nuw i8, ptr %.01938.us, i64 4
  store i32 %i.fn, ptr %.01938.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.fo, %.loopexit.us ] ; 3 uses
  %i.fp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fq = add nsw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.ae, align 8, !tbaa !10
  %i.fr = load ptr, ptr %i.y, align 8
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3  ; 2 uses
  %.not.us.1 = icmp eq i32 %i.fs, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.ft = getelementptr inbounds nuw i8, ptr %.120.us, i64 4
  store i32 %i.fs, ptr %.120.us, align 4, !tbaa !3
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.ft, %.loopexit.us.1 ]
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8, !tbaa !10
  %i.fw = add nsw i64 %.040.us, -2
  %i.fx = icmp sgt i64 %.040.us, 2
  br i1 %i.fx, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !544

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.h, 4
  %n.vec53 = and i64 %i.fy, 1152921504606846972   ; 4 uses
  %i.fz = shl nuw nsw i64 %n.vec53, 3
  %cmp.n61 = icmp eq i64 %i.h, %n.vec53
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.t, 4
  %n.vec86 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.t, %n.vec86
  %min.iters.check68 = icmp ult i64 %i.h, 4
  %n.vec71 = and i64 %i.gb, 1152921504606846972   ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec71, 3
  %cmp.n79 = icmp eq i64 %i.h, %n.vec71
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.jd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 6 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  %.01839.us4365 = ptrtoaddr ptr %.01839.us43 to i64
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.body87

vector.body87:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body87
  %index88 = phi i64 [ %index.next95, %vector.body87 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi89 = phi <2 x i64> [ %i.gj, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi90 = phi <2 x i64> [ %i.gk, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index88 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load91 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !10
  %wide.load92 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index88 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !10
  %wide.load94 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !10
  %i.gh = mul nsw <2 x i64> %wide.load93, %wide.load91
  %i.gi = mul nsw <2 x i64> %wide.load94, %wide.load92
  %i.gj = add <2 x i64> %i.gh, %vec.phi89         ; 2 uses
  %i.gk = add <2 x i64> %i.gi, %vec.phi90         ; 2 uses
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.gl, label %middle.block96, label %vector.body87, !llvm.loop !548

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx97 = add <2 x i64> %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx97) ; 2 uses
  br i1 %cmp.n98, label %.loopexit35.us58, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block96
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec86, %middle.block96 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.gm, %middle.block96 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.011.i.i.i.us46 = phi i64 [ %i.gt, %scalar.ph82 ], [ %.011.i.i.i.us46.ph, %scalar.ph82.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.gs, %scalar.ph82 ], [ %.0910.i.i.i.us47.ph, %scalar.ph82.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.011.i.i.i.us46
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = mul nsw i64 %i.gq, %i.go
  %i.gs = add nsw i64 %i.gr, %.0910.i.i.i.us47    ; 2 uses
  %i.gt = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.gt, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph82, !llvm.loop !549

bb.c:                                             ; preds = %.loopexit35.us58
  %i.gu = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 4 ; 4 uses
  store i32 %i.jh, ptr %.01938.us44, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  %i.gv = sub i64 %i.r, %.01839.us4365
  %diff.check66 = icmp ugt i64 %i.gv, -32
  %or.cond102 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond102, label %.lr.ph.us60.preheader104, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.us60.preheader
  %i.gw = getelementptr i8, ptr %.01839.us43, i64 %i.gc ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 3 uses
  %i.gx = shl i64 %index73, 3
  %next.gep74 = getelementptr i8, ptr %.01839.us43, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !10
  %wide.load76 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep74, align 8, !tbaa !10
  store <2 x i64> %wide.load76, ptr %i.ha, align 8, !tbaa !10
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.hb, label %middle.block78, label %vector.body72, !llvm.loop !550

middle.block78:                                   ; preds = %vector.body72
  br i1 %cmp.n79, label %.loopexit.us56, label %.lr.ph.us60.preheader104

.lr.ph.us60.preheader104:                         ; preds = %.lr.ph.us60.preheader, %middle.block78
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec71, %middle.block78 ] ; 4 uses
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.gw, %middle.block78 ] ; 2 uses
  %i.hc = sub nsw i64 %i.gb, %.01737.us51.ph
  %xtraiter129 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol

.lr.ph.us60.prol:                                 ; preds = %.lr.ph.us60.preheader104, %.lr.ph.us60.prol
  %.01737.us51.prol = phi i64 [ %i.hg, %.lr.ph.us60.prol ], [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %.136.us52.prol = phi ptr [ %i.hf, %.lr.ph.us60.prol ], [ %.136.us52.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.us60.prol ], [ 0, %.lr.ph.us60.preheader104 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.136.us52.prol, i64 8 ; 3 uses
  store i64 %i.he, ptr %.136.us52.prol, align 8, !tbaa !10
  %i.hg = add nuw nsw i64 %.01737.us51.prol, 1    ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol, !llvm.loop !551

.lr.ph.us60.prol.loopexit:                        ; preds = %.lr.ph.us60.prol, %.lr.ph.us60.preheader104
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %.01737.us51.unr = phi i64 [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ], [ %i.hg, %.lr.ph.us60.prol ]
  %.136.us52.unr = phi ptr [ %.136.us52.ph, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %i.hh = sub nsw i64 %.01737.us51.ph, %i.gb
  %i.hi = icmp ugt i64 %i.hh, -8
  br i1 %i.hi, label %.loopexit.us56, label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.io, %.lr.ph.us60 ], [ %.01737.us51.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %.136.us52 = phi ptr [ %i.in, %.lr.ph.us60 ], [ %.136.us52.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.136.us52, i64 8
  store i64 %i.hk, ptr %.136.us52, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %.136.us52, i64 16
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.136.us52, i64 24
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %.136.us52, i64 32
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.136.us52, i64 40
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.136.us52, i64 48
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.136.us52, i64 56
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %.136.us52, i64 64 ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !tbaa !10
  %i.io = add nuw nsw i64 %.01737.us51, 8         ; 2 uses
  %exitcond96.not.7 = icmp eq i64 %i.h, %i.io
  br i1 %exitcond96.not.7, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !552

.loopexit.us56:                                   ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60, %middle.block78, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.gu, %bb.c ], [ %i.gu, %middle.block78 ], [ %i.gu, %.lr.ph.us60 ], [ %i.gu, %.lr.ph.us60.prol.loopexit ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.gw, %middle.block78 ], [ %.lcssa108.unr, %.lr.ph.us60.prol.loopexit ], [ %i.in, %.lr.ph.us60 ]
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.iq = add nsw i64 %i.ip, 1                    ; 3 uses
  store i64 %i.iq, ptr %i.ae, align 8, !tbaa !10
  %i.ir = load i64, ptr %i.af, align 8, !tbaa !10
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.it = phi i64 [ %i.jb, %bb.d ], [ %i.iq, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.iy, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.ix, align 8, !tbaa !10
  %i.iy = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !10
  %i.jb = add nsw i64 %i.ja, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !10
  %i.jc = icmp sgt i64 %.03.i.us, 1
  br i1 %i.jc, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.jd = add nsw i64 %.040.us42, -1
  %i.je = icmp sgt i64 %.040.us42, 1
  br i1 %i.je, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !544

.loopexit35.us58:                                 ; preds = %scalar.ph82, %middle.block96
  %.lcssa = phi i64 [ %i.gm, %middle.block96 ], [ %i.gs, %scalar.ph82 ]
  %i.jf = load ptr, ptr %i.y, align 8
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.lcssa
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !3  ; 2 uses
  %.not.us50 = icmp eq i32 %i.jh, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.ji = ptrtoint ptr %.sroa.030.0 to i64
  %i.jj = sub i64 %.sroa.13.0, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jl = ptrtoint ptr %.sroa.030.0 to i64
  %i.jm = sub i64 %.sroa.13.0, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ly, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 6 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %.0183947 = ptrtoaddr ptr %.01839 to i64
  %i.jn = load ptr, ptr %i.y, align 8
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !3  ; 2 uses
  %.not = icmp eq i32 %i.jo, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.01938, i64 4 ; 4 uses
  store i32 %i.jo, ptr %.01938, align 4, !tbaa !3
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jq = sub i64 %i.r, %.0183947
  %diff.check48 = icmp ugt i64 %i.jq, -32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jr = getelementptr i8, ptr %.01839, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.js = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01839, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index55 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !10
  %i.jv = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jv, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.jw, label %middle.block60, label %vector.body54, !llvm.loop !553

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.jr, %middle.block60 ] ; 2 uses
  %i.jx = sub nsw i64 %i.fy, %.01737.ph
  %xtraiter126 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01737.prol = phi i64 [ %i.kb, %.lr.ph.prol ], [ %.01737.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.136.prol = phi ptr [ %i.ka, %.lr.ph.prol ], [ %.136.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.prol
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %.136.prol, i64 8 ; 3 uses
  store i64 %i.jz, ptr %.136.prol, align 8, !tbaa !10
  %i.kb = add nuw nsw i64 %.01737.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !554

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %.01737.unr = phi i64 [ %.01737.ph, %.lr.ph.preheader109 ], [ %i.kb, %.lr.ph.prol ]
  %.136.unr = phi ptr [ %.136.ph, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %i.kc = sub nsw i64 %.01737.ph, %i.fy
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01737 = phi i64 [ %i.lj, %.lr.ph ], [ %.01737.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.136 = phi ptr [ %i.li, %.lr.ph ], [ %.136.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.136, i64 8
  store i64 %i.kf, ptr %.136, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %.136, i64 16
  store i64 %i.kj, ptr %i.kg, align 8, !tbaa !10
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.136, i64 24
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !10
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.136, i64 32
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %.136, i64 40
  store i64 %i.kv, ptr %i.ks, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.136, i64 48
  store i64 %i.kz, ptr %i.kw, align 8, !tbaa !10
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.136, i64 56
  store i64 %i.ld, ptr %i.la, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %.136, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !10
  %i.lj = add nuw nsw i64 %.01737, 8              ; 2 uses
  %exitcond94.not.7 = icmp eq i64 %i.h, %i.lj
  br i1 %exitcond94.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !555

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.jp, %bb.g ], [ %i.jp, %middle.block60 ], [ %i.jp, %.lr.ph ], [ %i.jp, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.jr, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.li, %.lr.ph ]
  %i.lk = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ll = add nsw i64 %i.lk, 1                    ; 3 uses
  store i64 %i.ll, ptr %i.ae, align 8, !tbaa !10
  %i.lm = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lo = phi i64 [ %i.lw, %bb.h ], [ %i.ll, %.loopexit ]
  %.03.i = phi i64 [ %i.lt, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10
  %i.lr = icmp eq i64 %i.lo, %i.lq
  br i1 %i.lr, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.ls, align 8, !tbaa !10
  %i.lt = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.lt ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = add nsw i64 %i.lv, 1                    ; 2 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !10
  %i.lx = icmp sgt i64 %.03.i, 1
  br i1 %i.lx, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.ly = add nsw i64 %.040, -1
  %i.lz = icmp sgt i64 %.040, 1
  br i1 %i.lz, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !544

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.jk
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow8internal12_GLOBAL__N_120ConvertStridedTensorIlmEEvRKNS_6TensorEPT_PT0_l(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %.fr80 = freeze i64 %i.g
  %sext = shl i64 %.fr80, 29
  %i.h = ashr i64 %sext, 32                       ; 22 uses
  %i.i = icmp ugt i64 %i.h, 1152921504606846975
  br i1 %i.i, label %.noexc, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i64 %i.h, 0             ; 5 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit, label %.noexc27

.noexc27:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.j = shl nuw nsw i64 %i.h, 3                  ; 3 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #24 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.k, i8 0, i64 %i.j, i1 false), !tbaa !10
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  br label %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit:            ; preds = %.noexc27, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.13.0 = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.n, %.noexc27 ] ; 2 uses
  %.sroa.030.0 = phi ptr [ null, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.k, %.noexc27 ] ; 56 uses
  %.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i ], [ %i.o, %.noexc27 ]
  %i.p = invoke noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %.preheader unwind label %bb.e ; 9 uses

.preheader:                                       ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %.lr.ph41, label %._crit_edge

.lr.ph41:                                         ; preds = %.preheader
  %i.r = ptrtoint ptr %.sroa.030.0 to i64         ; 5 uses
  %i.s = sub i64 %.0.i.i.i.i.i.i.i, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 9 uses
  %i.u = icmp sgt i64 %i.t, 0                     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !82
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 7 uses
  %.val25 = load ptr, ptr %i.a, align 8, !tbaa !53 ; 4 uses
  %.val26 = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.z = ptrtoint ptr %.val26 to i64
  %i.aa = ptrtoint ptr %.val25 to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.fr = freeze i64 %i.ab
  %i.ac = ashr i64 %.fr, 3                        ; 2 uses
  %i.ad = add nsw i64 %i.ac, -1                   ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.ad ; 14 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %i.ad ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph41.split, label %.lr.ph41.split.us

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.us.split.us, label %.lr.ph41.split.us.split

.lr.ph41.split.us.split.us:                       ; preds = %.lr.ph41.split.us
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.ai = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check31 = icmp ult i64 %i.t, 4
  %n.vec34 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n44 = icmp eq i64 %i.t, %n.vec34
  %min.iters.check16 = icmp ult i64 %i.h, 4
  %n.vec19 = and i64 %i.ai, 1152921504606846972   ; 4 uses
  %i.aj = shl nuw nsw i64 %n.vec19, 3
  %cmp.n27 = icmp eq i64 %i.h, %n.vec19
  br label %.lr.ph.i.i.i.us.us

.lr.ph.i.i.i.us.us:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %.lr.ph41.split.us.split.us
  %.040.us.us = phi i64 [ %i.p, %.lr.ph41.split.us.split.us ], [ %i.cy, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 2 uses
  %.01839.us.us = phi ptr [ %1, %.lr.ph41.split.us.split.us ], [ %.2.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 6 uses
  %.01938.us.us = phi ptr [ %2, %.lr.ph41.split.us.split.us ], [ %.120.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us ] ; 3 uses
  %.01839.us.us13 = ptrtoaddr ptr %.01839.us.us to i64
  br i1 %min.iters.check31, label %scalar.ph30.preheader, label %vector.body35

vector.body35:                                    ; preds = %.lr.ph.i.i.i.us.us, %vector.body35
  %index36 = phi i64 [ %index.next42, %vector.body35 ], [ 0, %.lr.ph.i.i.i.us.us ] ; 3 uses
  %vec.phi = phi <2 x i64> [ %i.aq, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %vec.phi37 = phi <2 x i64> [ %i.ar, %vector.body35 ], [ zeroinitializer, %.lr.ph.i.i.i.us.us ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index36 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load38 = load <2 x i64>, ptr %i.ak, align 8, !tbaa !10
  %wide.load39 = load <2 x i64>, ptr %i.al, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %index36 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %wide.load40 = load <2 x i64>, ptr %i.am, align 8, !tbaa !10
  %wide.load41 = load <2 x i64>, ptr %i.an, align 8, !tbaa !10
  %i.ao = mul nsw <2 x i64> %wide.load40, %wide.load38
  %i.ap = mul nsw <2 x i64> %wide.load41, %wide.load39
  %i.aq = add <2 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.ar = add <2 x i64> %i.ap, %vec.phi37         ; 2 uses
  %index.next42 = add nuw i64 %index36, 4         ; 2 uses
  %i.as = icmp eq i64 %index.next42, %n.vec34
  br i1 %i.as, label %middle.block43, label %vector.body35, !llvm.loop !556

middle.block43:                                   ; preds = %vector.body35
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n44, label %.loopexit35.us.us, label %scalar.ph30.preheader

scalar.ph30.preheader:                            ; preds = %.lr.ph.i.i.i.us.us, %middle.block43
  %.011.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %n.vec34, %middle.block43 ]
  %.0910.i.i.i.us.us.ph = phi i64 [ 0, %.lr.ph.i.i.i.us.us ], [ %i.at, %middle.block43 ]
  br label %scalar.ph30

scalar.ph30:                                      ; preds = %scalar.ph30.preheader, %scalar.ph30
  %.011.i.i.i.us.us = phi i64 [ %i.ba, %scalar.ph30 ], [ %.011.i.i.i.us.us.ph, %scalar.ph30.preheader ] ; 3 uses
  %.0910.i.i.i.us.us = phi i64 [ %i.az, %scalar.ph30 ], [ %.0910.i.i.i.us.us.ph, %scalar.ph30.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us.us
  %i.av = load i64, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %.011.i.i.i.us.us
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !10
  %i.ay = mul nsw i64 %i.ax, %i.av
  %i.az = add nsw i64 %i.ay, %.0910.i.i.i.us.us   ; 2 uses
  %i.ba = add nuw nsw i64 %.011.i.i.i.us.us, 1    ; 2 uses
  %exitcond.not.i.i.i.us.us = icmp eq i64 %i.ba, %i.t
  br i1 %exitcond.not.i.i.i.us.us, label %.loopexit35.us.us, label %scalar.ph30, !llvm.loop !557

bb.b:                                             ; preds = %.loopexit35.us.us
  %i.bb = getelementptr inbounds nuw i8, ptr %.01938.us.us, i64 8 ; 4 uses
  store i64 %i.dc, ptr %.01938.us.us, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %bb.b
  %i.bc = sub i64 %i.r, %.01839.us.us13
  %diff.check14 = icmp ugt i64 %i.bc, -32
  %or.cond = select i1 %min.iters.check16, i1 true, i1 %diff.check14
  br i1 %or.cond, label %.lr.ph.us.us.preheader111, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph.us.us.preheader
  %i.bd = getelementptr i8, ptr %.01839.us.us, i64 %i.aj ; 2 uses
  br label %vector.body20

vector.body20:                                    ; preds = %vector.body20, %vector.ph17
  %index21 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body20 ] ; 3 uses
  %i.be = shl i64 %index21, 3
  %next.gep22 = getelementptr i8, ptr %.01839.us.us, i64 %i.be ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index21 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load23 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !10
  %wide.load24 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !10
  %i.bh = getelementptr i8, ptr %next.gep22, i64 16
  store <2 x i64> %wide.load23, ptr %next.gep22, align 8, !tbaa !10
  store <2 x i64> %wide.load24, ptr %i.bh, align 8, !tbaa !10
  %index.next25 = add nuw i64 %index21, 4         ; 2 uses
  %i.bi = icmp eq i64 %index.next25, %n.vec19
  br i1 %i.bi, label %middle.block26, label %vector.body20, !llvm.loop !558

middle.block26:                                   ; preds = %vector.body20
  br i1 %cmp.n27, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us.preheader111

.lr.ph.us.us.preheader111:                        ; preds = %.lr.ph.us.us.preheader, %middle.block26
  %.01737.us.us.ph = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %n.vec19, %middle.block26 ] ; 4 uses
  %.136.us.us.ph = phi ptr [ %.01839.us.us, %.lr.ph.us.us.preheader ], [ %i.bd, %middle.block26 ] ; 2 uses
  %i.bj = sub nsw i64 %i.ai, %.01737.us.us.ph
  %xtraiter123 = and i64 %i.bj, 7                 ; 2 uses
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol

.lr.ph.us.us.prol:                                ; preds = %.lr.ph.us.us.preheader111, %.lr.ph.us.us.prol
  %.01737.us.us.prol = phi i64 [ %i.bn, %.lr.ph.us.us.prol ], [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %.136.us.us.prol = phi ptr [ %i.bm, %.lr.ph.us.us.prol ], [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ] ; 2 uses
  %prol.iter125 = phi i64 [ %prol.iter125.next, %.lr.ph.us.us.prol ], [ 0, %.lr.ph.us.us.preheader111 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us.prol
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !10
  %i.bm = getelementptr inbounds nuw i8, ptr %.136.us.us.prol, i64 8 ; 3 uses
  store i64 %i.bl, ptr %.136.us.us.prol, align 8, !tbaa !10
  %i.bn = add nuw nsw i64 %.01737.us.us.prol, 1   ; 2 uses
  %prol.iter125.next = add i64 %prol.iter125, 1   ; 2 uses
  %prol.iter125.cmp.not = icmp eq i64 %prol.iter125.next, %xtraiter123
  br i1 %prol.iter125.cmp.not, label %.lr.ph.us.us.prol.loopexit, label %.lr.ph.us.us.prol, !llvm.loop !559

.lr.ph.us.us.prol.loopexit:                       ; preds = %.lr.ph.us.us.prol, %.lr.ph.us.us.preheader111
  %.lcssa116.unr = phi ptr [ poison, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %.01737.us.us.unr = phi i64 [ %.01737.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bn, %.lr.ph.us.us.prol ]
  %.136.us.us.unr = phi ptr [ %.136.us.us.ph, %.lr.ph.us.us.preheader111 ], [ %i.bm, %.lr.ph.us.us.prol ]
  %i.bo = sub nsw i64 %.01737.us.us.ph, %i.ai
  %i.bp = icmp ugt i64 %i.bo, -8
  br i1 %i.bp, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us
  %.01737.us.us = phi i64 [ %i.cv, %.lr.ph.us.us ], [ %.01737.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %.136.us.us = phi ptr [ %i.cu, %.lr.ph.us.us ], [ %.136.us.us.unr, %.lr.ph.us.us.prol.loopexit ] ; 9 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 8
  store i64 %i.br, ptr %.136.us.us, align 8, !tbaa !10
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !10
  %i.bw = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 16
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !10
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !10
  %i.ca = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 24
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !10
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !10
  %i.ci = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 40
  store i64 %i.ch, ptr %i.ce, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 48
  store i64 %i.cl, ptr %i.ci, align 8, !tbaa !10
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !10
  %i.cq = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 56
  store i64 %i.cp, ptr %i.cm, align 8, !tbaa !10
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 56
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !10
  %i.cu = getelementptr inbounds nuw i8, ptr %.136.us.us, i64 64 ; 2 uses
  store i64 %i.ct, ptr %i.cq, align 8, !tbaa !10
  %i.cv = add nuw nsw i64 %.01737.us.us, 8        ; 2 uses
  %exitcond92.not.7 = icmp eq i64 %i.h, %i.cv
  br i1 %exitcond92.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %.lr.ph.us.us, !llvm.loop !560

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us: ; preds = %.lr.ph.us.us.prol.loopexit, %.lr.ph.us.us, %middle.block26, %bb.b, %.loopexit35.us.us
  %.120.us.us = phi ptr [ %.01938.us.us, %.loopexit35.us.us ], [ %i.bb, %bb.b ], [ %i.bb, %middle.block26 ], [ %i.bb, %.lr.ph.us.us ], [ %i.bb, %.lr.ph.us.us.prol.loopexit ]
  %.2.us.us = phi ptr [ %.01839.us.us, %.loopexit35.us.us ], [ %.01839.us.us, %bb.b ], [ %i.bd, %middle.block26 ], [ %.lcssa116.unr, %.lr.ph.us.us.prol.loopexit ], [ %i.cu, %.lr.ph.us.us ]
  %i.cw = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.cx = add nsw i64 %i.cw, 1
  store i64 %i.cx, ptr %i.ae, align 8, !tbaa !10
  %i.cy = add nsw i64 %.040.us.us, -1
  %i.cz = icmp sgt i64 %.040.us.us, 1
  br i1 %i.cz, label %.lr.ph.i.i.i.us.us, label %._crit_edge.thread, !llvm.loop !561

.loopexit35.us.us:                                ; preds = %scalar.ph30, %middle.block43
  %.lcssa6 = phi i64 [ %i.at, %middle.block43 ], [ %i.az, %scalar.ph30 ]
  %i.da = load ptr, ptr %i.y, align 8
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %.lcssa6
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !10 ; 2 uses
  %.not.us.us = icmp eq i64 %i.dc, 0
  br i1 %.not.us.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, label %bb.b, !prof !54

.lr.ph41.split.us.split:                          ; preds = %.lr.ph41.split.us
  br i1 %.not.i.i.i.i, label %.lr.ph41.split.us.split.split.preheader, label %.lr.ph41.split.us.split.split.us.preheader

.lr.ph41.split.us.split.split.us.preheader:       ; preds = %.lr.ph41.split.us.split
  %min.iters.check = icmp ult i64 %i.h, 4
  %n.vec = and i64 %i.h, 1152921504606846972      ; 4 uses
  %i.dd = shl nuw nsw i64 %n.vec, 3
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br label %.lr.ph41.split.us.split.split.us

.lr.ph41.split.us.split.split.preheader:          ; preds = %.lr.ph41.split.us.split
  %xtraiter120 = and i64 %i.p, 1
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.lr.ph41.split.us.split.split.prol.loopexit, label %.lr.ph41.split.us.split.split.prol

.lr.ph41.split.us.split.split.prol:               ; preds = %.lr.ph41.split.us.split.split.preheader
  %i.de = load ptr, ptr %i.y, align 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !10 ; 2 uses
  %.not.us.prol = icmp eq i64 %i.df, 0
  br i1 %.not.us.prol, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, label %.loopexit.us.prol, !prof !54

.loopexit.us.prol:                                ; preds = %.lr.ph41.split.us.split.split.prol
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.df, ptr %2, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol: ; preds = %.loopexit.us.prol, %.lr.ph41.split.us.split.split.prol
  %.120.us.prol = phi ptr [ %2, %.lr.ph41.split.us.split.split.prol ], [ %i.dg, %.loopexit.us.prol ]
  %i.dh = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.di = add nsw i64 %i.dh, 1
  store i64 %i.di, ptr %i.ae, align 8, !tbaa !10
  %i.dj = add nsw i64 %i.p, -1
  br label %.lr.ph41.split.us.split.split.prol.loopexit

.lr.ph41.split.us.split.split.prol.loopexit:      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol, %.lr.ph41.split.us.split.split.preheader
  %.040.us.unr = phi i64 [ %i.p, %.lr.ph41.split.us.split.split.preheader ], [ %i.dj, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %.01938.us.unr = phi ptr [ %2, %.lr.ph41.split.us.split.split.preheader ], [ %.120.us.prol, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.prol ]
  %i.dk = icmp eq i64 %i.p, 1
  br i1 %i.dk, label %._crit_edge.thread, label %.lr.ph41.split.us.split.split

.lr.ph41.split.us.split.split.us:                 ; preds = %.lr.ph41.split.us.split.split.us.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69
  %.040.us.us63 = phi i64 [ %i.fk, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %i.p, %.lr.ph41.split.us.split.split.us.preheader ] ; 2 uses
  %.01839.us.us64 = phi ptr [ %.2.us.us71, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %1, %.lr.ph41.split.us.split.split.us.preheader ] ; 5 uses
  %.01938.us.us65 = phi ptr [ %.120.us.us70, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69 ], [ %2, %.lr.ph41.split.us.split.split.us.preheader ] ; 3 uses
  %i.dl = load ptr, ptr %i.y, align 8
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !10 ; 2 uses
  %.not.us.us66 = icmp eq i64 %i.dm, 0
  br i1 %.not.us.us66, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, label %.lr.ph.us.us74, !prof !54

.lr.ph.us.us74:                                   ; preds = %.lr.ph41.split.us.split.split.us
  %.01839.us.us649 = ptrtoaddr ptr %.01839.us.us64 to i64
  store i64 %i.dm, ptr %.01938.us.us65, align 8, !tbaa !10
  %i.dn = sub i64 %i.r, %.01839.us.us649
  %diff.check = icmp ugt i64 %i.dn, -32
  %or.cond101 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond101, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us74
  %i.do = getelementptr i8, ptr %.01839.us.us64, i64 %i.dd ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.01839.us.us64, i64 %i.dp ; 2 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <2 x i64>, ptr %i.dq, align 8, !tbaa !10
  %wide.load10 = load <2 x i64>, ptr %i.dr, align 8, !tbaa !10
  %i.ds = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !10
  store <2 x i64> %wide.load10, ptr %i.ds, align 8, !tbaa !10
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !562

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us74, %middle.block
  %.01737.us.us67.ph = phi i64 [ 0, %.lr.ph.us.us74 ], [ %n.vec, %middle.block ] ; 4 uses
  %.136.us.us68.ph = phi ptr [ %.01839.us.us64, %.lr.ph.us.us74 ], [ %i.do, %middle.block ] ; 2 uses
  %i.du = sub nsw i64 %i.h, %.01737.us.us67.ph
  %xtraiter = and i64 %i.du, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.01737.us.us67.prol = phi i64 [ %i.dy, %scalar.ph.prol ], [ %.01737.us.us67.ph, %scalar.ph.preheader ] ; 2 uses
  %.136.us.us68.prol = phi ptr [ %i.dx, %scalar.ph.prol ], [ %.136.us.us68.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67.prol
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !10
  %i.dx = getelementptr inbounds nuw i8, ptr %.136.us.us68.prol, i64 8 ; 3 uses
  store i64 %i.dw, ptr %.136.us.us68.prol, align 8, !tbaa !10
  %i.dy = add nuw nsw i64 %.01737.us.us67.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !563

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa119.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %.01737.us.us67.unr = phi i64 [ %.01737.us.us67.ph, %scalar.ph.preheader ], [ %i.dy, %scalar.ph.prol ]
  %.136.us.us68.unr = phi ptr [ %.136.us.us68.ph, %scalar.ph.preheader ], [ %i.dx, %scalar.ph.prol ]
  %i.dz = sub nsw i64 %.01737.us.us67.ph, %i.h
  %i.ea = icmp ugt i64 %i.dz, -8
  br i1 %i.ea, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.01737.us.us67 = phi i64 [ %i.fg, %scalar.ph ], [ %.01737.us.us67.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %.136.us.us68 = phi ptr [ %i.ff, %scalar.ph ], [ %.136.us.us68.unr, %scalar.ph.prol.loopexit ] ; 9 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !10
  %i.ed = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 8
  store i64 %i.ec, ptr %.136.us.us68, align 8, !tbaa !10
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 16
  store i64 %i.eg, ptr %i.ed, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !10
  %i.el = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 24
  store i64 %i.ek, ptr %i.eh, align 8, !tbaa !10
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !10
  %i.ep = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 32
  store i64 %i.eo, ptr %i.el, align 8, !tbaa !10
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 32
  %i.es = load i64, ptr %i.er, align 8, !tbaa !10
  %i.et = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 40
  store i64 %i.es, ptr %i.ep, align 8, !tbaa !10
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !10
  %i.ex = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 48
  store i64 %i.ew, ptr %i.et, align 8, !tbaa !10
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 48
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !10
  %i.fb = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 56
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !10
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us.us67
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 56
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !10
  %i.ff = getelementptr inbounds nuw i8, ptr %.136.us.us68, i64 64 ; 2 uses
  store i64 %i.fe, ptr %i.fb, align 8, !tbaa !10
  %i.fg = add nuw nsw i64 %.01737.us.us67, 8      ; 2 uses
  %exitcond.not.7 = icmp eq i64 %i.fg, %i.h
  br i1 %exitcond.not.7, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, label %scalar.ph, !llvm.loop !564

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa8 = phi ptr [ %i.do, %middle.block ], [ %.lcssa119.unr, %scalar.ph.prol.loopexit ], [ %i.ff, %scalar.ph ]
  %i.fh = getelementptr inbounds nuw i8, ptr %.01938.us.us65, i64 8
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69: ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit, %.lr.ph41.split.us.split.split.us
  %.120.us.us70 = phi ptr [ %.01938.us.us65, %.lr.ph41.split.us.split.split.us ], [ %i.fh, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %.2.us.us71 = phi ptr [ %.01839.us.us64, %.lr.ph41.split.us.split.split.us ], [ %.lcssa8, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69.loopexit ]
  %i.fi = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fj = add nsw i64 %i.fi, 1
  store i64 %i.fj, ptr %i.ae, align 8, !tbaa !10
  %i.fk = add nsw i64 %.040.us.us63, -1
  %i.fl = icmp sgt i64 %.040.us.us63, 1
  br i1 %i.fl, label %.lr.ph41.split.us.split.split.us, label %._crit_edge.thread, !llvm.loop !561

.lr.ph41.split.us.split.split:                    ; preds = %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1
  %.040.us = phi i64 [ %i.fw, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.040.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 2 uses
  %.01938.us = phi ptr [ %.120.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1 ], [ %.01938.us.unr, %.lr.ph41.split.us.split.split.prol.loopexit ] ; 3 uses
  %i.fm = load ptr, ptr %i.y, align 8
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !10 ; 2 uses
  %.not.us = icmp eq i64 %i.fn, 0
  br i1 %.not.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us, label %.loopexit.us, !prof !54

.loopexit.us:                                     ; preds = %.lr.ph41.split.us.split.split
  %i.fo = getelementptr inbounds nuw i8, ptr %.01938.us, i64 8
  store i64 %i.fn, ptr %.01938.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us: ; preds = %.loopexit.us, %.lr.ph41.split.us.split.split
  %.120.us = phi ptr [ %.01938.us, %.lr.ph41.split.us.split.split ], [ %i.fo, %.loopexit.us ] ; 3 uses
  %i.fp = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fq = add nsw i64 %i.fp, 1
  store i64 %i.fq, ptr %i.ae, align 8, !tbaa !10
  %i.fr = load ptr, ptr %i.y, align 8
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !10 ; 2 uses
  %.not.us.1 = icmp eq i64 %i.fs, 0
  br i1 %.not.us.1, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, label %.loopexit.us.1, !prof !54

.loopexit.us.1:                                   ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %i.ft = getelementptr inbounds nuw i8, ptr %.120.us, i64 8
  store i64 %i.fs, ptr %.120.us, align 8, !tbaa !10
  br label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1: ; preds = %.loopexit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us
  %.120.us.1 = phi ptr [ %.120.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us ], [ %i.ft, %.loopexit.us.1 ]
  %i.fu = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.fv = add nsw i64 %i.fu, 1
  store i64 %i.fv, ptr %i.ae, align 8, !tbaa !10
  %i.fw = add nsw i64 %.040.us, -2
  %i.fx = icmp sgt i64 %.040.us, 2
  br i1 %i.fx, label %.lr.ph41.split.us.split.split, label %._crit_edge.thread, !llvm.loop !561

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %i.u, label %.lr.ph41.split.split.us, label %.lr.ph41.split.split.preheader

.lr.ph41.split.split.preheader:                   ; preds = %.lr.ph41.split
  %i.fy = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check50 = icmp ult i64 %i.h, 4
  %n.vec53 = and i64 %i.fy, 1152921504606846972   ; 4 uses
  %i.fz = shl nuw nsw i64 %n.vec53, 3
  %cmp.n61 = icmp eq i64 %i.h, %n.vec53
  br label %.lr.ph41.split.split

.lr.ph41.split.split.us:                          ; preds = %.lr.ph41.split
  %i.ga = load ptr, ptr %i.v, align 8, !tbaa !53  ; 2 uses
  %i.gb = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %min.iters.check83 = icmp ult i64 %i.t, 4
  %n.vec86 = and i64 %i.t, 9223372036854775804    ; 3 uses
  %cmp.n98 = icmp eq i64 %i.t, %n.vec86
  %min.iters.check68 = icmp ult i64 %i.h, 4
  %n.vec71 = and i64 %i.gb, 1152921504606846972   ; 4 uses
  %i.gc = shl nuw nsw i64 %n.vec71, 3
  %cmp.n79 = icmp eq i64 %i.h, %n.vec71
  br label %.lr.ph.i.i.i.us45

.lr.ph.i.i.i.us45:                                ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %.lr.ph41.split.split.us
  %.040.us42 = phi i64 [ %i.p, %.lr.ph41.split.split.us ], [ %i.jd, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 2 uses
  %.01839.us43 = phi ptr [ %1, %.lr.ph41.split.split.us ], [ %.2.us54, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 6 uses
  %.01938.us44 = phi ptr [ %2, %.lr.ph41.split.split.us ], [ %.120.us53, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55 ] ; 3 uses
  %.01839.us4365 = ptrtoaddr ptr %.01839.us43 to i64
  br i1 %min.iters.check83, label %scalar.ph82.preheader, label %vector.body87

vector.body87:                                    ; preds = %.lr.ph.i.i.i.us45, %vector.body87
  %index88 = phi i64 [ %index.next95, %vector.body87 ], [ 0, %.lr.ph.i.i.i.us45 ] ; 3 uses
  %vec.phi89 = phi <2 x i64> [ %i.gj, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %vec.phi90 = phi <2 x i64> [ %i.gk, %vector.body87 ], [ zeroinitializer, %.lr.ph.i.i.i.us45 ]
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index88 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load91 = load <2 x i64>, ptr %i.gd, align 8, !tbaa !10
  %wide.load92 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !10
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %index88 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load93 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !10
  %wide.load94 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !10
  %i.gh = mul nsw <2 x i64> %wide.load93, %wide.load91
  %i.gi = mul nsw <2 x i64> %wide.load94, %wide.load92
  %i.gj = add <2 x i64> %i.gh, %vec.phi89         ; 2 uses
  %i.gk = add <2 x i64> %i.gi, %vec.phi90         ; 2 uses
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.gl = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.gl, label %middle.block96, label %vector.body87, !llvm.loop !565

middle.block96:                                   ; preds = %vector.body87
  %bin.rdx97 = add <2 x i64> %i.gk, %i.gj
  %i.gm = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx97) ; 2 uses
  br i1 %cmp.n98, label %.loopexit35.us58, label %scalar.ph82.preheader

scalar.ph82.preheader:                            ; preds = %.lr.ph.i.i.i.us45, %middle.block96
  %.011.i.i.i.us46.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %n.vec86, %middle.block96 ]
  %.0910.i.i.i.us47.ph = phi i64 [ 0, %.lr.ph.i.i.i.us45 ], [ %i.gm, %middle.block96 ]
  br label %scalar.ph82

scalar.ph82:                                      ; preds = %scalar.ph82.preheader, %scalar.ph82
  %.011.i.i.i.us46 = phi i64 [ %i.gt, %scalar.ph82 ], [ %.011.i.i.i.us46.ph, %scalar.ph82.preheader ] ; 3 uses
  %.0910.i.i.i.us47 = phi i64 [ %i.gs, %scalar.ph82 ], [ %.0910.i.i.i.us47.ph, %scalar.ph82.preheader ]
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.011.i.i.i.us46
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !10
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.ga, i64 %.011.i.i.i.us46
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !10
  %i.gr = mul nsw i64 %i.gq, %i.go
  %i.gs = add nsw i64 %i.gr, %.0910.i.i.i.us47    ; 2 uses
  %i.gt = add nuw nsw i64 %.011.i.i.i.us46, 1     ; 2 uses
  %exitcond.not.i.i.i.us48 = icmp eq i64 %i.gt, %i.t
  br i1 %exitcond.not.i.i.i.us48, label %.loopexit35.us58, label %scalar.ph82, !llvm.loop !566

bb.c:                                             ; preds = %.loopexit35.us58
  %i.gu = getelementptr inbounds nuw i8, ptr %.01938.us44, i64 8 ; 4 uses
  store i64 %i.jh, ptr %.01938.us44, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit.us56, label %.lr.ph.us60.preheader

.lr.ph.us60.preheader:                            ; preds = %bb.c
  %i.gv = sub i64 %i.r, %.01839.us4365
  %diff.check66 = icmp ugt i64 %i.gv, -32
  %or.cond102 = select i1 %min.iters.check68, i1 true, i1 %diff.check66
  br i1 %or.cond102, label %.lr.ph.us60.preheader104, label %vector.ph69

vector.ph69:                                      ; preds = %.lr.ph.us60.preheader
  %i.gw = getelementptr i8, ptr %.01839.us43, i64 %i.gc ; 2 uses
  br label %vector.body72

vector.body72:                                    ; preds = %vector.body72, %vector.ph69
  %index73 = phi i64 [ 0, %vector.ph69 ], [ %index.next77, %vector.body72 ] ; 3 uses
  %i.gx = shl i64 %index73, 3
  %next.gep74 = getelementptr i8, ptr %.01839.us43, i64 %i.gx ; 2 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index73 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.gy, align 8, !tbaa !10
  %wide.load76 = load <2 x i64>, ptr %i.gz, align 8, !tbaa !10
  %i.ha = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x i64> %wide.load75, ptr %next.gep74, align 8, !tbaa !10
  store <2 x i64> %wide.load76, ptr %i.ha, align 8, !tbaa !10
  %index.next77 = add nuw i64 %index73, 4         ; 2 uses
  %i.hb = icmp eq i64 %index.next77, %n.vec71
  br i1 %i.hb, label %middle.block78, label %vector.body72, !llvm.loop !567

middle.block78:                                   ; preds = %vector.body72
  br i1 %cmp.n79, label %.loopexit.us56, label %.lr.ph.us60.preheader104

.lr.ph.us60.preheader104:                         ; preds = %.lr.ph.us60.preheader, %middle.block78
  %.01737.us51.ph = phi i64 [ 0, %.lr.ph.us60.preheader ], [ %n.vec71, %middle.block78 ] ; 4 uses
  %.136.us52.ph = phi ptr [ %.01839.us43, %.lr.ph.us60.preheader ], [ %i.gw, %middle.block78 ] ; 2 uses
  %i.hc = sub nsw i64 %i.gb, %.01737.us51.ph
  %xtraiter129 = and i64 %i.hc, 7                 ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br i1 %lcmp.mod130.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol

.lr.ph.us60.prol:                                 ; preds = %.lr.ph.us60.preheader104, %.lr.ph.us60.prol
  %.01737.us51.prol = phi i64 [ %i.hg, %.lr.ph.us60.prol ], [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %.136.us52.prol = phi ptr [ %i.hf, %.lr.ph.us60.prol ], [ %.136.us52.ph, %.lr.ph.us60.preheader104 ] ; 2 uses
  %prol.iter131 = phi i64 [ %prol.iter131.next, %.lr.ph.us60.prol ], [ 0, %.lr.ph.us60.preheader104 ]
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51.prol
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !10
  %i.hf = getelementptr inbounds nuw i8, ptr %.136.us52.prol, i64 8 ; 3 uses
  store i64 %i.he, ptr %.136.us52.prol, align 8, !tbaa !10
  %i.hg = add nuw nsw i64 %.01737.us51.prol, 1    ; 2 uses
  %prol.iter131.next = add i64 %prol.iter131, 1   ; 2 uses
  %prol.iter131.cmp.not = icmp eq i64 %prol.iter131.next, %xtraiter129
  br i1 %prol.iter131.cmp.not, label %.lr.ph.us60.prol.loopexit, label %.lr.ph.us60.prol, !llvm.loop !568

.lr.ph.us60.prol.loopexit:                        ; preds = %.lr.ph.us60.prol, %.lr.ph.us60.preheader104
  %.lcssa108.unr = phi ptr [ poison, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %.01737.us51.unr = phi i64 [ %.01737.us51.ph, %.lr.ph.us60.preheader104 ], [ %i.hg, %.lr.ph.us60.prol ]
  %.136.us52.unr = phi ptr [ %.136.us52.ph, %.lr.ph.us60.preheader104 ], [ %i.hf, %.lr.ph.us60.prol ]
  %i.hh = sub nsw i64 %.01737.us51.ph, %i.gb
  %i.hi = icmp ugt i64 %i.hh, -8
  br i1 %i.hi, label %.loopexit.us56, label %.lr.ph.us60

.lr.ph.us60:                                      ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60
  %.01737.us51 = phi i64 [ %i.io, %.lr.ph.us60 ], [ %.01737.us51.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %.136.us52 = phi ptr [ %i.in, %.lr.ph.us60 ], [ %.136.us52.unr, %.lr.ph.us60.prol.loopexit ] ; 9 uses
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !10
  %i.hl = getelementptr inbounds nuw i8, ptr %.136.us52, i64 8
  store i64 %i.hk, ptr %.136.us52, align 8, !tbaa !10
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %.136.us52, i64 16
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !10
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !10
  %i.ht = getelementptr inbounds nuw i8, ptr %.136.us52, i64 24
  store i64 %i.hs, ptr %i.hp, align 8, !tbaa !10
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = load i64, ptr %i.hv, align 8, !tbaa !10
  %i.hx = getelementptr inbounds nuw i8, ptr %.136.us52, i64 32
  store i64 %i.hw, ptr %i.ht, align 8, !tbaa !10
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !10
  %i.ib = getelementptr inbounds nuw i8, ptr %.136.us52, i64 40
  store i64 %i.ia, ptr %i.hx, align 8, !tbaa !10
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 40
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !10
  %i.if = getelementptr inbounds nuw i8, ptr %.136.us52, i64 48
  store i64 %i.ie, ptr %i.ib, align 8, !tbaa !10
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  %i.ii = load i64, ptr %i.ih, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %.136.us52, i64 56
  store i64 %i.ii, ptr %i.if, align 8, !tbaa !10
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.us51
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 56
  %i.im = load i64, ptr %i.il, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %.136.us52, i64 64 ; 2 uses
  store i64 %i.im, ptr %i.ij, align 8, !tbaa !10
  %i.io = add nuw nsw i64 %.01737.us51, 8         ; 2 uses
  %exitcond96.not.7 = icmp eq i64 %i.h, %i.io
  br i1 %exitcond96.not.7, label %.loopexit.us56, label %.lr.ph.us60, !llvm.loop !569

.loopexit.us56:                                   ; preds = %.lr.ph.us60.prol.loopexit, %.lr.ph.us60, %middle.block78, %bb.c, %.loopexit35.us58
  %.120.us53 = phi ptr [ %.01938.us44, %.loopexit35.us58 ], [ %i.gu, %bb.c ], [ %i.gu, %middle.block78 ], [ %i.gu, %.lr.ph.us60 ], [ %i.gu, %.lr.ph.us60.prol.loopexit ]
  %.2.us54 = phi ptr [ %.01839.us43, %.loopexit35.us58 ], [ %.01839.us43, %bb.c ], [ %i.gw, %middle.block78 ], [ %.lcssa108.unr, %.lr.ph.us60.prol.loopexit ], [ %i.in, %.lr.ph.us60 ]
  %i.ip = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.iq = add nsw i64 %i.ip, 1                    ; 3 uses
  store i64 %i.iq, ptr %i.ae, align 8, !tbaa !10
  %i.ir = load i64, ptr %i.af, align 8, !tbaa !10
  %i.is = icmp eq i64 %i.iq, %i.ir
  br i1 %i.is, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

.lr.ph.i.us:                                      ; preds = %.loopexit.us56, %bb.d
  %i.it = phi i64 [ %i.jb, %bb.d ], [ %i.iq, %.loopexit.us56 ]
  %.03.i.us = phi i64 [ %i.iy, %bb.d ], [ %i.ad, %.loopexit.us56 ] ; 4 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i.us
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !10
  %i.iw = icmp eq i64 %i.it, %i.iv
  br i1 %i.iw, label %bb.d, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55

bb.d:                                             ; preds = %.lr.ph.i.us
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i.us
  store i64 0, ptr %i.ix, align 8, !tbaa !10
  %i.iy = add nsw i64 %.03.i.us, -1               ; 2 uses
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.iy ; 2 uses
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !10
  %i.jb = add nsw i64 %i.ja, 1                    ; 2 uses
  store i64 %i.jb, ptr %i.iz, align 8, !tbaa !10
  %i.jc = icmp sgt i64 %.03.i.us, 1
  br i1 %i.jc, label %.lr.ph.i.us, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55: ; preds = %.lr.ph.i.us, %bb.d, %.loopexit.us56
  %i.jd = add nsw i64 %.040.us42, -1
  %i.je = icmp sgt i64 %.040.us42, 1
  br i1 %i.je, label %.lr.ph.i.i.i.us45, label %._crit_edge.thread, !llvm.loop !561

.loopexit35.us58:                                 ; preds = %scalar.ph82, %middle.block96
  %.lcssa = phi i64 [ %i.gm, %middle.block96 ], [ %i.gs, %scalar.ph82 ]
  %i.jf = load ptr, ptr %i.y, align 8
  %i.jg = getelementptr inbounds i8, ptr %i.jf, i64 %.lcssa
  %i.jh = load i64, ptr %i.jg, align 8, !tbaa !10 ; 2 uses
  %.not.us50 = icmp eq i64 %i.jh, 0
  br i1 %.not.us50, label %.loopexit.us56, label %bb.c, !prof !54

._crit_edge:                                      ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, %.preheader
  %.not.i.i.i = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us69, %.lr.ph41.split.us.split.split.prol.loopexit, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.1, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us.us, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit.us55, %._crit_edge
  %i.ji = ptrtoint ptr %.sroa.030.0 to i64
  %i.jj = sub i64 %.sroa.13.0, %i.ji
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jj) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %._crit_edge, %._crit_edge.thread
  ret void

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKlRKS0_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i28 = icmp eq ptr %.sroa.030.0, null
  br i1 %.not.i.i.i28, label %_ZNSt6vectorIlSaIlEED2Ev.exit29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.jl = ptrtoint ptr %.sroa.030.0 to i64
  %i.jm = sub i64 %.sroa.13.0, %i.jl
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.030.0, i64 noundef %i.jm) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit29

.lr.ph41.split.split:                             ; preds = %.lr.ph41.split.split.preheader, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit
  %.040 = phi i64 [ %i.ly, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %i.p, %.lr.ph41.split.split.preheader ] ; 2 uses
  %.01839 = phi ptr [ %.2, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %1, %.lr.ph41.split.split.preheader ] ; 6 uses
  %.01938 = phi ptr [ %.120, %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit ], [ %2, %.lr.ph41.split.split.preheader ] ; 3 uses
  %.0183947 = ptrtoaddr ptr %.01839 to i64
  %i.jn = load ptr, ptr %i.y, align 8
  %i.jo = load i64, ptr %i.jn, align 8, !tbaa !10 ; 2 uses
  %.not = icmp eq i64 %i.jo, 0
  br i1 %.not, label %.loopexit, label %bb.g, !prof !54

bb.g:                                             ; preds = %.lr.ph41.split.split
  %i.jp = getelementptr inbounds nuw i8, ptr %.01938, i64 8 ; 4 uses
  store i64 %i.jo, ptr %.01938, align 8, !tbaa !10
  br i1 %.not.i.i.i.i, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.jq = sub i64 %i.r, %.0183947
  %diff.check48 = icmp ugt i64 %i.jq, -32
  %or.cond103 = select i1 %min.iters.check50, i1 true, i1 %diff.check48
  br i1 %or.cond103, label %.lr.ph.preheader109, label %vector.ph51

vector.ph51:                                      ; preds = %.lr.ph.preheader
  %i.jr = getelementptr i8, ptr %.01839, i64 %i.fz ; 2 uses
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph51
  %index55 = phi i64 [ 0, %vector.ph51 ], [ %index.next59, %vector.body54 ] ; 3 uses
  %i.js = shl i64 %index55, 3
  %next.gep56 = getelementptr i8, ptr %.01839, i64 %i.js ; 2 uses
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %index55 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load57 = load <2 x i64>, ptr %i.jt, align 8, !tbaa !10
  %wide.load58 = load <2 x i64>, ptr %i.ju, align 8, !tbaa !10
  %i.jv = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep56, align 8, !tbaa !10
  store <2 x i64> %wide.load58, ptr %i.jv, align 8, !tbaa !10
  %index.next59 = add nuw i64 %index55, 4         ; 2 uses
  %i.jw = icmp eq i64 %index.next59, %n.vec53
  br i1 %i.jw, label %middle.block60, label %vector.body54, !llvm.loop !570

middle.block60:                                   ; preds = %vector.body54
  br i1 %cmp.n61, label %.loopexit, label %.lr.ph.preheader109

.lr.ph.preheader109:                              ; preds = %.lr.ph.preheader, %middle.block60
  %.01737.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec53, %middle.block60 ] ; 4 uses
  %.136.ph = phi ptr [ %.01839, %.lr.ph.preheader ], [ %i.jr, %middle.block60 ] ; 2 uses
  %i.jx = sub nsw i64 %i.fy, %.01737.ph
  %xtraiter126 = and i64 %i.jx, 7                 ; 2 uses
  %lcmp.mod127.not = icmp eq i64 %xtraiter126, 0
  br i1 %lcmp.mod127.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader109, %.lr.ph.prol
  %.01737.prol = phi i64 [ %i.kb, %.lr.ph.prol ], [ %.01737.ph, %.lr.ph.preheader109 ] ; 2 uses
  %.136.prol = phi ptr [ %i.ka, %.lr.ph.prol ], [ %.136.ph, %.lr.ph.preheader109 ] ; 2 uses
  %prol.iter128 = phi i64 [ %prol.iter128.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader109 ]
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737.prol
  %i.jz = load i64, ptr %i.jy, align 8, !tbaa !10
  %i.ka = getelementptr inbounds nuw i8, ptr %.136.prol, i64 8 ; 3 uses
  store i64 %i.jz, ptr %.136.prol, align 8, !tbaa !10
  %i.kb = add nuw nsw i64 %.01737.prol, 1         ; 2 uses
  %prol.iter128.next = add i64 %prol.iter128, 1   ; 2 uses
  %prol.iter128.cmp.not = icmp eq i64 %prol.iter128.next, %xtraiter126
  br i1 %prol.iter128.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !571

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader109
  %.lcssa110.unr = phi ptr [ poison, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %.01737.unr = phi i64 [ %.01737.ph, %.lr.ph.preheader109 ], [ %i.kb, %.lr.ph.prol ]
  %.136.unr = phi ptr [ %.136.ph, %.lr.ph.preheader109 ], [ %i.ka, %.lr.ph.prol ]
  %i.kc = sub nsw i64 %.01737.ph, %i.fy
  %i.kd = icmp ugt i64 %i.kc, -8
  br i1 %i.kd, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.01737 = phi i64 [ %i.lj, %.lr.ph ], [ %.01737.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.136 = phi ptr [ %i.li, %.lr.ph ], [ %.136.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !10
  %i.kg = getelementptr inbounds nuw i8, ptr %.136, i64 8
  store i64 %i.kf, ptr %.136, align 8, !tbaa !10
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !10
  %i.kk = getelementptr inbounds nuw i8, ptr %.136, i64 16
  store i64 %i.kj, ptr %i.kg, align 8, !tbaa !10
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16
  %i.kn = load i64, ptr %i.km, align 8, !tbaa !10
  %i.ko = getelementptr inbounds nuw i8, ptr %.136, i64 24
  store i64 %i.kn, ptr %i.kk, align 8, !tbaa !10
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !10
  %i.ks = getelementptr inbounds nuw i8, ptr %.136, i64 32
  store i64 %i.kr, ptr %i.ko, align 8, !tbaa !10
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 32
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !10
  %i.kw = getelementptr inbounds nuw i8, ptr %.136, i64 40
  store i64 %i.kv, ptr %i.ks, align 8, !tbaa !10
  %i.kx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !10
  %i.la = getelementptr inbounds nuw i8, ptr %.136, i64 48
  store i64 %i.kz, ptr %i.kw, align 8, !tbaa !10
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 48
  %i.ld = load i64, ptr %i.lc, align 8, !tbaa !10
  %i.le = getelementptr inbounds nuw i8, ptr %.136, i64 56
  store i64 %i.ld, ptr %i.la, align 8, !tbaa !10
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.01737
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 56
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !10
  %i.li = getelementptr inbounds nuw i8, ptr %.136, i64 64 ; 2 uses
  store i64 %i.lh, ptr %i.le, align 8, !tbaa !10
  %i.lj = add nuw nsw i64 %.01737, 8              ; 2 uses
  %exitcond94.not.7 = icmp eq i64 %i.h, %i.lj
  br i1 %exitcond94.not.7, label %.loopexit, label %.lr.ph, !llvm.loop !572

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block60, %bb.g, %.lr.ph41.split.split
  %.120 = phi ptr [ %.01938, %.lr.ph41.split.split ], [ %i.jp, %bb.g ], [ %i.jp, %middle.block60 ], [ %i.jp, %.lr.ph ], [ %i.jp, %.lr.ph.prol.loopexit ]
  %.2 = phi ptr [ %.01839, %.lr.ph41.split.split ], [ %.01839, %bb.g ], [ %i.jr, %middle.block60 ], [ %.lcssa110.unr, %.lr.ph.prol.loopexit ], [ %i.li, %.lr.ph ]
  %i.lk = load i64, ptr %i.ae, align 8, !tbaa !10
  %i.ll = add nsw i64 %i.lk, 1                    ; 3 uses
  store i64 %i.ll, ptr %i.ae, align 8, !tbaa !10
  %i.lm = load i64, ptr %i.af, align 8, !tbaa !10
  %i.ln = icmp eq i64 %i.ll, %i.lm
  br i1 %i.ln, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

.lr.ph.i:                                         ; preds = %.loopexit, %bb.h
  %i.lo = phi i64 [ %i.lw, %bb.h ], [ %i.ll, %.loopexit ]
  %.03.i = phi i64 [ %i.lt, %bb.h ], [ %i.ad, %.loopexit ] ; 4 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %.val25, i64 %.03.i
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !10
  %i.lr = icmp eq i64 %i.lo, %i.lq
  br i1 %i.lr, label %bb.h, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.ls = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %.03.i
  store i64 0, ptr %i.ls, align 8, !tbaa !10
  %i.lt = add nsw i64 %.03.i, -1                  ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.030.0, i64 %i.lt ; 2 uses
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !10
  %i.lw = add nsw i64 %i.lv, 1                    ; 2 uses
  store i64 %i.lw, ptr %i.lu, align 8, !tbaa !10
  %i.lx = icmp sgt i64 %.03.i, 1
  br i1 %i.lx, label %.lr.ph.i, label %_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit, !llvm.loop !180

_ZN5arrow8internal12_GLOBAL__N_122IncrementRowMajorIndexIlEEvRSt6vectorIT_SaIS4_EERKS3_IlSaIlEE.exit: ; preds = %.lr.ph.i, %bb.h, %.loopexit
  %i.ly = add nsw i64 %.040, -1
  %i.lz = icmp sgt i64 %.040, 1
  br i1 %i.lz, label %.lr.ph41.split.split, label %._crit_edge, !llvm.loop !561

_ZNSt6vectorIlSaIlEED2Ev.exit29:                  ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.jk
}

declare void @_ZN5arrow14SparseCOOIndex4MakeERKSt10shared_ptrINS_6TensorEEb(ptr dead_on_unwind writable sret(%"class.arrow::Result.39") align 8, ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.f = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.g = icmp eq i64 %i.f, 4294967297
  %i.h = trunc i64 %i.f to i32                    ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.e, align 8, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 0, ptr %i.i, align 4, !tbaa !47
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !573
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23, !inline_history !573
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit

bb.e:                                             ; preds = %bb.c
  %i.p = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i = icmp eq i8 %i.p, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add nsw i32 %i.h, -1
  store i32 %i.q, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.h, %bb.f ], [ %i.r, %bb.g ]
  %i.s = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.s, label %bb.h, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, !prof !49

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #23
  br label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.h
  %.pr = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, !prof !104

_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit
  %i.t = phi ptr [ %.pr, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.v = load i8, ptr %i.u, align 1, !tbaa !105, !range !72, !noundef !73
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #23
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit, %_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE7DestroyEv.exit.thread, %bb.i
  ret void
}

declare void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef i64 @_ZNK5arrow6Tensor4sizeEv(ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEElNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SI_T1_(ptr %0, ptr %1, i64 noundef %2, ptr nofree readonly captures(none) %3, ptr nofree readonly captures(none) %4) unnamed_addr #13 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SG_SG_SI_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph115

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEENS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEESG_SG_SG_SI_.exit
  %i.h = icmp eq i64 %i.v, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph115, !llvm.loop !574

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa111 = phi i64 [ %i.d, %.lr.ph ], [ %i.cu, %bb.b ] ; 2 uses
  %storemerge41.lcssa = phi ptr [ %1, %.lr.ph ], [ %.us-phi73.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa111, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !10
  tail call fastcc void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPlSt6vectorIlSaIlEEEEllNS0_5__ops15_Iter_comp_iterIZN5arrow8internal12_GLOBAL__N_124ConvertColumnMajorTensorIhhEEvRKNS9_6TensorEPT_PT0_lEUlllE_EEEvSG_SI_SI_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa111, i64 noundef %i.l, ptr readonly %3, ptr readonly %4)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i10.i, label %bb.c, !llvm.loop !575

.lr.ph.i10.i:                                     ; preds = %bb.c, %.lr.ph.i10.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i10.i ], [ %storemerge41.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !10
  %i.p = load i64, ptr %0, align 8, !tbaa !10
  store i64 %i.p, ptr %i.n, align 8, !tbaa !10
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm:bb.a
  unreachable

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.n = icmp ugt i64 %i.f, %i.l
  br i1 %i.n, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.o = shl nuw i64 %i.l, 1                      ; 2 uses
  %i.p = icmp ult i64 %i.f, %i.o
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 9223372036854775807)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0 = phi i64 [ %spec.store.select.i, %bb.e ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.q = add nuw i64 %.0, 1                       ; 2 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt17__throw_bad_allocv() #27
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.f
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #24 ; 5 uses
  switch i64 %1, label %bb.i [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
    i64 1, label %bb.h
  ]

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.t = load i8, ptr %i.g, align 1, !tbaa !7
  store i8 %i.t, ptr %i.s, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr align 1 %i.g, i64 %1, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %bb.i, %bb.h
  %i.u = icmp ne ptr %3, null
  %i.v = icmp ne i64 %4, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %1 ; 2 uses
  %cond = icmp eq i64 %4, 1
  br i1 %cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = load i8, ptr %3, align 1, !tbaa !7
  store i8 %i.x, ptr %i.w, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

bb.l:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr nonnull align 1 %3, i64 %4, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit
  %.not25 = icmp eq i64 %i.b, %i.c
  br i1 %.not25, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %4 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 %1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %2 ; 2 uses
  %cond31 = icmp eq i64 %i.d, 1
  br i1 %cond31, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !7
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !7
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

bb.o:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.z, ptr align 1 %i.ab, i64 %i.d, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27: ; preds = %bb.o, %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit26
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ad = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.ad)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit27
  %i.ae = load i64, ptr %i.h, align 8, !tbaa !7
  %i.af = add i64 %i.ae, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.af) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28
  store ptr %i.s, ptr %0, align 8, !tbaa !163
  store i64 %.0, ptr %i.h, align 8, !tbaa !7
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteISB_EERKSt6vectorIlSaIlEERSH_RKSF_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISQ_EEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %6 = alloca %"class.std::shared_ptr.0", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow6TensorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(112) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.a unwind label %.body

bb.a:                                             ; preds = %.noexc
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !45
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !47
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !701
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23, !inline_history !701
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %bb.h, !prof !49

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #23
  br label %bb.h

.body:                                            ; preds = %.noexc
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void
}

declare void @_ZN5arrow6TensorC1ERKSt10shared_ptrINS_8DataTypeEERKS1_INS_6BufferEERKSt6vectorIlSaIlEESE_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISK_EE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #20

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nounwind }
attributes #24 = { builtin allocsize(0) }
attributes #25 = { builtin nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { noreturn }
attributes #28 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = !{!9, !9, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 _ZTSN5arrow6TensorE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTSSt10shared_ptrIN5arrow8DataTypeEE", !14, i64 0}
!17 = !{!18, !27, i64 48}
!18 = !{!"_ZTSN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterE", !19, i64 0, !24, i64 16, !13, i64 32, !16, i64 40, !27, i64 48}
!19 = !{!"_ZTSSt10shared_ptrIN5arrow14SparseCOOIndexEE", !20, i64 0}
!20 = !{!"_ZTSSt12__shared_ptrIN5arrow14SparseCOOIndexELN9__gnu_cxx12_Lock_policyE2EE", !21, i64 0, !22, i64 8}
!21 = !{!"p1 _ZTSN5arrow14SparseCOOIndexE", !14, i64 0}
!22 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !23, i64 0}
!23 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !14, i64 0}
!24 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !25, i64 0}
!25 = !{!"_ZTSSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EE", !26, i64 0, !22, i64 8}
!26 = !{!"p1 _ZTSN5arrow6BufferE", !14, i64 0}
!27 = !{!"p1 _ZTSN5arrow10MemoryPoolE", !14, i64 0}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverter7ConvertEv: argument 0"}
!30 = distinct !{!30, !"_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverter7ConvertEv"}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSN5arrow6StatusE", !33, i64 0}
!33 = !{!"p1 _ZTSN5arrow6Status5StateE", !14, i64 0}
!34 = !{!35, !36, i64 0}
!35 = !{!"_ZTSSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !36, i64 0, !22, i64 8}
!36 = !{!"p1 _ZTSN5arrow8DataTypeE", !14, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"vtable pointer", !6, i64 0}
!39 = distinct !{null}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!42 = distinct !{!42, !"_ZNK5arrow6Tensor4typeEv"}
!43 = !{!22, !23, i64 0}
!44 = !{!41, !29}
!45 = !{!46, !4, i64 8}
!46 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!47 = !{!46, !4, i64 12}
!48 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!49 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!50 = !{!51, !52, i64 8}
!51 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !52, i64 0, !52, i64 8, !52, i64 16}
!52 = !{!"p1 long", !14, i64 0}
!53 = !{!51, !52, i64 0}
!54 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!57 = distinct !{!57, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!60 = distinct !{!60, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!61 = !{!26, !26, i64 0}
!62 = !{!59, !56, !29}
!63 = !{!59, !56}
!64 = !{!65, !66, i64 9}
!65 = !{!"_ZTSN5arrow6BufferE", !66, i64 8, !66, i64 9, !67, i64 16, !11, i64 24, !11, i64 32, !68, i64 40, !24, i64 48, !69, i64 64}
!66 = !{!"bool", !5, i64 0}
!67 = !{!"p1 omnipotent char", !14, i64 0}
!68 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!69 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !70, i64 0}
!70 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !71, i64 0, !22, i64 8}
!71 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !14, i64 0}
!72 = !{i8 0, i8 2}
!73 = !{}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!76 = distinct !{!76, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!79 = distinct !{!79, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!80 = !{!78, !75, !29}
!81 = !{!78, !75}
!82 = !{!25, !26, i64 0}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.mustprogress"}
!85 = distinct !{!85, !84}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!51, !52, i64 16}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS8_EERKSt6vectorIlSaIlEERSE_EES2_IT_EDpOT0_: argument 0"}
!91 = distinct !{!91, !"_ZSt11make_sharedIN5arrow6TensorEJRKSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS8_EERKSt6vectorIlSaIlEERSE_EES2_IT_EDpOT0_"}
!92 = !{!14, !14, i64 0}
!93 = !{!94, !96, !29}
!94 = distinct !{!94, !95, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE15MoveValueUnsafeEv: argument 0"}
!95 = distinct !{!95, !"_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE15MoveValueUnsafeEv"}
!96 = distinct !{!96, !97, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE11ValueUnsafeEv: argument 0"}
!97 = distinct !{!97, !"_ZNO5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEE11ValueUnsafeEv"}
!98 = distinct !{null, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!99 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!100 = !{!101, !29}
!101 = distinct !{!101, !102, !"_ZN5arrow6Status2OKEv: argument 0"}
!102 = distinct !{!102, !"_ZN5arrow6Status2OKEv"}
!103 = distinct !{null, ptr @_ZN5arrow6ResultISt10shared_ptrINS_14SparseCOOIndexEEED2Ev, null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!104 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!105 = !{!106, !66, i64 1}
!106 = !{!"_ZTSN5arrow6Status5StateE", !107, i64 0, !66, i64 1, !108, i64 8, !110, i64 40}
!107 = !{!"_ZTSN5arrow10StatusCodeE", !5, i64 0}
!108 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !109, i64 0, !11, i64 8, !5, i64 16}
!109 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !67, i64 0}
!110 = !{!"_ZTSSt10shared_ptrIN5arrow12StatusDetailEE", !111, i64 0}
!111 = !{!"_ZTSSt12__shared_ptrIN5arrow12StatusDetailELN9__gnu_cxx12_Lock_policyE2EE", !112, i64 0, !22, i64 8}
!112 = !{!"p1 _ZTSN5arrow12StatusDetailE", !14, i64 0}
!113 = distinct !{null, ptr @_ZNSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!114 = distinct !{null, null, null}
!115 = distinct !{null, ptr @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev, null, null, null, null}
!116 = distinct !{null, null, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!117 = distinct !{null, null, null, null}
!118 = !{!119}
!119 = distinct !{!119, !120, !"_ZN5arrow6Status2OKEv: argument 0"}
!120 = distinct !{!120, !"_ZN5arrow6Status2OKEv"}
!121 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!122 = distinct !{ptr @_ZN5arrow8internal12_GLOBAL__N_124SparseCOOTensorConverterD2Ev, null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!123 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!124 = distinct !{null, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!125 = !{!126, !127, i64 0}
!126 = !{!"_ZTSSt12__shared_ptrIN5arrow11SparseIndexELN9__gnu_cxx12_Lock_policyE2EE", !127, i64 0, !22, i64 8}
!127 = !{!"p1 _ZTSN5arrow11SparseIndexE", !14, i64 0}
!128 = !{!129, !13, i64 0}
!129 = !{!"_ZTSSt12__shared_ptrIN5arrow6TensorELN9__gnu_cxx12_Lock_policyE2EE", !13, i64 0, !22, i64 8}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZNK5arrow6Tensor4typeEv: argument 0"}
!132 = distinct !{!132, !"_ZNK5arrow6Tensor4typeEv"}
!133 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev, null}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZNK5arrow12SparseTensor4typeEv: argument 0"}
!136 = distinct !{!136, !"_ZNK5arrow12SparseTensor4typeEv"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv: argument 0"}
!139 = distinct !{!139, !"_ZNO5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE11ValueUnsafeEv"}
!140 = !{!141}
!141 = distinct !{!141, !142, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv: argument 0"}
!142 = distinct !{!142, !"_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE15MoveValueUnsafeEv"}
!143 = !{!141, !138}
!144 = distinct !{null}
!145 = distinct !{!145, !84}
!146 = distinct !{!146, !84}
!147 = distinct !{!147, !87}
!148 = distinct !{!148, !87}
!149 = distinct !{!149, !87}
!150 = distinct !{!150, !87}
!151 = distinct !{!151, !84, !152}
!152 = !{!"llvm.loop.unswitch.partial.disable"}
!153 = distinct !{!153, !84, !152}
!154 = !{!155}
!155 = distinct !{!155, !156, !"_ZNK5arrow12SparseTensor4typeEv: argument 0"}
!156 = distinct !{!156, !"_ZNK5arrow12SparseTensor4typeEv"}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZSt11make_sharedIN5arrow6TensorEJSt10shared_ptrINS0_8DataTypeEESt10unique_ptrINS0_6BufferESt14default_deleteIS6_EERKSt6vectorIlSaIlEERSC_RKSA_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISL_EEEES2_IT_EDpOT0_: argument 0"}
end_hunk_1
