inline.NumInlined: 1754
inline.NumDeleted: 723
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_112ViewDataImpl12MakeDataViewERKSt10shared_ptrINS_5FieldEEPS2_INS_9ArrayDataEE:bb.a
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.fr, ptr noundef nonnull align 8 dereferenceable(16) %i.fp)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit unwind label %bb.ag

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i, %bb.ao
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
  br i1 %i.go, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit196, label %.preheader.i179

.preheader.i179:                                  ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !340 ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = ptrtoint ptr %i.gs to i64
  %i.gu = ptrtoint ptr %i.gq to i64
  %i.gv = sub i64 %i.gt, %i.gu
  %i.gw = sdiv exact i64 %i.gv, 56                ; 2 uses
  %.promoted.i181 = load i64, ptr %i.dv, align 8, !tbaa !342
  br label %.peel.begin.i182

.peel.begin.i182:                                 ; preds = %bb.ar, %.preheader.i179
  %.promoted912.i183 = phi i64 [ %.promoted.i181, %.preheader.i179 ], [ %.promoted911.lcssa.i191, %bb.ar ] ; 3 uses
  %i.gx = phi i64 [ %i.gm, %.preheader.i179 ], [ %i.ho, %bb.ar ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [56 x i8], ptr %i.gq, i64 %.promoted912.i183 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !343
  %i.hb = load ptr, ptr %i.gy, align 8, !tbaa !338 ; 2 uses
  %i.hc = ptrtoint ptr %i.ha to i64
  %i.hd = ptrtoint ptr %i.hb to i64
  %i.he = sub i64 %i.hc, %i.hd
  %i.hf = ashr exact i64 %i.he, 4
  %.not.peel.i184 = icmp ult i64 %i.gx, %i.hf
  br i1 %.not.peel.i184, label %.loopexit.i190, label %bb.ap

bb.ap:                                            ; preds = %.peel.begin.i182
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.hg = add i64 %.promoted912.i183, 1           ; 3 uses
  store i64 %i.hg, ptr %i.dv, align 8, !tbaa !342
  %.not3.peel.i185 = icmp ult i64 %i.hg, %i.gw
  br i1 %.not3.peel.i185, label %.peel.next.i187, label %.loopexit19.i186

.peel.next.i187:                                  ; preds = %bb.ap, %bb.aq
  %.promoted911.i188 = phi i64 [ %i.hl, %bb.aq ], [ %i.hg, %bb.ap ] ; 3 uses
  %i.hh = getelementptr inbounds nuw [56 x i8], ptr %i.gq, i64 %.promoted911.i188 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !343
  %i.hk = load ptr, ptr %i.hh, align 8, !tbaa !338 ; 2 uses
  %.not.not.i189 = icmp eq ptr %i.hj, %i.hk
  br i1 %.not.not.i189, label %bb.aq, label %.loopexit.i190

bb.aq:                                            ; preds = %.peel.next.i187
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.hl = add i64 %.promoted911.i188, 1           ; 3 uses
  store i64 %i.hl, ptr %i.dv, align 8, !tbaa !342
  %exitcond527.not = icmp eq i64 %i.hl, %i.gw
  br i1 %exitcond527.not, label %.loopexit19.i186, label %.peel.next.i187, !llvm.loop !344

.loopexit19.i186:                                 ; preds = %bb.ap, %bb.aq
  store i8 1, ptr %i.h, align 8, !tbaa !326
  br label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit196

.loopexit.i190:                                   ; preds = %.peel.next.i187, %.peel.begin.i182
  %.promoted911.lcssa.i191 = phi i64 [ %.promoted912.i183, %.peel.begin.i182 ], [ %.promoted911.i188, %.peel.next.i187 ]
  %.lcssa15.i192 = phi i64 [ %i.gx, %.peel.begin.i182 ], [ 0, %.peel.next.i187 ] ; 2 uses
  %.lcssa.i193 = phi ptr [ %i.hb, %.peel.begin.i182 ], [ %i.hk, %.peel.next.i187 ]
  %i.hm = getelementptr inbounds nuw [16 x i8], ptr %.lcssa.i193, i64 %.lcssa15.i192
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !346
  %.not2.not.i194 = icmp eq i32 %i.hn, 3
  br i1 %.not2.not.i194, label %bb.ar, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit196

bb.ar:                                            ; preds = %.loopexit.i190
  %i.ho = add nuw i64 %.lcssa15.i192, 1           ; 2 uses
  store i64 %i.ho, ptr %i.cx, align 8, !tbaa !341
  br label %.peel.begin.i182

bb.as:                                            ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr null, ptr noundef nonnull align 8 dereferenceable(16) %15)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit unwind label %bb.az

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.as
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %15, i64 8
  %.pre530 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !105 ; 8 uses
  %.not.i.i199 = icmp eq ptr %.pre530, null
  br i1 %.not.i.i199, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %.pre530, i64 8 ; 4 uses
  %i.hq = load atomic i64, ptr %i.hp acquire, align 8 ; 2 uses
  %i.hr = icmp eq i64 %i.hq, 4294967297
  %i.hs = trunc i64 %i.hq to i32                  ; 2 uses
  br i1 %i.hr, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store i32 0, ptr %i.hp, align 8, !tbaa !95
  %i.ht = getelementptr inbounds nuw i8, ptr %.pre530, i64 12
  store i32 0, ptr %i.ht, align 4, !tbaa !97
  %i.hu = load ptr, ptr %.pre530, align 8, !tbaa !98
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.hw = load ptr, ptr %i.hv, align 8
  call void %i.hw(ptr noundef nonnull align 8 dereferenceable(16) %.pre530) #22, !inline_history !203
  %i.hx = load ptr, ptr %.pre530, align 8, !tbaa !98
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 24
  %i.hz = load ptr, ptr %i.hy, align 8
  call void %i.hz(ptr noundef nonnull align 8 dereferenceable(16) %.pre530) #22, !inline_history !203
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.av:                                            ; preds = %bb.at
  %i.ia = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i200 = icmp eq i8 %i.ia, 0
  br i1 %.not.i.i.i200, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ib = add nsw i32 %i.hs, -1
  store i32 %i.ib, ptr %i.hp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201

