inline.NumInlined: 818
inline.NumDeleted: 422
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK5faiss14IndexShardsIVF6searchElPKflPfPlPKNS_16SearchParametersE:bb.a
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !28 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !29
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 72
  %i.cv = load ptr, ptr %i.cu, align 8
  invoke void %i.cv(ptr noundef nonnull align 8 dereferenceable(36) %i.cs, i64 noundef %1, ptr noundef %2, i64 noundef %i.bs, ptr noundef %i.cp, ptr noundef %i.co, ptr noundef null)
          to label %bb.ak unwind label %bb.av

bb.ak:                                            ; preds = %bb.aj
  %i.cw = load ptr, ptr %i.w, align 8, !tbaa !31
  %i.cx = load ptr, ptr %i.v, align 8, !tbaa !34  ; 4 uses
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 2 uses
  %i.db = lshr i64 %i.da, 4                       ; 2 uses
  %i.dc = trunc i64 %i.db to i32                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %sext = shl i64 %i.da, 28
  %i.dd = ashr i64 %sext, 32                      ; 5 uses
  %i.de = load i64, ptr %i.c, align 8, !tbaa !62
  %i.df = load i64, ptr %i.a, align 8, !tbaa !62
  %i.dg = mul i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, %i.dd                    ; 8 uses
  %i.di = icmp ugt i64 %i.dh, 2305843009213693951
  br i1 %i.di, label %bb.al, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i82

bb.al:                                            ; preds = %bb.ak
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc88 unwind label %bb.aw

.noexc88:                                         ; preds = %bb.al
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i82: ; preds = %bb.ak
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.dj, align 8
  %.not.i.i.i.i83 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i83, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i96, label %bb.am

bb.am:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i82
  %i.dk = shl nuw nsw i64 %i.dh, 2
  %i.dl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dk) #26
          to label %.noexc89 unwind label %bb.aw  ; 4 uses

.noexc89:                                         ; preds = %bb.am
  store ptr %i.dl, ptr %12, align 8, !tbaa !81
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.dh
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !83
  store float 0.000000e+00, ptr %i.dl, align 4, !tbaa !27
  %i.do = getelementptr i8, ptr %i.dl, i64 4      ; 3 uses
  %i.dp = add nsw i64 %i.dh, -1                   ; 3 uses
  %i.dq = icmp eq i64 %i.dp, 0                    ; 2 uses
  br i1 %i.dq, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91, label %bb.an

bb.an:                                            ; preds = %.noexc89
  %.idx.i.i.i.i.i.i.i85 = shl nuw nsw i64 %i.dp, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.do, i8 0, i64 %.idx.i.i.i.i.i.i.i85, i1 false), !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 %.idx.i.i.i.i.i.i.i85
  %i.ds = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.dr, ptr %i.ds, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.dt = icmp samesign ugt i64 %i.dh, 1152921504606846975
  br i1 %i.dt, label %bb.ao, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91.thread

bb.ao:                                            ; preds = %bb.an
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc97 unwind label %bb.ax

.noexc97:                                         ; preds = %bb.ao
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91: ; preds = %.noexc89
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.do, ptr %i.du, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  br label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91.thread

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i96: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 24, i1 false)
  br label %bb.ap

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91.thread: ; preds = %bb.an, %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91
  %i.dv = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 0, ptr %i.dv, align 8
  %i.dw = shl nuw nsw i64 %i.dh, 3
  %i.dx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #26
          to label %.noexc98 unwind label %bb.ax  ; 4 uses

.noexc98:                                         ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91.thread
  store ptr %i.dx, ptr %13, align 8, !tbaa !72
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.dh
  %i.dz = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %i.dy, ptr %i.dz, align 8, !tbaa !69
  store i64 0, ptr %i.dx, align 8, !tbaa !62
  %i.ea = getelementptr i8, ptr %i.dx, i64 8      ; 3 uses
  br i1 %i.dq, label %bb.ap, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93: ; preds = %.noexc98
  %.idx.i.i.i.i.i.i.i94 = shl nuw nsw i64 %i.dp, 3 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ea, i8 0, i64 %.idx.i.i.i.i.i.i.i94, i1 false), !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx.i.i.i.i.i.i.i94
  br label %bb.ap

