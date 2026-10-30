Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLowRankSSAugSystemSolver?download=true
inline.NumInlined: 748
inline.NumDeleted: 378
begin_hunk_0_@_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_:bb.a

bb.cd:                                            ; preds = %bb.cc
  %i.kk = load ptr, ptr %i.a, align 8, !tbaa !181
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 40
  %i.km = load i8, ptr %i.kl, align 8, !tbaa !208, !range !60, !noundef !61
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.ce, label %bb.cm

bb.ce:                                            ; preds = %bb.cd
  %i.ko = getelementptr inbounds nuw i8, ptr %13, i64 56
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !64 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !19
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 16
  %i.ks = load ptr, ptr %i.kr, align 8
  %i.kt = invoke noundef ptr %i.ks(ptr noundef nonnull align 8 dereferenceable(16) %i.kp)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit217 unwind label %bb.db, !inline_history !164 ; 10 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit217:              ; preds = %bb.ce
  %.not.i.i218 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i218, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit219, label %bb.cf

bb.cf:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit217
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !17
  %i.kw = add nsw i32 %i.kv, 1
  store i32 %i.kw, ptr %i.ku, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit219

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit219:   ; preds = %bb.cf, %_ZNK5Ipopt6Vector7MakeNewEv.exit217
  %i.kx = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.kz = load ptr, ptr %i.ky, align 8
  invoke void %i.kz(ptr noundef nonnull align 8 dereferenceable(69) %i.d, double noundef 1.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0356.1, double noundef 0.000000e+00, ptr noundef nonnull align 8 dereferenceable(205) %i.kt)
          to label %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit unwind label %bb.ck, !inline_history !165

_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit219
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !54
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 80 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 4 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !17
  %i.lf = add nsw i32 %i.le, 1
  store i32 %i.lf, ptr %i.ld, align 8, !tbaa !17
  %i.lg = load ptr, ptr %i.lc, align 8, !tbaa !103 ; 4 uses
  %.not.i.i.i.i221 = icmp eq ptr %i.lg, null
  br i1 %.not.i.i.i.i221, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8, !tbaa !17
  %i.lj = add nsw i32 %i.li, -1                   ; 2 uses
  store i32 %i.lj, ptr %i.lh, align 8, !tbaa !17
  %i.lk = icmp eq i32 %i.lj, 0
  br i1 %i.lk, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.ll = load ptr, ptr %i.lg, align 8, !tbaa !19
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8
  call void %i.ln(ptr noundef nonnull align 8 dereferenceable(205) %i.lg) #16, !inline_history !166
  br label %bb.ci

bb.ci:                                            ; preds = %_ZNK5Ipopt6Matrix10MultVectorEdRKNS_6VectorEdRS1_.exit, %bb.cg, %bb.ch
  store ptr %i.kt, ptr %i.lc, align 8, !tbaa !103
  %i.lo = load i32, ptr %i.ld, align 8, !tbaa !17
  %i.lp = add nsw i32 %i.lo, -1                   ; 2 uses
  store i32 %i.lp, ptr %i.ld, align 8, !tbaa !17
  %i.lq = icmp eq i32 %i.lp, 0
  br i1 %i.lq, label %bb.cj, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit223

bb.cj:                                            ; preds = %bb.ci
  %i.lr = load ptr, ptr %i.kt, align 8, !tbaa !19
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 8
  %i.lt = load ptr, ptr %i.ls, align 8
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(205) %i.kt) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit223

bb.ck:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit219
  %i.lu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.kt, i64 8 ; 2 uses
  %i.lw = load i32, ptr %i.lv, align 8, !tbaa !17
  %i.lx = add nsw i32 %i.lw, -1                   ; 2 uses
  store i32 %i.lx, ptr %i.lv, align 8, !tbaa !17
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.cl, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215

bb.cl:                                            ; preds = %bb.ck
  %i.lz = load ptr, ptr %i.kt, align 8, !tbaa !19
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mb = load ptr, ptr %i.ma, align 8
  call void %i.mb(ptr noundef nonnull align 8 dereferenceable(205) %i.kt) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215

bb.cm:                                            ; preds = %bb.cd, %bb.cc
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !54
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 80 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0356.1, i64 8 ; 2 uses
  %i.mg = load i32, ptr %i.mf, align 8, !tbaa !17
  %i.mh = add nsw i32 %i.mg, 1
  store i32 %i.mh, ptr %i.mf, align 8, !tbaa !17
  %i.mi = load ptr, ptr %i.me, align 8, !tbaa !103 ; 4 uses
  %.not.i.i.i.i226 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i226, label %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit227, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = load i32, ptr %i.mj, align 8, !tbaa !17
  %i.ml = add nsw i32 %i.mk, -1                   ; 2 uses
  store i32 %i.ml, ptr %i.mj, align 8, !tbaa !17
  %i.mm = icmp eq i32 %i.ml, 0
  br i1 %i.mm, label %bb.co, label %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit227

bb.co:                                            ; preds = %bb.cn
  %i.mn = load ptr, ptr %i.mi, align 8, !tbaa !19
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8
  call void %i.mp(ptr noundef nonnull align 8 dereferenceable(205) %i.mi) #16, !inline_history !166
  br label %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit227

_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit227: ; preds = %bb.cm, %bb.cn, %bb.co
  store ptr %.sroa.0356.1, ptr %i.me, align 8, !tbaa !103
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit223

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit223:      ; preds = %bb.cj, %bb.ci, %_ZN5Ipopt10DiagMatrix7SetDiagERKNS_6VectorE.exit227
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.mr = load ptr, ptr %i.mq, align 8, !tbaa !51 ; 2 uses
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(265) %i.mr)
          to label %.noexc229 unwind label %bb.db

.noexc229:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit223
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 208
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !90, !noalias !209
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !93, !noalias !209 ; 18 uses
  %.not.i.i.i228 = icmp eq ptr %i.mv, null        ; 2 uses
  br i1 %.not.i.i.i228, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEEC2EPS1_.exit, label %bb.cp

bb.cp:                                            ; preds = %.noexc229
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 8, !tbaa !17, !noalias !209
  %i.my = add nsw i32 %i.mx, 2
  store i32 %i.my, ptr %i.mw, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEEC2EPS1_.exit