bb.ax:                                            ; preds = %bb.av
  %i.ic = atomicrmw volatile add ptr %i.hp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201: ; preds = %bb.ax, %bb.aw
  %.0.i.i.i.i202 = phi i32 [ %i.hs, %bb.aw ], [ %i.ic, %bb.ax ]
  %i.id = icmp eq i32 %.0.i.i.i.i202, 1
  br i1 %i.id, label %bb.ay, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !86

bb.ay:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pre530) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit, %bb.au, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i201, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.ie = load ptr, ptr %i.c, align 8, !tbaa !7
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 40
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !67
  %i.ih = icmp eq i32 %i.ig, 0
  %. = select i1 %i.ih, i64 %i.an, i64 0
  br label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit196

bb.az:                                            ; preds = %bb.as
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.fa

_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit196: ; preds = %.loopexit.i190, %.loopexit19.i186, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.197 = phi i64 [ %., %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.gk, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ %i.gk, %.loopexit19.i186 ], [ %i.gk, %.loopexit.i190 ]
  %.191 = phi i64 [ 0, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.gi, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ %i.gi, %.loopexit19.i186 ], [ %i.gi, %.loopexit.i190 ] ; 2 uses
  %.185 = phi i64 [ %i.an, %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ], [ %i.gg, %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit ], [ %i.gg, %.loopexit19.i186 ], [ %i.gg, %.loopexit.i190 ] ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !343
  %i.il = load ptr, ptr %9, align 8, !tbaa !338   ; 2 uses
  %i.im = ptrtoint ptr %i.ik to i64
  %i.in = ptrtoint ptr %i.il to i64
  %i.io = sub i64 %i.im, %i.in
  %.not137503 = icmp ugt i64 %i.io, 16
  br i1 %.not137503, label %.lr.ph507, label %.thread

.lr.ph507:                                        ; preds = %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit196
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
  br label %bb.ba

bb.ba:                                            ; preds = %.lr.ph507, %.critedge148
  %i.jd = phi ptr [ %i.il, %.lr.ph507 ], [ %i.tw, %.critedge148 ]
  %.286506 = phi i64 [ %.185, %.lr.ph507 ], [ %.488, %.critedge148 ]
  %.292505 = phi i64 [ %.191, %.lr.ph507 ], [ %.494, %.critedge148 ]
  %.0112504 = phi i64 [ 1, %.lr.ph507 ], [ %i.tu, %.critedge148 ] ; 2 uses
  %i.je = getelementptr inbounds nuw [16 x i8], ptr %i.jd, i64 %.0112504 ; 3 uses
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !346
  %i.jg = icmp eq i32 %i.jf, 3
  br i1 %i.jg, label %bb.bb, label %.preheader451

.preheader451:                                    ; preds = %bb.ba
  %i.jh = load i64, ptr %i.cx, align 8, !tbaa !341 ; 2 uses
  %i.ji = icmp eq i64 %i.jh, 0
  %.pre532 = load i8, ptr %i.h, align 8, !tbaa !326, !range !162, !noalias !163 ; 2 uses
  br i1 %i.ji, label %.lr.ph, label %._crit_edge

