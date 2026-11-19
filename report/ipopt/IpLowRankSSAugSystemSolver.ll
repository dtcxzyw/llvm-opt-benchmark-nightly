Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpLowRankSSAugSystemSolver?download=true
inline.NumInlined: 748
inline.NumDeleted: 378
begin_hunk_0_@_ZN5Ipopt24LowRankSSAugSystemSolver18UpdateExtendedDataEPKNS_9SymMatrixEdPKNS_6VectorEdS6_dRKNS_6MatrixES6_dS9_S6_dRS5_SA_SA_SA_:bb.a
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
  br i1 %exitcond.not, label %.loopexit509, label %bb.dh, !llvm.loop !172

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

.loopexit509:                                     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243, %.preheader508, %bb.ds
  %.158 = phi i32 [ 0, %bb.ds ], [ 0, %.preheader508 ], [ %i.nu, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit243 ] ; 4 uses
  %.not507 = icmp eq ptr %.sroa.0344.0424, null   ; 2 uses
  br i1 %.not507, label %.loopexit, label %bb.dt

bb.dt:                                            ; preds = %.loopexit509
  %i.ql = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 56
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !193
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 16
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !68 ; 3 uses
  %i.qp = sub i32 0, %i.qo
  %.not128 = icmp eq i32 %.158, %i.qp
  br i1 %.not128, label %bb.du, label %.preheader

.preheader:                                       ; preds = %bb.dt
  %i.qq = icmp sgt i32 %i.qo, 0
  br i1 %i.qq, label %.lr.ph516, label %.loopexit

.lr.ph516:                                        ; preds = %.preheader
  %i.qr = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 104
  %i.qs = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 80
  %29 = zext nneg i32 %.158 to i64
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
  %indvars.iv530 = phi i64 [ %29, %.lr.ph516 ], [ %indvars.iv.next531, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266 ] ; 3 uses
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
  %30 = trunc nuw i64 %indvars.iv530 to i32
  invoke void @_ZN5Ipopt25ExpandedMultiVectorMatrix9SetVectorEiNS_8SmartPtrIKNS_6VectorEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.rv, i32 noundef %30, ptr noundef nonnull align 8 %27)
          to label %bb.ei unwind label %bb.en

bb.ei:                                            ; preds = %bb.eh
  %i.rw = load ptr, ptr %27, align 8, !tbaa !103  ; 4 uses
  %.not.i.i263 = icmp eq ptr %i.rw, null
  br i1 %.not.i.i263, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 8 ; 2 uses
  %i.ry = load i32, ptr %i.rx, align 8, !tbaa !17
  %i.rz = add nsw i32 %i.ry, -1                   ; 2 uses
  store i32 %i.rz, ptr %i.rx, align 8, !tbaa !17
  %i.sa = icmp eq i32 %i.rz, 0
  br i1 %i.sa, label %bb.ek, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264

bb.ek:                                            ; preds = %bb.ej
  %i.sb = load ptr, ptr %i.rw, align 8, !tbaa !19
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8
  call void %i.sd(ptr noundef nonnull align 8 dereferenceable(205) %i.rw) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264:     ; preds = %bb.ei, %bb.ej, %bb.ek
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.nq, i64 %indvars.iv530
  store double 1.000000e+00, ptr %i.se, align 8, !tbaa !220
  %indvars.iv.next531 = add nuw nsw i64 %indvars.iv530, 1 ; 2 uses
  br i1 %.not.i.i.i261454, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266, label %bb.el

bb.el:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264
  %i.sf = getelementptr inbounds nuw i8, ptr %.0.i4.i257452, i64 8 ; 2 uses
  %i.sg = load i32, ptr %i.sf, align 8, !tbaa !17
  %i.sh = add nsw i32 %i.sg, -1                   ; 2 uses
  store i32 %i.sh, ptr %i.sf, align 8, !tbaa !17
  %i.si = icmp eq i32 %i.sh, 0
  br i1 %i.si, label %bb.em, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266