_ZN5Ipopt8SmartPtrINS_11DenseVectorEEC2EPS1_.exit: ; preds = %.noexc229, %bb.cp
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mv, i64 232 ; 2 uses
  %i.na = load i8, ptr %i.mz, align 8, !tbaa !215, !range !60, !noundef !61
  %i.nb = trunc nuw i8 %i.na to i1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mv, i64 233 ; 2 uses
  %i.nd = load i8, ptr %i.nc, align 1, !range !60
  %i.ne = trunc nuw i8 %i.nd to i1
  %or.cond.i = select i1 %i.nb, i1 %i.ne, i1 false
  br i1 %or.cond.i, label %bb.cq, label %.noexc231

bb.cq:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt11DenseVector22set_values_from_scalarEv(ptr noundef nonnull align 8 dereferenceable(248) %i.mv)
          to label %.noexc231 unwind label %bb.fb

.noexc231:                                        ; preds = %bb.cq, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEEC2EPS1_.exit
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(248) %i.mv)
          to label %.noexc232 unwind label %bb.fb

.noexc232:                                        ; preds = %.noexc231
  store i8 1, ptr %i.mz, align 8, !tbaa !215
  store i8 0, ptr %i.nc, align 1, !tbaa !216
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mv, i64 216 ; 2 uses
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !217 ; 2 uses
  %i.nh = icmp eq ptr %i.ng, null
  br i1 %i.nh, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %.noexc232
  %i.ni = getelementptr inbounds nuw i8, ptr %i.mv, i64 208
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !218
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 12
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !66 ; 2 uses
  %i.nm = icmp sgt i32 %i.nl, 0
  br i1 %i.nm, label %bb.cs, label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i

bb.cs:                                            ; preds = %bb.cr
  %i.nn = zext nneg i32 %i.nl to i64
  %i.no = shl nuw nsw i64 %i.nn, 3
  %i.np = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.no) #18
          to label %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i unwind label %bb.fb

_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i = phi ptr [ null, %bb.cr ], [ %i.np, %bb.cs ] ; 2 uses
  store ptr %.0.i.i.i, ptr %i.nf, align 8, !tbaa !217
  br label %bb.ct

bb.ct:                                            ; preds = %.noexc232, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i
  %i.nq = phi ptr [ %i.ng, %.noexc232 ], [ %.0.i.i.i, %_ZNK5Ipopt16DenseVectorSpace23AllocateInternalStorageEv.exit.i.i ] ; 3 uses
  %.not506 = icmp eq ptr %.sroa.0350.0404, null   ; 2 uses
  br i1 %.not506, label %bb.ds, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.nr = getelementptr inbounds nuw i8, ptr %.sroa.0350.0404, i64 56
  %i.ns = load ptr, ptr %i.nr, align 8, !tbaa !193
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 16
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !68 ; 6 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 %i.nu, ptr %i.nv, align 8, !tbaa !94
  %.not = icmp eq i32 %i.nu, 0
  br i1 %.not, label %bb.cv, label %.preheader508

.preheader508:                                    ; preds = %bb.cu
  %i.nw = icmp sgt i32 %i.nu, 0
  br i1 %i.nw, label %.lr.ph, label %.loopexit509

.lr.ph:                                           ; preds = %.preheader508
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.0350.0404, i64 104
  %i.ny = getelementptr inbounds nuw i8, ptr %.sroa.0350.0404, i64 80
  %wide.trip.count = zext nneg i32 %i.nu to i64
  br label %bb.dh

bb.cv:                                            ; preds = %bb.cu
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.1, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.cw unwind label %bb.dc

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  %i.nz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.2)
          to label %bb.cx unwind label %bb.dd     ; 0 uses

bb.cx:                                            ; preds = %bb.cw
  %i.oa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.3)
          to label %bb.cy unwind label %bb.dd     ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.ob = call ptr @__cxa_allocate_exception(i64 112) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cz unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZN5Ipopt14INTERNAL_ABORTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.ob, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %20, i32 noundef 316)
          to label %bb.da unwind label %bb.de

bb.da:                                            ; preds = %bb.cz
  invoke void @__cxa_throw(ptr nonnull %i.ob, ptr nonnull @_ZTIN5Ipopt14INTERNAL_ABORTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #19
          to label %bb.gc unwind label %bb.de

bb.db:                                            ; preds = %bb.ce, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit223
  %i.oc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215

bb.dc:                                            ; preds = %bb.cv
  %i.od = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247.thread

bb.dd:                                            ; preds = %bb.cx, %bb.cw
  %i.oe = landingpad { ptr, i32 }
          cleanup
  br label %bb.dg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.cy
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br label %bb.df

bb.de:                                            ; preds = %bb.da, %bb.cz
  %.055 = phi i1 [ false, %bb.da ], [ true, %bb.cz ] ; 2 uses
  %i.og = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.oh = load ptr, ptr %20, align 8, !tbaa !108  ; 2 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.oj = icmp eq ptr %i.oh, %i.oi
  br i1 %i.oj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.de
  %i.ok = load i64, ptr %i.oi, align 8, !tbaa !109
  %i.ol = add i64 %i.ok, 1
  call void @_ZdlPvm(ptr noundef %i.oh, i64 noundef %i.ol) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br i1 %.055, label %bb.df, label %bb.dg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  br i1 %.055, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn124428 = phi { ptr, i32 } [ %i.of, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.ob) #16
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.df, %bb.dd
  %.pn124.pn = phi { ptr, i32 } [ %.pn124428, %bb.df ], [ %i.og, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.oe, %bb.dd ], [ %i.og, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.om = load ptr, ptr %18, align 8, !tbaa !108  ; 2 uses
  %i.on = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.oo = icmp eq ptr %i.om, %i.on
  br i1 %i.oo, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234: ; preds = %bb.dg
  %i.op = load i64, ptr %i.on, align 8, !tbaa !109
  %i.oq = add i64 %i.op, 1
  call void @_ZdlPvm(ptr noundef %i.om, i64 noundef %i.oq) #17
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247.thread: ; preds = %bb.dg, %bb.dc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.od, %bb.dc ], [ %.pn124.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i234 ], [ %.pn124.pn, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  br label %bb.fr

bb.dh:                                            ; preds = %.lr.ph, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243 ] ; 5 uses
  %i.or = load ptr, ptr %i.nx, align 8, !tbaa !90, !noalias !219
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %indvars.iv
  %i.ot = load ptr, ptr %i.os, align 8, !tbaa !93, !noalias !219 ; 2 uses
  %.not.i.i237 = icmp eq ptr %i.ot, null
  br i1 %.not.i.i237, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, label %bb.di

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i:  ; preds = %bb.dh
  %i.ou = load ptr, ptr %i.ny, align 8, !tbaa !112, !noalias !219
  %i.ov = getelementptr inbounds nuw [8 x i8], ptr %i.ou, i64 %indvars.iv
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !103, !noalias !219 ; 2 uses
  %.not.i.i.i238 = icmp eq ptr %i.ow, null
  br i1 %.not.i.i.i238, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit.thread, label %bb.di

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit.thread: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i
  %i.ox = load ptr, ptr %i.m, align 8, !tbaa !53
  br label %bb.dj

bb.di:                                            ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i, %bb.dh
  %.0.i3.i = phi ptr [ %i.ow, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i ], [ %i.ot, %bb.dh ] ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.0.i3.i, i64 8 ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 8, !tbaa !17, !noalias !219
  %i.pa = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.pb = add nsw i32 %i.oz, 2
  store i32 %i.pb, ptr %i.oy, align 8, !tbaa !17
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit.thread
  %.not.i.i.i239433 = phi i1 [ true, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit.thread ], [ false, %bb.di ] ; 3 uses
  %i.pc = phi ptr [ %i.ox, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit.thread ], [ %i.pa, %bb.di ]
  %.0.i4.i431 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit.thread ], [ %.0.i3.i, %bb.di ] ; 7 uses
  store ptr %.0.i4.i431, ptr %22, align 8, !tbaa !103
  %i.pd = trunc nuw nsw i64 %indvars.iv to i32
  invoke void @_ZN5Ipopt25ExpandedMultiVectorMatrix9SetVectorEiNS_8SmartPtrIKNS_6VectorEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.pc, i32 noundef %i.pd, ptr noundef nonnull align 8 %22)
          to label %bb.dk unwind label %bb.dp