bb.ap:                                            ; preds = %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93, %.noexc98, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i96
  %.0.i.i.i.i.i95 = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i96 ], [ %i.ea, %.noexc98 ], [ %i.eb, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i93 ]
  %i.ec = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.0.i.i.i.i.i95, ptr %i.ec, align 8, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.ed = icmp ugt i64 %i.dd, 1152921504606846975
  br i1 %i.ed, label %bb.aq, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i100

bb.aq:                                            ; preds = %bb.ap
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #25
          to label %.noexc103 unwind label %bb.ay

.noexc103:                                        ; preds = %bb.aq
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i100: ; preds = %bb.ap
  %.not.i.i.i.i101 = icmp eq i64 %i.dd, 0
  br i1 %.not.i.i.i.i101, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i102, label %bb.ar

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i102: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i100
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %.loopexit138

bb.ar:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i100
  %i.ee = shl nuw nsw i64 %i.dd, 3                ; 3 uses
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ee) #26
          to label %.noexc104 unwind label %bb.ay ; 5 uses

.noexc104:                                        ; preds = %bb.ar
  store ptr %i.ef, ptr %14, align 8, !tbaa !72
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %i.dd
  %i.eh = getelementptr inbounds nuw i8, ptr %14, i64 16
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ef, i8 0, i64 %i.ee, i1 false), !tbaa !62
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %i.ee
  br label %.loopexit138

.loopexit138:                                     ; preds = %.noexc104, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i102
  %i.ej = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i102 ], [ %i.ef, %.noexc104 ] ; 7 uses
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i102 ], [ %i.ei, %.noexc104 ]
  %i.ek = getelementptr inbounds nuw i8, ptr %14, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ek, align 8, !tbaa !73
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.em = load i8, ptr %i.el, align 1, !tbaa !53, !range !15, !noundef !16
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.as, label %.loopexit

bb.as:                                            ; preds = %.loopexit138
  store i64 0, ptr %i.ej, align 8, !tbaa !62
  %i.eo = icmp sgt i32 %i.dc, 1
  br i1 %i.eo, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.as
  %i.ep = add nuw nsw i64 %i.db, 4294967295       ; 4 uses
  %wide.trip.count = and i64 %i.ep, 4294967295
  %xtraiter = and i64 %i.ep, 1
  %i.eq = icmp eq i64 %wide.trip.count, 1
  br i1 %i.eq, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.ep, 4294967294
  br label %.lr.ph

bb.at:                                            ; preds = %bb.ag, %bb.af
  %i.er = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit124

bb.au:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i.thread, %bb.ai
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit122

bb.av:                                            ; preds = %bb.aj
  %i.et = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.aw:                                            ; preds = %bb.am, %bb.al
  %i.eu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit120

bb.ax:                                            ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i91.thread, %bb.ao
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit118

