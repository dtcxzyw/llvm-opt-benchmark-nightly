inline.NumInlined: 2868
inline.NumDeleted: 1221
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5arrow3ipc7feather6Reader4OpenERKSt10shared_ptrINS_2io16RandomAccessFileEERKNS0_14IpcReadOptionsE:bb.a
          cleanup
  br label %bb.fc

bb.ac:                                            ; preds = %bb.aa
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ad:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #24, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.ce = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !70, !noalias !93 ; 2 uses
  store ptr %i.cf, ptr %18, align 8, !tbaa !70, !alias.scope !94, !noalias !80
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !73, !noalias !93 ; 3 uses
  store ptr null, ptr %i.ch, align 8, !tbaa !73, !noalias !93
  store ptr %i.ci, ptr %i.cg, align 8, !tbaa !73, !alias.scope !94, !noalias !80
  store ptr null, ptr %i.ce, align 8, !tbaa !70, !noalias !93
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8            ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 1
  %i.cn = icmp ne i32 %i.cm, 826361158
  %i.co = zext i1 %i.cn to i32
  %.not.i50 = icmp eq i32 %i.co, 0
  br i1 %.not.i50, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZN5arrow6Status8FromArgsIJRA31_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %25, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(31) @.str.4)
          to label %_ZN5arrow6Status7InvalidIJRA31_KcEEES0_DpOT_.exit.i unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cp = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.ag:                                            ; preds = %bb.ad
  %i.cq = load i32, ptr %i.ck, align 4, !tbaa !3  ; 2 uses
  %i.cr = add i32 %i.cq, 12
  %i.cs = zext i32 %i.cr to i64
  %i.ct = icmp slt i64 %i.bu, %i.cs
  br i1 %i.ct, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZN5arrow6Status8FromArgsIJRA45_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %25, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(45) @.str.5)
          to label %_ZN5arrow6Status7InvalidIJRA31_KcEEES0_DpOT_.exit.i unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.aj:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #24, !noalias !80
  %i.cv = load ptr, ptr %1, align 8, !tbaa !38, !noalias !80 ; 2 uses
  %i.cw = zext i32 %i.cq to i64                   ; 2 uses
  %i.cx = sub nsw i64 %i.bw, %i.cw
  %i.cy = load ptr, ptr %i.cv, align 8, !tbaa !43
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 88
  %i.da = load ptr, ptr %i.cz, align 8
  invoke void %i.da(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Result.15") align 8 %19, ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i64 noundef %i.cx, i64 noundef %i.cw)
          to label %bb.ak unwind label %bb.am

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %19, align 8, !tbaa !45, !noalias !80
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.ao, label %bb.al, !prof !48

bb.al:                                            ; preds = %bb.ak
  store ptr null, ptr %25, align 8, !tbaa !45, !alias.scope !80
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %_ZN5arrow6StatusC2ERKS0_.exit51.i unwind label %bb.an

bb.am:                                            ; preds = %bb.aj
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.eq

bb.an:                                            ; preds = %bb.al
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.ao:                                            ; preds = %bb.ak
  %i.df = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.di = load <2 x ptr>, ptr %i.df, align 8, !tbaa !68, !noalias !95
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, i8 0, i64 16, i1 false), !noalias !80
  %i.dj = load ptr, ptr %i.dh, align 8, !tbaa !73, !noalias !80 ; 8 uses
  store <2 x ptr> %i.di, ptr %i.dg, align 8, !tbaa !68, !noalias !80
  %.not.i.i.i.i52.i = icmp eq ptr %i.dj, null
  br i1 %.not.i.i.i.i52.i, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %i.dl = load atomic i64, ptr %i.dk acquire, align 8 ; 2 uses
  %i.dm = icmp eq i64 %i.dl, 4294967297
  %i.dn = trunc i64 %i.dl to i32                  ; 2 uses
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i32 0, ptr %i.dk, align 8, !tbaa !74
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 12
  store i32 0, ptr %i.do, align 4, !tbaa !79
  %i.dp = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  call void %i.dr(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #24, !inline_history !100
  %i.ds = load ptr, ptr %i.dj, align 8, !tbaa !43
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #24, !inline_history !100
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.ar:                                            ; preds = %bb.ap
  %i.dv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !80
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dv, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dw = add nsw i32 %i.dn, -1
  store i32 %i.dw, ptr %i.dk, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.at:                                            ; preds = %bb.ar
  %i.dx = atomicrmw volatile add ptr %i.dk, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.at, %bb.as
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.dn, %bb.as ], [ %i.dx, %bb.at ]
  %i.dy = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dy, label %bb.au, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !85

