Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Variable?download=true
inline.NumInlined: 1333
inline.NumDeleted: 679
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZL19PrivateAutoCompletePN12lldb_private10StackFrameEN4llvm9StringRefERKNS2_5TwineERKNS_12CompilerTypeERNS_17CompletionRequestE:bb.a
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #20, !inline_history !294
  %i.kp = load ptr, ptr %i.jv, align 8, !tbaa !22
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 24
  %i.kr = load ptr, ptr %i.kq, align 8
  call void %i.kr(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #20, !inline_history !294
  br i1 %i.kh, label %bb.br, label %.critedge.thread

bb.bo:                                            ; preds = %.thread.i.i234
  %i.ks = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i1.i.i235 = icmp eq i8 %i.ks, 0
  br i1 %.not.i.i.i1.i.i235, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kt = add nsw i32 %i.kk, -1
  store i32 %i.kt, ptr %i.jw, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236

bb.bq:                                            ; preds = %bb.bo
  %i.ku = atomicrmw volatile add ptr %i.jw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236: ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i.i.i237 = phi i32 [ %i.kk, %bb.bp ], [ %i.ku, %bb.bq ]
  %i.kv = icmp eq i32 %.0.i.i.i.i.i.i237, 1
  br i1 %i.kv, label %.split467, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit238, !prof !89

.split467:                                        ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.jv) #20
  br i1 %i.kh, label %bb.br, label %.critedge.thread

_ZNK12lldb_private12CompilerType7IsValidEv.exit238: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i236
  br i1 %i.kh, label %bb.br, label %.critedge.thread

bb.br:                                            ; preds = %.split468, %.split467, %_ZNK12lldb_private12CompilerType7IsValidEv.exit238
  switch i32 %i.f, label %.critedge.thread [
    i32 65536, label %bb.bs
    i32 16384, label %bb.bs
    i32 8, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br, %bb.br, %bb.br
  %.not482 = icmp eq i64 %2, 1
  br i1 %.not482, label %bb.bv, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.kw = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.kx = load i8, ptr %i.kw, align 1, !tbaa !28
  %.not = icmp eq i8 %i.kx, 0
  br i1 %.not, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.ky = add i64 %2, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #20
  %i.kz = getelementptr inbounds nuw i8, ptr %37, i64 32
  %i.la = getelementptr inbounds nuw i8, ptr %37, i64 33
  store i8 1, ptr %i.la, align 1, !tbaa !188
  store ptr @.str.24, ptr %37, align 8, !tbaa !28
  store i8 3, ptr %i.kz, align 8, !tbaa !187
  call void @_ZN4llvmplERKNS_5TwineES2_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Twine") align 8 %36, ptr noundef nonnull align 8 dereferenceable(34) %3, ptr noundef nonnull align 8 dereferenceable(34) %37)
  call fastcc void @_ZL19PrivateAutoCompletePN12lldb_private10StackFrameEN4llvm9StringRefERKNS2_5TwineERKNS_12CompilerTypeERNS_17CompletionRequestE(ptr noundef %0, ptr nonnull %i.kw, i64 %i.ky, ptr noundef nonnull align 8 dereferenceable(34) %36, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #20
  br label %.critedge.thread

bb.bv:                                            ; preds = %bb.bt, %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #20
  %i.lb = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 4 uses
  store ptr %i.lb, ptr %38, align 8, !tbaa !153
  %i.lc = getelementptr inbounds nuw i8, ptr %38, i64 8
  store i64 0, ptr %i.lc, align 8, !tbaa !155
  store i8 0, ptr %i.lb, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !341)
  call void @llvm.experimental.noalias.scope.decl(metadata !342)
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.le = load i8, ptr %i.ld, align 8, !tbaa !187, !noalias !343 ; 3 uses
  switch i8 %i.le, label %bb.bx [
    i8 0, label %_ZN4llvmplERKNS_5TwineES2_.exit256
    i8 1, label %bb.bw
  ]

bb.bw:                                            ; preds = %bb.bv
  store ptr @.str.24, ptr %39, align 8
  br label %_ZN4llvmplERKNS_5TwineES2_.exit256

bb.bx:                                            ; preds = %bb.bv
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 33
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !188, !noalias !343
  %i.lh = icmp eq i8 %i.lg, 1                     ; 3 uses
  %.sroa.05.0.copyload.i.i242 = load ptr, ptr %3, align 8, !noalias !343
  %.sroa.56.0..sroa_idx.i.i243 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.56.0.copyload.i.i244 = load i64, ptr %.sroa.56.0..sroa_idx.i.i243, align 8, !noalias !343
  %.014.i.i245 = select i1 %i.lh, i8 %i.le, i8 2
  %.sroa.05.0.i.i246 = select i1 %i.lh, ptr %.sroa.05.0.copyload.i.i242, ptr %3
  %.sroa.56.0.i.i247 = select i1 %i.lh, i64 %.sroa.56.0.copyload.i.i244, i64 undef
  store ptr %.sroa.05.0.i.i246, ptr %39, align 8, !alias.scope !343
  %.sroa.23.0..sroa_idx.i.i.i254 = getelementptr inbounds nuw i8, ptr %39, i64 8
  store i64 %.sroa.56.0.i.i247, ptr %.sroa.23.0..sroa_idx.i.i.i254, align 8, !tbaa !28, !alias.scope !343
  %i.li = getelementptr inbounds nuw i8, ptr %39, i64 16
  store ptr @.str.24, ptr %i.li, align 8, !alias.scope !343
  br label %_ZN4llvmplERKNS_5TwineES2_.exit256

_ZN4llvmplERKNS_5TwineES2_.exit256:               ; preds = %bb.bv, %bb.bw, %bb.bx
  %.sink625 = phi i8 [ %.014.i.i245, %bb.bx ], [ 3, %bb.bw ], [ %i.le, %bb.bv ]
  %.sink623 = phi i8 [ 3, %bb.bx ], [ 1, %bb.bw ], [ 1, %bb.bv ]
  %i.lj = getelementptr inbounds nuw i8, ptr %39, i64 32
  store i8 %.sink625, ptr %i.lj, align 8, !tbaa !189
  %i.lk = getelementptr inbounds nuw i8, ptr %39, i64 33
  store i8 %.sink623, ptr %i.lk, align 1, !tbaa !189
  call fastcc void @_ZL26PrivateAutoCompleteMembersPN12lldb_private10StackFrameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvm9StringRefERKNSA_5TwineERKNS_12CompilerTypeERNS_17CompletionRequestE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(32) %38, ptr nonnull %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(34) %39, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(104) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #20
  %i.ll = load ptr, ptr %38, align 8, !tbaa !157  ; 2 uses
  %i.lm = icmp eq ptr %i.ll, %i.lb
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit256
  %i.ln = load i64, ptr %i.lb, align 8, !tbaa !28
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.ll, i64 noundef %i.lo) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZN4llvmplERKNS_5TwineES2_.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #20
  br label %.critedge.thread

