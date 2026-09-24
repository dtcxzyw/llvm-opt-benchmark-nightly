Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/scansegment?download=true
inline.NumInlined: 1020
inline.NumDeleted: 456
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_:bb.a
  %i.rd = getelementptr inbounds [4 x i8], ptr %i.rc, i64 %i.fj
  store i32 0, ptr %i.rd, align 4, !tbaa !54
  store i32 0, ptr %i.rc, align 4, !tbaa !54
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader891.loopexit1151.unr-lcssa, label %.lr.ph923.split, !llvm.loop !209

.split.us:                                        ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %13)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %.split.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 553) #32
          to label %bb.bq unwind label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  unreachable

bb.br:                                            ; preds = %.split.us
  %i.re = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

bb.bs:                                            ; preds = %bb.bp
  %i.rf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rg = load ptr, ptr %12, align 8, !tbaa !89   ; 2 uses
  %i.rh = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.ri = icmp eq ptr %i.rg, %i.rh
  br i1 %i.ri, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748: ; preds = %bb.bs
  %i.rj = load i64, ptr %i.rh, align 8, !tbaa !80
  %i.rk = add i64 %i.rj, 1
  call void @_ZdlPvm(ptr noundef %i.rg, i64 noundef %i.rk) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748, %bb.br
  %.pn696 = phi { ptr, i32 } [ %i.re, %bb.br ], [ %i.rf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i748 ], [ %i.rf, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  br label %.body742

.split927.us:                                     ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.bt unwind label %bb.bv

bb.bt:                                            ; preds = %.split927.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 556) #32
          to label %bb.bu unwind label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  unreachable

bb.bv:                                            ; preds = %.split927.us
  %i.rl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753

bb.bw:                                            ; preds = %bb.bt
  %i.rm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rn = load ptr, ptr %14, align 8, !tbaa !89   ; 2 uses
  %i.ro = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.rp = icmp eq ptr %i.rn, %i.ro
  br i1 %i.rp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751: ; preds = %bb.bw
  %i.rq = load i64, ptr %i.ro, align 8, !tbaa !80
  %i.rr = add i64 %i.rq, 1
  call void @_ZdlPvm(ptr noundef %i.rn, i64 noundef %i.rr) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751, %bb.bv
  %.pn698 = phi { ptr, i32 } [ %i.rl, %bb.bv ], [ %i.rm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i751 ], [ %i.rm, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %.body742

.split929.us:                                     ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.bx unwind label %bb.bz

bb.bx:                                            ; preds = %.split929.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 560) #32
          to label %bb.by unwind label %bb.ca

bb.by:                                            ; preds = %bb.bx
  unreachable

bb.bz:                                            ; preds = %.split929.us
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756

bb.ca:                                            ; preds = %bb.bx
  %i.rt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ru = load ptr, ptr %16, align 8, !tbaa !89   ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.rw = icmp eq ptr %i.ru, %i.rv
  br i1 %i.rw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754: ; preds = %bb.ca
  %i.rx = load i64, ptr %i.rv, align 8, !tbaa !80
  %i.ry = add i64 %i.rx, 1
  call void @_ZdlPvm(ptr noundef %i.ru, i64 noundef %i.ry) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754, %bb.bz
  %.pn702 = phi { ptr, i32 } [ %i.rs, %bb.bz ], [ %i.rt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i754 ], [ %i.rt, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.body742

.split931.us:                                     ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %19)
          to label %bb.cb unwind label %bb.cd

bb.cb:                                            ; preds = %.split931.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 564) #32
          to label %bb.cc unwind label %bb.ce

bb.cc:                                            ; preds = %bb.cb
  unreachable

bb.cd:                                            ; preds = %.split931.us
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

bb.ce:                                            ; preds = %bb.cb
  %i.sa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.sb = load ptr, ptr %18, align 8, !tbaa !89   ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.sd = icmp eq ptr %i.sb, %i.sc
  br i1 %i.sd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757: ; preds = %bb.ce
  %i.se = load i64, ptr %i.sc, align 8, !tbaa !80
  %i.sf = add i64 %i.se, 1
  call void @_ZdlPvm(ptr noundef %i.sb, i64 noundef %i.sf) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757, %bb.cd
  %.pn704 = phi { ptr, i32 } [ %i.rz, %bb.cd ], [ %i.sa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i757 ], [ %i.sa, %bb.ce ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.body742

.split933.us:                                     ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %21)
          to label %bb.cf unwind label %bb.ch

bb.cf:                                            ; preds = %.split933.us
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 569) #32
          to label %bb.cg unwind label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  unreachable

bb.ch:                                            ; preds = %.split933.us
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