bb.au:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dj) #24
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.aq, %bb.ao
  %i.dz = load ptr, ptr %i.dg, align 8, !tbaa !70, !noalias !80 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 9
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !101, !range !60, !noundef !61
  %i.ec = trunc nuw i8 %i.eb to i1
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %i.ee = load ptr, ptr %i.ed, align 8            ; 2 uses
  %i.ef = select i1 %i.ec, ptr %i.ee, ptr null, !prof !48 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ef) ]
  %i.eg = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.eh ; 5 uses
  store ptr %i.ei, ptr %i.ak, align 8, !tbaa !108, !noalias !80
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.lifetime.start.p0(ptr nonnull %10), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %12), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %14), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %15), !noalias !80
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24, !noalias !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !119
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !3, !noalias !116
  %i.ek = sext i32 %i.ej to i64
  %i.el = sub nsw i64 0, %i.ek
  %i.em = getelementptr inbounds i8, ptr %i.ei, i64 %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !120, !noalias !116 ; 3 uses
  %.not.i.i.i108.i.i = icmp ne i16 %i.eo, 0
  call void @llvm.assume(i1 %.not.i.i.i108.i.i)
  %i.ep = zext i16 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ep ; 2 uses
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3, !noalias !116 ; 2 uses
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.es
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !121, !noalias !116
  %.not109.i.i = icmp sgt i32 %i.eu, 0
  br i1 %.not109.i.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i, label %.critedge38.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i: ; preds = %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.ev = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i
  %i.fd = phi i32 [ %i.er, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i ], [ %i.lf, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ]
  %i.fe = phi i16 [ %i.eo, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i ], [ %i.lc, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i ], [ %indvars.iv.next.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ] ; 2 uses
  %i.ff = phi ptr [ %i.ei, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.lr.ph.i.i ], [ %i.kw, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i.i ]
  %i.fg = zext i16 %i.fe to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 %i.fg
  %i.fi = zext i32 %i.fd to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 %i.fi
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = shl nuw nsw i64 %indvars.iv.i.i, 2
  %i.fm = and i64 %i.fl, 4294967292
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !3, !noalias !116
  %i.fp = zext i32 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fp ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24, !noalias !119
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %7, i8 0, i64 16, i1 false), !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24, !noalias !119
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !116
  %i.fs = sext i32 %i.fr to i64
  %i.ft = sub nsw i64 0, %i.fs
  %i.fu = getelementptr inbounds i8, ptr %i.fq, i64 %i.ft ; 4 uses
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !120, !noalias !116 ; 3 uses
  %i.fw = icmp ugt i16 %i.fv, 6
  br i1 %i.fw, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 6
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !120, !noalias !116 ; 2 uses
  %.not.i.i.i43.i.i = icmp eq i16 %i.fy, 0
  br i1 %.not.i.i.i43.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i, label %bb.av

bb.av:                                            ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42.i.i
  %i.fz = zext i16 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3, !noalias !116
  %i.gc = zext i32 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gc
  br label %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i

_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i: ; preds = %bb.av, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42.i.i
  %i.ge = phi ptr [ %i.gd, %bb.av ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42.i.i ] ; 4 uses
  %i.gf = icmp ugt i16 %i.fv, 8
  br i1 %i.gf, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !120, !noalias !116 ; 2 uses
  %.not.i.i.i59.i = icmp eq i16 %i.gh, 0
  br i1 %.not.i.i.i59.i, label %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i, label %bb.aw

bb.aw:                                            ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.gi = zext i16 %i.gh to i64
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gi
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !83, !noalias !116
  br label %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i