bb.bb:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %16, i8 0, i64 16, i1 false)
  %i.jj = load ptr, ptr %i.ix, align 8, !tbaa !109 ; 5 uses
  %i.jk = load ptr, ptr %i.iy, align 8, !tbaa !101
  %.not.i.i203 = icmp eq ptr %i.jj, %i.jk
  br i1 %.not.i.i203, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jj, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i8 0, i64 16, i1 false)
  %i.jm = load ptr, ptr %i.jc, align 8, !tbaa !105
  store ptr null, ptr %i.jc, align 8, !tbaa !105
  store ptr %i.jm, ptr %i.jl, align 8, !tbaa !105
  store ptr null, ptr %16, align 8, !tbaa !16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  store ptr %i.jn, ptr %i.ix, align 8, !tbaa !109
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit205

bb.bd:                                            ; preds = %bb.bb
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.jj, ptr noundef nonnull align 8 dereferenceable(16) %16)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit205 unwind label %bb.bk

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit205: ; preds = %bb.bc, %bb.bd
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !105 ; 8 uses
  %.not.i.i206 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i206, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit205
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 8 ; 4 uses
  %i.jq = load atomic i64, ptr %i.jp acquire, align 8 ; 2 uses
  %i.jr = icmp eq i64 %i.jq, 4294967297
  %i.js = trunc i64 %i.jq to i32                  ; 2 uses
  br i1 %i.jr, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
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
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210

bb.bg:                                            ; preds = %bb.be
  %i.ka = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i207 = icmp eq i8 %i.ka, 0
  br i1 %.not.i.i.i207, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kb = add nsw i32 %i.js, -1
  store i32 %i.kb, ptr %i.jp, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208

bb.bi:                                            ; preds = %bb.bg
  %i.kc = atomicrmw volatile add ptr %i.jp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i209 = phi i32 [ %i.js, %bb.bh ], [ %i.kc, %bb.bi ]
  %i.kd = icmp eq i32 %.0.i.i.i.i209, 1
  br i1 %i.kd, label %bb.bj, label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210, !prof !86

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jo) #22
  br label %_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210

_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit210: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backEOS3_.exit205, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i208, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %.critedge148

bb.bk:                                            ; preds = %bb.bd
  %i.ke = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22
  br label %bb.fa

.lr.ph:                                           ; preds = %.preheader451, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264
  %i.kf = phi i8 [ %i.nj, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264 ], [ %.pre532, %.preheader451 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.kg = trunc nuw i8 %i.kf to i1
  br i1 %i.kg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i211, label %_ZN5arrow6StatusD2Ev.exit223.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i211: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !367
  %i.kh = invoke noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #26
          to label %.noexc218 unwind label %bb.bn ; 3 uses

.noexc218:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i211
  store ptr %i.kh, ptr %5, align 8, !tbaa !244, !noalias !367
  store i64 32, ptr %i.ip, align 8, !tbaa !39, !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.kh, ptr noundef nonnull align 1 dereferenceable(32) @.str.23, i64 32, i1 false), !noalias !367
  store i64 32, ptr %i.iq, align 8, !tbaa !323, !noalias !367
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  store i8 0, ptr %i.ki, align 1, !tbaa !39, !noalias !367
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %17, ptr noundef nonnull readonly align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.bl unwind label %bb.bm

bb.bl:                                            ; preds = %.noexc218
  %i.kj = load ptr, ptr %5, align 8, !tbaa !244, !noalias !367 ; 2 uses
  %i.kk = icmp eq ptr %i.kj, %i.ip
  br i1 %i.kk, label %_ZN5arrow6StatusD2Ev.exit223, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i215

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i215: ; preds = %bb.bl
  %i.kl = load i64, ptr %i.ip, align 8, !tbaa !39, !noalias !367
  %i.km = add i64 %i.kl, 1
  call void @_ZdlPvm(ptr noundef %i.kj, i64 noundef %i.km) #24
  br label %_ZN5arrow6StatusD2Ev.exit223

bb.bm:                                            ; preds = %.noexc218
  %i.kn = landingpad { ptr, i32 }
          cleanup
  %i.ko = load ptr, ptr %5, align 8, !tbaa !244, !noalias !367 ; 2 uses
  %i.kp = icmp eq ptr %i.ko, %i.ip
  br i1 %i.kp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i213, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i212

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i212: ; preds = %bb.bm
  %i.kq = load i64, ptr %i.ip, align 8, !tbaa !39, !noalias !367
  %i.kr = add i64 %i.kq, 1
  call void @_ZdlPvm(ptr noundef %i.ko, i64 noundef %i.kr) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i213

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i213: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i212
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !367
  br label %.body219

