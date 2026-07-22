inline.NumInlined: 1218
inline.NumDeleted: 184
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN4llvh6Triple9normalizeB5cxx11ENS_9StringRefE:bb.a
  %.sroa.0259.0.copyload260 = load ptr, ptr %i.eg, align 8, !tbaa !21 ; 2 uses
  %.sroa.6.0..sroa_idx262 = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 2 uses
  %.sroa.6.0.copyload263 = load i64, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !22 ; 3 uses
  store ptr %.sroa.0259.0445, ptr %i.eg, align 8, !tbaa !21
  store i64 %.sroa.6.0446, ptr %.sroa.6.0..sroa_idx262, align 8, !tbaa !22
  %i.eh = icmp eq i64 %.sroa.6.0.copyload263, 0
  br i1 %i.eh, label %.thread352, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.w
  %i.ei = call i32 @llvm.umax.i32(i32 %.0148447, i32 3)
  %umax = add nuw i32 %i.ei, 1                    ; 4 uses
  %exitcond.not600 = icmp ugt i32 %.0148447, 2
  br i1 %exitcond.not600, label %.critedge3, label %.lr.ph602

.preheader:                                       ; preds = %.lr.ph602
  %exitcond.not = icmp eq i32 %i.et, 3
  br i1 %exitcond.not, label %.critedge3, label %.lr.ph602.1

.lr.ph602.1:                                      ; preds = %.preheader
  %i.ej = add nuw nsw i32 %.0148447, 2            ; 3 uses
  %i.ek = zext nneg i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !113, !range !115, !noundef !116
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %.preheader.1, label %..critedge3_crit_edge, !llvm.loop !119

.preheader.1:                                     ; preds = %.lr.ph602.1
  %exitcond.not.1 = icmp eq i32 %i.ej, 3
  br i1 %exitcond.not.1, label %.critedge3, label %.lr.ph602.2

.lr.ph602.2:                                      ; preds = %.preheader.1
  %i.eo = add nuw nsw i32 %.0148447, 3            ; 2 uses
  %i.ep = zext nneg i32 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !113, !range !115, !noundef !116
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %.critedge3, label %..critedge3_crit_edge, !llvm.loop !119

.lr.ph602:                                        ; preds = %.preheader.preheader
  %i.et = add nuw nsw i32 %.0148447, 1            ; 3 uses
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !113, !range !115, !noundef !116
  %i.ex = trunc nuw i8 %i.ew to i1
  br i1 %i.ex, label %.preheader, label %..critedge3_crit_edge, !llvm.loop !119

..critedge3_crit_edge:                            ; preds = %.lr.ph602.2, %.lr.ph602.1, %.lr.ph602
  %.lcssa615 = phi i32 [ %i.et, %.lr.ph602 ], [ %i.ej, %.lr.ph602.1 ], [ %i.eo, %.lr.ph602.2 ]
  br label %.critedge3, !llvm.loop !119

.critedge3:                                       ; preds = %.preheader, %.preheader.1, %.lr.ph602.2, %..critedge3_crit_edge, %.preheader.preheader
  %.lcssa = phi i32 [ %umax, %.preheader.preheader ], [ %.lcssa615, %..critedge3_crit_edge ], [ %umax, %.lr.ph602.2 ], [ %umax, %.preheader.1 ], [ %umax, %.preheader ] ; 2 uses
  %i.ey = icmp ugt i32 %i.ec, %.lcssa
  br i1 %i.ey, label %bb.w, label %._crit_edge, !llvm.loop !120

._crit_edge:                                      ; preds = %.critedge3
  %i.ez = load i32, ptr %i.e, align 4, !tbaa !11
  %.not.i192 = icmp ult i32 %i.ec, %i.ez
  br i1 %.not.i192, label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit, label %bb.x, !prof !121

bb.x:                                             ; preds = %._crit_edge
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 0, i64 noundef 16) #13
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit

_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit: ; preds = %._crit_edge, %bb.x
  %i.fa = phi i32 [ %.pre.i, %bb.x ], [ %i.ec, %._crit_edge ]
  %i.fb = load ptr, ptr %4, align 8, !tbaa !7
  %i.fc = zext i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %i.fb, i64 %i.fc ; 2 uses
  store ptr %.sroa.0259.0.copyload260, ptr %i.fd, align 1
  %.sroa.6.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.fd, i64 8
  store i64 %.sroa.6.0.copyload263, ptr %.sroa.6.0..sroa_idx264, align 1
  %i.fe = load i32, ptr %i.d, align 8, !tbaa !10
  %i.ff = add i32 %i.fe, 1
  store i32 %i.ff, ptr %i.d, align 8, !tbaa !10
  br label %.thread352

