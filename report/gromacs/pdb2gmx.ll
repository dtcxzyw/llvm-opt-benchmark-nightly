Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pdb2gmx?download=true
inline.NumInlined: 3969
inline.NumDeleted: 1664
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN3gmx12_GLOBAL__N_17pdb2gmx3runEv:bb.a
  store ptr %i.cvs, ptr %i.cvv, align 8, !tbaa !185
  store ptr %i.cvs, ptr %i.cvu, align 8, !tbaa !151
  %.pre9.i.i = load i32, ptr %i.cpk, align 8, !tbaa !148
  br label %bb.vq

bb.vq:                                            ; preds = %.noexc1364, %.lr.ph.split.us.i.i
  %i.cvw = phi i32 [ %.pre9.i.i, %.noexc1364 ], [ %i.cpr, %.lr.ph.split.us.i.i ] ; 3 uses
  %i.cvx = phi ptr [ %i.cvt, %.noexc1364 ], [ %i.cps, %.lr.ph.split.us.i.i ]
  %indvars.iv.next5.i.i = add nuw nsw i64 %indvars.iv4.i.i, 1 ; 2 uses
  %i.cvy = sext i32 %i.cvw to i64
  %i.cvz = icmp slt i64 %indvars.iv.next5.i.i, %i.cvy
  br i1 %i.cvz, label %.lr.ph.split.us.i.i, label %_ZN12_GLOBAL__N_126renameResidueInteractivelyEP7t_atomsPKcPFS3_iN3gmx8ArrayRefIK9RtpRenameEEEbP8t_symtabS8_.exit85.i, !llvm.loop !381

_ZN12_GLOBAL__N_126renameResidueInteractivelyEP7t_atomsPKcPFS3_iN3gmx8ArrayRefIK9RtpRenameEEEbP8t_symtabS8_.exit85.i: ; preds = %bb.vq, %.noexc1356
  %i.cwa = phi i32 [ %.pre.i1323, %.noexc1356 ], [ %i.cvw, %bb.vq ] ; 3 uses
  %i.cwb = icmp sgt i32 %i.cwa, 0
  br i1 %i.cwb, label %.lr.ph.i86.i, label %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit

.lr.ph.i86.i:                                     ; preds = %_ZN12_GLOBAL__N_126renameResidueInteractivelyEP7t_atomsPKcPFS3_iN3gmx8ArrayRefIK9RtpRenameEEEbP8t_symtabS8_.exit85.i
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.byn, i64 48
  %i.cwd = load ptr, ptr %i.cwc, align 8, !tbaa !149 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.cwa to i64 ; 2 uses
  %xtraiter11571 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.cwe = icmp ult i32 %i.cwa, 4
  br i1 %i.cwe, label %.epil.preheader11570, label %.lr.ph.i86.i.new

.lr.ph.i86.i.new:                                 ; preds = %.lr.ph.i86.i
  %unroll_iter11575 = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.vr

bb.vr:                                            ; preds = %bb.vz, %.lr.ph.i86.i.new
  %indvars.iv.i87.i = phi i64 [ 0, %.lr.ph.i86.i.new ], [ %indvars.iv.next.i88.i.3, %bb.vz ] ; 5 uses
  %niter11576 = phi i64 [ 0, %.lr.ph.i86.i.new ], [ %niter11576.next.3, %bb.vz ]
  %i.cwf = getelementptr inbounds nuw [32 x i8], ptr %i.cwd, i64 %indvars.iv.i87.i ; 2 uses
  %i.cwg = getelementptr inbounds nuw i8, ptr %i.cwf, i64 24 ; 2 uses
  %i.cwh = load ptr, ptr %i.cwg, align 8, !tbaa !185
  %i.cwi = icmp eq ptr %i.cwh, null
  br i1 %i.cwi, label %bb.vs, label %bb.vt

bb.vs:                                            ; preds = %bb.vr
  %i.cwj = load ptr, ptr %i.cwf, align 8, !tbaa !151
  store ptr %i.cwj, ptr %i.cwg, align 8, !tbaa !185
  br label %bb.vt

bb.vt:                                            ; preds = %bb.vs, %bb.vr
  %i.cwk = getelementptr inbounds nuw [32 x i8], ptr %i.cwd, i64 %indvars.iv.i87.i ; 2 uses
  %i.cwl = getelementptr inbounds nuw i8, ptr %i.cwk, i64 56 ; 2 uses
  %i.cwm = load ptr, ptr %i.cwl, align 8, !tbaa !185
  %i.cwn = icmp eq ptr %i.cwm, null
  br i1 %i.cwn, label %bb.vu, label %bb.vv

bb.vu:                                            ; preds = %bb.vt
  %i.cwo = getelementptr inbounds nuw i8, ptr %i.cwk, i64 32
  %i.cwp = load ptr, ptr %i.cwo, align 8, !tbaa !151
  store ptr %i.cwp, ptr %i.cwl, align 8, !tbaa !185
  br label %bb.vv

bb.vv:                                            ; preds = %bb.vu, %bb.vt
  %i.cwq = getelementptr inbounds nuw [32 x i8], ptr %i.cwd, i64 %indvars.iv.i87.i ; 2 uses
  %i.cwr = getelementptr inbounds nuw i8, ptr %i.cwq, i64 88 ; 2 uses
  %i.cws = load ptr, ptr %i.cwr, align 8, !tbaa !185
  %i.cwt = icmp eq ptr %i.cws, null
  br i1 %i.cwt, label %bb.vw, label %bb.vx

bb.vw:                                            ; preds = %bb.vv
  %i.cwu = getelementptr inbounds nuw i8, ptr %i.cwq, i64 64
  %i.cwv = load ptr, ptr %i.cwu, align 8, !tbaa !151
  store ptr %i.cwv, ptr %i.cwr, align 8, !tbaa !185
  br label %bb.vx

bb.vx:                                            ; preds = %bb.vw, %bb.vv
  %i.cww = getelementptr inbounds nuw [32 x i8], ptr %i.cwd, i64 %indvars.iv.i87.i ; 2 uses
  %i.cwx = getelementptr inbounds nuw i8, ptr %i.cww, i64 120 ; 2 uses
  %i.cwy = load ptr, ptr %i.cwx, align 8, !tbaa !185
  %i.cwz = icmp eq ptr %i.cwy, null
  br i1 %i.cwz, label %bb.vy, label %bb.vz