_ZN5arrow6StatusD2Ev.exit223.thread:              ; preds = %.lr.ph
  store ptr null, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %_ZN5arrow6StatusD2Ev.exit227

_ZN5arrow6StatusD2Ev.exit223:                     ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i215
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !367
  %.pr433 = load ptr, ptr %17, align 8, !tbaa !142 ; 2 uses
  store ptr %.pr433, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.ks = icmp eq ptr %.pr433, null
  br i1 %i.ks, label %_ZN5arrow6StatusD2Ev.exit227, label %.critedge

bb.bn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i211
  %i.kt = landingpad { ptr, i32 }
          cleanup
  br label %.body219

.body219:                                         ; preds = %bb.bn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i213
  %.pn130 = phi { ptr, i32 } [ %i.kn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i213 ], [ %i.kt, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.fa

_ZN5arrow6StatusD2Ev.exit227:                     ; preds = %_ZN5arrow6StatusD2Ev.exit223, %_ZN5arrow6StatusD2Ev.exit223.thread
  %i.ku = load i64, ptr %i.is, align 8, !tbaa !342
  %i.kv = load ptr, ptr %i.ir, align 8, !tbaa !43
  %i.kw = getelementptr inbounds nuw [16 x i8], ptr %i.kv, i64 %i.ku
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !44 ; 4 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 24 ; 2 uses
  %i.kz = load atomic i64, ptr %i.ky seq_cst, align 8 ; 2 uses
  %i.la = icmp eq i64 %i.kz, -1
  br i1 %i.la, label %bb.bo, label %_ZNK5arrow9ArrayData12GetNullCountEv.exit232, !prof !86

bb.bo:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit227
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 40
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !13
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !16 ; 3 uses
  %.not.i229 = icmp eq ptr %i.ld, null
  br i1 %.not.i229, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
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
          to label %.noexc231 unwind label %bb.bs

.noexc231:                                        ; preds = %bb.bp
  %i.lp = sub nsw i64 %i.lf, %i.lo
  br label %bb.bq

bb.bq:                                            ; preds = %.noexc231, %bb.bo
  %.0.i230 = phi i64 [ %i.lp, %.noexc231 ], [ 0, %bb.bo ] ; 2 uses
  store atomic i64 %.0.i230, ptr %i.ky seq_cst, align 8
  br label %_ZNK5arrow9ArrayData12GetNullCountEv.exit232

_ZNK5arrow9ArrayData12GetNullCountEv.exit232:     ; preds = %bb.bq, %_ZN5arrow6StatusD2Ev.exit227
  %.1.i228 = phi i64 [ %.0.i230, %bb.bq ], [ %i.kz, %_ZN5arrow6StatusD2Ev.exit227 ]
  %.not132 = icmp eq i64 %.1.i228, 0
  br i1 %.not132, label %bb.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i234

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i234: ; preds = %_ZNK5arrow9ArrayData12GetNullCountEv.exit232
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.lq = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.lr = invoke noalias noundef nonnull dereferenceable(30) ptr @_Znwm(i64 noundef 30) #26
          to label %.noexc239 unwind label %bb.bt ; 3 uses

.noexc239:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i234
  store ptr %i.lr, ptr %18, align 8, !tbaa !244
  store i64 29, ptr %i.lq, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(29) %i.lr, ptr noundef nonnull align 1 dereferenceable(29) @.str.20, i64 29, i1 false)
  %i.ls = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i64 29, ptr %i.ls, align 8, !tbaa !323
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lr, i64 29
  store i8 0, ptr %i.lt, align 1, !tbaa !39
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.br unwind label %bb.bu

bb.br:                                            ; preds = %.noexc239
  %i.lu = load ptr, ptr %18, align 8, !tbaa !244  ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lq
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241: ; preds = %bb.br
  %i.lw = load i64, ptr %i.lq, align 8, !tbaa !39
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit243: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i241
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %.critedge

bb.bs:                                            ; preds = %bb.bp
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %bb.fa

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i234
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