.thread352:                                       ; preds = %bb.w, %.preheader400, %_ZN4llvh23SmallVectorTemplateBaseINS_9StringRefELb1EE9push_backERKS1_.exit
  %i.fg = add i32 %.1154, 1
  %umax490 = call i32 @llvm.umax.i32(i32 %i.fg, i32 4) ; 3 uses
  %i.fh = add i32 %umax490, -1                    ; 2 uses
  %exitcond491.not604 = icmp eq i32 %.1154, %i.fh
  br i1 %exitcond491.not604, label %..critedge5_crit_edge, label %.lr.ph606

bb.y:                                             ; preds = %.lr.ph606
  %exitcond491.not = icmp eq i32 %i.fi, %i.fh
  br i1 %exitcond491.not, label %..critedge5_crit_edge, label %.lr.ph606, !llvm.loop !122

..critedge5_crit_edge:                            ; preds = %bb.y, %.thread352
  %.pre516 = zext i32 %umax490 to i64
  br label %.critedge5

.lr.ph606:                                        ; preds = %.thread352, %bb.y
  %.2155605 = phi i32 [ %i.fi, %bb.y ], [ %.1154, %.thread352 ]
  %i.fi = add i32 %.2155605, 1                    ; 4 uses
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !113, !range !115, !noundef !116
  %i.fm = trunc nuw i8 %i.fl to i1
  br i1 %i.fm, label %bb.y, label %.critedge5, !llvm.loop !122

.critedge5:                                       ; preds = %.lr.ph606, %..critedge5_crit_edge
  %.pre-phi = phi i64 [ %.pre516, %..critedge5_crit_edge ], [ %i.fj, %.lr.ph606 ]
  %.lcssa489 = phi i32 [ %umax490, %..critedge5_crit_edge ], [ %i.fi, %.lr.ph606 ]
  %i.fn = icmp samesign ult i64 %.pre-phi, %indvars.iv494
  br i1 %i.fn, label %.preheader400, label %.loopexit403.sink.split, !llvm.loop !123

.thread356:                                       ; preds = %..thread356_crit_edge, %_ZNK4llvh9StringRef10startswithES0_.exit177, %bb.p, %bb.q, %bb.j
  %i.fo = phi i32 [ %i.bk, %bb.j ], [ %i.bk, %bb.q ], [ %i.bk, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %i.bk, %bb.p ], [ %.pre508, %..thread356_crit_edge ] ; 2 uses
  %.4143 = phi i32 [ %.2141434, %bb.j ], [ %.2141434, %bb.q ], [ %.2141434, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ 0, %bb.p ], [ %.2141434, %..thread356_crit_edge ] ; 2 uses
  %.4136 = phi i32 [ %.2134435, %bb.j ], [ %.2134435, %bb.q ], [ %.2134435, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ 0, %bb.p ], [ %.2134435, %..thread356_crit_edge ] ; 2 uses
  %.4129 = phi i32 [ %.2127436, %bb.j ], [ %.2127436, %bb.q ], [ 0, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2127436, %bb.p ], [ %.2127436, %..thread356_crit_edge ] ; 2 uses
  %.4122 = phi i32 [ %.2120437, %bb.j ], [ 0, %bb.q ], [ %.2120437, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2120437, %bb.p ], [ %.2120437, %..thread356_crit_edge ] ; 2 uses
  %.4113 = phi i8 [ %.2111438, %bb.j ], [ %.2111438, %bb.q ], [ %i.cr, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2111438, %bb.p ], [ %.2111438, %..thread356_crit_edge ] ; 2 uses
  %.4 = phi i8 [ %.2439, %bb.j ], [ %.2439, %bb.q ], [ %i.cu, %_ZNK4llvh9StringRef10startswithES0_.exit177 ], [ %.2439, %bb.p ], [ %.2439, %..thread356_crit_edge ] ; 2 uses
  %i.fp = add i32 %.0153433, 1                    ; 3 uses
  %i.fq = zext i32 %i.fp to i64
  %.not173 = icmp eq i32 %i.fo, %i.fp
  br i1 %.not173, label %.loopexit403, label %.lr.ph, !llvm.loop !124