bb.vy:                                            ; preds = %bb.vx
  %i.cxa = getelementptr inbounds nuw i8, ptr %i.cww, i64 96
  %i.cxb = load ptr, ptr %i.cxa, align 8, !tbaa !151
  store ptr %i.cxb, ptr %i.cwx, align 8, !tbaa !185
  br label %bb.vz

bb.vz:                                            ; preds = %bb.vy, %bb.vx
  %indvars.iv.next.i88.i.3 = add nuw nsw i64 %indvars.iv.i87.i, 4 ; 2 uses
  %niter11576.next.3 = add i64 %niter11576, 4     ; 2 uses
  %niter11576.ncmp.3 = icmp eq i64 %niter11576.next.3, %unroll_iter11575
  br i1 %niter11576.ncmp.3, label %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit.loopexit.unr-lcssa, label %bb.vr, !llvm.loop !382

_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit.loopexit.unr-lcssa: ; preds = %bb.vz
  %lcmp.mod11573.not = icmp eq i64 %xtraiter11571, 0
  br i1 %lcmp.mod11573.not, label %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit, label %.epil.preheader11570

.epil.preheader11570:                             ; preds = %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit.loopexit.unr-lcssa, %.lr.ph.i86.i
  %indvars.iv.i87.i.epil.init = phi i64 [ 0, %.lr.ph.i86.i ], [ %indvars.iv.next.i88.i.3, %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod11574 = icmp ne i64 %xtraiter11571, 0
  call void @llvm.assume(i1 %lcmp.mod11574)
  br label %bb.wa

bb.wa:                                            ; preds = %bb.wc, %.epil.preheader11570
  %indvars.iv.i87.i.epil = phi i64 [ %indvars.iv.i87.i.epil.init, %.epil.preheader11570 ], [ %indvars.iv.next.i88.i.epil, %bb.wc ] ; 2 uses
  %epil.iter11572 = phi i64 [ 0, %.epil.preheader11570 ], [ %epil.iter11572.next, %bb.wc ]
  %i.cxc = getelementptr inbounds nuw [32 x i8], ptr %i.cwd, i64 %indvars.iv.i87.i.epil ; 2 uses
  %i.cxd = getelementptr inbounds nuw i8, ptr %i.cxc, i64 24 ; 2 uses
  %i.cxe = load ptr, ptr %i.cxd, align 8, !tbaa !185
  %i.cxf = icmp eq ptr %i.cxe, null
  br i1 %i.cxf, label %bb.wb, label %bb.wc

bb.wb:                                            ; preds = %bb.wa
  %i.cxg = load ptr, ptr %i.cxc, align 8, !tbaa !151
  store ptr %i.cxg, ptr %i.cxd, align 8, !tbaa !185
  br label %bb.wc

bb.wc:                                            ; preds = %bb.wb, %bb.wa
  %indvars.iv.next.i88.i.epil = add nuw nsw i64 %indvars.iv.i87.i.epil, 1
  %epil.iter11572.next = add i64 %epil.iter11572, 1 ; 2 uses
  %epil.iter11572.cmp.not = icmp eq i64 %epil.iter11572.next, %xtraiter11571
  br i1 %epil.iter11572.cmp.not, label %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit, label %bb.wa, !llvm.loop !383

_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit: ; preds = %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit.loopexit.unr-lcssa, %bb.wc, %_ZN12_GLOBAL__N_126renameResidueInteractivelyEP7t_atomsPKcPFS3_iN3gmx8ArrayRefIK9RtpRenameEEEbP8t_symtabS8_.exit85.i, %bb.tg
  %i.cxh = load ptr, ptr %i.ap, align 8, !tbaa !509
  %i.cxi = getelementptr inbounds nuw i8, ptr %i.cxh, i64 40
  %i.cxj = load i32, ptr %i.cxi, align 8, !tbaa !148
  %i.cxk = getelementptr inbounds nuw i8, ptr %i.bwu, i64 16 ; 2 uses
  %i.cxl = getelementptr inbounds nuw i8, ptr %i.bwu, i64 12 ; 11 uses
  %i.cxm = load i32, ptr %i.cxl, align 4, !tbaa !505
  %i.cxn = sext i32 %i.cxm to i64
  %i.cxo = load ptr, ptr %i.cxk, align 8, !tbaa !157
  %i.cxp = getelementptr inbounds nuw [4 x i8], ptr %i.cxo, i64 %i.cxn
  store i32 %i.cxj, ptr %i.cxp, align 4, !tbaa !113
  %i.cxq = load i32, ptr %i.cxl, align 4, !tbaa !505
  %i.cxr = icmp sgt i32 %i.cxq, 0
  br i1 %i.cxr, label %.lr.ph5705, label %._crit_edge5706.thread

._crit_edge5706.thread:                           ; preds = %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit
  store i32 0, ptr %i.cxl, align 4, !tbaa !505
  br label %bb.aew

.lr.ph5705:                                       ; preds = %_ZN12_GLOBAL__N_113process_chainERKN3gmx8MDLoggerEP7t_atomsNS0_8ArrayRefINS0_11BasicVectorIfEEEEbbbbbbbbbffP8t_symtabNS6_IK9RtpRenameEE.exit
  %i.cxs = getelementptr inbounds nuw i8, ptr %i.bwu, i64 88 ; 4 uses
  %i.cxt = getelementptr inbounds nuw i8, ptr %i.bwu, i64 112 ; 4 uses
  %i.cxu = getelementptr inbounds nuw i8, ptr %i.bwu, i64 168 ; 4 uses
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.bwu, i64 176 ; 5 uses
  %i.cxw = getelementptr inbounds nuw i8, ptr %i.bwu, i64 184 ; 5 uses
  br label %bb.wd

._crit_edge5706:                                  ; preds = %bb.aev
  store i32 %.1471, ptr %i.cxl, align 4, !tbaa !505
  %i.cxx = icmp eq i32 %.1471, 0
  br i1 %i.cxx, label %bb.aew, label %bb.afb

.loopexit2925:                                    ; preds = %bb.th, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i135.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3.i.i.i, %_ZN12_GLOBAL__N_19get_histpEiN3gmx8ArrayRefIK9RtpRenameEE.exit.i, %.noexc1363
  %lpad.loopexit2927 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit:                  ; preds = %_ZN12_GLOBAL__N_19get_glutpEiN3gmx8ArrayRefIK9RtpRenameEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i125.i
  %lpad.loopexit2930 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit.split-lp.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i115.i, %_ZN12_GLOBAL__N_19get_asptpEiN3gmx8ArrayRefIK9RtpRenameEE.exit.i
  %lpad.loopexit2933 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN12_GLOBAL__N_19get_glntpEiN3gmx8ArrayRefIK9RtpRenameEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i105.i
  %lpad.loopexit2936 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i95.i, %_ZN12_GLOBAL__N_19get_argtpEiN3gmx8ArrayRefIK9RtpRenameEE.exit.i
  %lpad.loopexit2939 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_ZN12_GLOBAL__N_19get_lystpEiN3gmx8ArrayRefIK9RtpRenameEE.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.1.i.i.i
  %lpad.loopexit2942 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.oa, %bb.ob, %bb.oc, %bb.sd, %bb.te, %bb.tf
  %lpad.loopexit2945 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

.loopexit.split-lp2926.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.oz, %bb.pz, %bb.qz, %bb.rz, %bb.ta, %bb.vn
  %lpad.loopexit.split-lp2946 = landingpad { ptr, i32 }
          cleanup
  br label %.body1339

bb.wd:                                            ; preds = %.lr.ph5705, %bb.aev
  %indvars.iv6899.a = phi i64 [ 0, %.lr.ph5705 ], [ %indvars.iv.next6900.a, %bb.aev ] ; 2 uses
  %.04705703 = phi i32 [ 0, %.lr.ph5705 ], [ %.1471, %bb.aev ] ; 5 uses
  %i.cxy = load ptr, ptr %i.ap, align 8, !tbaa !509
  %i.cxz = load ptr, ptr %i.cxk, align 8, !tbaa !157 ; 2 uses
  %i.cya = getelementptr inbounds nuw [4 x i8], ptr %i.cxz, i64 %indvars.iv6899.a
  %i.cyb = load i32, ptr %i.cya, align 4, !tbaa !113 ; 3 uses
  %indvars.iv.next6900.a = add nuw nsw i64 %indvars.iv6899.a, 1 ; 3 uses
  %i.cyc = getelementptr inbounds nuw [4 x i8], ptr %i.cxz, i64 %indvars.iv.next6900.a
  %i.cyd = load i32, ptr %i.cyc, align 4, !tbaa !113 ; 7 uses
  %i.cye = sext i32 %.04705703 to i64             ; 8 uses
  %i.cyf = load ptr, ptr %i.cxs, align 8, !tbaa !157
  %i.cyg = getelementptr inbounds nuw [4 x i8], ptr %i.cyf, i64 %i.cye ; 5 uses
  %i.cyh = load ptr, ptr %i.cxt, align 8, !tbaa !157
  %i.cyi = getelementptr inbounds nuw [4 x i8], ptr %i.cyh, i64 %i.cye ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #33
  store i8 0, ptr %i.bni, align 8, !tbaa !539
  store i32 -1, ptr %i.cyg, align 4, !tbaa !113
  store i32 -1, ptr %i.cyi, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #33
  %i.cyj = getelementptr inbounds nuw i8, ptr %i.cxy, i64 48 ; 15 uses
  %i.cyk = load ptr, ptr %i.cyj, align 8, !tbaa !149
  %i.cyl = sext i32 %i.cyb to i64                 ; 4 uses
  %i.cym = getelementptr inbounds [32 x i8], ptr %i.cyk, i64 %i.cyl ; 2 uses
  %i.cyn = load ptr, ptr %i.cym, align 8, !tbaa !151
  %i.cyo = load ptr, ptr %i.cyn, align 8, !tbaa !112
  %i.cyp = getelementptr inbounds nuw i8, ptr %i.cym, i64 8
  %i.cyq = load i32, ptr %i.cyp, align 8, !tbaa !476
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull @.str.365, ptr noundef %i.cyo, i32 noundef %i.cyq)
          to label %.noexc.i1365 unwind label %bb.yi