bb.dk:                                            ; preds = %bb.dj
  %i.pe = load ptr, ptr %22, align 8, !tbaa !103  ; 4 uses
  %.not.i.i240 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i240, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit241, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 8, !tbaa !17
  %i.ph = add nsw i32 %i.pg, -1                   ; 2 uses
  store i32 %i.ph, ptr %i.pf, align 8, !tbaa !17
  %i.pi = icmp eq i32 %i.ph, 0
  br i1 %i.pi, label %bb.dm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit241

bb.dm:                                            ; preds = %bb.dl
  %i.pj = load ptr, ptr %i.pe, align 8, !tbaa !19
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 8
  %i.pl = load ptr, ptr %i.pk, align 8
  call void %i.pl(ptr noundef nonnull align 8 dereferenceable(205) %i.pe) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit241

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit241:     ; preds = %bb.dk, %bb.dl, %bb.dm
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv
  store double -1.000000e+00, ptr %i.pm, align 8, !tbaa !220
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  br i1 %.not.i.i.i239433, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243, label %bb.dn

bb.dn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit241
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i4.i431, i64 8 ; 2 uses
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !17
  %i.pp = add nsw i32 %i.po, -1                   ; 2 uses
  store i32 %i.pp, ptr %i.pn, align 8, !tbaa !17
  %i.pq = icmp eq i32 %i.pp, 0
  br i1 %i.pq, label %bb.do, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243

bb.do:                                            ; preds = %bb.dn
  %i.pr = load ptr, ptr %.0.i4.i431, align 8, !tbaa !19
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  %i.pt = load ptr, ptr %i.ps, align 8
  call void %i.pt(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i431) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit241, %bb.dn, %bb.do
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit509.loopexit, label %bb.dh, !llvm.loop !172

bb.dp:                                            ; preds = %bb.dj
  %i.pu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.pv = load ptr, ptr %22, align 8, !tbaa !103  ; 4 uses
  %.not.i.i244 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i244, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 8 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 8, !tbaa !17
  %i.py = add nsw i32 %i.px, -1                   ; 2 uses
  store i32 %i.py, ptr %i.pw, align 8, !tbaa !17
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %.split, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245

.split:                                           ; preds = %bb.dq
  %i.qa = load ptr, ptr %i.pv, align 8, !tbaa !19
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  %i.qc = load ptr, ptr %i.qb, align 8
  call void %i.qc(ptr noundef nonnull align 8 dereferenceable(205) %i.pv) #16, !inline_history !171
  br i1 %.not.i.i.i239433, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245:     ; preds = %bb.dq, %bb.dp
  br i1 %.not.i.i.i239433, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245.thread: ; preds = %.split, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i4.i431, i64 8 ; 2 uses
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !17
  %i.qf = add nsw i32 %i.qe, -1                   ; 2 uses
  store i32 %i.qf, ptr %i.qd, align 8, !tbaa !17
  %i.qg = icmp eq i32 %i.qf, 0
  br i1 %i.qg, label %bb.dr, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.dr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245.thread
  %i.qh = load ptr, ptr %.0.i4.i431, align 8, !tbaa !19
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 8
  %i.qj = load ptr, ptr %i.qi, align 8
  call void %i.qj(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i431) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.ds:                                            ; preds = %bb.ct
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.qk, align 8, !tbaa !94
  br label %.loopexit509

.loopexit509.loopexit:                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243
  %29 = zext nneg i32 %i.nu to i64
  br label %.loopexit509

.loopexit509:                                     ; preds = %.loopexit509.loopexit, %.preheader508, %bb.ds
  %.158 = phi i64 [ 0, %bb.ds ], [ 0, %.preheader508 ], [ %29, %.loopexit509.loopexit ]
  %.158.a = phi i32 [ 0, %bb.ds ], [ 0, %.preheader508 ], [ %i.nu, %.loopexit509.loopexit ] ; 3 uses
  %.not507 = icmp eq ptr %.sroa.0344.0424, null   ; 2 uses
  br i1 %.not507, label %.loopexit, label %bb.dt

bb.dt:                                            ; preds = %.loopexit509
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 56
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !193
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !68 ; 3 uses
  %i.qp = sub i32 0, %i.qo
  %.not128 = icmp eq i32 %.158.a, %i.qp
  br i1 %.not128, label %bb.du, label %.preheader

.preheader:                                       ; preds = %bb.dt
  %i.qq = icmp sgt i32 %i.qo, 0
  br i1 %i.qq, label %.lr.ph516, label %.loopexit

.lr.ph516:                                        ; preds = %.preheader
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 104
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 80
  %wide.trip.count535 = zext nneg i32 %i.qo to i64
  br label %bb.ef

bb.du:                                            ; preds = %bb.dt
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.dv unwind label %bb.ea

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.qt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.2)
          to label %bb.dw unwind label %bb.eb     ; 0 uses