bb.em:                                            ; preds = %bb.el
  %i.sj = load ptr, ptr %.0.i4.i257452, align 8, !tbaa !19
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 8
  %i.sl = load ptr, ptr %i.sk, align 8
  call void %i.sl(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i257452) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266:     ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit264, %bb.el, %bb.em
  %indvars.iv.next529 = add nuw nsw i64 %indvars.iv528, 1 ; 2 uses
  %exitcond536.not = icmp eq i64 %indvars.iv.next529, %wide.trip.count535
  br i1 %exitcond536.not, label %.loopexit.loopexit, label %bb.ef, !llvm.loop !175

bb.en:                                            ; preds = %bb.eh
  %i.sm = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.sn = load ptr, ptr %27, align 8, !tbaa !103  ; 4 uses
  %.not.i.i267 = icmp eq ptr %i.sn, null
  br i1 %.not.i.i267, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.so = getelementptr inbounds nuw i8, ptr %i.sn, i64 8 ; 2 uses
  %i.sp = load i32, ptr %i.so, align 8, !tbaa !17
  %i.sq = add nsw i32 %i.sp, -1                   ; 2 uses
  store i32 %i.sq, ptr %i.so, align 8, !tbaa !17
  %i.sr = icmp eq i32 %i.sq, 0
  br i1 %i.sr, label %.split468, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268

.split468:                                        ; preds = %bb.eo
  %i.ss = load ptr, ptr %i.sn, align 8, !tbaa !19
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(205) %i.sn) #16, !inline_history !171
  br i1 %.not.i.i.i261454, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268:     ; preds = %bb.eo, %bb.en
  br i1 %.not.i.i.i261454, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread: ; preds = %.split468, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268
  %i.sv = getelementptr inbounds nuw i8, ptr %.0.i4.i257452, i64 8 ; 2 uses
  %i.sw = load i32, ptr %i.sv, align 8, !tbaa !17
  %i.sx = add nsw i32 %i.sw, -1                   ; 2 uses
  store i32 %i.sx, ptr %i.sv, align 8, !tbaa !17
  %i.sy = icmp eq i32 %i.sx, 0
  br i1 %i.sy, label %bb.ep, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.ep:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit268.thread
  %i.sz = load ptr, ptr %.0.i4.i257452, align 8, !tbaa !19
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 8
  %i.tb = load ptr, ptr %i.ta, align 8
  call void %i.tb(ptr noundef nonnull align 8 dereferenceable(205) %.0.i4.i257452) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

.loopexit.loopexit:                               ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit266
  %31 = trunc nuw i64 %indvars.iv.next531 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %.loopexit509
  %.3 = phi i32 [ %.158, %.loopexit509 ], [ %.158, %.preheader ], [ %31, %.loopexit.loopexit ] ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.td = load i32, ptr %i.tc, align 8, !tbaa !47
  %i.te = icmp slt i32 %.3, %i.td
  br i1 %i.te, label %.lr.ph519.preheader, label %._crit_edge

.lr.ph519.preheader:                              ; preds = %.loopexit
  %32 = sext i32 %.3 to i64
  br label %.lr.ph519

.lr.ph519:                                        ; preds = %.lr.ph519.preheader, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272
  %indvars.iv537 = phi i64 [ %32, %.lr.ph519.preheader ], [ %indvars.iv.next538, %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272 ] ; 3 uses
  %i.tf = load ptr, ptr %i.m, align 8, !tbaa !53
  store ptr null, ptr %28, align 8, !tbaa !103
  %i.tg = trunc nsw i64 %indvars.iv537 to i32
  invoke void @_ZN5Ipopt25ExpandedMultiVectorMatrix9SetVectorEiNS_8SmartPtrIKNS_6VectorEEE(ptr noundef nonnull align 8 dereferenceable(104) %i.tf, i32 noundef %i.tg, ptr noundef nonnull align 8 %28)
          to label %bb.eq unwind label %bb.et

bb.eq:                                            ; preds = %.lr.ph519
  %i.th = load ptr, ptr %28, align 8, !tbaa !103  ; 4 uses
  %.not.i.i271 = icmp eq ptr %i.th, null
  br i1 %.not.i.i271, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.ti = getelementptr inbounds nuw i8, ptr %i.th, i64 8 ; 2 uses
  %i.tj = load i32, ptr %i.ti, align 8, !tbaa !17
  %i.tk = add nsw i32 %i.tj, -1                   ; 2 uses
  store i32 %i.tk, ptr %i.ti, align 8, !tbaa !17
  %i.tl = icmp eq i32 %i.tk, 0
  br i1 %i.tl, label %bb.es, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272