bb.by:                                            ; preds = %bb.aj
  %i.lp = sext i8 %i.ga to i32
  %i.lq = call i32 @isalpha(i32 noundef %i.lp) #22
  %.fr = freeze i32 %i.lq
  %.not484 = icmp eq i32 %.fr, 0
  br i1 %.not484, label %switch.early.test, label %bb.bz

switch.early.test:                                ; preds = %bb.by
  switch i8 %i.ga, label %.critedge.thread [
    i8 95, label %bb.bz
    i8 36, label %bb.bz
  ]

bb.bz:                                            ; preds = %switch.early.test, %switch.early.test, %bb.by
  %.not502 = icmp eq i64 %2, 1
  br i1 %.not502, label %._crit_edge.i.i.i.i.thread, label %.lr.ph

._crit_edge.i.i.i.i.thread:                       ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.lr = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 3 uses
  store ptr %i.lr, ptr %41, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %2, ptr %i.c, align 8, !tbaa !94
  %i.ls = load i8, ptr %1, align 1, !tbaa !28
  store i8 %i.ls, ptr %i.lr, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

.lr.ph:                                           ; preds = %bb.bz, %bb.ca
  %.0123492 = phi i64 [ %i.lx, %bb.ca ], [ 1, %bb.bz ] ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %1, i64 %.0123492
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !28  ; 2 uses
  %i.lv = sext i8 %i.lu to i32
  %i.lw = call i32 @isalnum(i32 noundef %i.lv) #22
  %.fr485 = freeze i32 %i.lw
  %.not486 = icmp eq i32 %.fr485, 0
  br i1 %.not486, label %switch.early.test140, label %bb.ca

switch.early.test140:                             ; preds = %.lr.ph
  switch i8 %i.lu, label %.thread469 [
    i8 95, label %bb.ca
    i8 36, label %bb.ca
  ]

bb.ca:                                            ; preds = %.lr.ph, %switch.early.test140, %switch.early.test140
  %i.lx = add nuw i64 %.0123492, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.lx, %2
  br i1 %exitcond.not, label %.thread469, label %.lr.ph