bb.ci:                                            ; preds = %bb.cf
  %i.sh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.si = load ptr, ptr %20, align 8, !tbaa !89   ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 2 uses
  %i.sk = icmp eq ptr %i.si, %i.sj
  br i1 %i.sk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760: ; preds = %bb.ci
  %i.sl = load i64, ptr %i.sj, align 8, !tbaa !80
  %i.sm = add i64 %i.sl, 1
  call void @_ZdlPvm(ptr noundef %i.si, i64 noundef %i.sm) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762: ; preds = %bb.ci, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760, %bb.ch
  %.pn706 = phi { ptr, i32 } [ %i.sg, %bb.ch ], [ %i.sh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i760 ], [ %i.sh, %bb.ci ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body742

bb.cj:                                            ; preds = %bb.cn, %.preheader891
  %indvars.iv954 = phi i64 [ 0, %.preheader891 ], [ %indvars.iv.next955.3, %bb.cn ] ; 6 uses
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv954
  %i.so = load i32, ptr %i.sn, align 16, !tbaa !221
  %.not = icmp eq i32 %i.so, 0
  br i1 %.not, label %bb.ck, label %.thread863

bb.ck:                                            ; preds = %bb.cj
  %indvars.iv.next955 = or disjoint i64 %indvars.iv954, 1 ; 2 uses
  %i.sp = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next955
  %i.sq = load i32, ptr %i.sp, align 8, !tbaa !221
  %.not.1 = icmp eq i32 %i.sq, 0
  br i1 %.not.1, label %bb.cl, label %.thread863

bb.cl:                                            ; preds = %bb.ck
  %indvars.iv.next955.1 = or disjoint i64 %indvars.iv954, 2 ; 2 uses
  %i.sr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next955.1
  %i.ss = load i32, ptr %i.sr, align 16, !tbaa !221
  %.not.2 = icmp eq i32 %i.ss, 0
  br i1 %.not.2, label %bb.cm, label %.thread863

bb.cm:                                            ; preds = %bb.cl
  %indvars.iv.next955.2 = or disjoint i64 %indvars.iv954, 3 ; 2 uses
  %i.st = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %indvars.iv.next955.2
  %i.su = load i32, ptr %i.st, align 8, !tbaa !221
  %.not.3 = icmp eq i32 %i.su, 0
  br i1 %.not.3, label %bb.cn, label %.thread863

bb.cn:                                            ; preds = %bb.cm
  %indvars.iv.next955.3 = add nuw nsw i64 %indvars.iv954, 4 ; 2 uses
  %exitcond957.not.3 = icmp eq i64 %indvars.iv.next955.3, 256
  br i1 %exitcond957.not.3, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread, label %bb.cj, !llvm.loop !211

.thread863:                                       ; preds = %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %indvars.iv954.lcssa = phi i64 [ %indvars.iv954, %bb.cj ], [ %indvars.iv.next955, %bb.ck ], [ %indvars.iv.next955.1, %bb.cl ], [ %indvars.iv.next955.2, %bb.cm ]
  %i.sv = trunc nuw nsw i64 %indvars.iv954.lcssa to i32
  %i.sw = load ptr, ptr %i.cg, align 8, !tbaa !111
  %i.sx = load ptr, ptr %i.ck, align 8, !tbaa !111
  %i.sy = mul nsw i32 %i.fe, %i.fd
  %i.sz = mul nsw i32 %i.x, %i.fd
  %.neg = mul i64 %i.fc, -4294967296
  %i.ta = ashr exact i64 %.neg, 30                ; 2 uses
  %sext = shl i64 %i.cj, 32
  %i.tb = ashr exact i64 %sext, 32                ; 3 uses
  %i.tc = sub nsw i64 0, %i.tb                    ; 3 uses
  %sext661 = shl i64 %i.fc, 32
  %i.td = ashr exact i64 %sext661, 30             ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  %i.tf = insertelement <2 x i32> poison, i32 %i.fd, i64 0
  %i.tg = shufflevector <2 x i32> %i.tf, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a: ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge, %.thread863
  %i.th = phi ptr [ %i.qv, %.thread863 ], [ %.be, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 6 uses
  %i.ti = phi ptr [ %i.qv, %.thread863 ], [ %.be1126, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 6 uses
  %i.tj = phi ptr [ %i.qv, %.thread863 ], [ %.be1127, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 6 uses
  %i.tk = phi ptr [ %i.qv, %.thread863 ], [ %.be1128, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 6 uses
  %i.tl = phi ptr [ %i.qv, %.thread863 ], [ %.be1129, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 11 uses
  %.4592.a = phi i32 [ %.0588.lcssa, %.thread863 ], [ %.4592.be, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ]
  %.0552.a = phi i32 [ %i.sv, %.thread863 ], [ %.0552.be, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 4 uses
  %.0535.a = phi i32 [ 0, %.thread863 ], [ %.4870, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge ] ; 2 uses
  %44 = sext i32 %.0552.a to i64                  ; 2 uses
  %45 = getelementptr inbounds [8 x i8], ptr %7, i64 %44
  %46 = load i32, ptr %45, align 8, !tbaa !221    ; 2 uses
  %i.tm = icmp eq i32 %46, 0
  br i1 %i.tm, label %.preheader.preheader, label %.thread864

.preheader.preheader:                             ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a
  %smax = call i32 @llvm.smax.i32(i32 %.0552.a, i32 255)
  %wide.trip.count961 = zext nneg i32 %smax to i64
  %indvars.iv.next9591123 = add nsw i64 %44, 1    ; 2 uses
  %exitcond962.not1124 = icmp sgt i32 %.0552.a, 254
  br i1 %exitcond962.not1124, label %.preheader._crit_edge, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %indvars.iv.next959 = add nsw i64 %indvars.iv.next9591125, 1 ; 2 uses
  %exitcond962.not = icmp eq i64 %indvars.iv.next9591125, %wide.trip.count961
  br i1 %exitcond962.not, label %.preheader._crit_edge, label %.lr.ph, !llvm.loop !212

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %indvars.iv.next9591125 = phi i64 [ %indvars.iv.next959, %.preheader ], [ %indvars.iv.next9591123, %.preheader.preheader ] ; 4 uses
  %i.tn = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next9591125
  %i.to = load i32, ptr %i.tn, align 8, !tbaa !221 ; 2 uses
  %.not641 = icmp eq i32 %i.to, 0
  br i1 %.not641, label %.preheader, label %.thread864.loopexit, !llvm.loop !212

.preheader._crit_edge:                            ; preds = %.preheader, %.preheader.preheader
  %indvars.iv.next959.lcssa = phi i64 [ %indvars.iv.next9591123, %.preheader.preheader ], [ %indvars.iv.next959, %.preheader ] ; 3 uses
  %i.tp = icmp eq i64 %indvars.iv.next959.lcssa, 256
  br i1 %i.tp, label %bb.co, label %..thread864_crit_edge

..thread864_crit_edge:                            ; preds = %.preheader._crit_edge
  %i.tq = trunc nsw i64 %indvars.iv.next959.lcssa to i32
  %.phi.trans.insert964.a = getelementptr inbounds [8 x i8], ptr %7, i64 %indvars.iv.next959.lcssa
  %.pre965 = load i32, ptr %.phi.trans.insert964.a, align 8, !tbaa !221
  br label %.thread864

bb.co:                                            ; preds = %.preheader._crit_edge
  %i.tr = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !116
  %.not.i.i.i764 = icmp eq ptr %i.tl, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i764, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread.thread, label %bb.cp

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread.thread: ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit851

bb.cp:                                            ; preds = %bb.co
  %i.tt = ptrtoint ptr %i.ts to i64
  %i.tu = ptrtoint ptr %i.tl to i64
  %i.tv = sub i64 %i.tt, %i.tu
  call void @_ZdlPvm(ptr noundef nonnull %i.tl, i64 noundef %i.tv) #31
  %.pr.pre = load ptr, ptr %6, align 8, !tbaa !117
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread

.thread864.loopexit:                              ; preds = %.lr.ph
  %i.tw = trunc nsw i64 %indvars.iv.next9591125 to i32
  br label %.thread864

.thread864:                                       ; preds = %..thread864_crit_edge, %.thread864.loopexit, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a
  %i.tx = phi i32 [ %46, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a ], [ %.pre965, %..thread864_crit_edge ], [ %i.to, %.thread864.loopexit ] ; 5 uses
  %.1553 = phi i32 [ %.0552.a, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a ], [ %i.tq, %..thread864_crit_edge ], [ %i.tw, %.thread864.loopexit ] ; 5 uses
  %i.ty = sext i32 %.1553 to i64
  %i.tz = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ty ; 2 uses
  %i.ua = sext i32 %i.tx to i64                   ; 2 uses
  %i.ub = getelementptr inbounds nuw [12 x i8], ptr %i.tl, i64 %i.ua ; 4 uses
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !119 ; 2 uses
  store i32 %i.uc, ptr %i.tz, align 8, !tbaa !221
  %.not642 = icmp eq i32 %i.uc, 0
  br i1 %.not642, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.thread864
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tz, i64 4
  store i32 0, ptr %i.ud, align 4, !tbaa !220
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %.thread864
  store i32 %.4592.a, ptr %i.ub, align 4, !tbaa !119
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 4
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ub, i64 8
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !218 ; 5 uses
  %i.uh = load i32, ptr %i.ue, align 4, !tbaa !217 ; 10 uses
  %i.ui = icmp sgt i32 %i.uh, -1
  %i.uj = icmp slt i32 %i.uh, %i.fd
  %or.cond714 = and i1 %i.ui, %i.uj               ; 2 uses
  %i.uk = add nsw i32 %i.uh, 1
  %i.ul = insertelement <2 x i32> poison, i32 %i.uh, i64 0
  %i.um = shufflevector <2 x i32> %i.ul, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.un = add nsw <2 x i32> %i.um, <i32 1, i32 0>
  %i.uo = srem <2 x i32> %i.un, %i.tg
  %i.up = icmp eq <2 x i32> %i.uo, zeroinitializer ; 2 uses
  %.not643 = icmp sle i32 %i.sy, %i.uh
  %i.uq = icmp slt i32 %i.uh, %i.sz
  %or.cond716 = select i1 %.not643, i1 %i.uq, i1 false ; 2 uses
  %i.ur = sext i32 %i.uh to i64
  %i.us = getelementptr inbounds [4 x i8], ptr %i.sx, i64 %i.ur ; 9 uses
  %i.ut = sext i32 %i.ug to i64
  %i.uu = getelementptr inbounds i8, ptr %i.sw, i64 %i.ut ; 50 uses
  %i.uv = extractelement <2 x i1> %i.up, i64 1    ; 2 uses
  br i1 %i.uv, label %bb.cz, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uw = getelementptr inbounds i8, ptr %i.us, i64 -4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !54 ; 2 uses
  %i.uy = icmp sgt i32 %i.ux, 0
  br i1 %i.uy, label %bb.ct, label %bb.cz

bb.ct:                                            ; preds = %bb.cs
  %i.uz = load i8, ptr %i.uu, align 1, !tbaa !80
  %i.va = zext i8 %i.uz to i32
  %i.vb = getelementptr inbounds i8, ptr %i.uu, i64 -3
  %i.vc = load i8, ptr %i.vb, align 1, !tbaa !80
  %i.vd = zext i8 %i.vc to i32
  %i.ve = sub nsw i32 %i.va, %i.vd
  %i.vf = call i32 @llvm.abs.i32(i32 %i.ve, i1 true)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.vh = load i8, ptr %i.vg, align 1, !tbaa !80
  %i.vi = zext i8 %i.vh to i32
  %i.vj = getelementptr inbounds i8, ptr %i.uu, i64 -2
  %i.vk = load i8, ptr %i.vj, align 1, !tbaa !80
  %i.vl = zext i8 %i.vk to i32
  %i.vm = sub nsw i32 %i.vi, %i.vl
  %i.vn = call i32 @llvm.abs.i32(i32 %i.vm, i1 true) ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  %i.vp = load i8, ptr %i.vo, align 1, !tbaa !80
  %i.vq = zext i8 %i.vp to i32
  %i.vr = getelementptr inbounds i8, ptr %i.uu, i64 -1
  %i.vs = load i8, ptr %i.vr, align 1, !tbaa !80
  %i.vt = zext i8 %i.vs to i32
  %i.vu = sub nsw i32 %i.vq, %i.vt
  %i.vv = call i32 @llvm.abs.i32(i32 %i.vu, i1 true) ; 2 uses
  %i.vw = sub nsw i32 %i.vf, %i.vn
  %i.vx = sext i32 %i.vw to i64
  %i.vy = getelementptr [4 x i8], ptr %i.a, i64 %i.vx
  %i.vz = getelementptr i8, ptr %i.vy, i64 1024
  %i.wa = load i32, ptr %i.vz, align 4, !tbaa !54
  %i.wb = add nsw i32 %i.vn, %i.wa
  %i.wc = sub i32 %i.wb, %i.vv
  %i.wd = sext i32 %i.wc to i64
  %i.we = getelementptr [4 x i8], ptr %i.a, i64 %i.wd
  %i.wf = getelementptr i8, ptr %i.we, i64 1024
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !54
  %i.wh = add nsw i32 %i.vv, %i.wg                ; 2 uses
  %or.cond11 = icmp ult i32 %i.wh, 256
  br i1 %or.cond11, label %bb.cz, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.cv unwind label %bb.cx

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 632) #32
          to label %bb.cw unwind label %bb.cy

bb.cw:                                            ; preds = %bb.cv
  unreachable

bb.cx:                                            ; preds = %bb.cu
  %i.wi = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767

bb.cy:                                            ; preds = %bb.cv
  %i.wj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wk = load ptr, ptr %22, align 8, !tbaa !89   ; 2 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 2 uses
  %i.wm = icmp eq ptr %i.wk, %i.wl
  br i1 %i.wm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765: ; preds = %bb.cy
  %i.wn = load i64, ptr %i.wl, align 8, !tbaa !80
  %i.wo = add i64 %i.wn, 1
  call void @_ZdlPvm(ptr noundef %i.wk, i64 noundef %i.wo) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765, %bb.cx
  %.pn645 = phi { ptr, i32 } [ %i.wi, %bb.cx ], [ %i.wj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i765 ], [ %i.wj, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #28
  br label %.body742

bb.cz:                                            ; preds = %bb.cs, %bb.ct, %bb.cr
  %.1536 = phi i32 [ %i.wh, %bb.ct ], [ %.0535.a, %bb.cs ], [ %.0535.a, %bb.cr ] ; 5 uses
  %.0534 = phi i32 [ %i.ux, %bb.ct ], [ 0, %bb.cs ], [ 0, %bb.cr ] ; 6 uses
  %i.wp = extractelement <2 x i1> %i.up, i64 0    ; 2 uses
  br i1 %i.wp, label %bb.dq, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wq = getelementptr inbounds nuw i8, ptr %i.us, i64 4
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !54 ; 4 uses
  %i.ws = icmp sgt i32 %i.wr, 0
  br i1 %i.ws, label %bb.db, label %bb.dq

bb.db:                                            ; preds = %bb.da
  %i.wt = icmp eq i32 %.0534, 0
  br i1 %i.wt, label %bb.dc, label %bb.di

bb.dc:                                            ; preds = %bb.db
  %i.wu = load i8, ptr %i.uu, align 1, !tbaa !80
  %i.wv = zext i8 %i.wu to i32
  %i.ww = getelementptr inbounds nuw i8, ptr %i.uu, i64 3
  %i.wx = load i8, ptr %i.ww, align 1, !tbaa !80
  %i.wy = zext i8 %i.wx to i32
  %i.wz = sub nsw i32 %i.wv, %i.wy
  %i.xa = call i32 @llvm.abs.i32(i32 %i.wz, i1 true)
  %i.xb = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.xc = load i8, ptr %i.xb, align 1, !tbaa !80
  %i.xd = zext i8 %i.xc to i32
  %i.xe = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.xf = load i8, ptr %i.xe, align 1, !tbaa !80
  %i.xg = zext i8 %i.xf to i32
  %i.xh = sub nsw i32 %i.xd, %i.xg
  %i.xi = call i32 @llvm.abs.i32(i32 %i.xh, i1 true) ; 2 uses
  %i.xj = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  %i.xk = load i8, ptr %i.xj, align 1, !tbaa !80
  %i.xl = zext i8 %i.xk to i32
  %i.xm = getelementptr inbounds nuw i8, ptr %i.uu, i64 5
  %i.xn = load i8, ptr %i.xm, align 1, !tbaa !80
  %i.xo = zext i8 %i.xn to i32
  %i.xp = sub nsw i32 %i.xl, %i.xo
  %i.xq = call i32 @llvm.abs.i32(i32 %i.xp, i1 true) ; 2 uses
  %i.xr = sub nsw i32 %i.xa, %i.xi
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr [4 x i8], ptr %i.a, i64 %i.xs
  %i.xu = getelementptr i8, ptr %i.xt, i64 1024
  %i.xv = load i32, ptr %i.xu, align 4, !tbaa !54
  %i.xw = add nsw i32 %i.xi, %i.xv
  %i.xx = sub i32 %i.xw, %i.xq
  %i.xy = sext i32 %i.xx to i64
  %i.xz = getelementptr [4 x i8], ptr %i.a, i64 %i.xy
  %i.ya = getelementptr i8, ptr %i.xz, i64 1024
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !54
  %i.yc = add nsw i32 %i.xq, %i.yb                ; 2 uses
  %or.cond13 = icmp ult i32 %i.yc, 256
  br i1 %or.cond13, label %bb.dq, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %25)
          to label %bb.de unwind label %bb.dg

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 640) #32
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  unreachable

bb.dg:                                            ; preds = %bb.dd
  %i.yd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

bb.dh:                                            ; preds = %bb.de
  %i.ye = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yf = load ptr, ptr %24, align 8, !tbaa !89   ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 2 uses
  %i.yh = icmp eq ptr %i.yf, %i.yg
  br i1 %i.yh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768: ; preds = %bb.dh
  %i.yi = load i64, ptr %i.yg, align 8, !tbaa !80
  %i.yj = add i64 %i.yi, 1
  call void @_ZdlPvm(ptr noundef %i.yf, i64 noundef %i.yj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770: ; preds = %bb.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768, %bb.dg
  %.pn651 = phi { ptr, i32 } [ %i.yd, %bb.dg ], [ %i.ye, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i768 ], [ %i.ye, %bb.dh ]
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #28
  br label %.body742

bb.di:                                            ; preds = %bb.db
  %.not648 = icmp eq i32 %i.wr, %.0534
  br i1 %.not648, label %bb.dq, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.yk = load i8, ptr %i.uu, align 1, !tbaa !80
  %i.yl = zext i8 %i.yk to i32
  %i.ym = getelementptr inbounds nuw i8, ptr %i.uu, i64 3
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !80
  %i.yo = zext i8 %i.yn to i32
  %i.yp = sub nsw i32 %i.yl, %i.yo
  %i.yq = call i32 @llvm.abs.i32(i32 %i.yp, i1 true)
  %i.yr = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !80
  %i.yt = zext i8 %i.ys to i32
  %i.yu = getelementptr inbounds nuw i8, ptr %i.uu, i64 4
  %i.yv = load i8, ptr %i.yu, align 1, !tbaa !80
  %i.yw = zext i8 %i.yv to i32
  %i.yx = sub nsw i32 %i.yt, %i.yw
  %i.yy = call i32 @llvm.abs.i32(i32 %i.yx, i1 true) ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !80
  %i.zb = zext i8 %i.za to i32
  %i.zc = getelementptr inbounds nuw i8, ptr %i.uu, i64 5
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !80
  %i.ze = zext i8 %i.zd to i32
  %i.zf = sub nsw i32 %i.zb, %i.ze
  %i.zg = call i32 @llvm.abs.i32(i32 %i.zf, i1 true) ; 2 uses
  %i.zh = sub nsw i32 %i.yq, %i.yy
  %i.zi = sext i32 %i.zh to i64
  %i.zj = getelementptr [4 x i8], ptr %i.a, i64 %i.zi
  %i.zk = getelementptr i8, ptr %i.zj, i64 1024
  %i.zl = load i32, ptr %i.zk, align 4, !tbaa !54
  %i.zm = add nsw i32 %i.yy, %i.zl
  %i.zn = sub i32 %i.zm, %i.zg
  %i.zo = sext i32 %i.zn to i64
  %i.zp = getelementptr [4 x i8], ptr %i.a, i64 %i.zo
  %i.zq = getelementptr i8, ptr %i.zp, i64 1024
  %i.zr = load i32, ptr %i.zq, align 4, !tbaa !54
  %i.zs = add nsw i32 %i.zg, %i.zr                ; 3 uses
  %or.cond15 = icmp ult i32 %i.zs, 256
  br i1 %or.cond15, label %bb.dp, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @.str.12, ptr noundef nonnull align 1 dereferenceable(1) %27)
          to label %bb.dl unwind label %bb.dn

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 643) #32
          to label %bb.dm unwind label %bb.do

bb.dm:                                            ; preds = %bb.dl
  unreachable

bb.dn:                                            ; preds = %bb.dk
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773

bb.do:                                            ; preds = %bb.dl
  %i.zu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zv = load ptr, ptr %26, align 8, !tbaa !89   ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 2 uses
  %i.zx = icmp eq ptr %i.zv, %i.zw
  br i1 %i.zx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771: ; preds = %bb.do
  %i.zy = load i64, ptr %i.zw, align 8, !tbaa !80
  %i.zz = add i64 %i.zy, 1
  call void @_ZdlPvm(ptr noundef %i.zv, i64 noundef %i.zz) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771, %bb.dn
  %.pn649 = phi { ptr, i32 } [ %i.zt, %bb.dn ], [ %i.zu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i771 ], [ %i.zu, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #28
  br label %.body742

bb.dp:                                            ; preds = %bb.dj
  %i.aaa = sub nsw i32 %.1536, %i.zs
  %i.aab = sext i32 %i.aaa to i64
  %i.aac = getelementptr [4 x i8], ptr %i.a, i64 %i.aab
  %i.aad = getelementptr i8, ptr %i.aac, i64 1024
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !54
  %i.aaf = sub nsw i32 %.1536, %i.aae             ; 2 uses
  %i.aag = icmp eq i32 %i.aaf, %i.zs
  %spec.select = select i1 %i.aag, i32 %i.wr, i32 %.0534
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.da, %bb.di, %bb.dc, %bb.cz
  %.2537 = phi i32 [ %i.yc, %bb.dc ], [ %.1536, %bb.cz ], [ %i.aaf, %bb.dp ], [ %.1536, %bb.di ], [ %.1536, %bb.da ] ; 5 uses
  %.1 = phi i32 [ %i.wr, %bb.dc ], [ %.0534, %bb.cz ], [ %spec.select, %bb.dp ], [ %.0534, %bb.di ], [ %.0534, %bb.da ] ; 6 uses
  br i1 %or.cond714, label %bb.eh, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.aah = getelementptr inbounds i8, ptr %i.us, i64 %i.ta
  %i.aai = load i32, ptr %i.aah, align 4, !tbaa !54 ; 4 uses
  %i.aaj = icmp sgt i32 %i.aai, 0
  br i1 %i.aaj, label %bb.ds, label %bb.eh

bb.ds:                                            ; preds = %bb.dr
  %i.aak = icmp eq i32 %.1, 0
  br i1 %i.aak, label %bb.dt, label %bb.dz

bb.dt:                                            ; preds = %bb.ds
  %i.aal = load i8, ptr %i.uu, align 1, !tbaa !80
end_hunk_0
begin_hunk_1_@_ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_:bb.a
  br i1 %or.cond27, label %bb.gs, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %41)
          to label %bb.go unwind label %bb.gq

bb.go:                                            ; preds = %bb.gn
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 709) #32
          to label %bb.gp unwind label %bb.gr

bb.gp:                                            ; preds = %bb.go
  unreachable

bb.gq:                                            ; preds = %bb.gn
  %i.aqd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820

bb.gr:                                            ; preds = %bb.go
  %i.aqe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aqf = load ptr, ptr %40, align 8, !tbaa !89  ; 2 uses
  %i.aqg = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.aqh = icmp eq ptr %i.aqf, %i.aqg
  br i1 %i.aqh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818: ; preds = %bb.gr
  %i.aqi = load i64, ptr %i.aqg, align 8, !tbaa !80
  %i.aqj = add i64 %i.aqi, 1
  call void @_ZdlPvm(ptr noundef %i.aqf, i64 noundef %i.aqj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820: ; preds = %bb.gr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818, %bb.gq
  %.pn680 = phi { ptr, i32 } [ %i.aqd, %bb.gq ], [ %i.aqe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i818 ], [ %i.aqe, %bb.gr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %.body742

bb.gs:                                            ; preds = %bb.gm
  %.not682 = icmp eq i32 %.8596, 0
  br i1 %.not682, label %bb.gt, label %bb.gz

bb.gt:                                            ; preds = %bb.gs
  %i.aqk = load ptr, ptr %i.te, align 8, !tbaa !114 ; 2 uses
  %i.aql = ptrtoint ptr %i.aqk to i64
  %i.aqm = ptrtoint ptr %i.aoo to i64
  %i.aqn = sub i64 %i.aql, %i.aqm
  %i.aqo = sdiv exact i64 %i.aqn, 12              ; 4 uses
  %i.aqp = trunc i64 %i.aqo to i32                ; 5 uses
  %i.aqq = icmp sgt i32 %i.aqp, 85
  %i.aqr = lshr i32 %i.aqp, 1
  %i.aqs = add nsw i32 %i.aqr, %i.aqp
  %i.aqt = select i1 %i.aqq, i32 %i.aqs, i32 128  ; 2 uses
  %i.aqu = zext nneg i32 %i.aqt to i64            ; 4 uses
  %i.aqv = icmp ult i64 %i.aqo, %i.aqu
  br i1 %i.aqv, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aqw = sub nuw nsw i64 %i.aqu, %i.aqo
  invoke void @_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.aqw)
          to label %.noexc832 unwind label %bb.fm

.noexc832:                                        ; preds = %bb.gu
  %.pre.pre.pre.i831 = load ptr, ptr %6, align 8, !tbaa !117 ; 3 uses
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821

bb.gv:                                            ; preds = %bb.gt
  %i.aqx = icmp ugt i64 %i.aqo, %i.aqu
  br i1 %i.aqx, label %bb.gw, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821

bb.gw:                                            ; preds = %bb.gv
  %i.aqy = getelementptr inbounds nuw [12 x i8], ptr %i.aoo, i64 %i.aqu ; 2 uses
  %.not.i.i.i829 = icmp eq ptr %i.aqk, %i.aqy
  br i1 %.not.i.i.i829, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821, label %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i830

_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i830: ; preds = %bb.gw
  store ptr %i.aqy, ptr %i.te, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821: ; preds = %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i830, %bb.gw, %bb.gv, %.noexc832
  %i.aqz = phi ptr [ %.pre.pre.pre.i831, %.noexc832 ], [ %i.aom, %bb.gv ], [ %i.aom, %bb.gw ], [ %i.aom, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i830 ]
  %i.ara = phi ptr [ %.pre.pre.pre.i831, %.noexc832 ], [ %i.aon, %bb.gv ], [ %i.aon, %bb.gw ], [ %i.aon, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i830 ]
  %.pre.pre.i822 = phi ptr [ %.pre.pre.pre.i831, %.noexc832 ], [ %i.aoo, %bb.gv ], [ %i.aoo, %bb.gw ], [ %i.aoo, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i830 ] ; 7 uses
  %i.arb = icmp eq i32 %i.aqp, 0
  br i1 %i.arb, label %bb.gx, label %bb.gy

bb.gx:                                            ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821
  store i32 0, ptr %.pre.pre.i822, align 4, !tbaa !119
  br label %bb.gy

bb.gy:                                            ; preds = %bb.gx, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821
  %.016.i823 = phi i32 [ 1, %bb.gx ], [ %i.aqp, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i821 ] ; 3 uses
  %i.arc = add nsw i32 %i.aqt, -1                 ; 3 uses
  %i.ard = icmp slt i32 %.016.i823, %i.arc
  br i1 %i.ard, label %.lr.ph.i824, label %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833

.lr.ph.i824:                                      ; preds = %bb.gy
  %i.are = sext i32 %.016.i823 to i64             ; 4 uses
  %wide.trip.count.i825 = sext i32 %i.arc to i64  ; 3 uses
  %i.arf = sub nsw i64 %wide.trip.count.i825, %i.are
  %xtraiter1168 = and i64 %i.arf, 3               ; 2 uses
  %lcmp.mod1169.not = icmp eq i64 %xtraiter1168, 0
  br i1 %lcmp.mod1169.not, label %.prol.loopexit1167, label %.prol.preheader1166

.prol.preheader1166:                              ; preds = %.lr.ph.i824, %.prol.preheader1166
  %indvars.iv.i826.prol = phi i64 [ %indvars.iv.next.i827.prol, %.prol.preheader1166 ], [ %i.are, %.lr.ph.i824 ] ; 2 uses
  %prol.iter1170 = phi i64 [ %prol.iter1170.next, %.prol.preheader1166 ], [ 0, %.lr.ph.i824 ]
  %indvars.iv.next.i827.prol = add nsw i64 %indvars.iv.i826.prol, 1 ; 3 uses
  %i.arg = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i822, i64 %indvars.iv.i826.prol
  %i.arh = trunc nsw i64 %indvars.iv.next.i827.prol to i32
  store i32 %i.arh, ptr %i.arg, align 4, !tbaa !119
  %prol.iter1170.next = add i64 %prol.iter1170, 1 ; 2 uses
  %prol.iter1170.cmp.not = icmp eq i64 %prol.iter1170.next, %xtraiter1168
  br i1 %prol.iter1170.cmp.not, label %.prol.loopexit1167, label %.prol.preheader1166, !llvm.loop !215

.prol.loopexit1167:                               ; preds = %.prol.preheader1166, %.lr.ph.i824
  %indvars.iv.i826.unr = phi i64 [ %i.are, %.lr.ph.i824 ], [ %indvars.iv.next.i827.prol, %.prol.preheader1166 ]
  %i.ari = sub nsw i64 %i.are, %wide.trip.count.i825
  %i.arj = icmp ugt i64 %i.ari, -4
  br i1 %i.arj, label %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833, label %.lr.ph.i824.new

.lr.ph.i824.new:                                  ; preds = %.prol.loopexit1167, %.lr.ph.i824.new
  %indvars.iv.i826 = phi i64 [ %indvars.iv.next.i827.3, %.lr.ph.i824.new ], [ %indvars.iv.i826.unr, %.prol.loopexit1167 ] ; 5 uses
  %indvars.iv.next.i827 = add nsw i64 %indvars.iv.i826, 1 ; 2 uses
  %i.ark = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i822, i64 %indvars.iv.i826
  %i.arl = trunc nsw i64 %indvars.iv.next.i827 to i32
  store i32 %i.arl, ptr %i.ark, align 4, !tbaa !119
  %indvars.iv.next.i827.1 = add nsw i64 %indvars.iv.i826, 2 ; 2 uses
  %i.arm = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i822, i64 %indvars.iv.next.i827
  %i.arn = trunc nsw i64 %indvars.iv.next.i827.1 to i32
  store i32 %i.arn, ptr %i.arm, align 4, !tbaa !119
  %indvars.iv.next.i827.2 = add nsw i64 %indvars.iv.i826, 3 ; 2 uses
  %i.aro = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i822, i64 %indvars.iv.next.i827.1
  %i.arp = trunc nsw i64 %indvars.iv.next.i827.2 to i32
  store i32 %i.arp, ptr %i.aro, align 4, !tbaa !119
  %indvars.iv.next.i827.3 = add nsw i64 %indvars.iv.i826, 4 ; 3 uses
  %i.arq = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i822, i64 %indvars.iv.next.i827.2
  %i.arr = trunc nsw i64 %indvars.iv.next.i827.3 to i32
  store i32 %i.arr, ptr %i.arq, align 4, !tbaa !119
  %exitcond.not.i828.3 = icmp eq i64 %indvars.iv.next.i827.3, %wide.trip.count.i825
  br i1 %exitcond.not.i828.3, label %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833, label %.lr.ph.i824.new, !llvm.loop !5

_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833: ; preds = %.prol.loopexit1167, %.lr.ph.i824.new, %bb.gy
  %i.ars = zext nneg i32 %i.arc to i64
  %i.art = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i822, i64 %i.ars
  store i32 0, ptr %i.art, align 4, !tbaa !119
  br label %bb.gz

bb.gz:                                            ; preds = %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833, %bb.gs
  %i.aru = phi ptr [ %i.aom, %bb.gs ], [ %i.aqz, %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833 ]
  %i.arv = phi ptr [ %i.aon, %bb.gs ], [ %i.ara, %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833 ] ; 6 uses
  %.9597 = phi i32 [ %.8596, %bb.gs ], [ %.016.i823, %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit833 ] ; 4 uses
  %i.arw = sext i32 %.9597 to i64
  %i.arx = getelementptr inbounds nuw [12 x i8], ptr %i.arv, i64 %i.arw ; 4 uses
  %i.ary = load i32, ptr %i.arx, align 4, !tbaa !119
  store i32 0, ptr %i.arx, align 4, !tbaa !119
  %i.arz = sub nsw i32 %i.uh, %i.fd
  %i.asa = getelementptr inbounds nuw i8, ptr %i.arx, i64 4
  store i32 %i.arz, ptr %i.asa, align 4, !tbaa !217
  %i.asb = sub nsw i32 %i.ug, %i.fb
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arx, i64 8
  store i32 %i.asb, ptr %i.asc, align 4, !tbaa !218
  %i.asd = zext nneg i32 %i.aqc to i64
  %i.ase = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.asd ; 2 uses
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ase, i64 4 ; 2 uses
  %i.asg = load i32, ptr %i.asf, align 4, !tbaa !220 ; 2 uses
  %.not683 = icmp eq i32 %i.asg, 0
  br i1 %.not683, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  %i.ash = sext i32 %i.asg to i64
  %i.asi = getelementptr inbounds nuw [12 x i8], ptr %i.arv, i64 %i.ash
  store i32 %.9597, ptr %i.asi, align 4, !tbaa !119
  br label %bb.hc

bb.hb:                                            ; preds = %bb.gz
  store i32 %.9597, ptr %i.ase, align 8, !tbaa !221
  br label %bb.hc

bb.hc:                                            ; preds = %bb.hb, %bb.ha
  store i32 %.9597, ptr %i.asf, align 4, !tbaa !220
  %i.asj = sub nsw i32 %.3555, %i.aqc
  %i.ask = sext i32 %i.asj to i64
  %i.asl = getelementptr [4 x i8], ptr %i.a, i64 %i.ask
  %i.asm = getelementptr i8, ptr %i.asl, i64 1024
  %i.asn = load i32, ptr %i.asm, align 4, !tbaa !54
  %i.aso = sub nsw i32 %.3555, %i.asn
  store i32 -2, ptr %i.aor, align 4, !tbaa !54
  br label %bb.hd

bb.hd:                                            ; preds = %bb.gl, %bb.hc, %bb.gk
  %i.asp = phi ptr [ %i.aru, %bb.hc ], [ %i.aom, %bb.gl ], [ %i.aom, %bb.gk ] ; 6 uses
  %i.asq = phi ptr [ %i.arv, %bb.hc ], [ %i.aon, %bb.gl ], [ %i.aon, %bb.gk ] ; 7 uses
  %i.asr = phi ptr [ %i.arv, %bb.hc ], [ %i.aoo, %bb.gl ], [ %i.aoo, %bb.gk ] ; 2 uses
  %i.ass = phi ptr [ %i.arv, %bb.hc ], [ %i.aop, %bb.gl ], [ %i.aop, %bb.gk ] ; 2 uses
  %i.ast = phi ptr [ %i.arv, %bb.hc ], [ %i.aoq, %bb.gl ], [ %i.aoq, %bb.gk ] ; 2 uses
  %.10598 = phi i32 [ %i.ary, %bb.hc ], [ %.8596, %bb.gl ], [ %.8596, %bb.gk ] ; 4 uses
  %.4556 = phi i32 [ %i.aso, %bb.hc ], [ %.3555, %bb.gl ], [ %.3555, %bb.gk ] ; 4 uses
  br i1 %or.cond716, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge, label %bb.he

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge: ; preds = %bb.hd, %bb.hv, %bb.he
  %.be = phi ptr [ %i.asp, %bb.hd ], [ %i.avw, %bb.hv ], [ %i.asp, %bb.he ]
  %.be1126 = phi ptr [ %i.asq, %bb.hd ], [ %i.avw, %bb.hv ], [ %i.asq, %bb.he ]
  %.be1127 = phi ptr [ %i.asr, %bb.hd ], [ %i.avw, %bb.hv ], [ %i.asr, %bb.he ]
  %.be1128 = phi ptr [ %i.ass, %bb.hd ], [ %i.avw, %bb.hv ], [ %i.ass, %bb.he ]
  %.be1129 = phi ptr [ %i.ast, %bb.hd ], [ %i.avw, %bb.hv ], [ %i.ast, %bb.he ]
  %.4592.be = phi i32 [ %.10598, %bb.hd ], [ %i.avz, %bb.hv ], [ %.10598, %bb.he ]
  %.0552.be = phi i32 [ %.4556, %bb.hd ], [ %i.awp, %bb.hv ], [ %.4556, %bb.he ]
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.a

bb.he:                                            ; preds = %bb.hd
  %i.asu = getelementptr inbounds i8, ptr %i.us, i64 %i.td ; 2 uses
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !54
  %i.asw = icmp eq i32 %i.asv, 0
  br i1 %i.asw, label %bb.hf, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge

bb.hf:                                            ; preds = %bb.he
  %i.asx = load i8, ptr %i.uu, align 1, !tbaa !80
  %i.asy = zext i8 %i.asx to i32
  %i.asz = getelementptr inbounds i8, ptr %i.uu, i64 %i.tb ; 3 uses
  %i.ata = load i8, ptr %i.asz, align 1, !tbaa !80
  %i.atb = zext i8 %i.ata to i32
  %i.atc = sub nsw i32 %i.asy, %i.atb
  %i.atd = call i32 @llvm.abs.i32(i32 %i.atc, i1 true)
  %i.ate = getelementptr inbounds nuw i8, ptr %i.uu, i64 1
  %i.atf = load i8, ptr %i.ate, align 1, !tbaa !80
  %i.atg = zext i8 %i.atf to i32
  %i.ath = getelementptr inbounds nuw i8, ptr %i.asz, i64 1
  %i.ati = load i8, ptr %i.ath, align 1, !tbaa !80
  %i.atj = zext i8 %i.ati to i32
  %i.atk = sub nsw i32 %i.atg, %i.atj
  %i.atl = call i32 @llvm.abs.i32(i32 %i.atk, i1 true) ; 2 uses
  %i.atm = getelementptr inbounds nuw i8, ptr %i.uu, i64 2
  %i.atn = load i8, ptr %i.atm, align 1, !tbaa !80
  %i.ato = zext i8 %i.atn to i32
  %i.atp = getelementptr inbounds nuw i8, ptr %i.asz, i64 2
  %i.atq = load i8, ptr %i.atp, align 1, !tbaa !80
  %i.atr = zext i8 %i.atq to i32
  %i.ats = sub nsw i32 %i.ato, %i.atr
  %i.att = call i32 @llvm.abs.i32(i32 %i.ats, i1 true) ; 2 uses
  %i.atu = sub nsw i32 %i.atd, %i.atl
  %i.atv = sext i32 %i.atu to i64
  %i.atw = getelementptr [4 x i8], ptr %i.a, i64 %i.atv
  %i.atx = getelementptr i8, ptr %i.atw, i64 1024
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !54
  %i.atz = add nsw i32 %i.atl, %i.aty
  %i.aua = sub i32 %i.atz, %i.att
  %i.aub = sext i32 %i.aua to i64
  %i.auc = getelementptr [4 x i8], ptr %i.a, i64 %i.aub
  %i.aud = getelementptr i8, ptr %i.auc, i64 1024
  %i.aue = load i32, ptr %i.aud, align 4, !tbaa !54
  %i.auf = add nsw i32 %i.att, %i.aue             ; 3 uses
  %or.cond29 = icmp ult i32 %i.auf, 256
  br i1 %or.cond29, label %bb.hl, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @.str.10, ptr noundef nonnull align 1 dereferenceable(1) %43)
          to label %bb.hh unwind label %bb.hj

bb.hh:                                            ; preds = %bb.hg
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull @__func__._ZN2cv8ximgproc15ScanSegmentImpl11watershedExERKNS_3MatERS2_, ptr noundef nonnull @.str.1, i32 noundef 719) #32
          to label %bb.hi unwind label %bb.hk

bb.hi:                                            ; preds = %bb.hh
  unreachable

bb.hj:                                            ; preds = %bb.hg
  %i.aug = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836

bb.hk:                                            ; preds = %bb.hh
  %i.auh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aui = load ptr, ptr %42, align 8, !tbaa !89  ; 2 uses
  %i.auj = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.auk = icmp eq ptr %i.aui, %i.auj
  br i1 %i.auk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834: ; preds = %bb.hk
  %i.aul = load i64, ptr %i.auj, align 8, !tbaa !80
  %i.aum = add i64 %i.aul, 1
  call void @_ZdlPvm(ptr noundef %i.aui, i64 noundef %i.aum) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836: ; preds = %bb.hk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834, %bb.hj
  %.pn686 = phi { ptr, i32 } [ %i.aug, %bb.hj ], [ %i.auh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i834 ], [ %i.auh, %bb.hk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  br label %.body742

bb.hl:                                            ; preds = %bb.hf
  %.not688 = icmp eq i32 %.10598, 0
  br i1 %.not688, label %bb.hm, label %bb.hs

bb.hm:                                            ; preds = %bb.hl
  %i.aun = load ptr, ptr %i.te, align 8, !tbaa !114 ; 2 uses
  %i.auo = ptrtoint ptr %i.aun to i64
  %i.aup = ptrtoint ptr %i.asq to i64
  %i.auq = sub i64 %i.auo, %i.aup
  %i.aur = sdiv exact i64 %i.auq, 12              ; 4 uses
  %i.aus = trunc i64 %i.aur to i32                ; 5 uses
  %i.aut = icmp sgt i32 %i.aus, 85
  %i.auu = lshr i32 %i.aus, 1
  %i.auv = add nsw i32 %i.auu, %i.aus
  %i.auw = select i1 %i.aut, i32 %i.auv, i32 128  ; 2 uses
  %i.aux = zext nneg i32 %i.auw to i64            ; 4 uses
  %i.auy = icmp ult i64 %i.aur, %i.aux
  br i1 %i.auy, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.auz = sub nuw nsw i64 %i.aux, %i.aur
  invoke void @_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.auz)
          to label %.noexc848 unwind label %bb.fm

.noexc848:                                        ; preds = %bb.hn
  %.pre.pre.pre.i847 = load ptr, ptr %6, align 8, !tbaa !117 ; 2 uses
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837

bb.ho:                                            ; preds = %bb.hm
  %i.ava = icmp ugt i64 %i.aur, %i.aux
  br i1 %i.ava, label %bb.hp, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837

bb.hp:                                            ; preds = %bb.ho
  %i.avb = getelementptr inbounds nuw [12 x i8], ptr %i.asq, i64 %i.aux ; 2 uses
  %.not.i.i.i845 = icmp eq ptr %i.aun, %i.avb
  br i1 %.not.i.i.i845, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837, label %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i846

_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i846: ; preds = %bb.hp
  store ptr %i.avb, ptr %i.te, align 8, !tbaa !114
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837: ; preds = %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i846, %bb.hp, %bb.ho, %.noexc848
  %i.avc = phi ptr [ %.pre.pre.pre.i847, %.noexc848 ], [ %i.asp, %bb.ho ], [ %i.asp, %bb.hp ], [ %i.asp, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i846 ]
  %.pre.pre.i838 = phi ptr [ %.pre.pre.pre.i847, %.noexc848 ], [ %i.asq, %bb.ho ], [ %i.asq, %bb.hp ], [ %i.asq, %_ZSt8_DestroyIPN2cv8ximgproc15ScanSegmentImpl6WSNodeES3_EvT_S5_RSaIT0_E.exit.i.i.i846 ] ; 7 uses
  %i.avd = icmp eq i32 %i.aus, 0
  br i1 %i.avd, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837
  store i32 0, ptr %.pre.pre.i838, align 4, !tbaa !119
  br label %bb.hr

bb.hr:                                            ; preds = %bb.hq, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837
  %.016.i839 = phi i32 [ 1, %bb.hq ], [ %i.aus, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EE6resizeEm.exit.i837 ] ; 3 uses
  %i.ave = add nsw i32 %i.auw, -1                 ; 3 uses
  %i.avf = icmp slt i32 %.016.i839, %i.ave
  br i1 %i.avf, label %.lr.ph.i840, label %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849

.lr.ph.i840:                                      ; preds = %bb.hr
  %i.avg = sext i32 %.016.i839 to i64             ; 4 uses
  %wide.trip.count.i841 = sext i32 %i.ave to i64  ; 3 uses
  %i.avh = sub nsw i64 %wide.trip.count.i841, %i.avg
  %xtraiter1173 = and i64 %i.avh, 3               ; 2 uses
  %lcmp.mod1174.not = icmp eq i64 %xtraiter1173, 0
  br i1 %lcmp.mod1174.not, label %.prol.loopexit1172, label %.prol.preheader1171

.prol.preheader1171:                              ; preds = %.lr.ph.i840, %.prol.preheader1171
  %indvars.iv.i842.prol = phi i64 [ %indvars.iv.next.i843.prol, %.prol.preheader1171 ], [ %i.avg, %.lr.ph.i840 ] ; 2 uses
  %prol.iter1175 = phi i64 [ %prol.iter1175.next, %.prol.preheader1171 ], [ 0, %.lr.ph.i840 ]
  %indvars.iv.next.i843.prol = add nsw i64 %indvars.iv.i842.prol, 1 ; 3 uses
  %i.avi = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i838, i64 %indvars.iv.i842.prol
  %i.avj = trunc nsw i64 %indvars.iv.next.i843.prol to i32
  store i32 %i.avj, ptr %i.avi, align 4, !tbaa !119
  %prol.iter1175.next = add i64 %prol.iter1175, 1 ; 2 uses
  %prol.iter1175.cmp.not = icmp eq i64 %prol.iter1175.next, %xtraiter1173
  br i1 %prol.iter1175.cmp.not, label %.prol.loopexit1172, label %.prol.preheader1171, !llvm.loop !216

.prol.loopexit1172:                               ; preds = %.prol.preheader1171, %.lr.ph.i840
  %indvars.iv.i842.unr = phi i64 [ %i.avg, %.lr.ph.i840 ], [ %indvars.iv.next.i843.prol, %.prol.preheader1171 ]
  %i.avk = sub nsw i64 %i.avg, %wide.trip.count.i841
  %i.avl = icmp ugt i64 %i.avk, -4
  br i1 %i.avl, label %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849, label %.lr.ph.i840.new

.lr.ph.i840.new:                                  ; preds = %.prol.loopexit1172, %.lr.ph.i840.new
  %indvars.iv.i842 = phi i64 [ %indvars.iv.next.i843.3, %.lr.ph.i840.new ], [ %indvars.iv.i842.unr, %.prol.loopexit1172 ] ; 5 uses
  %indvars.iv.next.i843 = add nsw i64 %indvars.iv.i842, 1 ; 2 uses
  %i.avm = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i838, i64 %indvars.iv.i842
  %i.avn = trunc nsw i64 %indvars.iv.next.i843 to i32
  store i32 %i.avn, ptr %i.avm, align 4, !tbaa !119
  %indvars.iv.next.i843.1 = add nsw i64 %indvars.iv.i842, 2 ; 2 uses
  %i.avo = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i838, i64 %indvars.iv.next.i843
  %i.avp = trunc nsw i64 %indvars.iv.next.i843.1 to i32
  store i32 %i.avp, ptr %i.avo, align 4, !tbaa !119
  %indvars.iv.next.i843.2 = add nsw i64 %indvars.iv.i842, 3 ; 2 uses
  %i.avq = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i838, i64 %indvars.iv.next.i843.1
  %i.avr = trunc nsw i64 %indvars.iv.next.i843.2 to i32
  store i32 %i.avr, ptr %i.avq, align 4, !tbaa !119
  %indvars.iv.next.i843.3 = add nsw i64 %indvars.iv.i842, 4 ; 3 uses
  %i.avs = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i838, i64 %indvars.iv.next.i843.2
  %i.avt = trunc nsw i64 %indvars.iv.next.i843.3 to i32
  store i32 %i.avt, ptr %i.avs, align 4, !tbaa !119
  %exitcond.not.i844.3 = icmp eq i64 %indvars.iv.next.i843.3, %wide.trip.count.i841
  br i1 %exitcond.not.i844.3, label %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849, label %.lr.ph.i840.new, !llvm.loop !5

_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849: ; preds = %.prol.loopexit1172, %.lr.ph.i840.new, %bb.hr
  %i.avu = zext nneg i32 %i.ave to i64
  %i.avv = getelementptr inbounds nuw [12 x i8], ptr %.pre.pre.i838, i64 %i.avu
  store i32 0, ptr %i.avv, align 4, !tbaa !119
  br label %bb.hs

bb.hs:                                            ; preds = %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849, %bb.hl
  %i.avw = phi ptr [ %i.asp, %bb.hl ], [ %i.avc, %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849 ] ; 7 uses
  %.11599 = phi i32 [ %.10598, %bb.hl ], [ %.016.i839, %_ZN2cv8ximgproc15ScanSegmentImpl12allocWSNodesERSt6vectorINS1_6WSNodeESaIS3_EE.exit849 ] ; 4 uses
  %i.avx = sext i32 %.11599 to i64
  %i.avy = getelementptr inbounds nuw [12 x i8], ptr %i.avw, i64 %i.avx ; 4 uses
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !119
  store i32 0, ptr %i.avy, align 4, !tbaa !119
  %i.awa = add nsw i32 %i.uh, %i.fd
  %i.awb = getelementptr inbounds nuw i8, ptr %i.avy, i64 4
  store i32 %i.awa, ptr %i.awb, align 4, !tbaa !217
  %i.awc = add nsw i32 %i.ug, %i.fb
  %i.awd = getelementptr inbounds nuw i8, ptr %i.avy, i64 8
  store i32 %i.awc, ptr %i.awd, align 4, !tbaa !218
  %i.awe = zext nneg i32 %i.auf to i64
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.awe ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.awf, i64 4 ; 2 uses
  %i.awh = load i32, ptr %i.awg, align 4, !tbaa !220 ; 2 uses
  %.not691 = icmp eq i32 %i.awh, 0
  br i1 %.not691, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  %i.awi = sext i32 %i.awh to i64
  %i.awj = getelementptr inbounds nuw [12 x i8], ptr %i.avw, i64 %i.awi
  store i32 %.11599, ptr %i.awj, align 4, !tbaa !119
  br label %bb.hv

bb.hu:                                            ; preds = %bb.hs
  store i32 %.11599, ptr %i.awf, align 8, !tbaa !221
  br label %bb.hv

bb.hv:                                            ; preds = %bb.hu, %bb.ht
  store i32 %.11599, ptr %i.awg, align 4, !tbaa !220
  %i.awk = sub nsw i32 %.4556, %i.auf
  %i.awl = sext i32 %i.awk to i64
  %i.awm = getelementptr [4 x i8], ptr %i.a, i64 %i.awl
  %i.awn = getelementptr i8, ptr %i.awm, i64 1024
  %i.awo = load i32, ptr %i.awn, align 4, !tbaa !54
  %i.awp = sub nsw i32 %.4556, %i.awo
  store i32 -2, ptr %i.asu, align 4, !tbaa !54
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.backedge

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread: ; preds = %bb.cn, %bb.cp
  %.pr = phi ptr [ %.pr.pre, %bb.cp ], [ %i.qv, %bb.cn ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %.not.i.i.i850 = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i850, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit851, label %bb.hw

bb.hw:                                            ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread
  %i.awq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.awr = load ptr, ptr %i.awq, align 8, !tbaa !116
  %i.aws = ptrtoint ptr %i.awr to i64
  %i.awt = ptrtoint ptr %.pr to i64
  %i.awu = sub i64 %i.aws, %i.awt
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.awu) #31
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit851

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit851: ; preds = %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread.thread, %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit.thread, %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

.body742:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i733, %bb.ab, %.split935.us, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804, %bb.fm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn709.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn639, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit747 ], [ %.pn645, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit767 ], [ %.pn696, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit750 ], [ %i.qs, %.split935.us ], [ %.pn706, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit762 ], [ %.pn704, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit759 ], [ %.pn702, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ], [ %.pn698, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit753 ], [ %i.ajl, %bb.fm ], [ %.pn686, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit836 ], [ %.pn680, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit820 ], [ %.pn673, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit804 ], [ %.pn669, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit788 ], [ %.pn667, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit785 ], [ %.pn664, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit782 ], [ %.pn658, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit776 ], [ %.pn655, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit779 ], [ %.pn651, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit770 ], [ %.pn649, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit773 ], [ %i.by, %bb.ab ], [ %i.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i733 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.awv = load ptr, ptr %6, align 8, !tbaa !117  ; 3 uses
  %.not.i.i.i852 = icmp eq ptr %i.awv, null
  br i1 %.not.i.i.i852, label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit853, label %bb.hx

bb.hx:                                            ; preds = %.body742
  %i.aww = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.awx = load ptr, ptr %i.aww, align 8, !tbaa !116
  %i.awy = ptrtoint ptr %i.awx to i64
  %i.awz = ptrtoint ptr %i.awv to i64
  %i.axa = sub i64 %i.awy, %i.awz
  call void @_ZdlPvm(ptr noundef nonnull %i.awv, i64 noundef %i.axa) #31
  br label %_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit853

_ZNSt6vectorIN2cv8ximgproc15ScanSegmentImpl6WSNodeESaIS3_EED2Ev.exit853: ; preds = %.body742, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %common.resume
}

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15ScanSegmentImpl3OP4ERKSt4pairIiiE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7368) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !77     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !78
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5832
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 7184
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = sext i32 %i.a to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.l = getelementptr inbounds i8, ptr %i.f, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !80
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  %i.q = add nsw i32 %i.p, -1
  %i.r = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.q, ptr %i.r, align 4, !tbaa !54
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds [4 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !54
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !54
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.v = load i32, ptr %i.b, align 4, !tbaa !78
  %i.w = sext i32 %i.v to i64
  %i.x = icmp slt i64 %indvars.iv.next, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN2cv8ximgproc15ScanSegmentImpl16calculateClusterEPiS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(7368) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3688
  %i.d = load ptr, ptr %i.c, align 8              ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6904
  %i.f = load ptr, ptr %i.e, align 8              ; 9 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [3 x i8], ptr %i.f, i64 %i.g ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 8 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.l = load float, ptr %i.k, align 4
  %i.m = fptosi float %i.l to i32                 ; 8 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !54     ; 4 uses
  %i.o = load i32, ptr %i.a, align 4, !tbaa !62   ; 4 uses
  %i.p = icmp slt i32 %i.n, %i.o
  br i1 %i.p, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 6912
  %i.r = load i32, ptr %i.q, align 8, !tbaa !54
  %i.s = add nsw i32 %i.r, %3                     ; 4 uses
  %i.t = icmp sgt i32 %i.s, -1
  %i.u = load i32, ptr %i.b, align 8
  %i.v = icmp slt i32 %i.s, %i.u
  %or.cond = select i1 %i.t, i1 %i.v, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.w = zext nneg i32 %i.s to i64                ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.w ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !54
  %i.z = icmp eq i32 %i.y, -2
  br i1 %i.z, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.h, align 1, !tbaa !80
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw [3 x i8], ptr %i.f, i64 %i.w ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !80
  %i.ae = zext i8 %i.ad to i32
  %i.af = sub nsw i32 %i.ab, %i.ae                ; 2 uses
  %i.ag = load i8, ptr %i.i, align 1, !tbaa !80
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !80
  %i.ak = zext i8 %i.aj to i32
  %i.al = sub nsw i32 %i.ah, %i.ak                ; 2 uses
  %i.am = load i8, ptr %i.j, align 1, !tbaa !80
  %i.an = zext i8 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = zext i8 %i.ap to i32
  %i.ar = sub nsw i32 %i.an, %i.aq                ; 2 uses
  %i.as = mul nsw i32 %i.af, %i.af
  %i.at = mul nsw i32 %i.al, %i.al
  %i.au = add nuw nsw i32 %i.at, %i.as
  %i.av = mul nsw i32 %i.ar, %i.ar
  %i.aw = add nuw nsw i32 %i.au, %i.av
  %.not = icmp sgt i32 %i.aw, %i.m
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %4, ptr %i.x, align 4, !tbaa !54
  %i.ax = load i32, ptr %2, align 4, !tbaa !54
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ay
  store i32 %i.s, ptr %i.az, align 4, !tbaa !54
  %i.ba = load i32, ptr %2, align 4, !tbaa !54
  %i.bb = add nsw i32 %i.ba, 1                    ; 2 uses
  store i32 %i.bb, ptr %2, align 4, !tbaa !54
  %.pre = load i32, ptr %i.a, align 4, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b
  %i.bc = phi i32 [ %i.o, %bb.d ], [ %.pre, %bb.e ], [ %i.o, %bb.c ], [ %i.o, %bb.b ] ; 4 uses
  %i.bd = phi i32 [ %i.n, %bb.d ], [ %i.bb, %bb.e ], [ %i.n, %bb.c ], [ %i.n, %bb.b ] ; 4 uses
  %i.be = icmp slt i32 %i.bd, %i.bc
  br i1 %i.be, label %bb.g, label %bb.ao

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 6916
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !54
  %i.bh = add nsw i32 %i.bg, %3                   ; 4 uses
  %i.bi = icmp sgt i32 %i.bh, -1
  %i.bj = load i32, ptr %i.b, align 8
  %i.bk = icmp slt i32 %i.bh, %i.bj
  %or.cond58 = select i1 %i.bi, i1 %i.bk, i1 false
  br i1 %or.cond58, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.bl = zext nneg i32 %i.bh to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !54
  %i.bo = icmp eq i32 %i.bn, -2
  br i1 %i.bo, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bp = load i8, ptr %i.h, align 1, !tbaa !80
  %i.bq = zext i8 %i.bp to i32
end_hunk_1