bb.es:                                            ; preds = %bb.er
  %i.tm = load ptr, ptr %i.th, align 8, !tbaa !19
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 8
  %i.to = load ptr, ptr %i.tn, align 8
  call void %i.to(ptr noundef nonnull align 8 dereferenceable(205) %i.th) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272

_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272:     ; preds = %bb.eq, %bb.er, %bb.es
  %i.tp = getelementptr inbounds [8 x i8], ptr %i.nq, i64 %indvars.iv537
  store double 1.000000e+00, ptr %i.tp, align 8, !tbaa !220
  %indvars.iv.next538 = add nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.tq = load i32, ptr %i.tc, align 8, !tbaa !47
  %i.tr = sext i32 %i.tq to i64
  %i.ts = icmp slt i64 %indvars.iv.next538, %i.tr
  br i1 %i.ts, label %.lr.ph519, label %._crit_edge, !llvm.loop !176

bb.et:                                            ; preds = %.lr.ph519
  %i.tt = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.tu = load ptr, ptr %28, align 8, !tbaa !103  ; 4 uses
  %.not.i.i273 = icmp eq ptr %i.tu, null
  br i1 %.not.i.i273, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 8 ; 2 uses
  %i.tw = load i32, ptr %i.tv, align 8, !tbaa !17
  %i.tx = add nsw i32 %i.tw, -1                   ; 2 uses
  store i32 %i.tx, ptr %i.tv, align 8, !tbaa !17
  %i.ty = icmp eq i32 %i.tx, 0
  br i1 %i.ty, label %bb.ev, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.ev:                                            ; preds = %bb.eu
  %i.tz = load ptr, ptr %i.tu, align 8, !tbaa !19
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 8
  %i.ub = load ptr, ptr %i.ua, align 8
  call void %i.ub(ptr noundef nonnull align 8 dereferenceable(205) %i.tu) #16, !inline_history !171
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

._crit_edge:                                      ; preds = %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit272, %.loopexit
  %.not133 = icmp eq ptr %8, null
  br i1 %.not133, label %bb.ex, label %bb.ew

bb.ew:                                            ; preds = %._crit_edge
  %i.uc = load ptr, ptr %i.mq, align 8, !tbaa !51
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.uc, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %8)
          to label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283 unwind label %bb.fb

bb.ex:                                            ; preds = %._crit_edge
  %i.ud = getelementptr inbounds nuw i8, ptr %15, i64 56
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !64 ; 2 uses
  %i.uf = load ptr, ptr %i.ue, align 8, !tbaa !19
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 16
  %i.uh = load ptr, ptr %i.ug, align 8
  %i.ui = invoke noundef ptr %i.uh(ptr noundef nonnull align 8 dereferenceable(16) %i.ue)
          to label %_ZNK5Ipopt6Vector7MakeNewEv.exit276 unwind label %bb.fb, !inline_history !164 ; 12 uses

_ZNK5Ipopt6Vector7MakeNewEv.exit276:              ; preds = %bb.ex
  %.not.i.i277 = icmp eq ptr %i.ui, null
  br i1 %.not.i.i277, label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit278, label %bb.ey

bb.ey:                                            ; preds = %_ZNK5Ipopt6Vector7MakeNewEv.exit276
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 2 uses
  %i.uk = load i32, ptr %i.uj, align 8, !tbaa !17
  %i.ul = add nsw i32 %i.uk, 1
  store i32 %i.ul, ptr %i.uj, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit278

_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit278:   ; preds = %bb.ey, %_ZNK5Ipopt6Vector7MakeNewEv.exit276
  %i.um = load ptr, ptr %i.ui, align 8, !tbaa !19
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 72
  %i.uo = load ptr, ptr %i.un, align 8
  invoke void %i.uo(ptr noundef nonnull align 8 dereferenceable(205) %i.ui, double noundef 0.000000e+00)
          to label %.noexc279 unwind label %bb.fc, !inline_history !6