.noexc.i1365:                                     ; preds = %bb.wd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #33
  %i.cyr = load ptr, ptr %i.cyj, align 8, !tbaa !149
  %i.cys = sext i32 %i.cyd to i64                 ; 2 uses
  %i.cyt = getelementptr [32 x i8], ptr %i.cyr, i64 %i.cys ; 2 uses
  %i.cyu = getelementptr i8, ptr %i.cyt, i64 -32
  %i.cyv = load ptr, ptr %i.cyu, align 8, !tbaa !151
  %i.cyw = load ptr, ptr %i.cyv, align 8, !tbaa !112
  %i.cyx = getelementptr i8, ptr %i.cyt, i64 -24
  %i.cyy = load i32, ptr %i.cyx, align 8, !tbaa !476
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.365, ptr noundef %i.cyw, i32 noundef %i.cyy)
          to label %bb.we unwind label %bb.wg

bb.we:                                            ; preds = %.noexc.i1365
  %i.cyz = load ptr, ptr %i.cyj, align 8, !tbaa !149 ; 2 uses
  %i.cza = getelementptr inbounds [32 x i8], ptr %i.cyz, i64 %i.cyl ; 2 uses
  %i.czb = getelementptr inbounds nuw i8, ptr %i.cza, i64 20
  %i.czc = load i8, ptr %i.czb, align 4, !tbaa !472 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #33
  store ptr %i.bnj, ptr %19, align 8, !tbaa !58
  store i64 0, ptr %i.bnk, align 8, !tbaa !59
  store i8 0, ptr %i.bnj, align 8, !tbaa !60
  %i.czd = add nsw i32 %i.cyb, 1                  ; 3 uses
  %.not57159.i.i = icmp slt i32 %i.czd, %i.cyd    ; 2 uses
  br i1 %.not57159.i.i, label %.lr.ph.preheader.i.i, label %.critedge.i.i1366

.lr.ph.preheader.i.i:                             ; preds = %bb.we
  %i.cze = sext i32 %i.czd to i64
  br label %.lr.ph.i.i1385

bb.wf:                                            ; preds = %.lr.ph.i.i1385
  %indvars.iv.next.i.i1393 = add nsw i64 %indvars.iv.i.i1386, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc i64 %indvars.iv.next.i.i1393 to i32
  %exitcond.not.i.i1394 = icmp eq i32 %i.cyd, %lftr.wideiv.i.i
  br i1 %exitcond.not.i.i1394, label %.critedge.i.i1366, label %.lr.ph.i.i1385, !llvm.loop !384