bb.dw:                                            ; preds = %bb.dv
  %i.qu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.3)
          to label %bb.dx unwind label %bb.eb     ; 0 uses

bb.dx:                                            ; preds = %bb.dw
  %i.qv = call ptr @__cxa_allocate_exception(i64 112) #16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %26)
          to label %bb.dy unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread

bb.dy:                                            ; preds = %bb.dx
  invoke void @_ZN5Ipopt14INTERNAL_ABORTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %i.qv, ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull align 8 dereferenceable(32) %25, i32 noundef 332)
          to label %bb.dz unwind label %bb.ec

bb.dz:                                            ; preds = %bb.dy
  invoke void @__cxa_throw(ptr nonnull %i.qv, ptr nonnull @_ZTIN5Ipopt14INTERNAL_ABORTE, ptr nonnull @_ZN5Ipopt14IpoptExceptionD2Ev) #19
          to label %bb.gc unwind label %bb.ec

bb.ea:                                            ; preds = %bb.du
  %i.qw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.eb:                                            ; preds = %bb.dw, %bb.dv
  %i.qx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread: ; preds = %bb.dx
  %i.qy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  br label %bb.ed

bb.ec:                                            ; preds = %bb.dz, %bb.dy
  %.053 = phi i1 [ false, %bb.dz ], [ true, %bb.dy ] ; 2 uses
  %i.qz = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ra = load ptr, ptr %25, align 8, !tbaa !108  ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.rc = icmp eq ptr %i.ra, %i.rb
  br i1 %i.rc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %bb.ec
  %i.rd = load i64, ptr %i.rb, align 8, !tbaa !109
  %i.re = add i64 %i.rd, 1
  call void @_ZdlPvm(ptr noundef %i.ra, i64 noundef %i.re) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  br i1 %.053, label %bb.ed, label %bb.ee

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %bb.ec
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #16
  br i1 %.053, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %.pn129449 = phi { ptr, i32 } [ %i.qy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250.thread ], [ %i.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %i.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ]
  call void @__cxa_free_exception(ptr %i.qv) #16
  br label %bb.ee

bb.ee:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %bb.ed, %bb.eb
  %.pn129.pn = phi { ptr, i32 } [ %.pn129449, %bb.ed ], [ %i.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250 ], [ %i.qx, %bb.eb ], [ %i.qz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248 ] ; 2 uses
  %i.rf = load ptr, ptr %23, align 8, !tbaa !108  ; 2 uses
  %i.rg = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 2 uses
  %i.rh = icmp eq ptr %i.rf, %i.rg
  br i1 %i.rh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %bb.ee
  %i.ri = load i64, ptr %i.rg, align 8, !tbaa !109
  %i.rj = add i64 %i.ri, 1
  call void @_ZdlPvm(ptr noundef %i.rf, i64 noundef %i.rj) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %bb.ee, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.ea
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.qw, %bb.ea ], [ %.pn129.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn129.pn, %bb.ee ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.ef:                                            ; preds = %.lr.ph516, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266
  %indvars.iv530 = phi i64 [ %.158, %.lr.ph516 ], [ %indvars.iv.next531, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266 ] ; 3 uses
  %indvars.iv528 = phi i64 [ 0, %.lr.ph516 ], [ %indvars.iv.next529, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266 ] ; 3 uses
  %i.rk = load ptr, ptr %i.qr, align 8, !tbaa !90, !noalias !221
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.rk, i64 %indvars.iv528
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !93, !noalias !221 ; 2 uses
  %.not.i.i254 = icmp eq ptr %i.rm, null
  br i1 %.not.i.i254, label %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i258, label %bb.eg

_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i258: ; preds = %bb.ef
  %i.rn = load ptr, ptr %i.qs, align 8, !tbaa !112, !noalias !221
  %i.ro = getelementptr inbounds nuw [8 x i8], ptr %i.rn, i64 %indvars.iv528
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !103, !noalias !221 ; 2 uses
  %.not.i.i.i259 = icmp eq ptr %i.rp, null
  br i1 %.not.i.i.i259, label %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit260.thread, label %bb.eg

_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit260.thread: ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i258
  %i.rq = load ptr, ptr %i.m, align 8, !tbaa !53
  br label %bb.eh

bb.eg:                                            ; preds = %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i258, %bb.ef
  %.0.i3.i256 = phi ptr [ %i.rp, %_ZNK5Ipopt17MultiVectorMatrix8ConstVecEi.exit.i258 ], [ %i.rm, %bb.ef ] ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %.0.i3.i256, i64 8 ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 8, !tbaa !17, !noalias !221
  %i.rt = load ptr, ptr %i.m, align 8, !tbaa !53
  %i.ru = add nsw i32 %i.rs, 2
  store i32 %i.ru, ptr %i.rr, align 8, !tbaa !17
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit260.thread
  %.not.i.i.i261454 = phi i1 [ true, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit260.thread ], [ false, %bb.eg ] ; 3 uses
  %i.rv = phi ptr [ %i.rq, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit260.thread ], [ %i.rt, %bb.eg ]
  %.0.i4.i257452 = phi ptr [ null, %_ZNK5Ipopt17MultiVectorMatrix9GetVectorEi.exit260.thread ], [ %.0.i3.i256, %bb.eg ] ; 7 uses
  store ptr %.0.i4.i257452, ptr %27, align 8, !tbaa !103
  %i.rw = trunc nuw i64 %indvars.iv530 to i32
  invoke void @_ZN5Ipopt25ExpandedMultiVectorMatrix9SetVectorEiNS_8SmartPtrIKNS_6VectorEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.rv, i32 noundef %i.rw, ptr noundef nonnull align 8 %27)
          to label %bb.ei unwind label %bb.en

bb.ei:                                            ; preds = %bb.eh
  %i.rx = load ptr, ptr %27, align 8, !tbaa !103  ; 4 uses
  %.not.i.i263 = icmp eq ptr %i.rx, null
  br i1 %.not.i.i263, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 8 ; 2 uses
  %i.rz = load i32, ptr %i.ry, align 8, !tbaa !17
  %i.sa = add nsw i32 %i.rz, -1                   ; 2 uses
  store i32 %i.sa, ptr %i.ry, align 8, !tbaa !17
  %i.sb = icmp eq i32 %i.sa, 0
  br i1 %i.sb, label %bb.ek, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264