.noexc279:                                        ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit278
  invoke void @_ZN5Ipopt12TaggedObject13ObjectChangedEv(ptr noundef nonnull align 8 dereferenceable(205) %i.ui)
          to label %_ZN5Ipopt6Vector3SetEd.exit281 unwind label %bb.fc

_ZN5Ipopt6Vector3SetEd.exit281:                   ; preds = %.noexc279
  %i.up = load ptr, ptr %i.mq, align 8, !tbaa !51
  invoke void @_ZN5Ipopt14CompoundVector7SetCompEiRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(265) %i.up, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(205) %i.ui)
          to label %bb.ez unwind label %bb.fc

bb.ez:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit281
  %i.uq = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 2 uses
  %i.ur = load i32, ptr %i.uq, align 8, !tbaa !17
  %i.us = add nsw i32 %i.ur, -1                   ; 2 uses
  store i32 %i.us, ptr %i.uq, align 8, !tbaa !17
  %i.ut = icmp eq i32 %i.us, 0
  br i1 %i.ut, label %bb.fa, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283

bb.fa:                                            ; preds = %bb.ez
  %i.uu = load ptr, ptr %i.ui, align 8, !tbaa !19
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load ptr, ptr %i.uv, align 8
  call void %i.uw(ptr noundef nonnull align 8 dereferenceable(205) %i.ui) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283

bb.fb:                                            ; preds = %bb.ew, %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283, %bb.fe, %bb.cq, %.noexc231, %bb.cs, %bb.ex
  %i.ux = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.fc:                                            ; preds = %_ZN5Ipopt6Vector3SetEd.exit281, %_ZN5Ipopt8SmartPtrINS_6VectorEEC2EPS1_.exit278, %.noexc279
  %i.uy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ui, i64 8 ; 2 uses
  %i.va = load i32, ptr %i.uz, align 8, !tbaa !17
  %i.vb = add nsw i32 %i.va, -1                   ; 2 uses
  store i32 %i.vb, ptr %i.uz, align 8, !tbaa !17
  %i.vc = icmp eq i32 %i.vb, 0
  br i1 %i.vc, label %bb.fd, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

bb.fd:                                            ; preds = %bb.fc
  %i.vd = load ptr, ptr %i.ui, align 8, !tbaa !19
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 8
  %i.vf = load ptr, ptr %i.ve, align 8
  call void %i.vf(ptr noundef nonnull align 8 dereferenceable(205) %i.ui) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit247

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283:      ; preds = %bb.fa, %bb.ez, %bb.ew
  %i.vg = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.vh = load ptr, ptr %i.vg, align 8, !tbaa !52
  invoke void @_ZN5Ipopt14CompoundMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(129) %i.vh, i32 noundef 0, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(69) %7)
          to label %bb.fe unwind label %bb.fb

bb.fe:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit283
  %i.vi = load ptr, ptr %i.vg, align 8, !tbaa !52
  %i.vj = load ptr, ptr %i.m, align 8, !tbaa !53
  invoke void @_ZN5Ipopt14CompoundMatrix7SetCompEiiRKNS_6MatrixE(ptr noundef nonnull align 8 dereferenceable(129) %i.vi, i32 noundef 1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(69) %i.vj)
          to label %bb.ff unwind label %bb.fb

bb.ff:                                            ; preds = %bb.fe
  %i.vk = getelementptr inbounds nuw i8, ptr %i.mv, i64 8 ; 4 uses
  %i.vl = load i32, ptr %i.vk, align 8, !tbaa !17
  %i.vm = add nsw i32 %i.vl, -1                   ; 3 uses
  store i32 %i.vm, ptr %i.vk, align 8, !tbaa !17
  %i.vn = icmp eq i32 %i.vm, 0
  br i1 %i.vn, label %bb.fg, label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

bb.fg:                                            ; preds = %bb.ff
  %i.vo = load ptr, ptr %i.mv, align 8, !tbaa !19
  %i.vp = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vq = load ptr, ptr %i.vp, align 8
  call void %i.vq(ptr noundef nonnull align 8 dereferenceable(248) %i.mv) #16, !inline_history !177
  %.pre540 = load i32, ptr %i.vk, align 8, !tbaa !17
  br label %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit

_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit:   ; preds = %bb.fg, %bb.ff
  %i.vr = phi i32 [ %.pre540, %bb.fg ], [ %i.vm, %bb.ff ]
  %i.vs = add nsw i32 %i.vr, -1                   ; 2 uses
  store i32 %i.vs, ptr %i.vk, align 8, !tbaa !17
  %i.vt = icmp eq i32 %i.vs, 0
  br i1 %i.vt, label %bb.fh, label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288

bb.fh:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit
  %i.vu = load ptr, ptr %i.mv, align 8, !tbaa !19
  %i.vv = getelementptr inbounds nuw i8, ptr %i.vu, i64 8
  %i.vw = load ptr, ptr %i.vv, align 8
  call void %i.vw(ptr noundef nonnull align 8 dereferenceable(205) %i.mv) #16, !inline_history !7
  br label %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288

_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288:      ; preds = %_ZN5Ipopt8SmartPtrINS_11DenseVectorEED2Ev.exit, %bb.fh
  br i1 %.not507, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290, label %bb.fi

bb.fi:                                            ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288
  %i.vx = getelementptr inbounds nuw i8, ptr %.sroa.0344.0424, i64 8 ; 2 uses
  %i.vy = load i32, ptr %i.vx, align 8, !tbaa !17
  %i.vz = add nsw i32 %i.vy, -1                   ; 2 uses
  store i32 %i.vz, ptr %i.vx, align 8, !tbaa !17
  %i.wa = icmp eq i32 %i.vz, 0
  br i1 %i.wa, label %bb.fj, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290

bb.fj:                                            ; preds = %bb.fi
  %i.wb = load ptr, ptr %.sroa.0344.0424, align 8, !tbaa !19
  %i.wc = getelementptr inbounds nuw i8, ptr %i.wb, i64 8
  %i.wd = load ptr, ptr %i.wc, align 8
  call void %i.wd(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0344.0424) #16, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290: ; preds = %_ZN5Ipopt8SmartPtrINS_6VectorEED2Ev.exit288, %bb.fi, %bb.fj
  br i1 %.not506, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292, label %bb.fk

bb.fk:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290
  %i.we = getelementptr inbounds nuw i8, ptr %.sroa.0350.0404, i64 8 ; 2 uses
  %i.wf = load i32, ptr %i.we, align 8, !tbaa !17
  %i.wg = add nsw i32 %i.wf, -1                   ; 2 uses
  store i32 %i.wg, ptr %i.we, align 8, !tbaa !17
  %i.wh = icmp eq i32 %i.wg, 0
  br i1 %i.wh, label %bb.fl, label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292

bb.fl:                                            ; preds = %bb.fk
  %i.wi = load ptr, ptr %.sroa.0350.0404, align 8, !tbaa !19
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 8
  %i.wk = load ptr, ptr %i.wj, align 8
  call void %i.wk(ptr noundef nonnull align 8 dereferenceable(128) %.sroa.0350.0404) #16, !inline_history !159
  br label %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292

_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292: ; preds = %bb.fl, %bb.fk, %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit290
  %i.wl = getelementptr inbounds nuw i8, ptr %.sroa.0356.1, i64 8 ; 2 uses
  %i.wm = load i32, ptr %i.wl, align 8, !tbaa !17
  %i.wn = add nsw i32 %i.wm, -1                   ; 2 uses
  store i32 %i.wn, ptr %i.wl, align 8, !tbaa !17
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %bb.fm, label %_ZN5Ipopt8SmartPtrIKNS_6VectorEED2Ev.exit294

bb.fm:                                            ; preds = %_ZN5Ipopt8SmartPtrIKNS_17MultiVectorMatrixEED2Ev.exit292
  %i.wp = load ptr, ptr %.sroa.0356.1, align 8, !tbaa !19
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 8
  %i.wr = load ptr, ptr %i.wq, align 8
  call void %i.wr(ptr noundef nonnull align 8 dereferenceable(205) %.sroa.0356.1) #16, !inline_history !171
end_hunk_0