bb.wg:                                            ; preds = %.noexc.i1365
  %i.czf = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141.i.i

.lr.ph.i.i1385:                                   ; preds = %bb.wf, %.lr.ph.preheader.i.i
  %indvars.iv.i.i1386 = phi i64 [ %i.cze, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i1393, %bb.wf ] ; 2 uses
  %i.czg = getelementptr inbounds [32 x i8], ptr %i.cyz, i64 %indvars.iv.i.i1386 ; 3 uses
  %i.czh = getelementptr inbounds nuw i8, ptr %i.czg, i64 20
  %i.czi = load i8, ptr %i.czh, align 4, !tbaa !472 ; 2 uses
  %.not.i.i1387 = icmp eq i8 %i.czi, %i.czc
  br i1 %.not.i.i1387, label %bb.wf, label %bb.wh

bb.wh:                                            ; preds = %.lr.ph.i.i1385
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #33
  %i.czj = load ptr, ptr %i.czg, align 8, !tbaa !151
  %i.czk = load ptr, ptr %i.czj, align 8, !tbaa !112
  %i.czl = getelementptr inbounds nuw i8, ptr %i.czg, i64 8
  %i.czm = load i32, ptr %i.czl, align 8, !tbaa !476
  invoke void (ptr, ptr, ...) @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, ptr noundef nonnull @.str.365, ptr noundef %i.czk, i32 noundef %i.czm)
          to label %bb.wi unwind label %bb.wo

bb.wi:                                            ; preds = %bb.wh
  %i.czn = load ptr, ptr %19, align 8, !tbaa !63  ; 6 uses
  %i.czo = icmp eq ptr %i.czn, %i.bnj
  %i.czp = load ptr, ptr %20, align 8, !tbaa !63  ; 5 uses
  %i.czq = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.czr = icmp eq ptr %i.czp, %i.czq             ; 2 uses
  br i1 %i.czo, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1392, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1388

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1392: ; preds = %bb.wi
  br i1 %i.czr, label %bb.wj, label %.thread.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1388: ; preds = %bb.wi
  br i1 %i.czr, label %bb.wj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i

bb.wj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1388, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1392
  %i.czs = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.czt = load i64, ptr %i.czs, align 8, !tbaa !59 ; 3 uses
  %i.czu = icmp ult i64 %i.czt, 16
  call void @llvm.assume(i1 %i.czu)
  switch i64 %i.czt, label %bb.wl [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
    i64 1, label %bb.wk
  ]

bb.wk:                                            ; preds = %bb.wj
  %i.czv = load i8, ptr %i.czp, align 1, !tbaa !60
  store i8 %i.czv, ptr %i.czn, align 1, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

bb.wl:                                            ; preds = %bb.wj
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.czn, ptr align 1 %i.czp, i64 %i.czt, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i: ; preds = %bb.wl, %bb.wk, %bb.wj
  %i.czw = load i64, ptr %i.czs, align 8, !tbaa !59 ; 2 uses
  store i64 %i.czw, ptr %i.bnk, align 8, !tbaa !59
  %i.czx = load ptr, ptr %19, align 8, !tbaa !63
  %i.czy = getelementptr inbounds nuw i8, ptr %i.czx, i64 %i.czw
  store i8 0, ptr %i.czy, align 1, !tbaa !60
  %.pre.i.i.i = load ptr, ptr %20, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

.thread.i.i.i:                                    ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i1392
  store ptr %i.czp, ptr %19, align 8, !tbaa !63
  %i.czz = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.daa = load <2 x i64>, ptr %i.czz, align 8, !tbaa !60
  store <2 x i64> %i.daa, ptr %i.bnk, align 8, !tbaa !60
  br label %bb.wn

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i1388
  %i.dab = load i64, ptr %i.bnj, align 8, !tbaa !60
  store ptr %i.czp, ptr %19, align 8, !tbaa !63
  %i.dac = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dad = load <2 x i64>, ptr %i.dac, align 8, !tbaa !60
  store <2 x i64> %i.dad, ptr %i.bnk, align 8, !tbaa !60
  %.not.i.i.i1389 = icmp eq ptr %i.czn, null
  br i1 %.not.i.i.i1389, label %bb.wn, label %bb.wm

bb.wm:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i
  store ptr %i.czn, ptr %20, align 8, !tbaa !63
  store i64 %i.dab, ptr %i.czq, align 8, !tbaa !60
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

bb.wn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i.i, %.thread.i.i.i
  store ptr %i.czq, ptr %20, align 8, !tbaa !63
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i: ; preds = %bb.wn, %bb.wm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i
  %i.dae = phi ptr [ %.pre.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i.i ], [ %i.czn, %bb.wm ], [ %i.czq, %bb.wn ]
  %i.daf = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 0, ptr %i.daf, align 8, !tbaa !59
  store i8 0, ptr %i.dae, align 1, !tbaa !60
  %i.dag = load ptr, ptr %20, align 8, !tbaa !63  ; 2 uses
  %i.dah = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.dai = icmp eq ptr %i.dag, %i.dah
  br i1 %i.dai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i1391, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1390

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1390: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i
  %i.daj = load i64, ptr %i.dah, align 8, !tbaa !60
  %i.dak = add i64 %i.daj, 1
  call void @_ZdlPvm(ptr noundef %i.dag, i64 noundef %i.dak) #34
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i1391

bb.wo:                                            ; preds = %bb.wh
  %i.dal = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  br label %bb.yg

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i1391: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i1390
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #33
  invoke void @_ZNSt10filesystem7__cxx114pathC2IA70_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %21, ptr noundef nonnull align 1 dereferenceable(70) @.str.207, i8 noundef zeroext 2)
          to label %bb.wp unwind label %bb.wr

bb.wp:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i1391
  %i.dam = load ptr, ptr %17, align 8, !tbaa !63
  %i.dan = load ptr, ptr %18, align 8, !tbaa !63
  %i.dao = sext i8 %i.czc to i32
  %i.dap = load ptr, ptr %19, align 8, !tbaa !63
  %i.daq = sext i8 %i.czi to i32
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %21, i32 noundef 1037, ptr noundef nonnull @.str.366, ptr noundef %i.dam, ptr noundef %i.dan, i32 noundef %i.dao, ptr noundef %i.dap, i32 noundef %i.daq) #35
          to label %bb.wq unwind label %bb.ws