bb.ay:                                            ; preds = %bb.ar, %bb.aq
  %i.ew = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit116

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv140 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next141.1, %.lr.ph ] ; 5 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv140
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !62
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv140
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !36
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !61
  %i.fd = add nsw i64 %i.fc, %i.ey
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  store i64 %i.fd, ptr %i.fe, align 8, !tbaa !62
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv140
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.ff = load i64, ptr %17, align 8, !tbaa !62
  %i.fg = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv140
  %18 = getelementptr inbounds nuw i8, ptr %i.fg, i64 16
  %i.fh = load ptr, ptr %18, align 8, !tbaa !36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !61
  %i.fk = add nsw i64 %i.fj, %i.ff
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.fk, ptr %i.fm, align 8, !tbaa !62
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %indvars.iv.next141.1 = add nuw nsw i64 %indvars.iv140, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !85

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv140.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next141.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod175 = trunc i64 %i.ep to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv140.epil.init
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !62
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %i.cx, i64 %indvars.iv140.epil.init
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !36
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !61
  %i.ft = add nsw i64 %i.fs, %i.fo
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %indvars.iv.epil.init
  store i64 %i.ft, ptr %i.fu, align 8, !tbaa !62
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.as, %.loopexit138
  %i.fv = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %15, i8 0, i64 32, i1 false)
  %i.fw = invoke noalias noundef nonnull dereferenceable(72) ptr @_Znwm(i64 noundef 72) #26
          to label %bb.az unwind label %bb.be     ; 10 uses

bb.az:                                            ; preds = %.loopexit
  %i.fx = getelementptr inbounds nuw i8, ptr %15, i64 24
  store ptr %i.a, ptr %i.fw, align 16, !tbaa !86
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  store ptr %i.d, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !86
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  store ptr %i.b, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !87
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 24
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !86
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  store ptr %11, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !90
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 40
  store ptr %10, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !92
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 48
  store ptr %12, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !92
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 56
  store ptr %13, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !90
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fw, i64 64
  store ptr %14, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !90
  store ptr %i.fw, ptr %15, align 8, !tbaa !76
  store ptr @"_ZNSt17_Function_handlerIFviPKN5faiss5IndexEEZNKS0_14IndexShardsIVF6searchElPKflPfPlPKNS0_16SearchParametersEE3$_0E9_M_invokeERKSt9_Any_dataOiOS3_", ptr %i.fx, align 8, !tbaa !94
  store ptr @"_ZNSt17_Function_handlerIFviPKN5faiss5IndexEEZNKS0_14IndexShardsIVF6searchElPKflPfPlPKNS0_16SearchParametersEE3$_0E10_M_managerERSt9_Any_dataRKSF_St18_Manager_operation", ptr %i.fv, align 8, !tbaa !74
  invoke void @_ZNK5faiss13ThreadedIndexINS_5IndexEE10runOnIndexESt8functionIFviPKS1_EE(ptr noundef nonnull align 8 dereferenceable(65) %0, ptr noundef nonnull align 8 %15)
          to label %bb.ba unwind label %bb.bf