.thread469:                                       ; preds = %bb.ca, %switch.early.test140
  %.0123.lcssa = phi i64 [ %.0123492, %switch.early.test140 ], [ %2, %bb.ca ]
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #20
  %i.ly = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  store ptr %i.ly, ptr %41, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i64 %2, ptr %i.c, align 8, !tbaa !94
  %i.lz = icmp ugt i64 %2, 15
  br i1 %i.lz, label %._crit_edge.i.i.i.i.thread613, label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i.thread613:                    ; preds = %.thread469
  %i.ma = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0) #20 ; 2 uses
  store ptr %i.ma, ptr %41, align 8, !tbaa !157
  %i.mb = load i64, ptr %i.c, align 8, !tbaa !94
  store i64 %i.mb, ptr %i.ly, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.thread469, %._crit_edge.i.i.i.i.thread613
  %i.mc = phi ptr [ %i.ma, %._crit_edge.i.i.i.i.thread613 ], [ %i.ly, %.thread469 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mc, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit: ; preds = %._crit_edge.i.i.i.i.thread, %._crit_edge.i.i.i.i
  %.0123.lcssa609611 = phi i64 [ 1, %._crit_edge.i.i.i.i.thread ], [ %.0123.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.md = phi ptr [ %i.lr, %._crit_edge.i.i.i.i.thread ], [ %i.ly, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.me = load i64, ptr %i.c, align 8, !tbaa !94  ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %41, i64 8 ; 2 uses
  store i64 %i.me, ptr %i.mf, align 8, !tbaa !155
  %i.mg = load ptr, ptr %41, align 8, !tbaa !157
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 %i.me
  store i8 0, ptr %i.mh, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.mi = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 5 uses
  store ptr %i.mi, ptr %40, align 8, !tbaa !153
  %i.mj = load i64, ptr %i.mf, align 8, !tbaa !155
  %i.mk = load ptr, ptr %41, align 8, !tbaa !157  ; 2 uses
  %spec.select.i.i260 = call noundef i64 @llvm.umin.i64(i64 %.0123.lcssa609611, i64 %i.mj) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i64 %spec.select.i.i260, ptr %i.b, align 8, !tbaa !94
  %i.ml = icmp ugt i64 %spec.select.i.i260, 15
  br i1 %i.ml, label %bb.cb, label %._crit_edge.i.i261

bb.cb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.mm = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #20 ; 2 uses
  store ptr %i.mm, ptr %40, align 8, !tbaa !157
  %i.mn = load i64, ptr %i.b, align 8, !tbaa !94
  store i64 %i.mn, ptr %i.mi, align 8, !tbaa !28
  br label %._crit_edge.i.i261

._crit_edge.i.i261:                               ; preds = %bb.cb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit
  %i.mo = phi ptr [ %i.mm, %bb.cb ], [ %i.mi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit ] ; 2 uses
  switch i64 %spec.select.i.i260, label %bb.cd [
    i64 1, label %bb.cc
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit
  ]

bb.cc:                                            ; preds = %._crit_edge.i.i261
  %i.mp = load i8, ptr %i.mk, align 1, !tbaa !28
  store i8 %i.mp, ptr %i.mo, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit

bb.cd:                                            ; preds = %._crit_edge.i.i261
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mo, ptr align 1 %i.mk, i64 %spec.select.i.i260, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit: ; preds = %._crit_edge.i.i261, %bb.cc, %bb.cd
  %i.mq = load i64, ptr %i.b, align 8, !tbaa !94  ; 2 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  store i64 %i.mq, ptr %i.mr, align 8, !tbaa !155
  %i.ms = load ptr, ptr %40, align 8, !tbaa !157
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mq
  store i8 0, ptr %i.mt, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.mu = load ptr, ptr %41, align 8, !tbaa !157  ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.md
  br i1 %i.mv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit
  %i.mw = load i64, ptr %i.md, align 8, !tbaa !28
  %i.mx = add i64 %i.mw, 1
  call void @_ZdlPvm(ptr noundef %i.mu, i64 noundef %i.mx) #21
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_mm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i262
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #20
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 %.0123.lcssa609611 ; 2 uses
  %i.mz = sub nuw i64 %2, %.0123.lcssa609611      ; 4 uses
  %i.na = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 9 uses
  store ptr %i.na, ptr %42, align 8, !tbaa !153
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.mz, ptr %i.a, align 8, !tbaa !94
  %i.nb = icmp ugt i64 %i.mz, 15
  br i1 %i.nb, label %bb.ce, label %._crit_edge.i.i.i.i269

bb.ce:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263
  %i.nc = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #20 ; 2 uses
  store ptr %i.nc, ptr %42, align 8, !tbaa !157
  %i.nd = load i64, ptr %i.a, align 8, !tbaa !94
  store i64 %i.nd, ptr %i.na, align 8, !tbaa !28
  br label %._crit_edge.i.i.i.i269

._crit_edge.i.i.i.i269:                           ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263
  %i.ne = phi ptr [ %i.nc, %bb.ce ], [ %i.na, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i263 ] ; 2 uses
  switch i64 %i.mz, label %bb.cg [
    i64 1, label %bb.cf
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit270
  ]

bb.cf:                                            ; preds = %._crit_edge.i.i.i.i269
  %i.nf = load i8, ptr %i.my, align 1, !tbaa !28
  store i8 %i.nf, ptr %i.ne, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit270

bb.cg:                                            ; preds = %._crit_edge.i.i.i.i269
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ne, ptr nonnull align 1 %i.my, i64 %i.mz, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit270

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit270: ; preds = %._crit_edge.i.i.i.i269, %bb.cf, %bb.cg
  %i.ng = load i64, ptr %i.a, align 8, !tbaa !94  ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %42, i64 8 ; 6 uses
  store i64 %i.ng, ptr %i.nh, align 8, !tbaa !155
  %i.ni = load ptr, ptr %42, align 8, !tbaa !157
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 %i.ng
  store i8 0, ptr %i.nj, align 1, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.nk = load ptr, ptr %9, align 8, !tbaa !157   ; 6 uses
  %i.nl = icmp eq ptr %i.nk, %i.d
  %i.nm = load ptr, ptr %42, align 8, !tbaa !157  ; 5 uses
  %i.nn = icmp eq ptr %i.nm, %i.na                ; 2 uses
  br i1 %i.nl, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit270
  br i1 %i.nn, label %bb.ch, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IN4llvm9StringRefEvEERKT_RKS3_.exit270
  br i1 %i.nn, label %bb.ch, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.ch:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.no = load i64, ptr %i.nh, align 8, !tbaa !155 ; 3 uses
  %i.np = icmp ult i64 %i.no, 16
  call void @llvm.assume(i1 %i.np)
  switch i64 %i.no, label %bb.cj [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.ci
  ]

bb.ci:                                            ; preds = %bb.ch
  %i.nq = load i8, ptr %i.nm, align 1, !tbaa !28
  store i8 %i.nq, ptr %i.nk, align 1, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.cj:                                            ; preds = %bb.ch
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nk, ptr align 1 %i.nm, i64 %i.no, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.cj, %bb.ci, %bb.ch
  %i.nr = load i64, ptr %i.nh, align 8, !tbaa !155 ; 2 uses
  store i64 %i.nr, ptr %i.e, align 8, !tbaa !155
  %i.ns = load ptr, ptr %9, align 8, !tbaa !157
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.nr
  store i8 0, ptr %i.nt, align 1, !tbaa !28
  %.pre.i = load ptr, ptr %42, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.nm, ptr %9, align 8, !tbaa !157
  %i.nu = load <2 x i64>, ptr %i.nh, align 8, !tbaa !28
  store <2 x i64> %i.nu, ptr %i.e, align 8, !tbaa !28
  br label %bb.cl

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.nv = load i64, ptr %i.d, align 8, !tbaa !28
  store ptr %i.nm, ptr %9, align 8, !tbaa !157
  %i.nw = load <2 x i64>, ptr %i.nh, align 8, !tbaa !28
  store <2 x i64> %i.nw, ptr %i.e, align 8, !tbaa !28
  %.not.i271 = icmp eq ptr %i.nk, null
  br i1 %.not.i271, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.nk, ptr %42, align 8, !tbaa !157
  store i64 %i.nv, ptr %i.na, align 8, !tbaa !28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.cl:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.na, ptr %42, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.ck, %bb.cl
  %i.nx = phi ptr [ %i.nk, %bb.ck ], [ %i.na, %bb.cl ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.nh, align 8, !tbaa !155
  store i8 0, ptr %i.nx, align 1, !tbaa !28
  %i.ny = load ptr, ptr %42, align 8, !tbaa !157  ; 2 uses
  %i.nz = icmp eq ptr %i.ny, %i.na
  br i1 %i.nz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.oa = load i64, ptr %i.na, align 8, !tbaa !28
  %i.ob = add i64 %i.oa, 1
  call void @_ZdlPvm(ptr noundef %i.ny, i64 noundef %i.ob) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i272
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #20
  %i.oc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !tbaa !84, !noalias !344 ; 8 uses
  %.not.i.i.i.i.i.i275 = icmp eq ptr %i.od, null
  br i1 %.not.i.i.i.i.i.i275, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit286.thread, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 8 ; 7 uses
  %i.of = load atomic i32, ptr %i.oe monotonic, align 8, !noalias !344
  br label %bb.cn

bb.cn:                                            ; preds = %bb.co, %bb.cm
  %.06.i.i.i.i.i.i.i276 = phi i32 [ %i.of, %bb.cm ], [ %i.oj, %bb.co ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i.i277 = icmp eq i32 %.06.i.i.i.i.i.i.i276, 0
  br i1 %.not.not.not.i.not.i.i.i.i.i.i277, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit286.thread, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.og = add nsw i32 %.06.i.i.i.i.i.i.i276, 1
  %i.oh = cmpxchg weak ptr %i.oe, i32 %.06.i.i.i.i.i.i.i276, i32 %i.og acq_rel monotonic, align 8, !noalias !344 ; 2 uses
  %i.oi = extractvalue { i32, i1 } %i.oh, 1
  %i.oj = extractvalue { i32, i1 } %i.oh, 0
  br i1 %i.oi, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i278, label %bb.cn, !llvm.loop !5

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i278: ; preds = %bb.co
  %i.ok = load atomic i32, ptr %i.oe monotonic, align 8, !noalias !344
  %.not.i.i.i.i.i279 = icmp eq i32 %i.ok, 0
  br i1 %.not.i.i.i.i.i279, label %.thread.i.i282, label %_ZNKSt8weak_ptrIN12lldb_private10TypeSystemEE4lockEv.exit.i.i280

_ZNKSt8weak_ptrIN12lldb_private10TypeSystemEE4lockEv.exit.i.i280: ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i278
  %i.ol = load ptr, ptr %4, align 8, !tbaa !180, !noalias !344
  %.not.i.i281 = icmp eq ptr %i.ol, null
  br i1 %.not.i.i281, label %.thread.i.i282, label %bb.cp

bb.cp:                                            ; preds = %_ZNKSt8weak_ptrIN12lldb_private10TypeSystemEE4lockEv.exit.i.i280
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.on = load ptr, ptr %i.om, align 8, !tbaa !181
  %i.oo = icmp ne ptr %i.on, null
  br label %.thread.i.i282

.thread.i.i282:                                   ; preds = %bb.cp, %_ZNKSt8weak_ptrIN12lldb_private10TypeSystemEE4lockEv.exit.i.i280, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i278
  %i.op = phi i1 [ false, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i.i278 ], [ %i.oo, %bb.cp ], [ false, %_ZNKSt8weak_ptrIN12lldb_private10TypeSystemEE4lockEv.exit.i.i280 ] ; 3 uses
  %i.oq = load atomic i64, ptr %i.oe acquire, align 8 ; 2 uses
  %i.or = icmp eq i64 %i.oq, 4294967297
  %i.os = trunc i64 %i.oq to i32                  ; 2 uses
  br i1 %i.or, label %.split473, label %bb.cq

.split473:                                        ; preds = %.thread.i.i282
  store i32 0, ptr %i.oe, align 8, !tbaa !87
  %i.ot = getelementptr inbounds nuw i8, ptr %i.od, i64 12
  store i32 0, ptr %i.ot, align 4, !tbaa !88
  %i.ou = load ptr, ptr %i.od, align 8, !tbaa !22
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8
  call void %i.ow(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #20, !inline_history !294
  %i.ox = load ptr, ptr %i.od, align 8, !tbaa !22
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = load ptr, ptr %i.oy, align 8
  call void %i.oz(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #20, !inline_history !294
  br i1 %i.op, label %bb.ct, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit286.thread

bb.cq:                                            ; preds = %.thread.i.i282
  %i.pa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !28
  %.not.i.i.i1.i.i283 = icmp eq i8 %i.pa, 0
  br i1 %.not.i.i.i1.i.i283, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.pb = add nsw i32 %i.os, -1
  store i32 %i.pb, ptr %i.oe, align 8, !tbaa !29
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284

bb.cs:                                            ; preds = %bb.cq
  %i.pc = atomicrmw volatile add ptr %i.oe, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i.i.i285 = phi i32 [ %i.os, %bb.cr ], [ %i.pc, %bb.cs ]
  %i.pd = icmp eq i32 %.0.i.i.i.i.i.i285, 1
  br i1 %i.pd, label %.split472, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit286, !prof !89

.split472:                                        ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.od) #20
  br i1 %i.op, label %bb.ct, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit286.thread

_ZNK12lldb_private12CompilerType7IsValidEv.exit286: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i284
  br i1 %i.op, label %bb.ct, label %_ZNK12lldb_private12CompilerType7IsValidEv.exit286.thread
end_hunk_0
