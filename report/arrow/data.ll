inline.NumInlined: 1754
inline.NumDeleted: 723
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ViewDataImpl12MakeDataViewERKSt10shared_ptrINS_5FieldEEPS2_INS_9ArrayDataEE:bb.a
  %i.ge = load ptr, ptr %i.dy, align 8, !tbaa !44 ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !103 ; 3 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ge, i64 32
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !19 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gk = load atomic i64, ptr %i.gj seq_cst, align 8 ; 3 uses
  %i.gl = load i64, ptr %i.cx, align 8, !tbaa !341
  %i.gm = add i64 %i.gl, 1                        ; 2 uses
  store i64 %i.gm, ptr %i.cx, align 8, !tbaa !341
  %i.gn = load i8, ptr %i.h, align 8, !tbaa !326, !range !162, !noundef !163
  %i.go = trunc nuw i8 %i.gn to i1
  br i1 %i.go, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194.thread, label %.preheader.i177

.preheader.i177:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !340 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = sdiv exact i64 %i.gv, 56                ; 2 uses
  %.promoted.i179 = load i64, ptr %i.dv, align 8, !tbaa !342
  br label %.peel.begin.i180

.peel.begin.i180:                                 ; preds = %bb.as, %.preheader.i177
  %.promoted912.i181 = phi i64 [ %.promoted.i179, %.preheader.i177 ], [ %.promoted911.lcssa.i189, %bb.as ] ; 3 uses
  %i.gx = phi i64 [ %i.gm, %.preheader.i177 ], [ %i.ho, %bb.as ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [56 x i8], ptr %i.gq, i64 %.promoted912.i181 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !343
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !338 ; 2 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = ashr exact i64 %i.he, 4
  %.not.peel.i182 = icmp ult i64 %i.gx, %i.hf
  br i1 %.not.peel.i182, label %.loopexit.i188, label %bb.aq

bb.aq:                                            ; preds = %.peel.begin.i180
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.hg = add i64 %.promoted912.i181, 1           ; 3 uses
  store i64 %i.hg, ptr %i.dv, align 8, !tbaa !342
  %.not3.peel.i183 = icmp ult i64 %i.hg, %i.gw
  br i1 %.not3.peel.i183, label %.peel.next.i185, label %.loopexit19.i184

.peel.next.i185:                                  ; preds = %bb.aq, %bb.ar
  %.promoted911.i186 = phi i64 [ %i.hl, %bb.ar ], [ %i.hg, %bb.aq ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [56 x i8], ptr %i.gq, i64 %.promoted911.i186 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !343
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !338 ; 2 uses
  %.not.not.i187 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.not.i187, label %bb.ar, label %.loopexit.i188

bb.ar:                                            ; preds = %.peel.next.i185
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.hl = add i64 %.promoted911.i186, 1           ; 3 uses
  store i64 %i.hl, ptr %i.dv, align 8, !tbaa !342
  %exitcond529.not = icmp eq i64 %i.hl, %i.gw
  br i1 %exitcond529.not, label %.loopexit19.i184, label %.peel.next.i185, !llvm.loop !344

.loopexit19.i184:                                 ; preds = %bb.aq, %bb.ar
  store i8 1, ptr %i.h, align 8, !tbaa !326
  br label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194.thread

.loopexit.i188:                                   ; preds = %.peel.next.i185, %.peel.begin.i180
  %.promoted911.lcssa.i189 = phi i64 [ %.promoted912.i181, %.peel.begin.i180 ], [ %.promoted911.i186, %.peel.next.i185 ]
  %.lcssa15.i190 = phi i64 [ %i.gx, %.peel.begin.i180 ], [ 0, %.peel.next.i185 ] ; 2 uses
  %.lcssa.i191 = phi ptr [ %i.hb, %.peel.begin.i180 ], [ %i.hk, %.peel.next.i185 ]
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %.lcssa.i191, i64 %.lcssa15.i190
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !346
  %.not2.not.i192 = icmp eq i32 %i.hn, 3
  br i1 %.not2.not.i192, label %bb.as, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194.thread

bb.as:                                            ; preds = %.loopexit.i188
  %i.ho = add nuw i64 %.lcssa15.i190, 1           ; 2 uses
  store i64 %i.ho, ptr %i.cx, align 8, !tbaa !341
  br label %.peel.begin.i180

_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %.critedge

bb.at:                                            ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit unwind label %bb.ba

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.at
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre532 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !105 ; 8 uses
  %.not.i.i197 = icmp eq ptr %.pre532, null
  br i1 %.not.i.i197, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.au

bb.au:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %.pre532, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %i.hp, align 8, !tbaa !95
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre532, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !97
  %i.hu = load ptr, ptr %.pre532, align 8, !tbaa !98
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %.pre532) #22, !inline_history !203
  %i.hx = load ptr, ptr %.pre532, align 8, !tbaa !98
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %.pre532) #22, !inline_history !203
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aw:                                            ; preds = %bb.au
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i198 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i198, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199

bb.ay:                                            ; preds = %bb.aw
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199: ; preds = %bb.ay, %bb.ax
  %.0.i.i.i.i200 = phi i32 [ %i.hs, %bb.ax ], [ %i.ic, %bb.ay ]
  %i.id = icmp eq i32 %.0.i.i.i.i200, 1
  br i1 %i.id, label %bb.az, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.az:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre532) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit, %bb.av, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ie = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !67
  %i.ih = icmp eq i32 %i.ig, 0
  %. = select i1 %i.ih, i64 %i.an, i64 0
  br label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194.thread

bb.ba:                                            ; preds = %bb.at
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.fb