bb.wq:                                            ; preds = %bb.wp
  unreachable

bb.wr:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i1391
  %i.dar = landingpad { ptr, i32 }
          cleanup
  br label %bb.wt

bb.ws:                                            ; preds = %bb.wp
  %i.das = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %21) #33
  br label %bb.wt

bb.wt:                                            ; preds = %bb.ws, %bb.wr
  %.pn.i.i = phi { ptr, i32 } [ %i.das, %bb.ws ], [ %i.dar, %bb.wr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #33
  br label %bb.yg

.critedge.i.i1366:                                ; preds = %bb.wf, %bb.we
  %.not59.i.i = icmp eq i8 %i.czc, 32
  br i1 %.not59.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129.i.i, label %bb.wu

bb.wu:                                            ; preds = %.critedge.i.i1366
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #33
  store ptr %i.bnl, ptr %22, align 8, !tbaa !58
  store i64 0, ptr %i.bnm, align 8, !tbaa !59
  store i8 0, ptr %i.bnl, align 8, !tbaa !60
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #33
  %i.dat = load ptr, ptr %i.cza, align 8, !tbaa !151
  %i.dau = load ptr, ptr %i.dat, align 8, !tbaa !112 ; 4 uses
  store ptr %i.bnn, ptr %24, align 8, !tbaa !58
  %i.dav = icmp eq ptr %i.dau, null
  br i1 %i.dav, label %bb.wv, label %bb.ww

bb.wv:                                            ; preds = %bb.wu
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.191) #35
          to label %.noexc.i.i1384 unwind label %.loopexit.split-lp2916

.noexc.i.i1384:                                   ; preds = %bb.wv
  unreachable
end_hunk_0
begin_hunk_1_@_ZN3gmx12_GLOBAL__N_17pdb2gmx3runEv:bb.a
  %i.dne = add i64 %i.dnd, 1
  call void @_ZdlPvm(ptr noundef %i.dnb, i64 noundef %i.dne) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit308.i

_ZN3gmx14LogEntryWriterD2Ev.exit308.i:            ; preds = %bb.aab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i306.i
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #33
  br label %.body.i

.thread443.i:                                     ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit305.i, %bb.zy, %bb.zx, %bb.zr
  %i.dnf = add nsw i32 %.0159666.i, 1
  br label %bb.aar

bb.aac:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit289.i
  %i.dng = icmp slt i32 %.0168665.i, 5
  br i1 %i.dng, label %bb.aad, label %.thread444.i

bb.aad:                                           ; preds = %bb.aac
  %i.dnh = load ptr, ptr %i.ba, align 8, !tbaa !131 ; 5 uses
  %i.dni = icmp eq ptr %i.dnh, null               ; 2 uses
  br i1 %i.dgk, label %bb.aae, label %bb.aai

bb.aae:                                           ; preds = %bb.aad
  br i1 %i.dni, label %bb.aam, label %bb.aaf

bb.aaf:                                           ; preds = %bb.aae
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bol, i8 0, i64 24, i1 false)
  store ptr %i.bol, ptr %38, align 8, !tbaa !58
  store i64 0, ptr %i.bom, align 8, !tbaa !59
  store i8 1, ptr %i.bon, align 8, !tbaa !134
  %i.dnj = load ptr, ptr %i.cyj, align 8, !tbaa !149
  %i.dnk = getelementptr inbounds [32 x i8], ptr %i.dnj, i64 %indvars.iv.i1374 ; 2 uses
  %i.dnl = load ptr, ptr %i.dnk, align 8, !tbaa !151
  %i.dnm = load ptr, ptr %i.dnl, align 8, !tbaa !112 ; 2 uses
  %i.dnn = getelementptr inbounds nuw i8, ptr %i.dnk, i64 8
  %i.dno = load i32, ptr %i.dnn, align 8, !tbaa !476
  %i.dnp = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %38, ptr noundef nonnull @.str.359, ptr noundef %i.dnm, i32 noundef %i.dno, ptr noundef %i.dnm)
          to label %bb.aag unwind label %bb.aah

bb.aag:                                           ; preds = %bb.aaf
  %i.dnq = load ptr, ptr %i.dnh, align 8, !tbaa !18
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnq, i64 16
  %i.dns = load ptr, ptr %i.dnr, align 8
  invoke void %i.dns(ptr noundef nonnull align 8 dereferenceable(8) %i.dnh, ptr noundef nonnull align 8 dereferenceable(40) %i.dnp)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit310.i unwind label %bb.aah, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit310.i: ; preds = %bb.aag
  %i.dnt = load ptr, ptr %38, align 8, !tbaa !63  ; 2 uses
  %i.dnu = icmp eq ptr %i.dnt, %i.bol
  br i1 %i.dnu, label %_ZN3gmx14LogEntryWriterD2Ev.exit313.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i311.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i311.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit310.i
  %i.dnv = load i64, ptr %i.bol, align 8, !tbaa !60
  %i.dnw = add i64 %i.dnv, 1
  call void @_ZdlPvm(ptr noundef %i.dnt, i64 noundef %i.dnw) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit313.i

_ZN3gmx14LogEntryWriterD2Ev.exit313.i:            ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit310.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i311.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  br label %bb.aam

bb.aah:                                           ; preds = %bb.aag, %bb.aaf
  %i.dnx = landingpad { ptr, i32 }
          cleanup
  %i.dny = load ptr, ptr %38, align 8, !tbaa !63  ; 2 uses
  %i.dnz = icmp eq ptr %i.dny, %i.bol
  br i1 %i.dnz, label %_ZN3gmx14LogEntryWriterD2Ev.exit316.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314.i: ; preds = %bb.aah
  %i.doa = load i64, ptr %i.bol, align 8, !tbaa !60
  %i.dob = add i64 %i.doa, 1
  call void @_ZdlPvm(ptr noundef %i.dny, i64 noundef %i.dob) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit316.i

_ZN3gmx14LogEntryWriterD2Ev.exit316.i:            ; preds = %bb.aah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i314.i
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #33
  br label %.body.i

bb.aai:                                           ; preds = %bb.aad
  br i1 %i.dni, label %bb.aam, label %bb.aaj