bb.ek:                                            ; preds = %bb.ej
  %i.sc = load ptr, ptr %i.rx, align 8, !tbaa !19
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.se = load ptr, ptr %i.sd, align 8
  call void %i.se(ptr noundef nonnull align 8 dereferenceable(205) %i.rx) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264:     ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.sf = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv530
  store double 1.000000e+00, ptr %i.sf, align 8, !tbaa !220
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  br i1 %.not.i.i.i261454, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266, label %bb.el

bb.el:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264
  %i.sg = getelementptr inbounds nuw i8, ptr %.0.i4.i257452, i64 8 ; 2 uses
  %i.sh = load i32, ptr %i.sg, align 8, !tbaa !17
  %i.si = add nsw i32 %i.sh, -1                   ; 2 uses
  store i32 %i.si, ptr %i.sg, align 8, !tbaa !17
  %i.sj = icmp eq i32 %i.si, 0
  br i1 %i.sj, label %bb.em, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266

bb.em:                                            ; preds = %bb.el
  %i.sk = load ptr, ptr %.0.i4.i257452, align 8, !tbaa !19
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i257452) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264, %bb.el, %bb.em
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next529, %wide.trip.count535
  br i1 %exitcond536.not, label %.loopexit.loopexit, label %bb.ef, !llvm.loop !175

bb.en:                                            ; preds = %bb.eh
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.so = load ptr, ptr %27, align 8, !tbaa !103  ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.so, null
  br i1 %.not.i.i267, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8 ; 2 uses
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !17
  %i.sr = add nsw i32 %i.sq, -1                   ; 2 uses
  store i32 %i.sr, ptr %i.sp, align 8, !tbaa !17
  %i.ss = icmp eq i32 %i.sr, 0
  br i1 %i.ss, label %.split468, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268

.split468:                                        ; preds = %bb.eo
  %i.st = load ptr, ptr %i.so, align 8, !tbaa !19
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 8
  %i.sv = load ptr, ptr %i.su, align 8
  call void %i.sv(ptr noundef nonnull align 8 dereferenceable(205) %i.so) #16, !inline_history !171
  br i1 %.not.i.i.i261454, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268:     ; preds = %bb.eo, %bb.en
  br i1 %.not.i.i.i261454, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread: ; preds = %.split468, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268
  %i.sw = getelementptr inbounds nuw i8, ptr %.0.i4.i257452, i64 8 ; 2 uses
  %i.sx = load i32, ptr %i.sw, align 8, !tbaa !17
  %i.sy = add nsw i32 %i.sx, -1                   ; 2 uses
  store i32 %i.sy, ptr %i.sw, align 8, !tbaa !17
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.ep, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.ep:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread
  %i.ta = load ptr, ptr %.0.i4.i257452, align 8, !tbaa !19
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tc = load ptr, ptr %i.tb, align 8
  call void %i.tc(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i257452) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

.loopexit.loopexit:                               ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266
  %i.td = trunc nuw i64 %indvars.iv.next531 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.loopexit509
  %.3 = phi i32 [ %.158.a, %.loopexit509 ], [ %.158.a, %.preheader ], [ %i.td, %.loopexit.loopexit ] ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.tf = load i32, ptr %i.te, align 8, !tbaa !47
  %i.tg = icmp slt i32 %.3, %i.tf
  br i1 %i.tg, label %.lr.ph519.preheader, label %._crit_edge

.lr.ph519.preheader:                              ; preds = %.loopexit
  %i.th = sext i32 %.3 to i64
  br label %.lr.ph519

.lr.ph519:                                        ; preds = %.lr.ph519.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272
  %indvars.iv537 = phi i64 [ %i.th, %.lr.ph519.preheader ], [ %indvars.iv.next538, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272 ] ; 3 uses
  %i.ti = load ptr, ptr %i.m, align 8, !tbaa !53
  store ptr null, ptr %28, align 8, !tbaa !103
  %i.tj = trunc nsw i64 %indvars.iv537 to i32
  invoke void @_ZN5Ipopt25ExpandedMultiVectorMatrix9SetVectorEiNS_8SmartPtrIKNS_6VectorEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.ti, i32 noundef %i.tj, ptr noundef nonnull align 8 %28)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %.lr.ph519
  %i.tk = load ptr, ptr %28, align 8, !tbaa !103  ; 4 uses
  %.not.i.i271 = icmp eq ptr %i.tk, null
  br i1 %.not.i.i271, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.tl = getelementptr inbounds nuw i8, ptr %i.tk, i64 8 ; 2 uses
  %i.tm = load i32, ptr %i.tl, align 8, !tbaa !17
  %i.tn = add nsw i32 %i.tm, -1                   ; 2 uses
  store i32 %i.tn, ptr %i.tl, align 8, !tbaa !17
  %i.to = icmp eq i32 %i.tn, 0
  br i1 %i.to, label %bb.es, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272

bb.es:                                            ; preds = %bb.er
  %i.tp = load ptr, ptr %i.tk, align 8, !tbaa !19
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.tr = load ptr, ptr %i.tq, align 8
  call void %i.tr(ptr noundef nonnull align 8 dereferenceable(205) %i.tk) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272:     ; preds = %bb.eq, %bb.er, %bb.es
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv537
  store double 1.000000e+00, ptr %i.ts, align 8, !tbaa !220
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.tt = load i32, ptr %i.te, align 8, !tbaa !47
  %i.tu = sext i32 %i.tt to i64
  %i.tv = icmp slt i64 %indvars.iv.next538, %i.tu
  br i1 %i.tv, label %.lr.ph519, label %._crit_edge, !llvm.loop !176

bb.et:                                            ; preds = %.lr.ph519
  %i.tw = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.tx = load ptr, ptr %28, align 8, !tbaa !103  ; 4 uses
  %.not.i.i273 = icmp eq ptr %i.tx, null
  br i1 %.not.i.i273, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8 ; 2 uses
  %i.tz = load i32, ptr %i.ty, align 8, !tbaa !17
  %i.ua = add nsw i32 %i.tz, -1                   ; 2 uses
  store i32 %i.ua, ptr %i.ty, align 8, !tbaa !17
  %i.ub = icmp eq i32 %i.ua, 0
  br i1 %i.ub, label %bb.ev, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.ev:                                            ; preds = %bb.eu
  %i.uc = load ptr, ptr %i.tx, align 8, !tbaa !19
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 8
  %i.ue = load ptr, ptr %i.ud, align 8
  call void %i.ue(ptr noundef nonnull align 8 dereferenceable(205) %i.tx) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272, %.loopexit
  %.not133 = icmp eq ptr %8, null
  br i1 %.not133, label %bb.ex, label %bb.ew

end_hunk_0
begin_hunk_1_@_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_:bb.a