_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i: ; preds = %bb.aw, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.gl = phi i8 [ %i.gk, %bb.aw ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i ] ; 3 uses
  %i.gm = icmp ugt i16 %i.fv, 10
  br i1 %i.gm, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i: ; preds = %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fu, i64 10
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !120, !noalias !116 ; 2 uses
  %.not.i.i.i45.i.i = icmp eq i16 %i.go, 0
  br i1 %.not.i.i.i45.i.i, label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i, label %bb.ax

bb.ax:                                            ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i
  %i.gp = zext i16 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.gp ; 2 uses
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !3, !noalias !116
  %i.gs = zext i32 %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.gs
  br label %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i

_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i: ; preds = %bb.ax, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i, %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i
  %i.gu = phi i8 [ %i.gl, %bb.ax ], [ %i.gl, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i ], [ %i.gl, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i ], [ 0, %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i ]
  %i.gv = phi ptr [ %i.ge, %bb.ax ], [ %i.ge, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i ], [ %i.ge, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i ], [ %i.ge, %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i ]
  %i.gw = phi ptr [ %i.gt, %bb.ax ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i44.i.i ], [ null, %_ZNK5arrow3ipc7feather3fbs6Column13metadata_typeEv.exit.i.i ], [ null, %_ZNK5arrow3ipc7feather3fbs6Column6valuesEv.exit.i.i ], [ null, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i39.i.i ]
  invoke fastcc void @_ZN5arrow3ipc7feather12_GLOBAL__N_18ReaderV111GetDataTypeEPKNS1_3fbs14PrimitiveArrayENS4_12TypeMetadataEPKvPSt10shared_ptrINS_8DataTypeEE(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef %i.gv, i8 noundef zeroext %i.gu, ptr noundef %i.gw, ptr noundef %7)
          to label %_ZN5arrow6StatusD2Ev.exit.i.i unwind label %bb.ay, !noalias !116

_ZN5arrow6StatusD2Ev.exit.i.i:                    ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i
  %i.gx = load ptr, ptr %8, align 8, !tbaa !45, !noalias !119 ; 2 uses
  store ptr %i.gx, ptr %25, align 8, !tbaa !45, !alias.scope !119
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !119
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN5arrow6StatusD2Ev.exit49.i.i, label %.critedge36.i.i

bb.ay:                                            ; preds = %_ZNK5arrow3ipc7feather3fbs6Column8metadataEv.exit.i.i
  %i.gz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24, !noalias !119
  br label %bb.ck

_ZN5arrow6StatusD2Ev.exit49.i.i:                  ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !119
  %i.ha = load i32, ptr %i.fq, align 4, !tbaa !3, !noalias !116
  %i.hb = sext i32 %i.ha to i64
  %i.hc = sub nsw i64 0, %i.hb
  %i.hd = getelementptr inbounds i8, ptr %i.fq, i64 %i.hc
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 4
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !120, !noalias !116 ; 2 uses
  %.not.i.i.i51.i.i = icmp ne i16 %i.hf, 0
  call void @llvm.assume(i1 %.not.i.i.i51.i.i)
  %i.hg = zext i16 %i.hf to i64
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.hg ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !3, !noalias !116
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hj ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !123)
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4 ; 2 uses
  %i.hm = load i32, ptr %i.hk, align 4, !tbaa !126, !noalias !128 ; 3 uses
  %i.hn = zext i32 %i.hm to i64                   ; 5 uses
  store ptr %i.ev, ptr %10, align 8, !tbaa !129, !alias.scope !123, !noalias !119
  %i.ho = icmp ugt i32 %i.hm, 15
  br i1 %i.ho, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZN5arrow6StatusD2Ev.exit49.i.i
  %i.hp = add nuw nsw i64 %i.hn, 1
  %i.hq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hp) #26
          to label %.noexc.i.i unwind label %bb.cg, !noalias !116 ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.hq, ptr %10, align 8, !tbaa !130, !alias.scope !123, !noalias !119
  store i64 %i.hn, ptr %i.ev, align 8, !tbaa !83, !alias.scope !123, !noalias !119
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.noexc.i.i, %_ZN5arrow6StatusD2Ev.exit49.i.i
  %i.hr = phi ptr [ %i.hq, %.noexc.i.i ], [ %i.ev, %_ZN5arrow6StatusD2Ev.exit49.i.i ] ; 3 uses
  switch i32 %i.hm, label %bb.ba [
    i32 1, label %bb.az
    i32 0, label %bb.bb
  ]

