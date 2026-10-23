Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/convolution?download=true
inline.NumInlined: 742
inline.NumDeleted: 316
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 35
begin_hunk_0_@_ZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibb:bb.a
  %i.mz = inttoptr i64 %i.my to ptr
  store ptr %i.mz, ptr %i.u, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
  %i.na = mul nuw nsw i32 %i.mf, %3
  store i32 0, ptr %27, align 4, !tbaa !86
  %i.nb = getelementptr inbounds nuw i8, ptr %27, i64 4
  store i32 %i.na, ptr %i.nb, align 4, !tbaa !87
  %i.nc = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %28, i8 0, i64 32, i1 false)
  %i.nd = invoke noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21
          to label %bb.cv unwind label %bb.cs     ; 12 uses

bb.cs:                                            ; preds = %bb.cr
  %i.ne = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nf = load ptr, ptr %i.nc, align 8, !tbaa !89 ; 2 uses
  %.not.i.i236 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i236, label %.body238, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ng = invoke noundef zeroext i1 %i.nf(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 3)
          to label %.body238 unwind label %bb.cu  ; 0 uses

bb.cu:                                            ; preds = %bb.ct
  %i.nh = landingpad { ptr, i32 }
          catch ptr null
  %i.ni = extractvalue { ptr, i32 } %i.nh, 0
  call void @__clang_call_terminate(ptr %i.ni) #25
  unreachable

bb.cv:                                            ; preds = %bb.cr
  %i.nj = getelementptr inbounds nuw i8, ptr %28, i64 24
  store ptr %i.s, ptr %i.nd, align 16, !tbaa !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  store ptr %i.t, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !94
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !92
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  store ptr %i.r, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !94
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 32
  store ptr %i.p, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !94
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 40
  store ptr %i.c, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !94
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 48
  store ptr %i.d, ptr %.sroa.10.0..sroa_idx, align 16, !tbaa !94
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 56
  store ptr %i.b, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !94
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 64
  store ptr %i.q, ptr %.sroa.12.0..sroa_idx, align 16, !tbaa !94
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 72
  store ptr %i.f, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !92
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.nd, i64 80
  store ptr %i.e, ptr %.sroa.14.0..sroa_idx, align 16, !tbaa !40
  store ptr %i.nd, ptr %28, align 8, !tbaa !95
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_2E9_M_invokeERKSt9_Any_dataS3_", ptr %i.nj, align 8, !tbaa !97
  store ptr @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12initFastConvERKNS0_11_InputArrayEPfiiiRKSt6vectorImSaImEESE_SE_SE_SE_ibbE3$_2E10_M_managerERSt9_Any_dataRKSH_St18_Manager_operation", ptr %i.nc, align 8, !tbaa !89
  invoke fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef align 8 %28)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %bb.cv
  %i.nk = load ptr, ptr %i.nc, align 8, !tbaa !89 ; 2 uses
  %.not.i240 = icmp eq ptr %i.nk, null
  br i1 %.not.i240, label %_ZNSt14_Function_baseD2Ev.exit241, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nl = invoke noundef zeroext i1 %i.nk(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 3)
          to label %_ZNSt14_Function_baseD2Ev.exit241 unwind label %bb.cy ; 0 uses

bb.cy:                                            ; preds = %bb.cx
  %i.nm = landingpad { ptr, i32 }
          catch ptr null
  %i.nn = extractvalue { ptr, i32 } %i.nm, 0
  call void @__clang_call_terminate(ptr %i.nn) #25
  unreachable

_ZNSt14_Function_baseD2Ev.exit241:                ; preds = %bb.cw, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  br label %bb.dj

bb.cz:                                            ; preds = %bb.co
  %i.no = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.da:                                            ; preds = %bb.cv
  %i.np = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nq = load ptr, ptr %i.nc, align 8, !tbaa !89 ; 2 uses
  %.not.i242 = icmp eq ptr %i.nq, null
  br i1 %.not.i242, label %.body238, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.nr = invoke noundef zeroext i1 %i.nq(ptr noundef nonnull align 8 dereferenceable(32) %28, ptr noundef nonnull align 8 dereferenceable(32) %28, i32 noundef 3)
          to label %.body238 unwind label %bb.dc  ; 0 uses

bb.dc:                                            ; preds = %bb.db
  %i.ns = landingpad { ptr, i32 }
          catch ptr null
  %i.nt = extractvalue { ptr, i32 } %i.ns, 0
  call void @__clang_call_terminate(ptr %i.nt) #25
  unreachable

.body238:                                         ; preds = %bb.db, %bb.da, %bb.ct, %bb.cs
  %.pn183 = phi { ptr, i32 } [ %i.ne, %bb.cs ], [ %i.np, %bb.db ], [ %i.ne, %bb.ct ], [ %i.np, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.dd

bb.dd:                                            ; preds = %.body238, %bb.cz
  %.pn183.pn = phi { ptr, i32 } [ %.pn183, %.body238 ], [ %i.no, %bb.cz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #23
  br label %bb.do

bb.de:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %30)
          to label %bb.df unwind label %bb.dh

bb.df:                                            ; preds = %bb.de
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -210, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull @__func__._ZN2cv3dnn12initFastConvERKNS_11_InputArrayEPfiiiRKSt6vectorImSaImEES9_S9_S9_S9_ibb, ptr noundef nonnull @.str.1, i32 noundef 446) #24
          to label %bb.dg unwind label %bb.di