bb.fa:                                            ; preds = %bb.ez
  %i.ux = load ptr, ptr %i.ul, align 8, !tbaa !19
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.uz = load ptr, ptr %i.uy, align 8
  call void %i.uz(ptr noundef nonnull align 8 dereferenceable(205) %i.ul) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283

bb.fb:                                            ; preds = %bb.ew, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283, %bb.fe, %bb.cq, %.noexc231, %bb.cs, %bb.ex
  %i.va = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.fc:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit281, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit278, %.noexc279
  %i.vb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.ul, i64 8 ; 2 uses
  %i.vd = load i32, ptr %i.vc, align 8, !tbaa !17
  %i.ve = add nsw i32 %i.vd, -1                   ; 2 uses
  store i32 %i.ve, ptr %i.vc, align 8, !tbaa !17
  %i.vf = icmp eq i32 %i.ve, 0
  br i1 %i.vf, label %bb.fd, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.fd:                                            ; preds = %bb.fc
  %i.vg = load ptr, ptr %i.ul, align 8, !tbaa !19
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(205) %i.ul) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283:      ; preds = %bb.fa, %bb.ez, %bb.ew
  %i.vj = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.vk = load ptr, ptr %i.vj, align 8, !tbaa !52
  invoke void @_ZN5Ipopt14CompoundMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(129) %i.vk, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(69) %7)
          to label %bb.fe unwind label %bb.fb

bb.fe:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283
  %i.vl = load ptr, ptr %i.vj, align 8, !tbaa !52
  %i.vm = load ptr, ptr %i.m, align 8, !tbaa !53
  invoke void @_ZN5Ipopt14CompoundMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(129) %i.vl, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(69) %i.vm)
          to label %bb.ff unwind label %bb.fb

bb.ff:                                            ; preds = %bb.fe
  %i.vn = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 4 uses
  %i.vo = load i32, ptr %i.vn, align 8, !tbaa !17
  %i.vp = add nsw i32 %i.vo, -1                   ; 3 uses
  store i32 %i.vp, ptr %i.vn, align 8, !tbaa !17
  %i.vq = icmp eq i32 %i.vp, 0
  br i1 %i.vq, label %bb.fg, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.fg:                                            ; preds = %bb.ff
  %i.vr = load ptr, ptr %i.mv, align 8, !tbaa !19
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(248) %i.mv) #16, !inline_history !177
  %.pre540 = load i32, ptr %i.vn, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit:   ; preds = %bb.fg, %bb.ff
  %i.vu = phi i32 [ %.pre540, %bb.fg ], [ %i.vp, %bb.ff ]
  %i.vv = add nsw i32 %i.vu, -1                   ; 2 uses
  store i32 %i.vv, ptr %i.vn, align 8, !tbaa !17
  %i.vw = icmp eq i32 %i.vv, 0
  br i1 %i.vw, label %bb.fh, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288

bb.fh:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit
  %i.vx = load ptr, ptr %i.mv, align 8, !tbaa !19
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vx, i64 8
  %i.vz = load ptr, ptr %i.vy, align 8
  call void %i.vz(ptr noundef nonnull align 8 dereferenceable(205) %i.mv) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288:      ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit, %bb.fh
  br i1 %.not507, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290, label %bb.fi

bb.fi:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288
  %i.wa = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 8 ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 8, !tbaa !17
  %i.wc = add nsw i32 %i.wb, -1                   ; 2 uses
  store i32 %i.wc, ptr %i.wa, align 8, !tbaa !17
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %bb.fj, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290

bb.fj:                                            ; preds = %bb.fi
  %i.we = load ptr, ptr %.sroa.0344.0424, align 8, !tbaa !19
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 8
  %i.wg = load ptr, ptr %i.wf, align 8
  call void %i.wg(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0344.0424) #16, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288, %bb.fi, %bb.fj
  br i1 %.not506, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292, label %bb.fk

bb.fk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290
  %i.wh = getelementptr inbounds nuw i8, ptr %.sroa.0350.0404, i64 8 ; 2 uses
  %i.wi = load i32, ptr %i.wh, align 8, !tbaa !17
  %i.wj = add nsw i32 %i.wi, -1                   ; 2 uses
  store i32 %i.wj, ptr %i.wh, align 8, !tbaa !17
  %i.wk = icmp eq i32 %i.wj, 0
  br i1 %i.wk, label %bb.fl, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292

bb.fl:                                            ; preds = %bb.fk
  %i.wl = load ptr, ptr %.sroa.0350.0404, align 8, !tbaa !19
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 8
  %i.wn = load ptr, ptr %i.wm, align 8
  call void %i.wn(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0350.0404) #16, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292: ; preds = %bb.fl, %bb.fk, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290
  %i.wo = getelementptr inbounds nuw i8, ptr %.sroa.0356.1, i64 8 ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !17
  %i.wq = add nsw i32 %i.wp, -1                   ; 2 uses
  store i32 %i.wq, ptr %i.wo, align 8, !tbaa !17
  %i.wr = icmp eq i32 %i.wq, 0
  br i1 %i.wr, label %bb.fm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294

bb.fm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292
  %i.ws = load ptr, ptr %.sroa.0356.1, align 8, !tbaa !19
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 8
  %i.wu = load ptr, ptr %i.wt, align 8
  call void %i.wu(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0356.1) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292, %bb.fm
  br i1 %.not.i.i.i.i.i151, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit296, label %bb.fn

bb.fn:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294
  %i.wv = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !17
  %i.wx = add nsw i32 %i.ww, -1                   ; 2 uses
  store i32 %i.wx, ptr %i.wv, align 8, !tbaa !17
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %bb.fo, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit296