bb.az:                                            ; preds = %._crit_edge.i.i.i.i.i
  %i.hs = load i8, ptr %i.hl, align 4, !tbaa !83, !noalias !128
  store i8 %i.hs, ptr %i.hr, align 1, !tbaa !83, !noalias !116
  br label %bb.bb

bb.ba:                                            ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hr, ptr nonnull align 4 %i.hl, i64 %i.hn, i1 false), !noalias !116
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %._crit_edge.i.i.i.i.i
  store i64 %i.hn, ptr %i.ew, align 8, !tbaa !131, !alias.scope !123, !noalias !119
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hn
  store i8 0, ptr %i.ht, align 1, !tbaa !83, !noalias !116
  %i.hu = load ptr, ptr %i.ey, align 8, !tbaa !73, !noalias !119 ; 2 uses
  %i.hv = load <2 x ptr>, ptr %7, align 16, !tbaa !68, !noalias !119
  store <2 x ptr> %i.hv, ptr %11, align 16, !tbaa !68, !noalias !119
  %.not.i.i.i52.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i52.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 3 uses
  %i.hx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !83, !noalias !119
  %.not.i.i.i.i.i55.i = icmp eq i8 %i.hx, 0
  br i1 %.not.i.i.i.i.i55.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hy = load i32, ptr %i.hw, align 4, !tbaa !3, !noalias !116
  %i.hz = add nsw i32 %i.hy, 1
  store i32 %i.hz, ptr %i.hw, align 4, !tbaa !3, !noalias !116
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i

bb.be:                                            ; preds = %bb.bc
  %i.ia = atomicrmw volatile add ptr %i.hw, i32 1 acq_rel, align 4, !noalias !116 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i: ; preds = %bb.be, %bb.bd, %bb.bb
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false), !noalias !119
  invoke void @_ZN5arrow5fieldENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt10shared_ptrINS_8DataTypeEEbS6_IKNS_16KeyValueMetadataEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.82") align 8 %9, ptr noundef nonnull %10, ptr noundef nonnull %11, i1 noundef zeroext true, ptr noundef nonnull %12)
          to label %bb.bf unwind label %bb.ch, !noalias !116

bb.bf:                                            ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit.i.i
  %i.ib = load ptr, ptr %i.ez, align 8, !tbaa !132, !noalias !119 ; 5 uses
  %i.ic = load ptr, ptr %i.fa, align 16, !tbaa !135, !noalias !119
  %.not.i.i53.i.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not.i.i53.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.id = getelementptr inbounds nuw i8, ptr %i.ib, i64 8
  store ptr null, ptr %i.id, align 8, !tbaa !73, !noalias !116
  %i.ie = load <2 x ptr>, ptr %9, align 16, !tbaa !68, !noalias !119
  store ptr null, ptr %i.fb, align 8, !tbaa !73, !noalias !119
  store <2 x ptr> %i.ie, ptr %i.ib, align 8, !tbaa !68, !noalias !116
  store ptr null, ptr %9, align 16, !tbaa !136, !noalias !119
  %i.if = getelementptr inbounds nuw i8, ptr %i.ib, i64 16
  store ptr %i.if, ptr %i.ez, align 8, !tbaa !132, !noalias !119
  br label %.critedge.i.i

bb.bh:                                            ; preds = %bb.bf
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr %i.ib, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %.critedge.i.i unwind label %bb.ci, !noalias !116

.critedge.i.i:                                    ; preds = %bb.bh, %bb.bg
  %i.ig = load ptr, ptr %i.fb, align 8, !tbaa !73, !noalias !119 ; 8 uses
  %.not.i.i55.i.i = icmp eq ptr %i.ig, null
  br i1 %.not.i.i55.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i, label %bb.bi

bb.bi:                                            ; preds = %.critedge.i.i
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8 ; 4 uses
  %i.ii = load atomic i64, ptr %i.ih acquire, align 8, !noalias !116 ; 2 uses
  %i.ij = icmp eq i64 %i.ii, 4294967297
  %i.ik = trunc i64 %i.ii to i32                  ; 2 uses
  br i1 %i.ij, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
end_hunk_0