bb.bu:                                            ; preds = %.noexc239
  %i.ma = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mb = load ptr, ptr %18, align 8, !tbaa !244  ; 2 uses
  %i.mc = icmp eq ptr %i.mb, %i.lq
  br i1 %i.mc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244: ; preds = %bb.bu
  %i.md = load i64, ptr %i.lq, align 8, !tbaa !39
  %i.me = add i64 %i.md, 1
  call void @_ZdlPvm(ptr noundef %i.mb, i64 noundef %i.me) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit246: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244, %bb.bt
  %.pn133 = phi { ptr, i32 } [ %i.lz, %bb.bt ], [ %i.ma, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i244 ], [ %i.ma, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  br label %bb.fa

bb.bv:                                            ; preds = %_ZNK5arrow9ArrayData12GetNullCountEv.exit232
  %i.mf = load i64, ptr %i.cx, align 8, !tbaa !341
  %i.mg = add i64 %i.mf, 1                        ; 3 uses
  store i64 %i.mg, ptr %i.cx, align 8, !tbaa !341
  %i.mh = load i8, ptr %i.h, align 8, !tbaa !326, !range !162, !noundef !163
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264, label %.preheader.i247

.preheader.i247:                                  ; preds = %bb.bv
  %i.mj = load ptr, ptr %i.it, align 8, !tbaa !340 ; 3 uses
  %i.mk = load ptr, ptr %i.iu, align 8
  %i.ml = ptrtoint ptr %i.mk to i64
  %i.mm = ptrtoint ptr %i.mj to i64
  %i.mn = sub i64 %i.ml, %i.mm
  %i.mo = sdiv exact i64 %i.mn, 56                ; 2 uses
  %.promoted.i249 = load i64, ptr %i.is, align 8, !tbaa !342
  br label %.peel.begin.i250

.peel.begin.i250:                                 ; preds = %bb.by, %.preheader.i247
  %.promoted912.i251 = phi i64 [ %.promoted.i249, %.preheader.i247 ], [ %.promoted911.lcssa.i259, %bb.by ] ; 3 uses
  %i.mp = phi i64 [ %i.mg, %.preheader.i247 ], [ %i.nh, %bb.by ] ; 2 uses
  %i.mq = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %.promoted912.i251 ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 8
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !343
  %i.mt = load ptr, ptr %i.mq, align 8, !tbaa !338 ; 2 uses
  %i.mu = ptrtoint ptr %i.ms to i64
  %i.mv = ptrtoint ptr %i.mt to i64
  %i.mw = sub i64 %i.mu, %i.mv
  %i.mx = ashr exact i64 %i.mw, 4
  %.not.peel.i252 = icmp ult i64 %i.mp, %i.mx
  br i1 %.not.peel.i252, label %.loopexit.i258, label %bb.bw

bb.bw:                                            ; preds = %.peel.begin.i250
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.my = add i64 %.promoted912.i251, 1           ; 3 uses
  store i64 %i.my, ptr %i.is, align 8, !tbaa !342
  %.not3.peel.i253 = icmp ult i64 %i.my, %i.mo
  br i1 %.not3.peel.i253, label %.peel.next.i255, label %.loopexit19.i254

.peel.next.i255:                                  ; preds = %bb.bw, %bb.bx
  %.promoted911.i256 = phi i64 [ %i.nd, %bb.bx ], [ %i.my, %bb.bw ] ; 3 uses
  %i.mz = getelementptr inbounds nuw [56 x i8], ptr %i.mj, i64 %.promoted911.i256 ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !343
  %i.nc = load ptr, ptr %i.mz, align 8, !tbaa !338 ; 2 uses
  %.not.not.i257 = icmp eq ptr %i.nb, %i.nc
  br i1 %.not.not.i257, label %bb.bx, label %.loopexit.i258

bb.bx:                                            ; preds = %.peel.next.i255
  store i64 0, ptr %i.cx, align 8, !tbaa !341
  %i.nd = add i64 %.promoted911.i256, 1           ; 3 uses
  store i64 %i.nd, ptr %i.is, align 8, !tbaa !342
  %exitcond528.not = icmp eq i64 %i.nd, %i.mo
  br i1 %exitcond528.not, label %.loopexit19.i254, label %.peel.next.i255, !llvm.loop !344

.loopexit19.i254:                                 ; preds = %bb.bw, %bb.bx
  store i8 1, ptr %i.h, align 8, !tbaa !326
  br label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264

.loopexit.i258:                                   ; preds = %.peel.next.i255, %.peel.begin.i250
  %i.ne = phi i64 [ %i.mp, %.peel.begin.i250 ], [ 0, %.peel.next.i255 ] ; 3 uses
  %.promoted911.lcssa.i259 = phi i64 [ %.promoted912.i251, %.peel.begin.i250 ], [ %.promoted911.i256, %.peel.next.i255 ]
  %.lcssa.i261 = phi ptr [ %i.mt, %.peel.begin.i250 ], [ %i.nc, %.peel.next.i255 ]
  %i.nf = getelementptr inbounds nuw [16 x i8], ptr %.lcssa.i261, i64 %i.ne
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !346
  %.not2.not.i262 = icmp eq i32 %i.ng, 3
  br i1 %.not2.not.i262, label %bb.by, label %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264

bb.by:                                            ; preds = %.loopexit.i258
  %i.nh = add nuw i64 %i.ne, 1                    ; 2 uses
  store i64 %i.nh, ptr %i.cx, align 8, !tbaa !341
  br label %.peel.begin.i250

_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264: ; preds = %.loopexit.i258, %bb.bv, %.loopexit19.i254
  %i.ni = phi i64 [ 0, %.loopexit19.i254 ], [ %i.mg, %bb.bv ], [ %i.ne, %.loopexit.i258 ] ; 2 uses
  %i.nj = phi i8 [ 1, %.loopexit19.i254 ], [ 1, %bb.bv ], [ 0, %.loopexit.i258 ] ; 2 uses
  %i.nk = icmp eq i64 %i.ni, 0
  br i1 %i.nk, label %.lr.ph, label %._crit_edge, !llvm.loop !370

._crit_edge:                                      ; preds = %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264, %.preheader451
  %i.nl = phi i64 [ %i.jh, %.preheader451 ], [ %i.ni, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264 ]
  %i.nm = phi i8 [ %.pre532, %.preheader451 ], [ %i.nj, %_ZN5arrow12_GLOBAL__N_112ViewDataImpl18AdjustInputPointerEv.exit264 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.nn = trunc nuw i8 %i.nm to i1
  br i1 %i.nn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i265, label %_ZN5arrow6StatusD2Ev.exit277.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i265: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !371
  %i.no = invoke noalias noundef nonnull dereferenceable(33) ptr @_Znwm(i64 noundef 33) #26
          to label %.noexc272 unwind label %bb.cb ; 3 uses

.noexc272:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i265
  store ptr %i.no, ptr %4, align 8, !tbaa !244, !noalias !371
  store i64 32, ptr %i.iv, align 8, !tbaa !39, !noalias !371
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.no, ptr noundef nonnull align 1 dereferenceable(32) @.str.23, i64 32, i1 false), !noalias !371
  store i64 32, ptr %i.iw, align 8, !tbaa !323, !noalias !371
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 32
  store i8 0, ptr %i.np, align 1, !tbaa !39, !noalias !371
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias nonnull writable align 8 %19, ptr noundef nonnull readonly align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.bz unwind label %bb.ca

bb.bz:                                            ; preds = %.noexc272
  %i.nq = load ptr, ptr %4, align 8, !tbaa !244, !noalias !371 ; 2 uses
  %i.nr = icmp eq ptr %i.nq, %i.iv
  br i1 %i.nr, label %_ZN5arrow6StatusD2Ev.exit277, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269: ; preds = %bb.bz
  %i.ns = load i64, ptr %i.iv, align 8, !tbaa !39, !noalias !371
  %i.nt = add i64 %i.ns, 1
  call void @_ZdlPvm(ptr noundef %i.nq, i64 noundef %i.nt) #24
  br label %_ZN5arrow6StatusD2Ev.exit277

bb.ca:                                            ; preds = %.noexc272
  %i.nu = landingpad { ptr, i32 }
          cleanup
  %i.nv = load ptr, ptr %4, align 8, !tbaa !244, !noalias !371 ; 2 uses
  %i.nw = icmp eq ptr %i.nv, %i.iv
  br i1 %i.nw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i267, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i266

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i266: ; preds = %bb.ca
  %i.nx = load i64, ptr %i.iv, align 8, !tbaa !39, !noalias !371
  %i.ny = add i64 %i.nx, 1
  call void @_ZdlPvm(ptr noundef %i.nv, i64 noundef %i.ny) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i267

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i267: ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i266
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !371
  br label %.body273

_ZN5arrow6StatusD2Ev.exit277.thread:              ; preds = %._crit_edge
  store ptr null, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %_ZN5arrow6StatusD2Ev.exit281

_ZN5arrow6StatusD2Ev.exit277:                     ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i269
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !371
  %.pr434 = load ptr, ptr %19, align 8, !tbaa !142 ; 2 uses
  store ptr %.pr434, ptr %0, align 8, !tbaa !142
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.nz = icmp eq ptr %.pr434, null
  br i1 %i.nz, label %_ZN5arrow6StatusD2Ev.exit277._ZN5arrow6StatusD2Ev.exit281_crit_edge, label %.critedge

_ZN5arrow6StatusD2Ev.exit277._ZN5arrow6StatusD2Ev.exit281_crit_edge: ; preds = %_ZN5arrow6StatusD2Ev.exit277
  %.pre533 = load i64, ptr %i.cx, align 8, !tbaa !341
  br label %_ZN5arrow6StatusD2Ev.exit281

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i265
  %i.oa = landingpad { ptr, i32 }
          cleanup
  br label %.body273

.body273:                                         ; preds = %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i267
  %.pn122 = phi { ptr, i32 } [ %i.nu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i267 ], [ %i.oa, %bb.cb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.fa

_ZN5arrow6StatusD2Ev.exit281:                     ; preds = %_ZN5arrow6StatusD2Ev.exit277._ZN5arrow6StatusD2Ev.exit281_crit_edge, %_ZN5arrow6StatusD2Ev.exit277.thread
  %i.ob = phi i64 [ %.pre533, %_ZN5arrow6StatusD2Ev.exit277._ZN5arrow6StatusD2Ev.exit281_crit_edge ], [ %i.nl, %_ZN5arrow6StatusD2Ev.exit277.thread ] ; 2 uses
  %i.oc = load i64, ptr %i.is, align 8, !tbaa !342 ; 2 uses
  %i.od = load ptr, ptr %i.it, align 8, !tbaa !340
  %i.oe = getelementptr inbounds nuw [56 x i8], ptr %i.od, i64 %i.oc ; 6 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !338
  %i.og = getelementptr inbounds nuw [16 x i8], ptr %i.of, i64 %i.ob ; 2 uses
  %i.oh = load i32, ptr %i.je, align 8, !tbaa !346 ; 2 uses
  %i.oi = load i32, ptr %i.og, align 8, !tbaa !346
  %i.oj = icmp eq i32 %i.oh, %i.oi
  br i1 %i.oj, label %bb.cc, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread

bb.cc:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit281
  %.not.i.i282 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i282, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread435

_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit: ; preds = %bb.cc
  %i.ok = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !374
  %i.om = getelementptr inbounds nuw i8, ptr %i.og, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !374
  %.not445 = icmp eq i64 %i.ol, %i.on
  br i1 %.not445, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread435, label %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread

_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread: ; preds = %_ZN5arrow6StatusD2Ev.exit281, %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  %i.oo = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 5 uses
  %i.op = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #26
          to label %.noexc289 unwind label %bb.ce ; 3 uses

.noexc289:                                        ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread
  store ptr %i.op, ptr %20, align 8, !tbaa !244
  store i64 20, ptr %i.oo, align 8, !tbaa !39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.op, ptr noundef nonnull align 1 dereferenceable(20) @.str.21, i64 20, i1 false)
  %i.oq = getelementptr inbounds nuw i8, ptr %20, i64 8
  store i64 20, ptr %i.oq, align 8, !tbaa !323
  %i.or = getelementptr inbounds nuw i8, ptr %i.op, i64 20
  store i8 0, ptr %i.or, align 1, !tbaa !39
  invoke fastcc void @_ZN5arrow12_GLOBAL__N_112ViewDataImpl11InvalidViewERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(105) %1, ptr noundef nonnull align 8 dereferenceable(32) %20)
          to label %bb.cd unwind label %bb.cf