bb.fo:                                            ; preds = %bb.fn
  %i.wz = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.xa = getelementptr inbounds nuw i8, ptr %i.wz, i64 8
  %i.xb = load ptr, ptr %i.xa, align 8
  call void %i.xb(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #16, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit296

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit296: ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294, %bb.fn, %bb.fo
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit, label %bb.fp

bb.fp:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit296
  %i.xc = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 8, !tbaa !17
  %i.xe = add nsw i32 %i.xd, -1                   ; 2 uses
  store i32 %i.xe, ptr %i.xc, align 8, !tbaa !17
  %i.xf = icmp eq i32 %i.xe, 0
  br i1 %i.xf, label %bb.fq, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

bb.fq:                                            ; preds = %bb.fp
  %i.xg = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 8
  %i.xi = load ptr, ptr %i.xh, align 8
  call void %i.xi(ptr noundef nonnull align 8 dereferenceable(69) %i.d) #16, !inline_history !178
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit:        ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit296, %bb.fp, %bb.fq
  ret i32 0

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247:     ; preds = %bb.fb, %bb.fc, %bb.fd, %bb.ev, %bb.eu, %bb.et, %.split468, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread, %bb.ep, %.split, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245.thread, %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %.pn140.pn.pn.pn.pn = phi { ptr, i32 } [ %i.tw, %bb.eu ], [ %i.tw, %bb.ev ], [ %i.pu, %.split ], [ %i.sn, %.split468 ], [ %.pn129.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ], [ %i.vb, %bb.fd ], [ %i.vb, %bb.fc ], [ %i.pu, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245 ], [ %i.pu, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit245.thread ], [ %i.pu, %bb.dr ], [ %i.va, %bb.fb ], [ %i.sn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268 ], [ %i.sn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread ], [ %i.sn, %bb.ep ], [ %i.tw, %bb.et ] ; 2 uses
  br i1 %.not.i.i.i228, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215, label %bb.fr

bb.fr:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247.thread, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247
  %.pn140.pn.pn.pn.pn476 = phi { ptr, i32 } [ %.pn124.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247.thread ], [ %.pn140.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247 ] ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 4 uses
  %i.xk = load i32, ptr %i.xj, align 8, !tbaa !17
  %i.xl = add nsw i32 %i.xk, -1                   ; 3 uses
  store i32 %i.xl, ptr %i.xj, align 8, !tbaa !17
  %i.xm = icmp eq i32 %i.xl, 0
  br i1 %i.xm, label %bb.fs, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread

bb.fs:                                            ; preds = %bb.fr
  %i.xn = load ptr, ptr %i.mv, align 8, !tbaa !19
  %i.xo = getelementptr inbounds nuw i8, ptr %i.xn, i64 8
  %i.xp = load ptr, ptr %i.xo, align 8
  call void %i.xp(ptr noundef nonnull align 8 dereferenceable(248) %i.mv) #16, !inline_history !177
  %.pre = load i32, ptr %i.xj, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread: ; preds = %bb.fr, %bb.fs
  %i.xq = phi i32 [ %i.xl, %bb.fr ], [ %.pre, %bb.fs ]
  %i.xr = add nsw i32 %i.xq, -1                   ; 2 uses
  store i32 %i.xr, ptr %i.xj, align 8, !tbaa !17
  %i.xs = icmp eq i32 %i.xr, 0
  br i1 %i.xs, label %bb.ft, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215

bb.ft:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread
  %i.xt = load ptr, ptr %i.mv, align 8, !tbaa !19
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8
  call void %i.xv(ptr noundef nonnull align 8 dereferenceable(205) %i.mv) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215:      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, %bb.db, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread, %bb.ft, %bb.ck, %bb.cl, %bb.bz, %bb.ca, %bb.cb
  %.sroa.0344.0416 = phi ptr [ %.sroa.0344.0424, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247 ], [ %.sroa.0344.0.ph, %bb.bz ], [ %.sroa.0344.0424, %bb.db ], [ %.sroa.0344.0424, %bb.ck ], [ %.sroa.0344.0424, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread ], [ %.sroa.0344.0424, %bb.ft ], [ %.sroa.0344.0.ph, %bb.cb ], [ %.sroa.0344.0.ph, %bb.ca ], [ %.sroa.0344.0424, %bb.cl ] ; 4 uses
  %.sroa.0350.0406 = phi ptr [ %.sroa.0350.0404, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247 ], [ %.sroa.0350.0.ph, %bb.bz ], [ %.sroa.0350.0404, %bb.db ], [ %.sroa.0350.0404, %bb.ck ], [ %.sroa.0350.0404, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread ], [ %.sroa.0350.0404, %bb.ft ], [ %.sroa.0350.0.ph, %bb.cb ], [ %.sroa.0350.0.ph, %bb.ca ], [ %.sroa.0350.0404, %bb.cl ] ; 4 uses
  %.sroa.0356.2 = phi i1 [ false, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247 ], [ true, %bb.bz ], [ false, %bb.db ], [ false, %bb.ck ], [ false, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread ], [ false, %bb.ft ], [ true, %bb.cb ], [ true, %bb.ca ], [ false, %bb.cl ]
  %.sroa.0356.2.a = phi ptr [ %.sroa.0356.1, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247 ], [ null, %bb.bz ], [ %.sroa.0356.1, %bb.db ], [ %.sroa.0356.1, %bb.ck ], [ %.sroa.0356.1, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread ], [ %.sroa.0356.1, %bb.ft ], [ null, %bb.cb ], [ null, %bb.ca ], [ %.sroa.0356.1, %bb.cl ] ; 2 uses
  %.pn140.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247 ], [ %i.jy, %bb.bz ], [ %i.oc, %bb.db ], [ %i.lu, %bb.ck ], [ %.pn140.pn.pn.pn.pn476, %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit299.thread ], [ %.pn140.pn.pn.pn.pn476, %bb.ft ], [ %i.jz, %bb.cb ], [ %i.jz, %bb.ca ], [ %i.lu, %bb.cl ] ; 3 uses
  %.not.i.i302 = icmp eq ptr %.sroa.0344.0416, null
  br i1 %.not.i.i302, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit303, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215.thread

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215.thread: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215
  %i.xw = getelementptr inbounds nuw i8, ptr %.sroa.0344.0416, i64 8 ; 2 uses
  %i.xx = load i32, ptr %i.xw, align 8, !tbaa !17
  %i.xy = add nsw i32 %i.xx, -1                   ; 2 uses
  store i32 %i.xy, ptr %i.xw, align 8, !tbaa !17
  %i.xz = icmp eq i32 %i.xy, 0
  br i1 %i.xz, label %bb.fu, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit303

bb.fu:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215.thread
  %i.ya = load ptr, ptr %.sroa.0344.0416, align 8, !tbaa !19
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 8
  %i.yc = load ptr, ptr %i.yb, align 8
  call void %i.yc(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0344.0416) #16, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit303

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit303: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit215.thread, %bb.fu
  %.not.i.i304 = icmp eq ptr %.sroa.0350.0406, null
  br i1 %.not.i.i304, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305, label %bb.fv

bb.fv:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit303
  %i.yd = getelementptr inbounds nuw i8, ptr %.sroa.0350.0406, i64 8 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 8, !tbaa !17
  %i.yf = add nsw i32 %i.ye, -1                   ; 2 uses
  store i32 %i.yf, ptr %i.yd, align 8, !tbaa !17
  %i.yg = icmp eq i32 %i.yf, 0
  br i1 %i.yg, label %bb.fw, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305