bb.dg:                                            ; preds = %bb.df
  unreachable

bb.dh:                                            ; preds = %bb.de
  %i.nu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.di:                                            ; preds = %bb.df
  %i.nv = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.nw = load ptr, ptr %29, align 8, !tbaa !35   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 2 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.di
  %i.nz = load i64, ptr %i.nx, align 8, !tbaa !36
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.oa) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.dh
  %.pn181 = phi { ptr, i32 } [ %i.nu, %bb.dh ], [ %i.nv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %i.nv, %bb.di ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.do

bb.dj:                                            ; preds = %_ZNSt14_Function_baseD2Ev.exit228, %_ZNSt14_Function_baseD2Ev.exit241, %_ZNSt14_Function_baseD2Ev.exit
  %i.ob = add nuw nsw i32 %4, 32
  %i.oc = getelementptr inbounds nuw i8, ptr %i.v, i64 136 ; 3 uses
  %i.od = zext nneg i32 %i.ob to i64              ; 4 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.v, i64 144 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !84 ; 2 uses
  %i.og = load ptr, ptr %i.oc, align 8, !tbaa !16 ; 5 uses
  %i.oh = ptrtoint ptr %i.of to i64
  %i.oi = ptrtoint ptr %i.og to i64
  %i.oj = sub i64 %i.oh, %i.oi
  %i.ok = ashr exact i64 %i.oj, 2                 ; 3 uses
  %i.ol = icmp ult i64 %i.ok, %i.od
  br i1 %i.ol, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.om = sub nuw nsw i64 %i.od, %i.ok
  invoke void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.oc, i64 noundef %i.om)
          to label %._ZNSt6vectorIfSaIfEE6resizeEm.exit250_crit_edge unwind label %bb.dn

._ZNSt6vectorIfSaIfEE6resizeEm.exit250_crit_edge: ; preds = %bb.dk
  %.pre387 = load ptr, ptr %i.oc, align 8, !tbaa !16
  br label %.lr.ph

bb.dl:                                            ; preds = %bb.dj
  %i.on = icmp ugt i64 %i.ok, %i.od
  br i1 %i.on, label %bb.dm, label %.lr.ph

bb.dm:                                            ; preds = %bb.dl
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %i.og, i64 %i.od ; 2 uses
  %.not.i.i247 = icmp eq ptr %i.of, %i.oo
  br i1 %.not.i.i247, label %.lr.ph, label %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i248

_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i248:     ; preds = %bb.dm
  store ptr %i.oo, ptr %i.oe, align 8, !tbaa !84
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.dl, %bb.dm, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i248, %._ZNSt6vectorIfSaIfEE6resizeEm.exit250_crit_edge
  %i.op = phi ptr [ %.pre387, %._ZNSt6vectorIfSaIfEE6resizeEm.exit250_crit_edge ], [ %i.og, %_ZSt8_DestroyIPffEvT_S1_RSaIT0_E.exit.i.i248 ], [ %i.og, %bb.dm ], [ %i.og, %bb.dl ] ; 9 uses
  %.not = icmp eq ptr %2, null
  %31 = zext nneg i32 %4 to i64                   ; 6 uses
  br i1 %.not, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.oq = ptrtoaddr ptr %i.op to i64
  %min.iters.check = icmp ult i32 %4, 8
  %i.or = sub i64 %i.a, %i.oq
  %diff.check = icmp ugt i64 %i.or, -32
  %or.cond454 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond454, label %.lr.ph.split.preheader455, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.preheader
  %n.vec = and i64 %31, 2147483640                ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.os, i64 16
  %wide.load = load <4 x float>, ptr %i.os, align 4, !tbaa !99
  %wide.load453 = load <4 x float>, ptr %i.ot, align 4, !tbaa !99
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %index ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  store <4 x float> %wide.load, ptr %i.ou, align 4, !tbaa !99
  store <4 x float> %wide.load453, ptr %i.ov, align 4, !tbaa !99
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ow = icmp eq i64 %index.next, %n.vec
  br i1 %i.ow, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %31
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.preheader455

.lr.ph.split.preheader455:                        ; preds = %.lr.ph.split.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.split.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %31, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol

.lr.ph.split.prol:                                ; preds = %.lr.ph.split.preheader455, %.lr.ph.split.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.split.prol ], [ %indvars.iv.ph, %.lr.ph.split.preheader455 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.split.prol ], [ 0, %.lr.ph.split.preheader455 ]
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.prol
  %i.oy = load float, ptr %i.ox, align 4, !tbaa !99
  %i.oz = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.prol
  store float %i.oy, ptr %i.oz, align 4, !tbaa !99
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.split.prol.loopexit, label %.lr.ph.split.prol, !llvm.loop !135