.loopexit403.sink.split:                          ; preds = %.critedge5, %.critedge, %bb.r, %bb.v
  store i8 1, ptr %i.bf, align 1, !tbaa !113
  br label %.loopexit403

.loopexit403:                                     ; preds = %.thread356, %.loopexit403.sink.split, %bb.i
  %.6145 = phi i32 [ %.1140465, %bb.i ], [ %.3142341, %.loopexit403.sink.split ], [ %.4143, %.thread356 ] ; 5 uses
  %.6138 = phi i32 [ %.1133466, %bb.i ], [ %.3135343, %.loopexit403.sink.split ], [ %.4136, %.thread356 ] ; 5 uses
  %.6131 = phi i32 [ %.1126467, %bb.i ], [ %.3128345, %.loopexit403.sink.split ], [ %.4129, %.thread356 ] ; 2 uses
  %.6124 = phi i32 [ %.1119468, %bb.i ], [ %.3121347, %.loopexit403.sink.split ], [ %.4122, %.thread356 ] ; 2 uses
  %.6115 = phi i8 [ %.1110469, %bb.i ], [ %.3112349, %.loopexit403.sink.split ], [ %.4113, %.thread356 ] ; 3 uses
  %.6 = phi i8 [ %.1470, %bb.i ], [ %.3351, %.loopexit403.sink.split ], [ %.4, %.thread356 ] ; 3 uses
  %indvars.iv.next495 = add nuw nsw i64 %indvars.iv494, 1 ; 2 uses
  %.not170 = icmp eq i64 %indvars.iv.next495, 4
  br i1 %.not170, label %bb.h, label %bb.i, !llvm.loop !125

._crit_edge474.loopexit.unr-lcssa:                ; preds = %bb.ae
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge474, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge474.loopexit.unr-lcssa, %.lr.ph473
  %indvars.iv496.epil.init = phi i64 [ 0, %.lr.ph473 ], [ %indvars.iv.next497.1, %._crit_edge474.loopexit.unr-lcssa ]
  %lcmp.mod624 = trunc i32 %i.bc to i1
  call void @llvm.assume(i1 %lcmp.mod624)
  %i.fr = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv496.epil.init ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8 ; 2 uses
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !20
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.z, label %._crit_edge474

bb.z:                                             ; preds = %.epil.preheader
  store ptr @.str, ptr %i.fr, align 8, !tbaa !21
  store i64 7, ptr %i.fs, align 8, !tbaa !22
  br label %._crit_edge474

._crit_edge474:                                   ; preds = %._crit_edge474.loopexit.unr-lcssa, %bb.z, %.epil.preheader, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.fv = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.fv, ptr %5, align 8, !tbaa !126
  %i.fw = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store i64 0, ptr %i.fw, align 8, !tbaa !19
  store i8 0, ptr %i.fv, align 8, !tbaa !46
  %i.fx = icmp eq i32 %.6138, 10
  br i1 %i.fx, label %bb.af, label %bb.ao

bb.aa:                                            ; preds = %bb.ae, %.lr.ph473.new
  %indvars.iv496 = phi i64 [ 0, %.lr.ph473.new ], [ %indvars.iv.next497.1, %bb.ae ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph473.new ], [ %niter.next.1, %bb.ae ]
  %i.fy = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv496 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !20
  %i.gb = icmp eq i64 %i.ga, 0
  br i1 %i.gb, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str, ptr %i.fy, align 8, !tbaa !21
  store i64 7, ptr %i.fz, align 8, !tbaa !22
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.bd, i64 %indvars.iv496 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %i.ge = load i64, ptr %i.gd, align 8, !tbaa !20
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store ptr @.str, ptr %i.gg, align 8, !tbaa !21
  store i64 7, ptr %i.gd, align 8, !tbaa !22
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %indvars.iv.next497.1 = add nuw nsw i64 %indvars.iv496, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge474.loopexit.unr-lcssa, label %bb.aa, !llvm.loop !127

bb.af:                                            ; preds = %._crit_edge474
  %i.gh = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 48 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 56 ; 2 uses
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !20 ; 2 uses
  %.not.i = icmp ult i64 %i.gk, 11
  br i1 %.not.i, label %.thread370, label %_ZNK4llvh9StringRef10startswithES0_.exit