bb.aaj:                                           ; preds = %bb.aai
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.boi, i8 0, i64 24, i1 false)
  store ptr %i.boi, ptr %39, align 8, !tbaa !58
  store i64 0, ptr %i.boj, align 8, !tbaa !59
  store i8 1, ptr %i.bok, align 8, !tbaa !134
  %i.doc = load ptr, ptr %i.cyj, align 8, !tbaa !149
  %i.dod = getelementptr inbounds [32 x i8], ptr %i.doc, i64 %indvars.iv.i1374 ; 2 uses
  %i.doe = load ptr, ptr %i.dod, align 8, !tbaa !151
  %i.dof = load ptr, ptr %i.doe, align 8, !tbaa !112
  %i.dog = getelementptr inbounds nuw i8, ptr %i.dod, i64 8
  %i.doh = load i32, ptr %i.dog, align 8, !tbaa !476
  %i.doi = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull @.str.360, ptr noundef %i.dof, i32 noundef %i.doh)
          to label %bb.aak unwind label %bb.aal

bb.aak:                                           ; preds = %bb.aaj
  %i.doj = load ptr, ptr %i.dnh, align 8, !tbaa !18
  %i.dok = getelementptr inbounds nuw i8, ptr %i.doj, i64 16
  %i.dol = load ptr, ptr %i.dok, align 8
  invoke void %i.dol(ptr noundef nonnull align 8 dereferenceable(8) %i.dnh, ptr noundef nonnull align 8 dereferenceable(40) %i.doi)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318.i unwind label %bb.aal, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318.i: ; preds = %bb.aak
  %i.dom = load ptr, ptr %39, align 8, !tbaa !63  ; 2 uses
  %i.don = icmp eq ptr %i.dom, %i.boi
  br i1 %i.don, label %_ZN3gmx14LogEntryWriterD2Ev.exit321.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318.i
  %i.doo = load i64, ptr %i.boi, align 8, !tbaa !60
  %i.dop = add i64 %i.doo, 1
  call void @_ZdlPvm(ptr noundef %i.dom, i64 noundef %i.dop) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit321.i

_ZN3gmx14LogEntryWriterD2Ev.exit321.i:            ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit318.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i319.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br label %bb.aam

bb.aal:                                           ; preds = %bb.aak, %bb.aaj
  %i.doq = landingpad { ptr, i32 }
          cleanup
  %i.dor = load ptr, ptr %39, align 8, !tbaa !63  ; 2 uses
  %i.dos = icmp eq ptr %i.dor, %i.boi
  br i1 %i.dos, label %_ZN3gmx14LogEntryWriterD2Ev.exit324.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i: ; preds = %bb.aal
  %i.dot = load i64, ptr %i.boi, align 8, !tbaa !60
  %i.dou = add i64 %i.dot, 1
  call void @_ZdlPvm(ptr noundef %i.dor, i64 noundef %i.dou) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit324.i

_ZN3gmx14LogEntryWriterD2Ev.exit324.i:            ; preds = %bb.aal, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i322.i
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #33
  br label %.body.i

bb.aam:                                           ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit321.i, %bb.aai, %_ZN3gmx14LogEntryWriterD2Ev.exit313.i, %bb.aae
  %i.dov = icmp eq i32 %.0168665.i, 4
  br i1 %i.dov, label %bb.aan, label %.thread444.i

bb.aan:                                           ; preds = %bb.aam
  %i.dow = load ptr, ptr %i.ba, align 8, !tbaa !131 ; 3 uses
  %i.dox = icmp eq ptr %i.dow, null
  br i1 %i.dox, label %.thread444.i, label %bb.aao

bb.aao:                                           ; preds = %bb.aan
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.boo, i8 0, i64 24, i1 false)
  store ptr %i.boo, ptr %40, align 8, !tbaa !58
  store i64 0, ptr %i.bop, align 8, !tbaa !59
  store i8 1, ptr %i.boq, align 8, !tbaa !134
  %i.doy = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %40, ptr noundef nonnull @.str.361)
          to label %bb.aap unwind label %bb.aaq

bb.aap:                                           ; preds = %bb.aao
  %i.doz = load ptr, ptr %i.dow, align 8, !tbaa !18
  %i.dpa = getelementptr inbounds nuw i8, ptr %i.doz, i64 16
  %i.dpb = load ptr, ptr %i.dpa, align 8
  invoke void %i.dpb(ptr noundef nonnull align 8 dereferenceable(8) %i.dow, ptr noundef nonnull align 8 dereferenceable(40) %i.doy)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit326.i unwind label %bb.aaq, !inline_history !2

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit326.i: ; preds = %bb.aap
  %i.dpc = load ptr, ptr %40, align 8, !tbaa !63  ; 2 uses
  %i.dpd = icmp eq ptr %i.dpc, %i.boo
  br i1 %i.dpd, label %_ZN3gmx14LogEntryWriterD2Ev.exit329.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i327.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i327.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit326.i
  %i.dpe = load i64, ptr %i.boo, align 8, !tbaa !60
  %i.dpf = add i64 %i.dpe, 1
  call void @_ZdlPvm(ptr noundef %i.dpc, i64 noundef %i.dpf) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit329.i

_ZN3gmx14LogEntryWriterD2Ev.exit329.i:            ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit326.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i327.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  br label %.thread444.i

bb.aaq:                                           ; preds = %bb.aap, %bb.aao
  %i.dpg = landingpad { ptr, i32 }
          cleanup
  %i.dph = load ptr, ptr %40, align 8, !tbaa !63  ; 2 uses
  %i.dpi = icmp eq ptr %i.dph, %i.boo
  br i1 %i.dpi, label %_ZN3gmx14LogEntryWriterD2Ev.exit332.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i: ; preds = %bb.aaq
  %i.dpj = load i64, ptr %i.boo, align 8, !tbaa !60
  %i.dpk = add i64 %i.dpj, 1
  call void @_ZdlPvm(ptr noundef %i.dph, i64 noundef %i.dpk) #34
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit332.i

_ZN3gmx14LogEntryWriterD2Ev.exit332.i:            ; preds = %bb.aaq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i330.i
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #33
  br label %.body.i

.thread444.i:                                     ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit329.i, %bb.aan, %bb.aam, %bb.aac
  %i.dpl = add nsw i32 %.0168665.i, 1
  br label %bb.aar