bb.fw:                                            ; preds = %bb.fv
  %i.yh = load ptr, ptr %.sroa.0350.0406, align 8, !tbaa !19
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0350.0406) #16, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305: ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit303, %bb.fv, %bb.fw
  br i1 %.sroa.0356.2, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186, label %bb.fx

bb.fx:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305
  %i.yk = getelementptr inbounds nuw i8, ptr %.sroa.0356.2.a, i64 8 ; 2 uses
  %i.yl = load i32, ptr %i.yk, align 8, !tbaa !17
  %i.ym = add nsw i32 %i.yl, -1                   ; 2 uses
  store i32 %i.ym, ptr %i.yk, align 8, !tbaa !17
  %i.yn = icmp eq i32 %i.ym, 0
  br i1 %i.yn, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186.sink.split, label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186.sink.split: ; preds = %bb.fx, %bb.bp
  %.sroa.0356.2.sink600 = phi ptr [ %i.d, %bb.bp ], [ %.sroa.0356.2.a, %bb.fx ] ; 2 uses
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.ph = phi { ptr, i32 } [ %.pn107.pn.pn.pn.pn.pn, %bb.bp ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %bb.fx ]
  %i.yo = load ptr, ptr %.sroa.0356.2.sink600, align 8, !tbaa !19
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 8
  %i.yq = load ptr, ptr %i.yp, align 8
  call void %i.yq(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0356.2.sink600) #16
  br label %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186

_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186: ; preds = %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186.sink.split, %bb.fx, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305, %bb.bp, %_ZN5Ipopt8SmartPtrINS_30ExpandedMultiVectorMatrixSpaceEED2Ev.exit184
  %.pn140.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %bb.fx ], [ %.pn107.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrINS_30ExpandedMultiVectorMatrixSpaceEED2Ev.exit184 ], [ %.pn107.pn.pn.pn.pn.pn, %bb.bp ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit305 ], [ %.pn140.pn.pn.pn.pn.pn.pn.pn.pn.ph, %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186.sink.split ]
  br i1 %.not.i.i.i.i.i151, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit309, label %bb.fy

bb.fy:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186
  %i.yr = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.ys = load i32, ptr %i.yr, align 8, !tbaa !17
  %i.yt = add nsw i32 %i.ys, -1                   ; 2 uses
  store i32 %i.yt, ptr %i.yr, align 8, !tbaa !17
  %i.yu = icmp eq i32 %i.yt, 0
  br i1 %i.yu, label %bb.fz, label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit309

bb.fz:                                            ; preds = %bb.fy
  %i.yv = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 8
  %i.yx = load ptr, ptr %i.yw, align 8
  call void %i.yx(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #16, !inline_history !153
  br label %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit309

_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit309: ; preds = %bb.fz, %bb.fy, %_ZN5Ipopt8SmartPtrIKNS_15ExpansionMatrixEED2Ev.exit186
  br i1 %.not.i.i.i.i.i, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit311, label %bb.ga

bb.ga:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit309
  %i.yy = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.yz = load i32, ptr %i.yy, align 8, !tbaa !17
  %i.za = add nsw i32 %i.yz, -1                   ; 2 uses
  store i32 %i.za, ptr %i.yy, align 8, !tbaa !17
  %i.zb = icmp eq i32 %i.za, 0
  br i1 %i.zb, label %bb.gb, label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit311

bb.gb:                                            ; preds = %bb.ga
  %i.zc = load ptr, ptr %i.d, align 8, !tbaa !19
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 8
  %i.ze = load ptr, ptr %i.zd, align 8
  call void %i.ze(ptr noundef nonnull align 8 dereferenceable(69) %i.d) #16, !inline_history !178
  br label %_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit311

_ZN5Ipopt8SmartPtrIKNS_6MatrixEED2Ev.exit311:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_11VectorSpaceEED2Ev.exit309, %bb.ga, %bb.gb
  resume { ptr, i32 } %.pn140.pn.pn.pn.pn.pn.pn.pn.pn

bb.gc:                                            ; preds = %bb.dz, %bb.da
  unreachable
}

declare void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265), i32 noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #7

declare void @_ZN5Ipopt14CompoundVector15SetCompNonConstEiRNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265), i32 noundef, ptr noundef nonnull align 8 dereferenceable(205)) local_unnamed_addr #7

declare void @_ZN5Ipopt30ExpandedMultiVectorMatrixSpaceC1EiRKNS_11VectorSpaceENS_8SmartPtrIKNS_15ExpansionMatrixEEE(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef align 8) unnamed_addr #7

declare void @_ZN5Ipopt19CompoundMatrixSpaceC1Eiiii(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #7

declare void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockRowsEii(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN5Ipopt19CompoundMatrixSpace12SetBlockColsEii(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN5Ipopt19CompoundMatrixSpace12SetCompSpaceEiiRKNS_11MatrixSpaceEb(ptr noundef nonnull align 8 dereferenceable(129), i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(20), i1 noundef zeroext) local_unnamed_addr #7

declare noundef ptr @_ZNK5Ipopt19CompoundMatrixSpace21MakeNewCompoundMatrixEv(ptr noundef nonnull align 8 dereferenceable(129)) local_unnamed_addr #7

declare void @_ZN5Ipopt19CompoundVectorSpaceC1Eii(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, i32 noundef) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !114
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !115
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !108
  %i.g = load i64, ptr %i.a, align 8, !tbaa !115
  store i64 %i.g, ptr %i.b, align 8, !tbaa !109
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !109
  store i8 %i.i, ptr %i.h, align 1, !tbaa !109
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !115  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !116
  %i.l = load ptr, ptr %0, align 8, !tbaa !108
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3 align 2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Ipopt14INTERNAL_ABORTC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 1 dereferenceable(14) @.str.7, i64 14, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 14, ptr %i.b, align 8, !tbaa !116
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 30
  store i8 0, ptr %i.c, align 2, !tbaa !109
  invoke void @_ZN5Ipopt14IpoptExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_iS8_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !109
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14INTERNAL_ABORTE, i64 16), ptr %0, align 8, !tbaa !19
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %4, align 8, !tbaa !108    ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.a
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.k = load i64, ptr %i.a, align 8, !tbaa !109
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Ipopt14IpoptExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5Ipopt14IpoptExceptionE, i64 16), ptr %0, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !109
end_hunk_1