_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194.thread: ; preds = %.loopexit.i188, %.loopexit19.i184, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.197 = phi i64 [ %., %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.gk, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ %i.gk, %.loopexit19.i184 ], [ %i.gk, %.loopexit.i188 ]
  %.191 = phi i64 [ 0, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.gi, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ %i.gi, %.loopexit19.i184 ], [ %i.gi, %.loopexit.i188 ] ; 2 uses
  %.185 = phi i64 [ %i.an, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.gg, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ %i.gg, %.loopexit19.i184 ], [ %i.gg, %.loopexit.i188 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !343
  %i.il = load ptr, ptr %9, align 8, !tbaa !338   ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %.not137505 = icmp ugt i64 %i.io, 16
  br i1 %.not137505, label %.lr.ph509, label %.thread

.lr.ph509:                                        ; preds = %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit194.thread
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 8 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 8 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.jc = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph509, %.critedge146
  %i.jd = phi ptr [ %i.il, %.lr.ph509 ], [ %i.tw, %.critedge146 ]
  %.286508 = phi i64 [ %.185, %.lr.ph509 ], [ %.488, %.critedge146 ]
  %.292507 = phi i64 [ %.191, %.lr.ph509 ], [ %.494, %.critedge146 ]
  %.0112506 = phi i64 [ 1, %.lr.ph509 ], [ %i.tu, %.critedge146 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %.0112506 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !346
  %i.jg = icmp eq i32 %i.jf, 3
  br i1 %i.jg, label %bb.bc, label %.preheader453

.preheader453:                                    ; preds = %bb.bb
  %i.jh = load i64, ptr %i.cx, align 8, !tbaa !341 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %.pre534 = load i8, ptr %i.h, align 8, !tbaa !326, !range !162, !noalias !367 ; 2 uses
  br i1 %i.ji, label %.lr.ph, label %._crit_edge

bb.bc:                                            ; preds = %bb.bb
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.jj = load ptr, ptr %i.ix, align 8, !tbaa !109 ; 5 uses
  %i.jk = load ptr, ptr %i.iy, align 8, !tbaa !101
  %.not.i.i201 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i.i201, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  %i.jm = load ptr, ptr %i.jc, align 8, !tbaa !105
  store ptr null, ptr %i.jc, align 8, !tbaa !105
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !105
  store ptr null, ptr %16, align 8, !tbaa !16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr %i.jn, ptr %i.ix, align 8, !tbaa !109
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit203

bb.be:                                            ; preds = %bb.bc
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit203 unwind label %bb.bl

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit203: ; preds = %bb.bd, %bb.be
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !105 ; 8 uses
  %.not.i.i204 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i204, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208, label %bb.bf

bb.bf:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit203
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  store i32 0, ptr %i.jp, align 8, !tbaa !95
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jo, i64 12
  store i32 0, ptr %i.jt, align 4, !tbaa !97
  %i.ju = load ptr, ptr %i.jo, align 8, !tbaa !98
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jw = load ptr, ptr %i.jv, align 8
  call void %i.jw(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22, !inline_history !203
  %i.jx = load ptr, ptr %i.jo, align 8, !tbaa !98
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22, !inline_history !203
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208

bb.bh:                                            ; preds = %bb.bf
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i205 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i205, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206

bb.bj:                                            ; preds = %bb.bh
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206: ; preds = %bb.bj, %bb.bi
  %.0.i.i.i.i207 = phi i32 [ %i.js, %bb.bi ], [ %i.kc, %bb.bj ]
  %i.kd = icmp eq i32 %.0.i.i.i.i207, 1
  br i1 %i.kd, label %bb.bk, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208, !prof !86

bb.bk:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit208: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit203, %bb.bg, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i206, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.critedge146

bb.bl:                                            ; preds = %bb.be
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.fb

.lr.ph:                                           ; preds = %.preheader453, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262
  %i.kf = phi i8 [ %i.nj, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262 ], [ %.pre534, %.preheader453 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i209, label %_ZN5arrow6StatusD2Ev.exit221.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i209: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !370
  %i.kh = invoke noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #26
          to label %.noexc216 unwind label %bb.bo ; 3 uses

.noexc216:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i209
  store ptr %i.kh, ptr %5, align 8, !tbaa !244, !noalias !370
  store i64 32, ptr %i.ip, align 8, !tbaa !39, !noalias !370
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kh, ptr noundef nonnull align 1 dereferenceable(32) @.str.23, i64 32, i1 false), !noalias !370
  store i64 32, ptr %i.iq, align 8, !tbaa !323, !noalias !370
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store i8 0, ptr %i.ki, align 1, !tbaa !39, !noalias !370
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %17, ptr noundef nonnull readonly align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bm unwind label %bb.bn

bb.bm:                                            ; preds = %.noexc216
  %i.kj = load ptr, ptr %5, align 8, !tbaa !244, !noalias !370 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.ip
  br i1 %i.kk, label %_ZN5arrow6StatusD2Ev.exit221, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213: ; preds = %bb.bm
  %i.kl = load i64, ptr %i.ip, align 8, !tbaa !39, !noalias !370
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #24
  br label %_ZN5arrow6StatusD2Ev.exit221

bb.bn:                                            ; preds = %.noexc216
  %i.kn = landingpad { ptr, i32 }
          cleanup
  %i.ko = load ptr, ptr %5, align 8, !tbaa !244, !noalias !370 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.ip
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i211, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i210

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i210: ; preds = %bb.bn
  %i.kq = load i64, ptr %i.ip, align 8, !tbaa !39, !noalias !370
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i211

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i211: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !370
  br label %.body217

_ZN5arrow6StatusD2Ev.exit221.thread:              ; preds = %.lr.ph
  store ptr null, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZN5arrow6StatusD2Ev.exit225

_ZN5arrow6StatusD2Ev.exit221:                     ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i213
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !370
  %.pr435 = load ptr, ptr %17, align 8, !tbaa !142 ; 2 uses
  store ptr %.pr435, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.ks = icmp eq ptr %.pr435, null
  br i1 %i.ks, label %_ZN5arrow6StatusD2Ev.exit225, label %.critedge

bb.bo:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i209
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body217

.body217:                                         ; preds = %bb.bo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i211
  %.pn130 = phi { ptr, i32 } [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i211 ], [ %i.kt, %bb.bo ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.fb

_ZN5arrow6StatusD2Ev.exit225:                     ; preds = %_ZN5arrow6StatusD2Ev.exit221, %_ZN5arrow6StatusD2Ev.exit221.thread
  %i.ku = load i64, ptr %i.is, align 8, !tbaa !342
  %i.kv = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.ku
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !44 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 2 uses
  %i.kz = load atomic i64, ptr %i.ky seq_cst, align 8 ; 2 uses
  %i.la = icmp eq i64 %i.kz, -1
  br i1 %i.la, label %bb.bp, label %_ZNK5arrow9ArrayData12GetNullCountEv.exit230, !prof !86

bb.bp:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit225
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !13
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !16 ; 3 uses
  %.not.i227 = icmp eq ptr %i.ld, null
  br i1 %.not.i227, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 16
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !103 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ld, i64 9
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !245, !range !162, !noundef !163
  %i.li = trunc nuw i8 %i.lh to i1
  %i.lj = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8
  %i.ll = select i1 %i.li, ptr %i.lk, ptr null, !prof !145
  %i.lm = getelementptr inbounds nuw i8, ptr %i.kx, i64 32
  %i.ln = load i64, ptr %i.lm, align 8, !tbaa !19
  %i.lo = invoke noundef i64 @_ZN5arrow8internal12CountSetBitsEPKhll(ptr noundef %i.ll, i64 noundef %i.ln, i64 noundef %i.lf)
          to label %.noexc229 unwind label %bb.bt

.noexc229:                                        ; preds = %bb.bq
  %i.lp = sub nsw i64 %i.lf, %i.lo
  br label %bb.br

bb.br:                                            ; preds = %.noexc229, %bb.bp
  %.0.i228 = phi i64 [ %i.lp, %.noexc229 ], [ 0, %bb.bp ] ; 2 uses
  store atomic i64 %.0.i228, ptr %i.ky seq_cst, align 8
  br label %_ZNK5arrow9ArrayData12GetNullCountEv.exit230

_ZNK5arrow9ArrayData12GetNullCountEv.exit230:     ; preds = %bb.br, %_ZN5arrow6StatusD2Ev.exit225
  %.1.i226 = phi i64 [ %.0.i228, %bb.br ], [ %i.kz, %_ZN5arrow6StatusD2Ev.exit225 ]
  %.not132 = icmp eq i64 %.1.i226, 0
  br i1 %.not132, label %bb.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i232

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i232: ; preds = %_ZNK5arrow9ArrayData12GetNullCountEv.exit230
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.lq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.lr = invoke noalias noundef nonnull dereferenceable(30) ptr @_Znwm(i64 noundef 30) #26
          to label %.noexc237 unwind label %bb.bu ; 3 uses

.noexc237:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i232
  store ptr %i.lr, ptr %18, align 8, !tbaa !244
  store i64 29, ptr %i.lq, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.lr, ptr noundef nonnull align 1 dereferenceable(29) @.str.20, i64 29, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 29, ptr %i.ls, align 8, !tbaa !323
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 29
  store i8 0, ptr %i.lt, align 1, !tbaa !39
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.bs unwind label %bb.bv

bb.bs:                                            ; preds = %.noexc237
  %i.lu = load ptr, ptr %18, align 8, !tbaa !244  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lq
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239: ; preds = %bb.bs
  %i.lw = load i64, ptr %i.lq, align 8, !tbaa !39
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit241: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i239
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.critedge

bb.bt:                                            ; preds = %bb.bq
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bu:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i232
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

bb.bv:                                            ; preds = %.noexc237
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %18, align 8, !tbaa !244  ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lq
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242: ; preds = %bb.bv
  %i.md = load i64, ptr %i.lq, align 8, !tbaa !39
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242, %bb.bu
  %.pn133 = phi { ptr, i32 } [ %i.lz, %bb.bu ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i242 ], [ %i.ma, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.fb

bb.bw:                                            ; preds = %_ZNK5arrow9ArrayData12GetNullCountEv.exit230
  %i.mf = load i64, ptr %i.cx, align 8, !tbaa !341
  %i.mg = add i64 %i.mf, 1                        ; 3 uses
  store i64 %i.mg, ptr %i.cx, align 8, !tbaa !341
  %i.mh = load i8, ptr %i.h, align 8, !tbaa !326, !range !162, !noundef !163
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262, label %.preheader.i245

.preheader.i245:                                  ; preds = %bb.bw
  %i.mj = load ptr, ptr %i.it, align 8, !tbaa !340 ; 3 uses
  %i.mk = load ptr, ptr %i.iu, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = sdiv exact i64 %i.mn, 56                ; 2 uses
  %.promoted.i247 = load i64, ptr %i.is, align 8, !tbaa !342
  br label %.peel.begin.i248

.peel.begin.i248:                                 ; preds = %bb.bz, %.preheader.i245
  %.promoted912.i249 = phi i64 [ %.promoted.i247, %.preheader.i245 ], [ %.promoted911.lcssa.i257, %bb.bz ] ; 3 uses
  %i.mp = phi i64 [ %i.mg, %.preheader.i245 ], [ %i.nh, %bb.bz ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %.promoted912.i249 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !343
  %i.mt = load ptr, ptr %i.mq, align 8, !tbaa !338 ; 2 uses
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = ashr exact i64 %i.mw, 4
  %.not.peel.i250 = icmp ult i64 %i.mp, %i.mx
  br i1 %.not.peel.i250, label %.loopexit.i256, label %bb.bx

bb.bx:                                            ; preds = %.peel.begin.i248
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.my = add i64 %.promoted912.i249, 1           ; 3 uses
  store i64 %i.my, ptr %i.is, align 8, !tbaa !342
  %.not3.peel.i251 = icmp ult i64 %i.my, %i.mo
  br i1 %.not3.peel.i251, label %.peel.next.i253, label %.loopexit19.i252

.peel.next.i253:                                  ; preds = %bb.bx, %bb.by
  %.promoted911.i254 = phi i64 [ %i.nd, %bb.by ], [ %i.my, %bb.bx ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %.promoted911.i254 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !343
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !338 ; 2 uses
  %.not.not.i255 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not.not.i255, label %bb.by, label %.loopexit.i256

bb.by:                                            ; preds = %.peel.next.i253
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.nd = add i64 %.promoted911.i254, 1           ; 3 uses
  store i64 %i.nd, ptr %i.is, align 8, !tbaa !342
  %exitcond530.not = icmp eq i64 %i.nd, %i.mo
  br i1 %exitcond530.not, label %.loopexit19.i252, label %.peel.next.i253, !llvm.loop !344

.loopexit19.i252:                                 ; preds = %bb.bx, %bb.by
  store i8 1, ptr %i.h, align 8, !tbaa !326
  br label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262

.loopexit.i256:                                   ; preds = %.peel.next.i253, %.peel.begin.i248
  %i.ne = phi i64 [ %i.mp, %.peel.begin.i248 ], [ 0, %.peel.next.i253 ] ; 3 uses
  %.promoted911.lcssa.i257 = phi i64 [ %.promoted912.i249, %.peel.begin.i248 ], [ %.promoted911.i254, %.peel.next.i253 ]
  %.lcssa.i259 = phi ptr [ %i.mt, %.peel.begin.i248 ], [ %i.nc, %.peel.next.i253 ]
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %.lcssa.i259, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !346
  %.not2.not.i260 = icmp eq i32 %i.ng, 3
  br i1 %.not2.not.i260, label %bb.bz, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262

bb.bz:                                            ; preds = %.loopexit.i256
  %i.nh = add nuw i64 %i.ne, 1                    ; 2 uses
  store i64 %i.nh, ptr %i.cx, align 8, !tbaa !341
  br label %.peel.begin.i248

_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262: ; preds = %.loopexit.i256, %bb.bw, %.loopexit19.i252
  %i.ni = phi i64 [ 0, %.loopexit19.i252 ], [ %i.mg, %bb.bw ], [ %i.ne, %.loopexit.i256 ] ; 2 uses
  %i.nj = phi i8 [ 1, %.loopexit19.i252 ], [ 1, %bb.bw ], [ 0, %.loopexit.i256 ] ; 2 uses
  %i.nk = icmp eq i64 %i.ni, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge, !llvm.loop !373

._crit_edge:                                      ; preds = %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262, %.preheader453
  %i.nl = phi i64 [ %i.jh, %.preheader453 ], [ %i.ni, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262 ]
  %i.nm = phi i8 [ %.pre534, %.preheader453 ], [ %i.nj, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit262 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i263, label %_ZN5arrow6StatusD2Ev.exit275.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i263: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !367
  %i.no = invoke noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #26
          to label %.noexc270 unwind label %bb.cc ; 3 uses

.noexc270:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i263
  store ptr %i.no, ptr %4, align 8, !tbaa !244, !noalias !367
  store i64 32, ptr %i.iv, align 8, !tbaa !39, !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.no, ptr noundef nonnull align 1 dereferenceable(32) @.str.23, i64 32, i1 false), !noalias !367
  store i64 32, ptr %i.iw, align 8, !tbaa !323, !noalias !367
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  store i8 0, ptr %i.np, align 1, !tbaa !39, !noalias !367
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull readonly align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.ca unwind label %bb.cb

bb.ca:                                            ; preds = %.noexc270
  %i.nq = load ptr, ptr %4, align 8, !tbaa !244, !noalias !367 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.iv
  br i1 %i.nr, label %_ZN5arrow6StatusD2Ev.exit275, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i267

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i267: ; preds = %bb.ca
  %i.ns = load i64, ptr %i.iv, align 8, !tbaa !39, !noalias !367
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #24
  br label %_ZN5arrow6StatusD2Ev.exit275

bb.cb:                                            ; preds = %.noexc270
  %i.nu = landingpad { ptr, i32 }
          cleanup
  %i.nv = load ptr, ptr %4, align 8, !tbaa !244, !noalias !367 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.iv
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i265, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i264

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i264: ; preds = %bb.cb
  %i.nx = load i64, ptr %i.iv, align 8, !tbaa !39, !noalias !367
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i265

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i265: ; preds = %bb.cb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i264
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !367
  br label %.body271

_ZN5arrow6StatusD2Ev.exit275.thread:              ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZN5arrow6StatusD2Ev.exit279

_ZN5arrow6StatusD2Ev.exit275:                     ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i267
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !367
  %.pr436 = load ptr, ptr %19, align 8, !tbaa !142 ; 2 uses
  store ptr %.pr436, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.nz = icmp eq ptr %.pr436, null
  br i1 %i.nz, label %_ZN5arrow6StatusD2Ev.exit275._ZN5arrow6StatusD2Ev.exit279_crit_edge, label %.critedge

_ZN5arrow6StatusD2Ev.exit275._ZN5arrow6StatusD2Ev.exit279_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit275
  %.pre535 = load i64, ptr %i.cx, align 8, !tbaa !341
  br label %_ZN5arrow6StatusD2Ev.exit279

bb.cc:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i263
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body271

.body271:                                         ; preds = %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i265
  %.pn122 = phi { ptr, i32 } [ %i.nu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i265 ], [ %i.oa, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.fb

_ZN5arrow6StatusD2Ev.exit279:                     ; preds = %_ZN5arrow6StatusD2Ev.exit275._ZN5arrow6StatusD2Ev.exit279_crit_edge, %_ZN5arrow6StatusD2Ev.exit275.thread
  %i.ob = phi i64 [ %.pre535, %_ZN5arrow6StatusD2Ev.exit275._ZN5arrow6StatusD2Ev.exit279_crit_edge ], [ %i.nl, %_ZN5arrow6StatusD2Ev.exit275.thread ] ; 2 uses
  %i.oc = load i64, ptr %i.is, align 8, !tbaa !342 ; 2 uses
  %i.od = load ptr, ptr %i.it, align 8, !tbaa !340
  %i.oe = getelementptr inbounds nuw [56 x i8], ptr %i.od, i64 %i.oc ; 6 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !338
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %i.ob ; 2 uses
  %i.oh = load i32, ptr %i.je, align 8, !tbaa !346 ; 2 uses
  %i.oi = load i32, ptr %i.og, align 8, !tbaa !346
  %i.oj = icmp eq i32 %i.oh, %i.oi
  br i1 %i.oj, label %bb.cd, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread

bb.cd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit279
  %.not.i.i280 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i280, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread437

_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit: ; preds = %bb.cd
  %i.ok = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !374
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !374
  %.not447 = icmp eq i64 %i.ol, %i.on
  br i1 %.not447, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread437, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread

_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread: ; preds = %_ZN5arrow6StatusD2Ev.exit279, %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.oo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.op = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #26
          to label %.noexc287 unwind label %bb.cf ; 3 uses

.noexc287:                                        ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread
  store ptr %i.op, ptr %20, align 8, !tbaa !244
  store i64 20, ptr %i.oo, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.op, ptr noundef nonnull align 1 dereferenceable(20) @.str.21, i64 20, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 20, ptr %i.oq, align 8, !tbaa !323
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 20
  store i8 0, ptr %i.or, align 1, !tbaa !39
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.ce unwind label %bb.cg

bb.ce:                                            ; preds = %.noexc287
  %i.os = load ptr, ptr %20, align 8, !tbaa !244  ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.oo
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289: ; preds = %bb.ce
  %i.ou = load i64, ptr %i.oo, align 8, !tbaa !39
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit291: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i289
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.critedge

bb.cf:                                            ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

bb.cg:                                            ; preds = %.noexc287
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oy = load ptr, ptr %20, align 8, !tbaa !244  ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.oo
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292: ; preds = %bb.cg
  %i.pa = load i64, ptr %i.oo, align 8, !tbaa !39
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit294: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292, %bb.cf
  %.pn127 = phi { ptr, i32 } [ %i.ow, %bb.cf ], [ %i.ox, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i292 ], [ %i.ox, %bb.cg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.fb

_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread437: ; preds = %bb.cd, %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit
  %i.pc = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.pd = getelementptr inbounds nuw [16 x i8], ptr %i.pc, i64 %i.oc ; 3 uses
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !44 ; 3 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !103 ; 3 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  %i.pi = load i64, ptr %i.ph, align 8, !tbaa !19 ; 3 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 40
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !13
  %i.pl = getelementptr inbounds nuw [16 x i8], ptr %i.pk, i64 %i.ob ; 3 uses
  %i.pm = load ptr, ptr %i.ix, align 8, !tbaa !109 ; 5 uses
  %i.pn = load ptr, ptr %i.iy, align 8, !tbaa !101
  %.not.i295 = icmp eq ptr %i.pm, %i.pn
  br i1 %.not.i295, label %bb.cl, label %bb.ch

bb.ch:                                            ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread437
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !105 ; 2 uses
  %i.pq = load <2 x ptr>, ptr %i.pl, align 8, !tbaa !100
  store <2 x ptr> %i.pq, ptr %i.pm, align 8, !tbaa !100
  %.not.i.i.i.i.i296 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i.i.i296, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i298, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 3 uses
  %i.ps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i297 = icmp eq i8 %i.ps, 0
  br i1 %.not.i.i.i.i.i.i297, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.pt = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pu = add nsw i32 %i.pt, 1
  store i32 %i.pu, ptr %i.pr, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i298

bb.ck:                                            ; preds = %bb.ci
  %i.pv = atomicrmw volatile add ptr %i.pr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i299 = load ptr, ptr %i.ix, align 8, !tbaa !109
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i298

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i298: ; preds = %bb.ck, %bb.cj, %bb.ch
  %i.pw = phi ptr [ %i.pm, %bb.ch ], [ %i.pm, %bb.cj ], [ %.pre.i299, %bb.ck ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store ptr %i.px, ptr %i.ix, align 8, !tbaa !109
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit301

bb.cl:                                            ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread437
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.pm, ptr noundef nonnull align 8 dereferenceable(16) %i.pl)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit301 unwind label %.loopexit.split-lp

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit301: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i298, %bb.cl
  %i.py = load i64, ptr %i.cx, align 8, !tbaa !341
  %i.pz = add i64 %i.py, 1                        ; 7 uses
  store i64 %i.pz, ptr %i.cx, align 8, !tbaa !341
  %i.qa = getelementptr inbounds nuw i8, ptr %i.oe, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !343
  %i.qc = load ptr, ptr %i.oe, align 8, !tbaa !338
  %i.qd = ptrtoint ptr %i.qb to i64
  %i.qe = ptrtoint ptr %i.qc to i64
  %i.qf = sub i64 %i.qd, %i.qe
  %i.qg = ashr exact i64 %i.qf, 4
  %i.qh = icmp eq i64 %i.pz, %i.qg
  br i1 %i.qh, label %bb.cm, label %.loopexit

bb.cm:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit301
  %i.qi = load i8, ptr %i.iz, align 8, !tbaa !375, !range !162, !noundef !163 ; 2 uses
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.ql = load i8, ptr %i.qk, align 8, !tbaa !375, !range !162, !noundef !163 ; 2 uses
  %i.qm = icmp eq i8 %i.qi, %i.ql                 ; 2 uses
  %brmerge.i.not = and i1 %i.qm, %i.qj
  br i1 %brmerge.i.not, label %bb.cn, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.cn:                                            ; preds = %bb.cm
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.qo = load i32, ptr %i.ja, align 8, !tbaa !346 ; 2 uses
  %i.qp = load i32, ptr %i.qn, align 8, !tbaa !346
  %i.qq = icmp eq i32 %i.qo, %i.qp
  br i1 %i.qq, label %bb.co, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread

bb.co:                                            ; preds = %bb.cn
  %.not.i.i.i303 = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i.i303, label %bb.cp, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread438

bb.cp:                                            ; preds = %bb.co
  %i.qr = load i64, ptr %i.jb, align 8, !tbaa !374
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !374
  %.not449 = icmp eq i64 %i.qr, %i.qt
  br i1 %.not449, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread438, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread

_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit: ; preds = %bb.cm
  br i1 %i.qm, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread438, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread

_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread: ; preds = %bb.cn, %bb.cp, %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.qu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.qv = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #26
          to label %.noexc310 unwind label %bb.cr ; 3 uses

end_hunk_0
begin_hunk_1_@llvm.usub.sat.i32
!170 = distinct !{!170, !168, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!171 = distinct !{!171, !172}
!172 = !{!"llvm.loop.mustprogress"}
!173 = !{!32, !32, i64 0}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!176 = distinct !{!176, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!179 = distinct !{!179, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!180 = !{!178, !175}
!181 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!182 = distinct !{ptr @_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEED2Ev, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!183 = !{!184, !186}
!184 = distinct !{!184, !185, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!185 = distinct !{!185, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!186 = distinct !{!186, !187, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!187 = distinct !{!187, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!188 = !{!37, !38, i64 0}
!189 = distinct !{null, null, null, null}
!190 = !{!191}
!191 = distinct !{!191, !192, !"_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElll: argument 0"}
!192 = distinct !{!192, !"_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElll"}
!193 = !{!194}
!194 = distinct !{!194, !195, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlS5_S5_EES2_IT_EDpOT0_: argument 0"}
!195 = distinct !{!195, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlS5_S5_EES2_IT_EDpOT0_"}
!196 = !{!194, !191}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN5arrow8internal3ZipISt5tupleIJRKSt6vectorISt10shared_ptrINS_6BufferEESaIS6_EERS8_EESt16integer_sequenceImJLm0ELm1EEEE5beginEv: argument 0"}
!199 = distinct !{!199, !"_ZN5arrow8internal3ZipISt5tupleIJRKSt6vectorISt10shared_ptrINS_6BufferEESaIS6_EERS8_EESt16integer_sequenceImJLm0ELm1EEEE5beginEv"}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN5arrow8internal3ZipISt5tupleIJRKSt6vectorISt10shared_ptrINS_6BufferEESaIS6_EERS8_EESt16integer_sequenceImJLm0ELm1EEEE3endEv: argument 0"}
!202 = distinct !{!202, !"_ZN5arrow8internal3ZipISt5tupleIJRKSt6vectorISt10shared_ptrINS_6BufferEESaIS6_EERS8_EESt16integer_sequenceImJLm0ELm1EEEE3endEv"}
!203 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!204 = !{!205, !207}
!205 = distinct !{!205, !206, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv: argument 0"}
!206 = distinct !{!206, !"_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEE15MoveValueUnsafeEv"}
!207 = distinct !{!207, !208, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv: argument 0"}
!208 = distinct !{!208, !"_ZNO5arrow6ResultISt10shared_ptrINS_6BufferEEE11ValueUnsafeEv"}
!209 = !{!210}
!210 = distinct !{!210, !211, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!211 = distinct !{!211, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!212 = !{!213}
!213 = distinct !{!213, !211, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!216 = distinct !{!216, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!219 = distinct !{!219, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!220 = !{!218, !215}
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!223 = distinct !{!223, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!224 = distinct !{!224, !225, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!225 = distinct !{!225, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZNK5arrow9ArrayData4CopyEv: argument 0"}
!228 = distinct !{!228, !"_ZNK5arrow9ArrayData4CopyEv"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZSt11make_sharedIN5arrow9ArrayDataEJRKS1_EESt10shared_ptrIT_EDpOT0_: argument 0"}
!231 = distinct !{!231, !"_ZSt11make_sharedIN5arrow9ArrayDataEJRKS1_EESt10shared_ptrIT_EDpOT0_"}
!232 = !{!233, !230, !227}
!233 = distinct !{!233, !234, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_: argument 0"}
!234 = distinct !{!234, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN5arrow9ArrayDataESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERS9_"}
!235 = !{!230, !227}
!236 = !{!38, !38, i64 0}
!237 = distinct !{null, null, null, null, null}
!238 = !{!65, !65, i64 0}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZN5arrow8internalL16CheckSliceParamsElllPKc: argument 0"}
!241 = distinct !{!241, !"_ZN5arrow8internalL16CheckSliceParamsElllPKc"}
!242 = !{!"branch_weights", !"expected", i32 1610210116, i32 537273532}
!243 = !{!"branch_weights", !"expected", i32 1, i32 2147483647}
!244 = !{!157, !65, i64 0}
!245 = !{!246, !156, i64 9}
!246 = !{!"_ZTSN5arrow6BufferE", !156, i64 8, !156, i64 9, !65, i64 16, !22, i64 24, !22, i64 32, !247, i64 40, !248, i64 48, !249, i64 64}
!247 = !{!"_ZTSN5arrow20DeviceAllocationTypeE", !5, i64 0}
!248 = !{!"_ZTSSt10shared_ptrIN5arrow6BufferEE", !17, i64 0}
!249 = !{!"_ZTSSt10shared_ptrIN5arrow13MemoryManagerEE", !250, i64 0}
!250 = !{!"_ZTSSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EE", !251, i64 0, !11, i64 8}
!251 = !{!"p1 _ZTSN5arrow13MemoryManagerE", !10, i64 0}
!252 = !{!246, !247, i64 40}
!253 = !{!246, !22, i64 24}
!254 = !{!64, !22, i64 8}
!255 = !{!64, !15, i64 16}
!256 = distinct !{null}
!257 = distinct !{!257, !172}
!258 = !{!81, !82, i64 8}
!259 = !{!81, !82, i64 0}
!260 = !{!261, !262, i64 0}
!261 = !{!"_ZTSSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EE", !262, i64 0, !11, i64 8}
!262 = !{!"p1 _ZTSN5arrow5FieldE", !10, i64 0}
!263 = distinct !{!263, !172}
!264 = !{!265, !156, i64 40}
!265 = !{!"_ZTSN5arrow6ScalarE", !266, i64 8, !21, i64 24, !156, i64 40}
!266 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6ScalarEE", !267, i64 0}
!267 = !{!"_ZTSSt8weak_ptrIN5arrow6ScalarEE", !268, i64 0}
!268 = !{!"_ZTSSt10__weak_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !269, i64 0, !76, i64 8}
!269 = !{!"p1 _ZTSN5arrow6ScalarE", !10, i64 0}
!270 = !{!271, !156, i64 41}
!271 = !{!"_ZTSN5arrow8internal15PrimitiveScalarINS_11BooleanTypeEbEE", !272, i64 0, !156, i64 41}
!272 = !{!"_ZTSN5arrow8internal19PrimitiveScalarBaseE", !265, i64 0}
!273 = !{!274, !275, i64 0}
!274 = !{!"_ZTSSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EE", !275, i64 0, !11, i64 8}
!275 = !{!"p1 _ZTSN5arrow5ArrayE", !10, i64 0}
!276 = !{!277, !278, i64 8}
!277 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow6ScalarEESaIS3_EE17_Vector_impl_dataE", !278, i64 0, !278, i64 8, !278, i64 16}
!278 = !{!"p1 _ZTSSt10shared_ptrIN5arrow6ScalarEE", !10, i64 0}
!279 = !{!277, !278, i64 0}
!280 = !{!281, !269, i64 0}
!281 = !{!"_ZTSSt12__shared_ptrIN5arrow6ScalarELN9__gnu_cxx12_Lock_policyE2EE", !269, i64 0, !11, i64 8}
!282 = distinct !{!282, !172}
!283 = !{!9, !9, i64 0}
!284 = !{!285, !5, i64 41}
!285 = !{!"_ZTSN5arrow11UnionScalarE", !265, i64 0, !5, i64 41}
!286 = distinct !{!286, !172}
!287 = distinct !{!287, !172}
!288 = !{!289}
!289 = distinct !{!289, !290, !"_ZNK5arrow8DataType12GetSharedPtrEv: argument 0"}
!290 = distinct !{!290, !"_ZNK5arrow8DataType12GetSharedPtrEv"}
!291 = !{!292}
!292 = distinct !{!292, !293, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv: argument 0"}
!293 = distinct !{!293, !"_ZNSt23enable_shared_from_thisIN5arrow8DataTypeEE16shared_from_thisEv"}
!294 = !{!76, !12, i64 0}
!295 = !{!292, !289}
!296 = distinct !{!296, !172}
!297 = !{!75, !9, i64 0}
!298 = !{!299}
!299 = distinct !{!299, !300, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlRlS6_EES2_IT_EDpOT0_: argument 0"}
!300 = distinct !{!300, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERKlRlS6_EES2_IT_EDpOT0_"}
!301 = !{!302}
!302 = distinct !{!302, !303, !"_ZNK5arrow9ArraySpan9GetBufferEi: argument 0"}
!303 = distinct !{!303, !"_ZNK5arrow9ArraySpan9GetBufferEi"}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_: argument 0"}
!306 = distinct !{!306, !"_ZSt11make_sharedIN5arrow6BufferEJRKPhRKlEESt10shared_ptrIT_EDpOT0_"}
!307 = !{!305, !302}
!308 = distinct !{!308, !172}
!309 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!310 = distinct !{!310, !172}
!311 = distinct !{null, null}
!312 = !{ptr @_ZNK5arrow9ArraySpan6IsNullEl, ptr @_ZNK5arrow9ArraySpan7IsValidEl}
!313 = !{ptr @_ZNK5arrow9ArraySpan7IsValidEl}
!314 = distinct !{null, null, null, null}
!315 = !{!316, !22, i64 80}
!316 = !{!"_ZTSN5arrow12_GLOBAL__N_112ViewDataImplE", !21, i64 0, !21, i64 16, !317, i64 32, !28, i64 56, !22, i64 80, !22, i64 88, !22, i64 96, !156, i64 104}
!317 = !{!"_ZTSSt6vectorIN5arrow14DataTypeLayoutESaIS1_EE", !318, i64 0}
!318 = !{!"_ZTSSt12_Vector_baseIN5arrow14DataTypeLayoutESaIS1_EE", !319, i64 0}
!319 = !{!"_ZTSNSt12_Vector_baseIN5arrow14DataTypeLayoutESaIS1_EE12_Vector_implE", !320, i64 0}
!320 = !{!"_ZTSNSt12_Vector_baseIN5arrow14DataTypeLayoutESaIS1_EE17_Vector_impl_dataE", !321, i64 0, !321, i64 8, !321, i64 16}
!321 = !{!"p1 _ZTSN5arrow14DataTypeLayoutE", !10, i64 0}
!322 = !{!158, !65, i64 0}
!323 = !{!157, !22, i64 8}
!324 = distinct !{ptr @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!325 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!326 = !{!316, !156, i64 104}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputExhaustedEv: argument 0"}
!329 = distinct !{!329, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputExhaustedEv"}
!330 = !{!"branch_weights", !"expected", i32 2145337236, i32 2146412}
!331 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!332 = !{!320, !321, i64 8}
!333 = !{!320, !321, i64 16}
!334 = !{!335, !335, i64 0}
!335 = !{!"p1 _ZTSN5arrow14DataTypeLayout10BufferSpecE", !10, i64 0}
!336 = !{!337, !335, i64 16}
!337 = !{!"_ZTSNSt12_Vector_baseIN5arrow14DataTypeLayout10BufferSpecESaIS2_EE17_Vector_impl_dataE", !335, i64 0, !335, i64 8, !335, i64 16}
!338 = !{!337, !335, i64 0}
!339 = !{!82, !82, i64 0}
!340 = !{!320, !321, i64 0}
!341 = !{!316, !22, i64 96}
!342 = !{!316, !22, i64 88}
!343 = !{!337, !335, i64 8}
!344 = distinct !{!344, !172, !345}
!345 = !{!"llvm.loop.peeled.count", i32 1}
!346 = !{!347, !348, i64 0}
!347 = !{!"_ZTSN5arrow14DataTypeLayout10BufferSpecE", !348, i64 0, !22, i64 8}
!348 = !{!"_ZTSN5arrow14DataTypeLayout10BufferKindE", !5, i64 0}
!349 = !{!350}
!350 = distinct !{!350, !351, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl17GetDictionaryViewERKNS_8DataTypeE: argument 0"}
!351 = distinct !{!351, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl17GetDictionaryViewERKNS_8DataTypeE"}
!352 = distinct !{null}
!353 = !{!354, !356}
!354 = distinct !{!354, !355, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv: argument 0"}
!355 = distinct !{!355, !"_ZN5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE15MoveValueUnsafeEv"}
!356 = distinct !{!356, !357, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv: argument 0"}
!357 = distinct !{!357, !"_ZNO5arrow6ResultISt10shared_ptrINS_9ArrayDataEEE11ValueUnsafeEv"}
!358 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!359 = !{!360}
!360 = distinct !{!360, !361, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv: argument 0"}
!361 = distinct !{!361, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv"}
!362 = !{!363, !156, i64 72}
!363 = !{!"_ZTSN5arrow5FieldE", !69, i64 0, !157, i64 24, !21, i64 56, !156, i64 72, !364, i64 80}
!364 = !{!"_ZTSSt10shared_ptrIKN5arrow16KeyValueMetadataEE", !365, i64 0}
!365 = !{!"_ZTSSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EE", !366, i64 0, !11, i64 8}
!366 = !{!"p1 _ZTSN5arrow16KeyValueMetadataE", !10, i64 0}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv: argument 0"}
!369 = distinct !{!369, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv"}
!370 = !{!371}
!371 = distinct !{!371, !372, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv: argument 0"}
!372 = distinct !{!372, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv"}
!373 = distinct !{!373, !172}
!374 = !{!347, !22, i64 8}
!375 = !{!376, !156, i64 16}
!376 = !{!"_ZTSSt22_Optional_payload_baseIN5arrow14DataTypeLayout10BufferSpecEE", !5, i64 0, !156, i64 16}
!377 = distinct !{!377, !172}
!378 = distinct !{!378, !172}
!379 = !{!380}
!380 = distinct !{!380, !381, !"_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll: argument 0"}
!381 = distinct !{!381, !"_ZN5arrow9ArrayData4MakeESt10shared_ptrINS_8DataTypeEElSt6vectorIS1_INS_6BufferEESaIS6_EEll"}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlSt6vectorIS2_INS0_6BufferEESaIS8_EES5_S5_EES2_IT_EDpOT0_: argument 0"}
!384 = distinct !{!384, !"_ZSt11make_sharedIN5arrow9ArrayDataEJSt10shared_ptrINS0_8DataTypeEERlSt6vectorIS2_INS0_6BufferEESaIS8_EES5_S5_EES2_IT_EDpOT0_"}
!385 = !{!383, !380}
!386 = distinct !{null, null, null, null}
!387 = !{!388}
!388 = distinct !{!388, !389, !"_ZN5arrow6Status2OKEv: argument 0"}
!389 = distinct !{!389, !"_ZN5arrow6Status2OKEv"}
!390 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!391 = distinct !{!391, !172}
!392 = distinct !{null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!393 = distinct !{!393, !172}
!394 = distinct !{!394, !172}
!395 = distinct !{null, null, ptr @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev, ptr @_ZN5arrow9ArraySpanD2Ev, null}
!396 = distinct !{null, null, ptr @_ZNSt6vectorIN5arrow9ArraySpanESaIS1_EED2Ev, ptr @_ZN5arrow9ArraySpanD2Ev}
!397 = distinct !{!397, !172}
!398 = distinct !{null}
!399 = !{!400, !65, i64 8}
!400 = !{!"_ZTSSt9type_info", !65, i64 8}
!401 = distinct !{!401, !172}
!402 = distinct !{!402, !172}
!403 = distinct !{null, null, null}
!404 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!405 = !{!406}
!406 = distinct !{!406, !407, !"_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!407 = distinct !{!407, !"_ZN5arrow6Status8FromArgsIJRA10_KcRPS2_RA14_S2_EEES0_NS_10StatusCodeEDpOT_"}
!408 = !{!409}
!409 = distinct !{!409, !410, !"_ZN5arrow6Status8FromArgsIJRPKcRA22_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!410 = distinct !{!410, !"_ZN5arrow6Status8FromArgsIJRPKcRA22_S2_EEES0_NS_10StatusCodeEDpOT_"}
!411 = !{!412}
!412 = distinct !{!412, !413, !"_ZN5arrow6Status8FromArgsIJRPKcRA21_S2_S4_RA8_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!413 = distinct !{!413, !"_ZN5arrow6Status8FromArgsIJRPKcRA21_S2_S4_RA8_S2_EEES0_NS_10StatusCodeEDpOT_"}
!414 = !{!415, !423, i64 8}
!415 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !416, i64 0, !423, i64 8}
!416 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !417, i64 0}
!417 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !418, i64 0}
!418 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !419, i64 0}
!419 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !420, i64 0}
!420 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !421, i64 0}
!421 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !422, i64 0}
!422 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!423 = !{!"p1 _ZTSSo", !10, i64 0}
!424 = !{i64 8}
!425 = !{!426, !428, i64 32}
!426 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !427, i64 24, !428, i64 28, !428, i64 32, !429, i64 40, !430, i64 48, !5, i64 64, !4, i64 192, !431, i64 200, !432, i64 208}
!427 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!428 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!429 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!430 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !22, i64 8}
!431 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!432 = !{!"_ZTSSt6locale", !433, i64 0}
!433 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!434 = distinct !{null, null, null, null}
!435 = distinct !{!435, !436}
!436 = !{!"llvm.loop.unroll.disable"}
!437 = distinct !{!437, !172}
!438 = distinct !{!438, !436}
!439 = !{!440}
!440 = distinct !{!440, !441, !"_ZSt19__relocate_object_aIN5arrow9ArraySpanES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!441 = distinct !{!441, !"_ZSt19__relocate_object_aIN5arrow9ArraySpanES1_SaIS1_EEvPT_PT0_RT1_"}
!442 = !{!443}
!443 = distinct !{!443, !441, !"_ZSt19__relocate_object_aIN5arrow9ArraySpanES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!444 = !{!440, !443}
!445 = distinct !{!445, !172}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!448 = distinct !{!448, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_"}
!449 = !{!450}
!450 = distinct !{!450, !448, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!451 = distinct !{!451, !172}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!454 = distinct !{!454, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_"}
!455 = !{!456}
!456 = distinct !{!456, !454, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!457 = distinct !{null, null}
!458 = !{!246, !156, i64 8}
!459 = !{!246, !65, i64 16}
!460 = !{!246, !22, i64 32}
!461 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!462 = !{!250, !251, i64 0}
!463 = !{!464, !465, i64 0}
!464 = !{!"_ZTSSt12__shared_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !465, i64 0, !11, i64 8}
!465 = !{!"p1 _ZTSN5arrow6DeviceE", !10, i64 0}
!466 = !{!467, !156, i64 24}
!467 = !{!"_ZTSN5arrow6DeviceE", !468, i64 8, !156, i64 24}
!468 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow6DeviceEE", !469, i64 0}
!469 = !{!"_ZTSSt8weak_ptrIN5arrow6DeviceEE", !470, i64 0}
!470 = !{!"_ZTSSt10__weak_ptrIN5arrow6DeviceELN9__gnu_cxx12_Lock_policyE2EE", !465, i64 0, !76, i64 8}
!471 = distinct !{null}
!472 = distinct !{ptr @_ZNSt12__shared_ptrIN5arrow13MemoryManagerELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!473 = !{!474}
!474 = distinct !{!474, !475, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!475 = distinct !{!475, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_"}
!476 = !{!477}
!477 = distinct !{!477, !475, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!480 = distinct !{!480, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_"}
!481 = !{!482}
!482 = distinct !{!482, !480, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!483 = !{!484}
!484 = distinct !{!484, !485, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!485 = distinct !{!485, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!486 = !{!487}
!487 = distinct !{!487, !485, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!490 = distinct !{!490, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!491 = !{!492}
!492 = distinct !{!492, !490, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!493 = !{ptr @_ZNK5arrow9ArraySpan17IsNullSparseUnionEl}
!494 = !{ptr @_ZNK5arrow9ArraySpan16IsNullDenseUnionEl}
!495 = !{!496}
!496 = distinct !{!496, !497, !"_ZSt19__relocate_object_aIN5arrow14DataTypeLayoutES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!497 = distinct !{!497, !"_ZSt19__relocate_object_aIN5arrow14DataTypeLayoutES1_SaIS1_EEvPT_PT0_RT1_"}
!498 = !{!499}
!499 = distinct !{!499, !497, !"_ZSt19__relocate_object_aIN5arrow14DataTypeLayoutES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!500 = !{!496, !499}
!501 = distinct !{!501, !172}
!502 = !{!503}
!503 = distinct !{!503, !504, !"_ZSt19__relocate_object_aIN5arrow14DataTypeLayoutES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!504 = distinct !{!504, !"_ZSt19__relocate_object_aIN5arrow14DataTypeLayoutES1_SaIS1_EEvPT_PT0_RT1_"}
!505 = !{!506}
!506 = distinct !{!506, !504, !"_ZSt19__relocate_object_aIN5arrow14DataTypeLayoutES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!507 = !{!503, !506}
!508 = !{!509}
!509 = distinct !{!509, !510, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!510 = distinct !{!510, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!511 = !{!512}
!512 = distinct !{!512, !510, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!513 = !{!514}
!514 = distinct !{!514, !515, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!515 = distinct !{!515, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_"}
!516 = !{!517}
!517 = distinct !{!517, !515, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow9ArrayDataEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!518 = distinct !{null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!519 = !{!520, !522}
!520 = distinct !{!520, !521, !"_ZN5arrow6Status8FromArgsIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA3_S2_RKSA_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!521 = distinct !{!521, !"_ZN5arrow6Status8FromArgsIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA3_S2_RKSA_EEES0_NS_10StatusCodeEDpOT_"}
!522 = distinct !{!522, !523, !"_ZN5arrow6Status7InvalidIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA3_S2_RKSA_EEES0_DpOT_: argument 0"}
!523 = distinct !{!523, !"_ZN5arrow6Status7InvalidIJRA26_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA5_S2_SA_RA3_S2_RKSA_EEES0_DpOT_"}
!524 = distinct !{null, null, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN5arrow9ArrayDataELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!525 = !{!526}
!526 = distinct !{!526, !527, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!527 = distinct !{!527, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_"}
!528 = !{!529}
!529 = distinct !{!529, !527, !"_ZSt19__relocate_object_aISt10shared_ptrIN5arrow6BufferEES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
end_hunk_1