bb.ba:                                            ; preds = %bb.az
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !74 ; 2 uses
  %.not.i = icmp eq ptr %i.fy, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = invoke noundef zeroext i1 %i.fy(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit unwind label %bb.bc ; 0 uses

bb.bc:                                            ; preds = %bb.bb
  %i.ga = landingpad { ptr, i32 }
          catch ptr null
  %i.gb = extractvalue { ptr, i32 } %i.ga, 0
  call void @__clang_call_terminate(ptr %i.gb) #27
  unreachable

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.ba, %bb.bb
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !17
  %i.ge = icmp eq i32 %i.gd, 1
  %i.gf = load i64, ptr %i.a, align 8, !tbaa !62  ; 2 uses
  %i.gg = load i64, ptr %i.c, align 8, !tbaa !62  ; 2 uses
  %i.gh = load ptr, ptr %12, align 8, !tbaa !81   ; 2 uses
  %i.gi = load ptr, ptr %13, align 8, !tbaa !72   ; 2 uses
  br i1 %i.ge, label %bb.bd, label %bb.bi

bb.bd:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZN5faiss17merge_knn_resultsIlNS_4CMinIfiEEEEvmmNT0_2TIEPKNS3_1TEPKT_PS5_PS8_(i64 noundef %i.gf, i64 noundef %i.gg, i32 noundef %i.dc, ptr noundef %i.gh, ptr noundef %i.gi, ptr noundef %4, ptr noundef %5)
          to label %bb.bj unwind label %bb.be

bb.be:                                            ; preds = %.loopexit, %bb.bi, %bb.bd
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Function_baseD2Ev.exit107

bb.bf:                                            ; preds = %bb.az
  %i.gk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gl = load ptr, ptr %i.fv, align 8, !tbaa !74 ; 2 uses
  %.not.i106 = icmp eq ptr %i.gl, null
  br i1 %.not.i106, label %_ZNSt14_Function_baseD2Ev.exit107, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gm = invoke noundef zeroext i1 %i.gl(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit107 unwind label %bb.bh ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.gn = landingpad { ptr, i32 }
          catch ptr null
  %i.go = extractvalue { ptr, i32 } %i.gn, 0
  call void @__clang_call_terminate(ptr %i.go) #27
  unreachable

bb.bi:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit
  invoke void @_ZN5faiss17merge_knn_resultsIlNS_4CMaxIfiEEEEvmmNT0_2TIEPKNS3_1TEPKT_PS5_PS8_(i64 noundef %i.gf, i64 noundef %i.gg, i32 noundef %i.dc, ptr noundef %i.gh, ptr noundef %i.gi, ptr noundef %4, ptr noundef %5)
          to label %bb.bj unwind label %bb.be

bb.bj:                                            ; preds = %bb.bi, %bb.bd
  %i.gp = load ptr, ptr %14, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.gp, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.gq = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !69
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = ptrtoint ptr %i.gp to i64
  %i.gu = sub i64 %i.gs, %i.gt
  call void @_ZdlPvm(ptr noundef nonnull %i.gp, i64 noundef %i.gu) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  %i.gv = load ptr, ptr %13, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i108 = icmp eq ptr %i.gv, null
  br i1 %.not.i.i.i108, label %_ZNSt6vectorIlSaIlEED2Ev.exit109, label %bb.bl

bb.bl:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit
  %i.gw = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !69
  %i.gy = ptrtoint ptr %i.gx to i64
  %i.gz = ptrtoint ptr %i.gv to i64
  %i.ha = sub i64 %i.gy, %i.gz
  call void @_ZdlPvm(ptr noundef nonnull %i.gv, i64 noundef %i.ha) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit109

_ZNSt6vectorIlSaIlEED2Ev.exit109:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit, %bb.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %i.hb = load ptr, ptr %12, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i110 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i110, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit109
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !83
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = ptrtoint ptr %i.hb to i64
  %i.hg = sub i64 %i.he, %i.hf
  call void @_ZdlPvm(ptr noundef nonnull %i.hb, i64 noundef %i.hg) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit109, %bb.bm
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.hh = load ptr, ptr %11, align 8, !tbaa !72   ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.hh, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIlSaIlEED2Ev.exit112, label %bb.bn

bb.bn:                                            ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !69
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl
  call void @_ZdlPvm(ptr noundef nonnull %i.hh, i64 noundef %i.hm) #24
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit112

_ZNSt6vectorIlSaIlEED2Ev.exit112:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  %i.hn = load ptr, ptr %10, align 8, !tbaa !81   ; 3 uses
  %.not.i.i.i113 = icmp eq ptr %i.hn, null
  br i1 %.not.i.i.i113, label %_ZNSt6vectorIfSaIfEED2Ev.exit114, label %bb.bo

bb.bo:                                            ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit112
  %i.ho = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !83
  %i.hq = ptrtoint ptr %i.hp to i64
  %i.hr = ptrtoint ptr %i.hn to i64
  %i.hs = sub i64 %i.hq, %i.hr
  call void @_ZdlPvm(ptr noundef nonnull %i.hn, i64 noundef %i.hs) #24
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit114

_ZNSt6vectorIfSaIfEED2Ev.exit114:                 ; preds = %_ZNSt6vectorIlSaIlEED2Ev.exit112, %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  ret void

_ZNSt14_Function_baseD2Ev.exit107:                ; preds = %bb.bg, %bb.bf, %bb.be
end_hunk_0