bb.aar:                                           ; preds = %.thread444.i, %.thread443.i, %bb.zo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1375
  %.2170.i = phi i32 [ %.0168665.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1375 ], [ %.0168665.i, %bb.zo ], [ %.0168665.i, %.thread443.i ], [ %i.dpl, %.thread444.i ]
  %.2161.i = phi i32 [ %.0159666.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i1375 ], [ %.0159666.i, %bb.zo ], [ %i.dnf, %.thread443.i ], [ %.0159666.i, %.thread444.i ] ; 2 uses
  %indvars.iv.next.i1376 = add nsw i64 %indvars.iv.i1374, 1 ; 2 uses
  %exitcond.not.i1377 = icmp eq i64 %indvars.iv.next.i1376, %i.cys
  br i1 %exitcond.not.i1377, label %.critedgethread-pre-split.i, label %bb.yh, !llvm.loop !387

bb.aas:                                           ; preds = %bb.acj, %.lr.ph671.i
  %indvars.iv721.i = phi i64 [ %i.dgr, %.lr.ph671.i ], [ %indvars.iv.next722.i, %bb.acj ] ; 5 uses
  %.3162669.i = phi i32 [ %.0159574.i, %.lr.ph671.i ], [ %.5164.i, %bb.acj ] ; 6 uses
  %.0165668.i = phi i32 [ 0, %.lr.ph671.i ], [ %.2167.i, %bb.acj ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #33
  %i.dpm = load ptr, ptr %i.cyj, align 8, !tbaa !149
  %i.dpn = getelementptr inbounds nuw [32 x i8], ptr %i.dpm, i64 %indvars.iv721.i
  %i.dpo = load ptr, ptr %i.dpn, align 8, !tbaa !151
  %i.dpp = load ptr, ptr %i.dpo, align 8, !tbaa !112 ; 4 uses
  store ptr %i.bph, ptr %41, align 8, !tbaa !58
  %i.dpq = icmp eq ptr %i.dpp, null
  br i1 %i.dpq, label %bb.aat, label %bb.aau

bb.aat:                                           ; preds = %bb.aas
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.191) #35
          to label %.noexc335.i unwind label %.loopexit.split-lp.i

.noexc335.i:                                      ; preds = %bb.aat
  unreachable

bb.aau:                                           ; preds = %bb.aas
  %i.dpr = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dpp) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #33
  store i64 %i.dpr, ptr %i.g, align 8, !tbaa !135
  %i.dps = icmp ugt i64 %i.dpr, 15
  br i1 %i.dps, label %.noexc.i334.i, label %._crit_edge.i.i333.i

.noexc.i334.i:                                    ; preds = %bb.aau
  %i.dpt = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc336.i unwind label %.loopexit447.i ; 2 uses

.noexc336.i:                                      ; preds = %.noexc.i334.i
  store ptr %i.dpt, ptr %41, align 8, !tbaa !63
  %i.dpu = load i64, ptr %i.g, align 8, !tbaa !135
  store i64 %i.dpu, ptr %i.bph, align 8, !tbaa !60
  br label %._crit_edge.i.i333.i

._crit_edge.i.i333.i:                             ; preds = %.noexc336.i, %bb.aau
  %i.dpv = phi ptr [ %i.dpt, %.noexc336.i ], [ %i.bph, %bb.aau ] ; 2 uses
  switch i64 %i.dpr, label %bb.aaw [
    i64 1, label %bb.aav
    i64 0, label %bb.aax
  ]

bb.aav:                                           ; preds = %._crit_edge.i.i333.i
  %i.dpw = load i8, ptr %i.dpp, align 1, !tbaa !60
  store i8 %i.dpw, ptr %i.dpv, align 1, !tbaa !60
  br label %bb.aax

bb.aaw:                                           ; preds = %._crit_edge.i.i333.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dpv, ptr nonnull align 1 %i.dpp, i64 %i.dpr, i1 false)
  br label %bb.aax

bb.aax:                                           ; preds = %bb.aaw, %bb.aav, %._crit_edge.i.i333.i
  %i.dpx = load i64, ptr %i.g, align 8, !tbaa !135 ; 2 uses
  store i64 %i.dpx, ptr %i.bpi, align 8, !tbaa !59
  %i.dpy = load ptr, ptr %41, align 8, !tbaa !63
  %i.dpz = getelementptr inbounds nuw i8, ptr %i.dpy, i64 %i.dpx
  store i8 0, ptr %i.dpz, align 1, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #33
  %i.dqa = load i64, ptr %i.bpe, align 8, !tbaa !191
  %.not.i2410 = icmp ugt i64 %i.dqa, 20
  br i1 %.not.i2410, label %bb.aaz, label %.preheader5777

.preheader5777:                                   ; preds = %bb.aax, %.noexc2414
  %.sroa.06.0.in.i = phi ptr [ %.sroa.06.0.i, %.noexc2414 ], [ %i.bpf, %bb.aax ]
  %.sroa.06.0.i = load ptr, ptr %.sroa.06.0.in.i, align 8, !tbaa !192 ; 4 uses
  %.not10.i = icmp eq ptr %.sroa.06.0.i, null
  br i1 %.not10.i, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i, label %bb.aay

bb.aay:                                           ; preds = %.preheader5777
  %i.dqb = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 8
  %i.dqc = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(72) %i.dqb)
          to label %.noexc2414 unwind label %.loopexit.split-lp2801

.noexc2414:                                       ; preds = %bb.aay
  br i1 %i.dqc, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i, label %.preheader5777, !llvm.loop !386

bb.aaz:                                           ; preds = %bb.aax
  %i.dqd = load ptr, ptr %41, align 8, !tbaa !63
  %i.dqe = load i64, ptr %i.bpi, align 8, !tbaa !59
  %i.dqf = invoke noundef i64 @_ZSt11_Hash_bytesPKvmm(ptr noundef %i.dqd, i64 noundef %i.dqe, i64 noundef 3339675911)
          to label %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i unwind label %bb.aba ; 2 uses

bb.aba:                                           ; preds = %bb.aaz
  %i.dqg = landingpad { ptr, i32 }
          catch ptr null
  %i.dqh = extractvalue { ptr, i32 } %i.dqg, 0
  call void @__clang_call_terminate(ptr %i.dqh) #32
  unreachable