.lr.ph.split.prol.loopexit:                       ; preds = %.lr.ph.split.prol, %.lr.ph.split.preheader455
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.split.preheader455 ], [ %indvars.iv.next.prol, %.lr.ph.split.prol ]
  %i.pa = sub nsw i64 %indvars.iv.ph, %31
  %i.pb = icmp ugt i64 %i.pa, -4
  br i1 %i.pb, label %._crit_edge, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.pc = shl nuw nsw i64 %31, 2
  call void @llvm.memset.p0.i64(ptr align 4 %i.op, i8 0, i64 %i.pc, i1 false), !tbaa !99
  br label %._crit_edge

.lr.ph.split:                                     ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.split ], [ %indvars.iv.unr, %.lr.ph.split.prol.loopexit ] ; 6 uses
  %i.pd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.pe = load float, ptr %i.pd, align 4, !tbaa !99
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv
  store float %i.pe, ptr %i.pf, align 4, !tbaa !99
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.ph = load float, ptr %i.pg, align 4, !tbaa !99
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next
  store float %i.ph, ptr %i.pi, align 4, !tbaa !99
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.pk = load float, ptr %i.pj, align 4, !tbaa !99
  %i.pl = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next.1
  store float %i.pk, ptr %i.pl, align 4, !tbaa !99
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !99
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %indvars.iv.next.2
  store float %i.pn, ptr %i.po, align 4, !tbaa !99
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %31
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.split, !llvm.loop !136

bb.dn:                                            ; preds = %bb.dk
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.do

._crit_edge:                                      ; preds = %.lr.ph.split.prol.loopexit, %.lr.ph.split, %middle.block, %.lr.ph.split.us.preheader
  %i.pq = zext nneg i32 %4 to i64
  %i.pr = shl nuw nsw i64 %i.pq, 2
  %scevgep = getelementptr i8, ptr %i.op, i64 %i.pr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(128) %scevgep, i8 0, i64 128, i1 false), !tbaa !99
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void

bb.do:                                            ; preds = %bb.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, %bb.dd, %bb.cm, %bb.bv
  %.pn193 = phi { ptr, i32 } [ %i.pp, %bb.dn ], [ %.pn189.pn.pn, %bb.bv ], [ %.pn186.pn, %bb.cm ], [ %.pn183.pn, %bb.dd ], [ %.pn181, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.bq
  %.pn193.pn = phi { ptr, i32 } [ %.pn193, %bb.do ], [ %i.kb, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %22) #23
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dp, %bb.bp
  %.pn193.pn.pn = phi { ptr, i32 } [ %.pn193.pn, %bb.dp ], [ %i.ka, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204
  %.pn193.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn, %bb.dq ], [ %.pn175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit210 ], [ %.pn173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit207 ], [ %.pn171, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit204 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.ds

bb.ds:                                            ; preds = %bb.dr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn193.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn193.pn.pn.pn, %bb.dr ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn8FastConvELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #23
  br label %common.resume
}

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !104
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.20) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.d, ptr %i.a, align 8, !tbaa !38
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !35
  %i.g = load i64, ptr %i.a, align 8, !tbaa !38
  store i64 %i.g, ptr %i.b, align 8, !tbaa !36
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !36
  store i8 %i.i, ptr %i.h, align 1, !tbaa !36
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !38   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !105
  %i.l = load ptr, ptr %0, align 8, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare noundef i64 @_ZNK2cv3Mat5step1Ei(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN2cvL13parallel_for_ERKNS_5RangeESt8functionIFvS2_EEd(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 8 %1) unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::ParallelLoopBodyLambdaWrapper", align 8 ; 14 uses
  %3 = alloca %"class.std::function", align 8     ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.not.i, label %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread, label %bb.b

_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit.thread: ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 0, i64 32, i1 false)
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = invoke noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
          to label %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !89   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %common.resume, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = invoke noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 3)
          to label %common.resume unwind label %bb.e ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #25
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.d, %_ZNSt14_Function_baseD2Ev.exit8
  %common.resume.op = phi { ptr, i32 } [ %.pn, %_ZNSt14_Function_baseD2Ev.exit8 ], [ %i.g, %bb.d ], [ %i.g, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit:    ; preds = %bb.b
  %i.l = load <2 x ptr>, ptr %i.b, align 8, !tbaa !95
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  store <2 x ptr> %i.l, ptr %i.a, align 8, !tbaa !95
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv29ParallelLoopBodyLambdaWrapperE, i64 16), ptr %2, align 8, !tbaa !24
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  %.not.i.i.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.not.i.i, label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt8functionIFvRKN2cv5RangeEEEC2ERKS5_.exit
  %i.p = invoke noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %3, i32 noundef 2)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.q = load <2 x ptr>, ptr %i.a, align 8, !tbaa !95
  store <2 x ptr> %i.q, ptr %i.o, align 8, !tbaa !95
  br label %_ZN2cv29ParallelLoopBodyLambdaWrapperC2ESt8functionIFvRKNS_5RangeEEE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %.body.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = invoke noundef zeroext i1 %i.s(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i32 noundef 3)
          to label %.body.i unwind label %bb.j    ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  call void @__clang_call_terminate(ptr %i.v) #25
  unreachable
end_hunk_0