_ZNK4llvh9StringRef10startswithES0_.exit:         ; preds = %bb.af
  %i.gl = load ptr, ptr %i.gi, align 8, !tbaa !17 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 1
  %i.gn = xor i64 %i.gm, 7306080422883257953
  %i.go = getelementptr i8, ptr %i.gl, i64 3
  %i.gp = load i64, ptr %i.go, align 1
  %i.gq = xor i64 %i.gp, 7593739009804300146
  %i.gr = or i64 %i.gn, %i.gq
  %i.gs = icmp ne i64 %i.gr, 0
  %i.gt = zext i1 %i.gs to i32
  %i.gu = icmp eq i32 %i.gt, 0
  br i1 %i.gu, label %_ZNK4llvh9StringRef10startswithES0_.exit.thread367, label %.thread370

_ZNK4llvh9StringRef10startswithES0_.exit.thread367: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %9 = load ptr, ptr %i.gi, align 8, !tbaa !17
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 11
  %i.gw = add i64 %i.gk, -11                      ; 2 uses
  store ptr %i.gv, ptr %6, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.gw, ptr %i.gx, align 8
  %i.gy = icmp eq i64 %i.gw, 0
  br i1 %i.gy, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread367
  store ptr @.str.115, ptr %i.gi, align 8, !tbaa !21
  store i64 7, ptr %i.gj, align 8, !tbaa !22
  br label %bb.an