bb.cd:                                            ; preds = %.noexc289
  %i.os = load ptr, ptr %20, align 8, !tbaa !244  ; 2 uses
  %i.ot = icmp eq ptr %i.os, %i.oo
  br i1 %i.ot, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %bb.cd
  %i.ou = load i64, ptr %i.oo, align 8, !tbaa !39
  %i.ov = add i64 %i.ou, 1
  call void @_ZdlPvm(ptr noundef %i.os, i64 noundef %i.ov) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %bb.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %.critedge

bb.ce:                                            ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread
  %i.ow = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

bb.cf:                                            ; preds = %.noexc289
  %i.ox = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oy = load ptr, ptr %20, align 8, !tbaa !244  ; 2 uses
  %i.oz = icmp eq ptr %i.oy, %i.oo
  br i1 %i.oz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %bb.cf
  %i.pa = load i64, ptr %i.oo, align 8, !tbaa !39
  %i.pb = add i64 %i.pa, 1
  call void @_ZdlPvm(ptr noundef %i.oy, i64 noundef %i.pb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %bb.cf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294, %bb.ce
  %.pn127 = phi { ptr, i32 } [ %i.ow, %bb.ce ], [ %i.ox, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294 ], [ %i.ox, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.fa

_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread435: ; preds = %bb.cc, %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit
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
  %.not.i297 = icmp eq ptr %i.pm, %i.pn
  br i1 %.not.i297, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread435
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 8
  %i.pp = load ptr, ptr %i.po, align 8, !tbaa !105 ; 2 uses
  %i.pq = load <2 x ptr>, ptr %i.pl, align 8, !tbaa !100
  store <2 x ptr> %i.pq, ptr %i.pm, align 8, !tbaa !100
  %.not.i.i.i.i.i298 = icmp eq ptr %i.pp, null
  br i1 %.not.i.i.i.i.i298, label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i300, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pp, i64 8 ; 3 uses
  %i.ps = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i.i.i.i299 = icmp eq i8 %i.ps, 0
  br i1 %.not.i.i.i.i.i.i299, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.pt = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pu = add nsw i32 %i.pt, 1
  store i32 %i.pu, ptr %i.pr, align 4, !tbaa !3
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i300

bb.cj:                                            ; preds = %bb.ch
  %i.pv = atomicrmw volatile add ptr %i.pr, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i301 = load ptr, ptr %i.ix, align 8, !tbaa !109
  br label %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i300

_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i300: ; preds = %bb.cj, %bb.ci, %bb.cg
  %i.pw = phi ptr [ %i.pm, %bb.cg ], [ %i.pm, %bb.ci ], [ %.pre.i301, %bb.cj ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  store ptr %i.px, ptr %i.ix, align 8, !tbaa !109
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit303

bb.ck:                                            ; preds = %_ZNK5arrow14DataTypeLayout10BufferSpecneERKS1_.exit.thread435
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr %i.pm, ptr noundef nonnull align 8 dereferenceable(16) %i.pl)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit303 unwind label %.loopexit.split-lp

_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit303: ; preds = %_ZSt12construct_atISt10shared_ptrIN5arrow6BufferEEJRKS3_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS7_DpOS8_.exit.i300, %bb.ck
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
  br i1 %i.qh, label %bb.cl, label %.loopexit

bb.cl:                                            ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow6BufferEESaIS3_EE9push_backERKS3_.exit303
  %i.qi = load i8, ptr %i.iz, align 8, !tbaa !375, !range !162, !noundef !163 ; 2 uses
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = getelementptr inbounds nuw i8, ptr %i.oe, i64 48
  %i.ql = load i8, ptr %i.qk, align 8, !tbaa !375, !range !162, !noundef !163 ; 2 uses
  %i.qm = icmp eq i8 %i.qi, %i.ql                 ; 2 uses
  %brmerge.i.not = and i1 %i.qm, %i.qj
  br i1 %brmerge.i.not, label %bb.cm, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit

bb.cm:                                            ; preds = %bb.cl
  %i.qn = getelementptr inbounds nuw i8, ptr %i.oe, i64 32
  %i.qo = load i32, ptr %i.ja, align 8, !tbaa !346 ; 2 uses
  %i.qp = load i32, ptr %i.qn, align 8, !tbaa !346
  %i.qq = icmp eq i32 %i.qo, %i.qp
  br i1 %i.qq, label %bb.cn, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread

bb.cn:                                            ; preds = %bb.cm
  %.not.i.i.i305 = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i.i305, label %bb.co, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread436

bb.co:                                            ; preds = %bb.cn
  %i.qr = load i64, ptr %i.jb, align 8, !tbaa !374
  %i.qs = getelementptr inbounds nuw i8, ptr %i.oe, i64 40
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !374
  %.not447 = icmp eq i64 %i.qr, %i.qt
  br i1 %.not447, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread436, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread

_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit: ; preds = %bb.cl
  br i1 %i.qm, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread436, label %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread

_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit.thread: ; preds = %bb.cm, %bb.co, %_ZStneIN5arrow14DataTypeLayout10BufferSpecES2_ENSt9enable_ifIXsr14is_convertibleIDTneclsr3stdE7declvalIRKT_EEclsr3stdE7declvalIRKT0_EEEbEE5valueEbE4typeERKSt8optionalIS4_ERKSD_IS7_E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #22
  %i.qu = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.qv = invoke noalias noundef nonnull dereferenceable(21) ptr @_Znwm(i64 noundef 21) #26
          to label %.noexc312 unwind label %bb.cq ; 3 uses

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
!370 = distinct !{!370, !172}
!371 = !{!372}
!372 = distinct !{!372, !373, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv: argument 0"}
!373 = distinct !{!373, !"_ZN5arrow12_GLOBAL__N_112ViewDataImpl19CheckInputAvailableEv"}
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