_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i: ; preds = %bb.aaz
  %i.dqi = load i64, ptr %i.bpg, align 8, !tbaa !193
  %i.dqj = urem i64 %i.dqf, %i.dqi                ; 2 uses
  %i.dqk = load ptr, ptr %80, align 8, !tbaa !194
  %i.dql = getelementptr inbounds nuw [8 x i8], ptr %i.dqk, i64 %i.dqj
  %i.dqm = load ptr, ptr %i.dql, align 8, !tbaa !195 ; 3 uses
  %.not.i.i.i2411 = icmp eq ptr %i.dqm, null
  br i1 %.not.i.i.i2411, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i, label %bb.abb

bb.abb:                                           ; preds = %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %i.dqn = load ptr, ptr %i.dqm, align 8, !tbaa !192 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.dqn, i64 72
  %.pre.i.i.i2412 = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !197
  br label %bb.abc

bb.abc:                                           ; preds = %bb.abd, %bb.abb
  %i.dqo = phi i64 [ %.pre.i.i.i2412, %bb.abb ], [ %i.dqv, %bb.abd ]
  %.015.i.i.i = phi ptr [ %i.dqm, %bb.abb ], [ %.0.i.i.i2413, %bb.abd ]
  %.0.i.i.i2413 = phi ptr [ %i.dqn, %bb.abb ], [ %i.dqs, %bb.abd ] ; 3 uses
  %i.dqp = icmp eq i64 %i.dqf, %i.dqo
  br i1 %i.dqp, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i: ; preds = %bb.abc
  %i.dqq = getelementptr inbounds nuw i8, ptr %.0.i.i.i2413, i64 8
  %i.dqr = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(72) %i.dqq)
          to label %.noexc2415 unwind label %.loopexit2800

.noexc2415:                                       ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i
  br i1 %i.dqr, label %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i: ; preds = %.noexc2415, %bb.abc
  %i.dqs = load ptr, ptr %.0.i.i.i2413, align 8, !tbaa !192 ; 3 uses
  %.not18.i.i.i = icmp eq ptr %i.dqs, null
  br i1 %.not18.i.i.i, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i, label %bb.abd

bb.abd:                                           ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i
  %i.dqt = load i64, ptr %i.bpg, align 8, !tbaa !193
  %i.dqu = getelementptr inbounds nuw i8, ptr %i.dqs, i64 72
  %i.dqv = load i64, ptr %i.dqu, align 8, !tbaa !197 ; 2 uses
  %i.dqw = urem i64 %i.dqv, %i.dqt
  %.not19.i.i.i = icmp eq i64 %i.dqw, %i.dqj
  br i1 %.not19.i.i.i, label %bb.abc, label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i, !llvm.loop !3

_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i: ; preds = %.noexc2415
  %i.dqx = load ptr, ptr %.015.i.i.i, align 8, !tbaa !192
  br label %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i

_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i: ; preds = %.noexc2414, %.preheader5777, %bb.abd, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i
  %.sroa.06.1.i = phi ptr [ null, %_ZNKSt8__detail15_Hash_code_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashELb1EE12_M_hash_codeERS8_.exit.i ], [ null, %bb.abd ], [ %i.dqx, %_ZNKSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESaIS8_ENSt8__detail10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS5_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb1ELb0ELb1EEEE19_M_find_before_nodeEmRS7_m.exit.i.i ], [ null, %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.thread.i.i.i ], [ null, %.preheader5777 ], [ %.sroa.06.0.i, %.noexc2414 ] ; 2 uses
  %i.dqy = load ptr, ptr %41, align 8, !tbaa !63  ; 2 uses
  %i.dqz = icmp eq ptr %i.dqy, %i.bph
  br i1 %i.dqz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i
  %i.dra = load i64, ptr %i.bph, align 8, !tbaa !60
  %i.drb = add i64 %i.dra, 1
  call void @_ZdlPvm(ptr noundef %i.dqy, i64 noundef %i.drb) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i: ; preds = %_ZNKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_St4hashIS5_EN3gmx20EqualCaseInsensitiveESaISt4pairIKS5_S5_EEE4findERSB_.exit339.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i340.i
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  %i.drc = icmp eq ptr %.sroa.06.1.i, null
  br i1 %i.drc, label %bb.acj, label %bb.abf

.loopexit447.i:                                   ; preds = %.noexc.i334.i
  %lpad.loopexit.i1372 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i

.loopexit.split-lp.i:                             ; preds = %bb.aat
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i

.loopexit2800:                                    ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_S6_ENS_10_Select1stEN3gmx20EqualCaseInsensitiveESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb0ELb1EEEE9_M_equalsERS8_mRKNS_16_Hash_node_valueIS9_Lb1EEE.exit.i.i.i
  %lpad.loopexit2802 = landingpad { ptr, i32 }
          cleanup
  br label %bb.abe

.loopexit.split-lp2801:                           ; preds = %bb.aay
  %lpad.loopexit.split-lp2803 = landingpad { ptr, i32 }
          cleanup
  br label %bb.abe

bb.abe:                                           ; preds = %.loopexit.split-lp2801, %.loopexit2800
  %lpad.phi2804 = phi { ptr, i32 } [ %lpad.loopexit2802, %.loopexit2800 ], [ %lpad.loopexit.split-lp2803, %.loopexit.split-lp2801 ] ; 2 uses
  %i.drd = load ptr, ptr %41, align 8, !tbaa !63  ; 2 uses
  %i.dre = icmp eq ptr %i.drd, %i.bph
  br i1 %i.dre, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i: ; preds = %bb.abe
  %i.drf = load i64, ptr %i.bph, align 8, !tbaa !60
  %i.drg = add i64 %i.drf, 1
  call void @_ZdlPvm(ptr noundef %i.drd, i64 noundef %i.drg) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit345.i: ; preds = %bb.abe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i, %.loopexit.split-lp.i, %.loopexit447.i
  %.pn174.i = phi { ptr, i32 } [ %lpad.phi2804, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i343.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ], [ %lpad.loopexit.i1372, %.loopexit447.i ], [ %lpad.phi2804, %bb.abe ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #33
  br label %.body.i

bb.abf:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit342.i
  %i.drh = getelementptr inbounds nuw i8, ptr %.sroa.06.1.i, i64 40 ; 2 uses
  %i.dri = load i8, ptr %i.bni, align 8, !tbaa !539, !range !114, !noundef !115
  %i.drj = trunc nuw i8 %i.dri to i1
  br i1 %i.drj, label %_ZNRSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit347.i, label %.invoke930.i

end_hunk_1