bb.ah:                                            ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit.thread367
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.gz = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 3, ptr %i.gz, align 8, !tbaa !42
  %i.ha = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 5, ptr %i.ha, align 1, !tbaa !47
  store ptr @.str.115, ptr %8, align 8, !tbaa !46
  %i.hb = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %6, ptr %i.hb, align 8, !tbaa !46
  call void @_ZNK4llvh5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(18) %8) #13
  %i.hc = load ptr, ptr %5, align 8, !tbaa !12    ; 6 uses
  %i.hd = icmp eq ptr %i.hc, %i.fv
  %i.he = load ptr, ptr %7, align 8, !tbaa !12    ; 5 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.hg = icmp eq ptr %i.he, %i.hf                ; 2 uses
  br i1 %i.hd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.ah
  br i1 %i.hg, label %bb.ai, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.ah
  br i1 %i.hg, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.hh = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !19 ; 3 uses
  %i.hj = icmp ult i64 %i.hi, 16
  call void @llvm.assume(i1 %i.hj)
  switch i64 %i.hi, label %bb.ak [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.hk = load i8, ptr %i.he, align 1, !tbaa !46
  store i8 %i.hk, ptr %i.hc, align 1, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hc, ptr align 1 %i.he, i64 %i.hi, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.hl = load i64, ptr %i.hh, align 8, !tbaa !19 ; 2 uses
  store i64 %i.hl, ptr %i.fw, align 8, !tbaa !19
  %i.hm = load ptr, ptr %5, align 8, !tbaa !12
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 %i.hl
  store i8 0, ptr %i.hn, align 1, !tbaa !46
  %.pre.i195 = load ptr, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.he, ptr %5, align 8, !tbaa !12
  %i.ho = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hp = load <2 x i64>, ptr %i.ho, align 8, !tbaa !46
  store <2 x i64> %i.hp, ptr %i.fw, align 8, !tbaa !46
  br label %bb.am

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.hq = load i64, ptr %i.fv, align 8, !tbaa !46
  store ptr %i.he, ptr %5, align 8, !tbaa !12
  %i.hr = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hs = load <2 x i64>, ptr %i.hr, align 8, !tbaa !46
  store <2 x i64> %i.hs, ptr %i.fw, align 8, !tbaa !46
  %.not.i194 = icmp eq ptr %i.hc, null
  br i1 %.not.i194, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.hc, ptr %7, align 8, !tbaa !12
  store i64 %i.hq, ptr %i.hf, align 8, !tbaa !46
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.am:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.hf, ptr %7, align 8, !tbaa !12
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.al, %bb.am
  %i.ht = phi ptr [ %i.hc, %bb.al ], [ %i.hf, %bb.am ], [ %.pre.i195, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.hu, align 8, !tbaa !19
  store i8 0, ptr %i.ht, align 1, !tbaa !46
  %i.hv = load ptr, ptr %7, align 8, !tbaa !12    ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.hx = icmp eq ptr %i.hv, %i.hw
  br i1 %i.hx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.hy = load i64, ptr %i.hw, align 8, !tbaa !46
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hz) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.ia = load ptr, ptr %5, align 8, !tbaa !12
  %i.ib = load i64, ptr %i.fw, align 8, !tbaa !19
  %i.ic = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  store ptr %i.ia, ptr %i.id, align 8, !tbaa !21
  %.sroa.4253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ic, i64 56
  store i64 %i.ib, ptr %.sroa.4253.0..sroa_idx, align 8, !tbaa !22
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %.thread370

bb.ao:                                            ; preds = %._crit_edge474
  %i.ie = icmp eq i32 %.6124, 15
  %i.if = icmp eq i32 %.6138, 4
  %or.cond7 = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %or.cond7, label %bb.ap, label %.thread370

bb.ap:                                            ; preds = %bb.ao
  %i.ig = load ptr, ptr %4, align 8, !tbaa !7     ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 48
  store ptr @.str.109, ptr %i.ih, align 8, !tbaa !21
  %.sroa.4251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ig, i64 56
  store i64 9, ptr %.sroa.4251.0..sroa_idx, align 8, !tbaa !22
  br label %.thread370

.thread370:                                       ; preds = %bb.af, %_ZNK4llvh9StringRef10startswithES0_.exit, %bb.an, %bb.ap, %bb.ao
  %i.ii = icmp eq i32 %.6131, 15                  ; 2 uses
  br i1 %i.ii, label %bb.aq, label %bb.ay

bb.aq:                                            ; preds = %.thread370
  %i.ij = load i32, ptr %i.d, align 8, !tbaa !10  ; 3 uses
  %i.ik = icmp ugt i32 %i.ij, 4
  br i1 %i.ik, label %.sink.split.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not393 = icmp eq i32 %i.ij, 4
  br i1 %.not393, label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.il = load i32, ptr %i.e, align 4, !tbaa !11
  %i.im = icmp ult i32 %i.il, 4
  br i1 %i.im, label %bb.at, label %.lr.ph.preheader.i

bb.at:                                            ; preds = %bb.as
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 16) #13
  %.pre.i197 = load i32, ptr %i.d, align 8, !tbaa !10 ; 2 uses
  %.not13.i = icmp eq i32 %.pre.i197, 4
  br i1 %.not13.i, label %.sink.split.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.as, %bb.at
  %.pre-phi.i.in555 = phi i32 [ %.pre.i197, %bb.at ], [ %i.ij, %bb.as ]
  %i.in = load ptr, ptr %4, align 8, !tbaa !7
  %.pre-phi.i = zext i32 %.pre-phi.i.in555 to i64
  %.idx394 = shl nuw nsw i64 %.pre-phi.i, 4       ; 2 uses
  %scevgep501 = getelementptr i8, ptr %i.in, i64 %.idx394
  %i.io = sub nsw i64 64, %.idx394
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep501, i8 0, i64 %i.io, i1 false)
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %.lr.ph.preheader.i, %bb.at, %bb.aq
  store i32 4, ptr %i.d, align 8, !tbaa !10
  br label %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit

_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit: ; preds = %bb.ar, %.sink.split.i
  %i.ip = load ptr, ptr %4, align 8, !tbaa !7     ; 7 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 32
  store ptr @.str.88, ptr %i.iq, align 8, !tbaa !21
  %.sroa.4249.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 40
  store i64 7, ptr %.sroa.4249.0..sroa_idx, align 8, !tbaa !22
  %i.ir = icmp eq i32 %.6138, 0
  br i1 %i.ir, label %bb.au, label %bb.bi

bb.au:                                            ; preds = %_ZN4llvh15SmallVectorImplINS_9StringRefEE6resizeEm.exit
  %or.cond9 = icmp ult i32 %.6145, 2
  br i1 %or.cond9, label %.thread372, label %bb.av

.thread372:                                       ; preds = %bb.au
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 48
  store ptr @.str.119, ptr %i.is, align 8, !tbaa !21
  %.sroa.4247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  store i64 4, ptr %.sroa.4247.0..sroa_idx, align 8, !tbaa !22
  br label %.thread568

bb.av:                                            ; preds = %bb.au
  switch i32 %.6145, label %default.unreachable [
    i32 4, label %bb.ax
    i32 3, label %bb.aw
    i32 2, label %.sink.split
  ]

end_hunk_0
