inline.NumInlined: 5280
inline.NumDeleted: 463
loop-unroll.NumCompletelyUnrolled: 150
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 158
begin_hunk_0_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !122

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !123

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !124

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !125

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_0
begin_hunk_1_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !140

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !141

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !142

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !143

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_1
begin_hunk_2_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !154

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !155

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !156

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !157

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_2
begin_hunk_3_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !168

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !169

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !170

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !171

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl12ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_3
begin_hunk_4_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !182

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !183

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !184

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !185

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl192ELl192ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_4
begin_hunk_5_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !196

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !197

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !198

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !199

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl4ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_5
begin_hunk_6_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !210

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !211

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !212

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !213

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_6
begin_hunk_7_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !224

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !225

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !226

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !227

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_7
begin_hunk_8_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !238

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !239

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !240

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !241

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl160ELl20ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_8
begin_hunk_9_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !252

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !253

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !254

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !255

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_9
begin_hunk_10_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !266

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !267

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !268

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !269

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl128ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_10
begin_hunk_11_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !280

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !281

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !282

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !283

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_11
begin_hunk_12_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !294

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !295

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !296

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !297

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_12
begin_hunk_13_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !308

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !309

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !310

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !311

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_13
begin_hunk_14_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !322

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !323

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !324

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !325

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl64ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_14
begin_hunk_15_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !336

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !337

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !338

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !339

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl40ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_15
begin_hunk_16_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !350

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !351

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !352

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !353

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl160ELl80ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_16
begin_hunk_17_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !364

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !365

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !366

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !367

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_17
begin_hunk_18_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !378

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !379

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !380

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !381

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl128ELl32ELl32ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_18
begin_hunk_19_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !392

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !393

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !394

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !395

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl8ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_19
begin_hunk_20_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !406

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !407

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !408

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !409

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl16ELl16ELl8ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_20
begin_hunk_21_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !420

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !421

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !422

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !423

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl16ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_21
begin_hunk_22_@_Z24verifyIndex2LevelDecoderIN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %i.jq = icmp eq ptr %i.jo, %i.jp
  br i1 %i.jq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439: ; preds = %bb.bp
  %i.jr = load i64, ptr %i.jp, align 8, !tbaa !17
  %i.js = add i64 %i.jr, 1
  call void @_ZdlPvm(ptr noundef %i.jo, i64 noundef %i.js) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440: ; preds = %bb.bp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i439
  call void @_ZdlPvm(ptr noundef nonnull %i.jn, i64 noundef 32) #23
  br label %bb.bq

bb.bq:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i440, %.critedge303
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jt = load float, ptr %i.im, align 4, !tbaa !74
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0592.0, i64 %.02351049
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jt, float noundef %i.jv)
          to label %bb.br unwind label %bb.bt

bb.br:                                            ; preds = %bb.bq
  %i.jw = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jx = trunc nuw i8 %i.jw to i1
  br i1 %i.jx, label %.critedge305, label %bb.bu

bb.bs:                                            ; preds = %_ZN7testing7MessageD2Ev.exit437, %bb.be
  %.pn254.pn.pn = phi { ptr, i32 } [ %.pn254.pn, %_ZN7testing7MessageD2Ev.exit437 ], [ %i.is, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

bb.bt:                                            ; preds = %bb.bq
  %i.jy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

bb.bu:                                            ; preds = %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bv unwind label %bb.ca

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jz = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i443 = icmp eq ptr %i.jz, null
  br i1 %.not.i.i443, label %_ZNK7testing15AssertionResult15failure_messageEv.exit444, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit444

_ZNK7testing15AssertionResult15failure_messageEv.exit444: ; preds = %bb.bw, %bb.bv
  %i.kb = phi ptr [ %i.ka, %bb.bw ], [ @.str.20, %bb.bv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 221, ptr noundef %i.kb)
          to label %bb.bx unwind label %bb.cb

bb.bx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.by unwind label %bb.cc

bb.by:                                            ; preds = %bb.bx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kc = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i445 = icmp eq ptr %i.kc, null
  br i1 %.not.i.i445, label %_ZN7testing7MessageD2Ev.exit447, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446: ; preds = %bb.by
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !24
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.kf = load ptr, ptr %i.ke, align 8
  call void %i.kf(ptr noundef nonnull align 8 dereferenceable(128) %i.kc) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit447

_ZN7testing7MessageD2Ev.exit447:                  ; preds = %bb.by, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i446
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.kg = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i448 = icmp eq ptr %i.kg, null
  br i1 %.not.i.i448, label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing7MessageD2Ev.exit447
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !18 ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 16 ; 2 uses
  %i.kj = icmp eq ptr %i.kh, %i.ki
  br i1 %i.kj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449: ; preds = %bb.bz
  %i.kk = load i64, ptr %i.ki, align 8, !tbaa !17
  %i.kl = add i64 %i.kk, 1
  call void @_ZdlPvm(ptr noundef %i.kh, i64 noundef %i.kl) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i449
  call void @_ZdlPvm(ptr noundef nonnull %i.kg, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit547.thread

_ZNSt6vectorIfSaIfEED2Ev.exit547.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i450, %_ZN7testing7MessageD2Ev.exit447
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.dw

bb.ca:                                            ; preds = %bb.bu
  %i.km = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit455

bb.cb:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit444
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cd

bb.cc:                                            ; preds = %bb.bx
  %i.ko = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.pn258 = phi { ptr, i32 } [ %i.ko, %bb.cc ], [ %i.kn, %bb.cb ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.kp = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i453 = icmp eq ptr %i.kp, null
  br i1 %.not.i.i453, label %_ZN7testing7MessageD2Ev.exit455, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454: ; preds = %bb.cd
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !24
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 8
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(128) %i.kp) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit455

_ZN7testing7MessageD2Ev.exit455:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454, %bb.cd, %bb.ca
  %.pn258.pn = phi { ptr, i32 } [ %i.km, %bb.ca ], [ %.pn258, %bb.cd ], [ %.pn258, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i454 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561.thread

.critedge305:                                     ; preds = %bb.br
  %i.kt = load ptr, ptr %i.gj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i456 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i456, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %.critedge305
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !18 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %i.kw = icmp eq ptr %i.ku, %i.kv
  br i1 %i.kw, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457: ; preds = %bb.ce
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !17
  %i.ky = add i64 %i.kx, 1
  call void @_ZdlPvm(ptr noundef %i.ku, i64 noundef %i.ky) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i457
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef 32) #23
  br label %bb.cf

bb.cf:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i458, %.critedge305
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kz = add nuw i64 %.02351049, 1               ; 2 uses
  %exitcond1094.not = icmp eq i64 %i.kz, %1
  br i1 %exitcond1094.not, label %.critedge307, label %.lr.ph1051, !llvm.loop !435

_ZNSt6vectorIfSaIfEED2Ev.exit561.thread:          ; preds = %bb.bt, %_ZN7testing7MessageD2Ev.exit455
  %.pn258.pn.pn = phi { ptr, i32 } [ %.pn258.pn, %_ZN7testing7MessageD2Ev.exit455 ], [ %i.jy, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.ec

.critedge307:                                     ; preds = %bb.cf, %bb.bc
  %i.la = add i64 %.02391054, 2                   ; 2 uses
  %.not266 = icmp ult i64 %i.la, %0
  br i1 %.not266, label %.preheader1009, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461, !llvm.loop !436

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461: ; preds = %.critedge307, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit406
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %i.lb = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.lc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc469 unwind label %bb.cg ; 4 uses

.noexc469:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.lc, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %1 ; 2 uses
  %i.le = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lb) #24
          to label %.noexc479 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc479:                                        ; preds = %.noexc469
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.le, i8 0, i64 %i.lb, i1 false), !tbaa !74
  %i.lf = getelementptr inbounds nuw [4 x i8], ptr %i.le, i64 %1
  %i.lg = ptrtoint ptr %i.lf to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480:         ; preds = %.noexc479, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461
  %.sroa.12588.0829 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.ld, %.noexc479 ] ; 3 uses
  %.sroa.0582.0825 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lc, %.noexc479 ] ; 9 uses
  %.sroa.0574.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.le, %.noexc479 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461 ], [ %i.lg, %.noexc479 ] ; 2 uses
  %i.lh = urem i64 %0, 3
  %i.li = sub nuw i64 %0, %i.lh
  %.not1067 = icmp ult i64 %0, 3
  br i1 %.not1067, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit480
  %i.lj = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.lk = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.ll = fdiv x86_fp80 %i.lj, %i.lk
  %i.lm = fptoui x86_fp80 %i.ll to i64            ; 2 uses
  %i.ln = add i64 %i.lm, 23
  %i.lo = udiv i64 %i.ln, %i.lm
  %spec.select.i.i.i.i481 = call i64 @llvm.umax.i64(i64 %i.lo, i64 1) ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1233 = icmp ult i64 %1, 4
  %n.vec1235 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1242 = icmp eq i64 %1, %n.vec1235
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge315
  %.02211063 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ra, %.critedge315 ] ; 4 uses
  %.sroa.0669.31062 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.nk, %.critedge315 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader

select.unfold.i.i.i.i483.preheader:               ; preds = %.lr.ph1056, %middle.block1241, %.preheader
  br label %select.unfold.i.i.i.i483

.lr.ph1056.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1233, label %.lr.ph1056.preheader1244, label %vector.body1236

vector.body1236:                                  ; preds = %.lr.ph1056.preheader, %vector.body1236
  %index1237 = phi i64 [ %index.next1239, %vector.body1236 ], [ 0, %.lr.ph1056.preheader ] ; 4 uses
  %vec.ind1238 = phi <4 x i64> [ %vec.ind.next1240, %vector.body1236 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1056.preheader ] ; 2 uses
  %i.lr = add nuw <4 x i64> %vec.ind1238, splat (i64 1) ; 2 uses
  %i.ls = mul <4 x i64> %i.lr, %i.lr
  %i.lt = uitofp <4 x i64> %i.ls to <4 x float>   ; 3 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lu, align 4, !tbaa !74
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lv, align 4, !tbaa !74
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %index1237
  store <4 x float> %i.lt, ptr %i.lw, align 4, !tbaa !74
  %index.next1239 = add nuw i64 %index1237, 4     ; 2 uses
  %vec.ind.next1240 = add nuw <4 x i64> %vec.ind1238, splat (i64 4)
  %i.lx = icmp eq i64 %index.next1239, %n.vec1235
  br i1 %i.lx, label %middle.block1241, label %vector.body1236, !llvm.loop !437

middle.block1241:                                 ; preds = %vector.body1236
  br i1 %cmp.n1242, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056.preheader1244

.lr.ph1056.preheader1244:                         ; preds = %.lr.ph1056.preheader, %middle.block1241
  %.02201055.ph = phi i64 [ 0, %.lr.ph1056.preheader ], [ %n.vec1235, %middle.block1241 ]
  br label %.lr.ph1056

bb.cg:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i461.thread
  %i.ly = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit561

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc469
  %i.lz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.ch:                                            ; preds = %select.unfold.i.i.i.i483
  %i.ma = fdiv float %i.mh, %i.mk                 ; 2 uses
  %i.mb = fcmp ult float %i.ma, 1.000000e+00
  br i1 %i.mb, label %bb.cj, label %bb.ci, !prof !78

select.unfold.i.i.i.i483:                         ; preds = %select.unfold.i.i.i.i483.preheader, %select.unfold.i.i.i.i483
  %.023.i.i.i.i484 = phi i64 [ %i.ml, %select.unfold.i.i.i.i483 ], [ %spec.select.i.i.i.i481, %select.unfold.i.i.i.i483.preheader ]
  %.01422.i.i.i.i485 = phi float [ %i.mk, %select.unfold.i.i.i.i483 ], [ 1.000000e+00, %select.unfold.i.i.i.i483.preheader ] ; 2 uses
  %.01521.i.i.i.i486 = phi float [ %i.mh, %select.unfold.i.i.i.i483 ], [ 0.000000e+00, %select.unfold.i.i.i.i483.preheader ]
  %i.mc = phi i64 [ %i.me, %select.unfold.i.i.i.i483 ], [ %.sroa.0669.31062, %select.unfold.i.i.i.i483.preheader ]
  %i.md = mul nuw nsw i64 %i.mc, 16807
  %i.me = urem i64 %i.md, 2147483647              ; 3 uses
  %i.mf = add nsw i64 %i.me, -1
  %i.mg = uitofp i64 %i.mf to float
  %i.mh = call float @llvm.fmuladd.f32(float %i.mg, float %.01422.i.i.i.i485, float %.01521.i.i.i.i486) ; 2 uses
  %i.mi = fpext float %.01422.i.i.i.i485 to x86_fp80
  %i.mj = fmul x86_fp80 %i.mi, f0x401DFFFFFFFC00000000
  %i.mk = fptrunc x86_fp80 %i.mj to float         ; 2 uses
  %i.ml = add i64 %.023.i.i.i.i484, -1            ; 2 uses
  %.not.i.i.i.i487 = icmp eq i64 %i.ml, 0
  br i1 %.not.i.i.i.i487, label %bb.ch, label %select.unfold.i.i.i.i483, !llvm.loop !112

bb.ci:                                            ; preds = %bb.ch
  br label %bb.cj

.lr.ph1056:                                       ; preds = %.lr.ph1056.preheader1244, %.lr.ph1056
  %.02201055 = phi i64 [ %i.mm, %.lr.ph1056 ], [ %.02201055.ph, %.lr.ph1056.preheader1244 ] ; 4 uses
  %i.mm = add nuw i64 %.02201055, 1               ; 4 uses
  %i.mn = mul i64 %i.mm, %i.mm
  %i.mo = uitofp i64 %i.mn to float               ; 3 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.02201055
  store float %i.mo, ptr %i.mp, align 4, !tbaa !74
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.02201055
  store float %i.mo, ptr %i.mq, align 4, !tbaa !74
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0574.0, i64 %.02201055
  store float %i.mo, ptr %i.mr, align 4, !tbaa !74
  %exitcond1095.not = icmp eq i64 %i.mm, %1
  br i1 %exitcond1095.not, label %select.unfold.i.i.i.i483.preheader, label %.lr.ph1056, !llvm.loop !438

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.016.i.i.i.i488 = phi float [ f0x3F7FFFFF, %bb.ci ], [ %i.ma, %bb.ch ]
  br label %select.unfold.i.i.i.i492

bb.ck:                                            ; preds = %select.unfold.i.i.i.i492
  %i.ms = fadd float %.016.i.i.i.i488, 0.000000e+00 ; 3 uses
  %i.mt = fdiv float %i.na, %i.nd                 ; 2 uses
  %i.mu = fcmp ult float %i.mt, 1.000000e+00
  br i1 %i.mu, label %bb.cm, label %bb.cl, !prof !78

select.unfold.i.i.i.i492:                         ; preds = %select.unfold.i.i.i.i492, %bb.cj
  %.023.i.i.i.i493 = phi i64 [ %spec.select.i.i.i.i481, %bb.cj ], [ %i.ne, %select.unfold.i.i.i.i492 ]
  %.01422.i.i.i.i494 = phi float [ 1.000000e+00, %bb.cj ], [ %i.nd, %select.unfold.i.i.i.i492 ] ; 2 uses
  %.01521.i.i.i.i495 = phi float [ 0.000000e+00, %bb.cj ], [ %i.na, %select.unfold.i.i.i.i492 ]
  %i.mv = phi i64 [ %i.me, %bb.cj ], [ %i.mx, %select.unfold.i.i.i.i492 ]
  %i.mw = mul nuw nsw i64 %i.mv, 16807
  %i.mx = urem i64 %i.mw, 2147483647              ; 3 uses
  %i.my = add nsw i64 %i.mx, -1
  %i.mz = uitofp i64 %i.my to float
  %i.na = call float @llvm.fmuladd.f32(float %i.mz, float %.01422.i.i.i.i494, float %.01521.i.i.i.i495) ; 2 uses
  %i.nb = fpext float %.01422.i.i.i.i494 to x86_fp80
  %i.nc = fmul x86_fp80 %i.nb, f0x401DFFFFFFFC00000000
  %i.nd = fptrunc x86_fp80 %i.nc to float         ; 2 uses
  %i.ne = add i64 %.023.i.i.i.i493, -1            ; 2 uses
  %.not.i.i.i.i496 = icmp eq i64 %i.ne, 0
  br i1 %.not.i.i.i.i496, label %bb.ck, label %select.unfold.i.i.i.i492, !llvm.loop !112

bb.cl:                                            ; preds = %bb.ck
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.016.i.i.i.i497 = phi float [ f0x3F7FFFFF, %bb.cl ], [ %i.mt, %bb.ck ]
  br label %select.unfold.i.i.i.i501

bb.cn:                                            ; preds = %select.unfold.i.i.i.i501
  %i.nf = fadd float %.016.i.i.i.i497, 0.000000e+00 ; 3 uses
  %i.ng = fdiv float %i.nn, %i.nq                 ; 2 uses
  %i.nh = fcmp ult float %i.ng, 1.000000e+00
  br i1 %i.nh, label %bb.cp, label %bb.co, !prof !78

select.unfold.i.i.i.i501:                         ; preds = %select.unfold.i.i.i.i501, %bb.cm
  %.023.i.i.i.i502 = phi i64 [ %spec.select.i.i.i.i481, %bb.cm ], [ %i.nr, %select.unfold.i.i.i.i501 ]
  %.01422.i.i.i.i503 = phi float [ 1.000000e+00, %bb.cm ], [ %i.nq, %select.unfold.i.i.i.i501 ] ; 2 uses
  %.01521.i.i.i.i504 = phi float [ 0.000000e+00, %bb.cm ], [ %i.nn, %select.unfold.i.i.i.i501 ]
  %i.ni = phi i64 [ %i.mx, %bb.cm ], [ %i.nk, %select.unfold.i.i.i.i501 ]
  %i.nj = mul nuw nsw i64 %i.ni, 16807
  %i.nk = urem i64 %i.nj, 2147483647              ; 3 uses
  %i.nl = add nsw i64 %i.nk, -1
  %i.nm = uitofp i64 %i.nl to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %.01422.i.i.i.i503, float %.01521.i.i.i.i504) ; 2 uses
  %i.no = fpext float %.01422.i.i.i.i503 to x86_fp80
  %i.np = fmul x86_fp80 %i.no, f0x401DFFFFFFFC00000000
  %i.nq = fptrunc x86_fp80 %i.np to float         ; 2 uses
  %i.nr = add i64 %.023.i.i.i.i502, -1            ; 2 uses
  %.not.i.i.i.i505 = icmp eq i64 %i.nr, 0
  br i1 %.not.i.i.i.i505, label %bb.cn, label %select.unfold.i.i.i.i501, !llvm.loop !112

bb.co:                                            ; preds = %bb.cn
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %.016.i.i.i.i506 = phi float [ f0x3F7FFFFF, %bb.co ], [ %i.ng, %bb.cn ]
  %i.ns = fadd float %.016.i.i.i.i506, 0.000000e+00 ; 3 uses
  %i.nt = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nu = mul i64 %.02211063, %i.z                ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nu
  %i.nw = add nuw i64 %.02211063, 1
  %i.nx = mul i64 %i.nw, %i.z                     ; 3 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.nx
  %i.nz = add i64 %.02211063, 2
  %i.oa = mul i64 %i.nz, %i.z                     ; 3 uses
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nt, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.nv, float noundef %i.ms, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ny, float noundef %i.nf, ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ob, float noundef %i.ns, ptr noundef %.sroa.0582.0825)
  %i.oc = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nu
  %i.oe = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.nx
  %i.of = getelementptr inbounds nuw i8, ptr %i.oc, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5accumEPKfS4_PKhfS6_fS6_fPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.od, float noundef %i.ms, ptr noundef %i.oe, float noundef %i.nf, ptr noundef %i.of, float noundef %i.ns, ptr noundef %.sroa.0574.0)
  %i.og = load ptr, ptr %3, align 8, !tbaa !36
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 %i.nu
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oh, float noundef %i.ms, ptr noundef %.sroa.0612.0)
  %i.oi = load ptr, ptr %3, align 8, !tbaa !36
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.nx
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.oj, float noundef %i.nf, ptr noundef %.sroa.0612.0)
  %i.ok = load ptr, ptr %3, align 8, !tbaa !36
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 %i.oa
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl64ELl64ELl8ELl16ELl8EE5accumEPKfS4_PKhfPf(ptr noundef %.1706, ptr noundef %.1, ptr noundef %i.ol, float noundef %i.ns, ptr noundef %.sroa.0612.0)
  br i1 %.not.i.i.i.i, label %.critedge315, label %.lr.ph1061

.lr.ph1061:                                       ; preds = %bb.cp, %bb.ds
  %.01059 = phi i64 [ %i.qz, %bb.ds ], [ 0, %bb.cp ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0612.0, i64 %.01059 ; 2 uses
  %i.on = load float, ptr %i.om, align 4, !tbaa !74
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0582.0825, i64 %.01059
  %i.op = load float, ptr %i.oo, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.on, float noundef %i.op)
          to label %bb.cq unwind label %bb.cr

end_hunk_22
begin_hunk_23_@_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i452: ; preds = %bb.bh
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !17
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i452
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef 32) #23
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453, %.critedge318
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jb = load float, ptr %i.hu, align 4, !tbaa !74
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0605.0, i64 %.02491027
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jb, float noundef %i.jd)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.je = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %.critedge320, label %bb.bm

bb.bk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit450, %bb.aw
  %.pn269.pn.pn = phi { ptr, i32 } [ %.pn269.pn, %_ZN7testing7MessageD2Ev.exit450 ], [ %i.ia, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574

bb.bl:                                            ; preds = %bb.bi
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574.thread

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jh = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 2 uses
  %.not.i.i456 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i456, label %_ZNK7testing15AssertionResult15failure_messageEv.exit457, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit457

_ZNK7testing15AssertionResult15failure_messageEv.exit457: ; preds = %bb.bo, %bb.bn
  %i.jj = phi ptr [ %i.ji, %bb.bo ], [ @.str.20, %bb.bn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 665, ptr noundef %i.jj)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit457
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.jk = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i458 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i458, label %_ZN7testing7MessageD2Ev.exit460, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459: ; preds = %bb.bq
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit460

_ZN7testing7MessageD2Ev.exit460:                  ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.jo = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 4 uses
  %.not.i.i461 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i461, label %_ZNSt6vectorIfSaIfEED2Ev.exit560.thread, label %bb.br

bb.br:                                            ; preds = %_ZN7testing7MessageD2Ev.exit460
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !18 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462: ; preds = %bb.br
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !17
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit560.thread

_ZNSt6vectorIfSaIfEED2Ev.exit560.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, %_ZN7testing7MessageD2Ev.exit460
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.do

bb.bs:                                            ; preds = %bb.bm
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit468

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit457
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bp
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn273 = phi { ptr, i32 } [ %i.jw, %bb.bu ], [ %i.jv, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.jx = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i466 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i466, label %_ZN7testing7MessageD2Ev.exit468, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467: ; preds = %bb.bv
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit468

_ZN7testing7MessageD2Ev.exit468:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467, %bb.bv, %bb.bs
  %.pn273.pn = phi { ptr, i32 } [ %i.ju, %bb.bs ], [ %.pn273, %bb.bv ], [ %.pn273, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574.thread

.critedge320:                                     ; preds = %bb.bj
  %i.kb = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 4 uses
  %.not.i.i469 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i469, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.critedge320
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !18 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i470: ; preds = %bb.bw
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !17
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i470
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef 32) #23
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471, %.critedge320
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kh = add nuw i64 %.02491027, 1               ; 2 uses
  %exitcond1072.not = icmp eq i64 %i.kh, %1
  br i1 %exitcond1072.not, label %.critedge322, label %.lr.ph1029, !llvm.loop !449

_ZNSt6vectorIfSaIfEED2Ev.exit574.thread:          ; preds = %bb.bl, %_ZN7testing7MessageD2Ev.exit468
  %.pn273.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %_ZN7testing7MessageD2Ev.exit468 ], [ %i.jg, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.du

.critedge322:                                     ; preds = %bb.bx, %bb.au
  %i.ki = add i64 %.02531032, 2                   ; 2 uses
  %.not281 = icmp ult i64 %i.ki, %0
  br i1 %.not281, label %.preheader987, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474, !llvm.loop !450

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474: ; preds = %.critedge322, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit419
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474
  %i.kj = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #24
          to label %.noexc482 unwind label %bb.by ; 4 uses

.noexc482:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kk, i8 0, i64 %i.kj, i1 false), !tbaa !74
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %1 ; 2 uses
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #24
          to label %.noexc492 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc492:                                        ; preds = %.noexc482
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.km, i8 0, i64 %i.kj, i1 false), !tbaa !74
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %1
  %i.ko = ptrtoint ptr %i.kn to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493:         ; preds = %.noexc492, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474
  %.sroa.12601.0807 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.kl, %.noexc492 ] ; 3 uses
  %.sroa.0595.0803 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.kk, %.noexc492 ] ; 9 uses
  %.sroa.0587.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.km, %.noexc492 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.ko, %.noexc492 ] ; 2 uses
  %i.kp = urem i64 %0, 3
  %i.kq = sub nuw i64 %0, %i.kp
  %.not1045 = icmp ult i64 %0, 3
  br i1 %.not1045, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493
  %i.kr = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.ks = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.kt = fdiv x86_fp80 %i.kr, %i.ks
  %i.ku = fptoui x86_fp80 %i.kt to i64            ; 2 uses
  %i.kv = add i64 %i.ku, 23
  %i.kw = udiv i64 %i.kv, %i.ku
  %spec.select.i.i.i.i494 = call i64 @llvm.umax.i64(i64 %i.kw, i64 1) ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1203 = icmp ult i64 %1, 4
  %n.vec1205 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1212 = icmp eq i64 %1, %n.vec1205
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge330
  %.02351041 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.qi, %.critedge330 ] ; 4 uses
  %.sroa.0682.31040 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.ms, %.critedge330 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i496.preheader, label %.lr.ph1034.preheader

select.unfold.i.i.i.i496.preheader:               ; preds = %.lr.ph1034, %middle.block1211, %.preheader
  br label %select.unfold.i.i.i.i496

.lr.ph1034.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1203, label %.lr.ph1034.preheader1214, label %vector.body1206

vector.body1206:                                  ; preds = %.lr.ph1034.preheader, %vector.body1206
  %index1207 = phi i64 [ %index.next1209, %vector.body1206 ], [ 0, %.lr.ph1034.preheader ] ; 4 uses
  %vec.ind1208 = phi <4 x i64> [ %vec.ind.next1210, %vector.body1206 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1034.preheader ] ; 2 uses
  %i.kz = add nuw <4 x i64> %vec.ind1208, splat (i64 1) ; 2 uses
  %i.la = mul <4 x i64> %i.kz, %i.kz
  %i.lb = uitofp <4 x i64> %i.la to <4 x float>   ; 3 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0625.0, i64 %index1207
  store <4 x float> %i.lb, ptr %i.lc, align 4, !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0595.0803, i64 %index1207
  store <4 x float> %i.lb, ptr %i.ld, align 4, !tbaa !74
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0587.0, i64 %index1207
  store <4 x float> %i.lb, ptr %i.le, align 4, !tbaa !74
  %index.next1209 = add nuw i64 %index1207, 4     ; 2 uses
  %vec.ind.next1210 = add nuw <4 x i64> %vec.ind1208, splat (i64 4)
  %i.lf = icmp eq i64 %index.next1209, %n.vec1205
  br i1 %i.lf, label %middle.block1211, label %vector.body1206, !llvm.loop !451

middle.block1211:                                 ; preds = %vector.body1206
  br i1 %cmp.n1212, label %select.unfold.i.i.i.i496.preheader, label %.lr.ph1034.preheader1214

.lr.ph1034.preheader1214:                         ; preds = %.lr.ph1034.preheader, %middle.block1211
  %.02341033.ph = phi i64 [ 0, %.lr.ph1034.preheader ], [ %n.vec1205, %middle.block1211 ]
  br label %.lr.ph1034

bb.by:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc482
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.bz:                                            ; preds = %select.unfold.i.i.i.i496
  %i.li = fdiv float %i.lp, %i.ls                 ; 2 uses
  %i.lj = fcmp ult float %i.li, 1.000000e+00
  br i1 %i.lj, label %bb.cb, label %bb.ca, !prof !78

select.unfold.i.i.i.i496:                         ; preds = %select.unfold.i.i.i.i496.preheader, %select.unfold.i.i.i.i496
  %.023.i.i.i.i497 = phi i64 [ %i.lt, %select.unfold.i.i.i.i496 ], [ %spec.select.i.i.i.i494, %select.unfold.i.i.i.i496.preheader ]
  %.01422.i.i.i.i498 = phi float [ %i.ls, %select.unfold.i.i.i.i496 ], [ 1.000000e+00, %select.unfold.i.i.i.i496.preheader ] ; 2 uses
  %.01521.i.i.i.i499 = phi float [ %i.lp, %select.unfold.i.i.i.i496 ], [ 0.000000e+00, %select.unfold.i.i.i.i496.preheader ]
  %i.lk = phi i64 [ %i.lm, %select.unfold.i.i.i.i496 ], [ %.sroa.0682.31040, %select.unfold.i.i.i.i496.preheader ]
  %i.ll = mul nuw nsw i64 %i.lk, 16807
  %i.lm = urem i64 %i.ll, 2147483647              ; 3 uses
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = uitofp i64 %i.ln to float
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %.01422.i.i.i.i498, float %.01521.i.i.i.i499) ; 2 uses
  %i.lq = fpext float %.01422.i.i.i.i498 to x86_fp80
  %i.lr = fmul x86_fp80 %i.lq, f0x401DFFFFFFFC00000000
  %i.ls = fptrunc x86_fp80 %i.lr to float         ; 2 uses
  %i.lt = add i64 %.023.i.i.i.i497, -1            ; 2 uses
  %.not.i.i.i.i500 = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i.i.i500, label %bb.bz, label %select.unfold.i.i.i.i496, !llvm.loop !112

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cb

.lr.ph1034:                                       ; preds = %.lr.ph1034.preheader1214, %.lr.ph1034
  %.02341033 = phi i64 [ %i.lu, %.lr.ph1034 ], [ %.02341033.ph, %.lr.ph1034.preheader1214 ] ; 4 uses
  %i.lu = add nuw i64 %.02341033, 1               ; 4 uses
  %i.lv = mul i64 %i.lu, %i.lu
  %i.lw = uitofp i64 %i.lv to float               ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0625.0, i64 %.02341033
  store float %i.lw, ptr %i.lx, align 4, !tbaa !74
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0595.0803, i64 %.02341033
  store float %i.lw, ptr %i.ly, align 4, !tbaa !74
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0587.0, i64 %.02341033
  store float %i.lw, ptr %i.lz, align 4, !tbaa !74
  %exitcond1073.not = icmp eq i64 %i.lu, %1
  br i1 %exitcond1073.not, label %select.unfold.i.i.i.i496.preheader, label %.lr.ph1034, !llvm.loop !452

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.016.i.i.i.i501 = phi float [ f0x3F7FFFFF, %bb.ca ], [ %i.li, %bb.bz ]
  br label %select.unfold.i.i.i.i505

bb.cc:                                            ; preds = %select.unfold.i.i.i.i505
  %i.ma = fadd float %.016.i.i.i.i501, 0.000000e+00 ; 3 uses
  %i.mb = fdiv float %i.mi, %i.ml                 ; 2 uses
  %i.mc = fcmp ult float %i.mb, 1.000000e+00
  br i1 %i.mc, label %bb.ce, label %bb.cd, !prof !78

select.unfold.i.i.i.i505:                         ; preds = %select.unfold.i.i.i.i505, %bb.cb
  %.023.i.i.i.i506 = phi i64 [ %spec.select.i.i.i.i494, %bb.cb ], [ %i.mm, %select.unfold.i.i.i.i505 ]
  %.01422.i.i.i.i507 = phi float [ 1.000000e+00, %bb.cb ], [ %i.ml, %select.unfold.i.i.i.i505 ] ; 2 uses
  %.01521.i.i.i.i508 = phi float [ 0.000000e+00, %bb.cb ], [ %i.mi, %select.unfold.i.i.i.i505 ]
  %i.md = phi i64 [ %i.lm, %bb.cb ], [ %i.mf, %select.unfold.i.i.i.i505 ]
  %i.me = mul nuw nsw i64 %i.md, 16807
  %i.mf = urem i64 %i.me, 2147483647              ; 3 uses
  %i.mg = add nsw i64 %i.mf, -1
  %i.mh = uitofp i64 %i.mg to float
  %i.mi = call float @llvm.fmuladd.f32(float %i.mh, float %.01422.i.i.i.i507, float %.01521.i.i.i.i508) ; 2 uses
  %i.mj = fpext float %.01422.i.i.i.i507 to x86_fp80
  %i.mk = fmul x86_fp80 %i.mj, f0x401DFFFFFFFC00000000
  %i.ml = fptrunc x86_fp80 %i.mk to float         ; 2 uses
  %i.mm = add i64 %.023.i.i.i.i506, -1            ; 2 uses
  %.not.i.i.i.i509 = icmp eq i64 %i.mm, 0
  br i1 %.not.i.i.i.i509, label %bb.cc, label %select.unfold.i.i.i.i505, !llvm.loop !112

bb.cd:                                            ; preds = %bb.cc
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.016.i.i.i.i510 = phi float [ f0x3F7FFFFF, %bb.cd ], [ %i.mb, %bb.cc ]
  br label %select.unfold.i.i.i.i514

bb.cf:                                            ; preds = %select.unfold.i.i.i.i514
  %i.mn = fadd float %.016.i.i.i.i510, 0.000000e+00 ; 3 uses
  %i.mo = fdiv float %i.mv, %i.my                 ; 2 uses
  %i.mp = fcmp ult float %i.mo, 1.000000e+00
  br i1 %i.mp, label %bb.ch, label %bb.cg, !prof !78

select.unfold.i.i.i.i514:                         ; preds = %select.unfold.i.i.i.i514, %bb.ce
  %.023.i.i.i.i515 = phi i64 [ %spec.select.i.i.i.i494, %bb.ce ], [ %i.mz, %select.unfold.i.i.i.i514 ]
  %.01422.i.i.i.i516 = phi float [ 1.000000e+00, %bb.ce ], [ %i.my, %select.unfold.i.i.i.i514 ] ; 2 uses
  %.01521.i.i.i.i517 = phi float [ 0.000000e+00, %bb.ce ], [ %i.mv, %select.unfold.i.i.i.i514 ]
  %i.mq = phi i64 [ %i.mf, %bb.ce ], [ %i.ms, %select.unfold.i.i.i.i514 ]
  %i.mr = mul nuw nsw i64 %i.mq, 16807
  %i.ms = urem i64 %i.mr, 2147483647              ; 3 uses
  %i.mt = add nsw i64 %i.ms, -1
  %i.mu = uitofp i64 %i.mt to float
  %i.mv = call float @llvm.fmuladd.f32(float %i.mu, float %.01422.i.i.i.i516, float %.01521.i.i.i.i517) ; 2 uses
  %i.mw = fpext float %.01422.i.i.i.i516 to x86_fp80
  %i.mx = fmul x86_fp80 %i.mw, f0x401DFFFFFFFC00000000
  %i.my = fptrunc x86_fp80 %i.mx to float         ; 2 uses
  %i.mz = add i64 %.023.i.i.i.i515, -1            ; 2 uses
  %.not.i.i.i.i518 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i.i518, label %bb.cf, label %select.unfold.i.i.i.i514, !llvm.loop !112

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.016.i.i.i.i519 = phi float [ f0x3F7FFFFF, %bb.cg ], [ %i.mo, %bb.cf ]
  %i.na = fadd float %.016.i.i.i.i519, 0.000000e+00 ; 3 uses
  %i.nb = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nc = mul i64 %.02351041, %i.h                ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc
  %i.ne = add nuw i64 %.02351041, 1
  %i.nf = mul i64 %i.ne, %i.h                     ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nf
  %i.nh = add i64 %.02351041, 2
  %i.ni = mul i64 %i.nh, %i.h                     ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ni
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfS4_S6_fS4_S6_fPf(ptr noundef %i.d, ptr noundef %i.nd, float noundef %i.ma, ptr noundef %i.d, ptr noundef %i.ng, float noundef %i.mn, ptr noundef %i.d, ptr noundef %i.nj, float noundef %i.na, ptr noundef %.sroa.0595.0803)
  %i.nk = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nf
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.ni
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfS6_fS6_fPf(ptr noundef %i.d, ptr noundef %i.nl, float noundef %i.ma, ptr noundef %i.nm, float noundef %i.mn, ptr noundef %i.nn, float noundef %i.na, ptr noundef %.sroa.0587.0)
  %i.no = load ptr, ptr %3, align 8, !tbaa !36
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nc
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfPf(ptr noundef %i.d, ptr noundef %i.np, float noundef %i.ma, ptr noundef %.sroa.0625.0)
  %i.nq = load ptr, ptr %3, align 8, !tbaa !36
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nf
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfPf(ptr noundef %i.d, ptr noundef %i.nr, float noundef %i.mn, ptr noundef %.sroa.0625.0)
  %i.ns = load ptr, ptr %3, align 8, !tbaa !36
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ni
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfPf(ptr noundef %i.d, ptr noundef %i.nt, float noundef %i.na, ptr noundef %.sroa.0625.0)
  br i1 %.not.i.i.i.i, label %.critedge330, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %bb.ch, %bb.dk
  %.01037 = phi i64 [ %i.qh, %bb.dk ], [ 0, %bb.ch ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0625.0, i64 %.01037 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !74
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0595.0803, i64 %.01037
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.nv, float noundef %i.nx)
          to label %bb.ci unwind label %bb.cj

end_hunk_23
begin_hunk_24_@_Z20verifyIndexPQDecoderIN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 16 ; 2 uses
  %i.iy = icmp eq ptr %i.iw, %i.ix
  br i1 %i.iy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i452

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i452: ; preds = %bb.bh
  %i.iz = load i64, ptr %i.ix, align 8, !tbaa !17
  %i.ja = add i64 %i.iz, 1
  call void @_ZdlPvm(ptr noundef %i.iw, i64 noundef %i.ja) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453: ; preds = %bb.bh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i452
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef 32) #23
  br label %bb.bi

bb.bi:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i453, %.critedge318
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  %i.jb = load float, ptr %i.hu, align 4, !tbaa !74
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0605.0, i64 %.02491027
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %13, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.17, float noundef %i.jb, float noundef %i.jd)
          to label %bb.bj unwind label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.je = load i8, ptr %13, align 8, !tbaa !96, !range !105, !noundef !106
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %.critedge320, label %bb.bm

bb.bk:                                            ; preds = %_ZN7testing7MessageD2Ev.exit450, %bb.aw
  %.pn269.pn.pn = phi { ptr, i32 } [ %.pn269.pn, %_ZN7testing7MessageD2Ev.exit450 ], [ %i.ia, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574

bb.bl:                                            ; preds = %bb.bi
  %i.jg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574.thread

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bn unwind label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  %i.jh = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 2 uses
  %.not.i.i456 = icmp eq ptr %i.jh, null
  br i1 %.not.i.i456, label %_ZNK7testing15AssertionResult15failure_messageEv.exit457, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit457

_ZNK7testing15AssertionResult15failure_messageEv.exit457: ; preds = %bb.bo, %bb.bn
  %i.jj = phi ptr [ %i.ji, %bb.bo ], [ @.str.20, %bb.bn ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 665, ptr noundef %i.jj)
          to label %bb.bp unwind label %bb.bt

bb.bp:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit457
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bq unwind label %bb.bu

bb.bq:                                            ; preds = %bb.bp
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.jk = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i458 = icmp eq ptr %i.jk, null
  br i1 %.not.i.i458, label %_ZN7testing7MessageD2Ev.exit460, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459: ; preds = %bb.bq
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !24
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = load ptr, ptr %i.jm, align 8
  call void %i.jn(ptr noundef nonnull align 8 dereferenceable(128) %i.jk) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit460

_ZN7testing7MessageD2Ev.exit460:                  ; preds = %bb.bq, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i459
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  %i.jo = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 4 uses
  %.not.i.i461 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i461, label %_ZNSt6vectorIfSaIfEED2Ev.exit560.thread, label %bb.br

bb.br:                                            ; preds = %_ZN7testing7MessageD2Ev.exit460
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !18 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 16 ; 2 uses
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462: ; preds = %bb.br
  %i.js = load i64, ptr %i.jq, align 8, !tbaa !17
  %i.jt = add i64 %i.js, 1
  call void @_ZdlPvm(ptr noundef %i.jp, i64 noundef %i.jt) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i462
  call void @_ZdlPvm(ptr noundef nonnull %i.jo, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit560.thread

_ZNSt6vectorIfSaIfEED2Ev.exit560.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i463, %_ZN7testing7MessageD2Ev.exit460
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.do

bb.bs:                                            ; preds = %bb.bm
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit468

bb.bt:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit457
  %i.jv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bp
  %i.jw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #22
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn273 = phi { ptr, i32 } [ %i.jw, %bb.bu ], [ %i.jv, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  %i.jx = load ptr, ptr %14, align 8, !tbaa !108  ; 3 uses
  %.not.i.i466 = icmp eq ptr %i.jx, null
  br i1 %.not.i.i466, label %_ZN7testing7MessageD2Ev.exit468, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467: ; preds = %bb.bv
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8
  call void %i.ka(ptr noundef nonnull align 8 dereferenceable(128) %i.jx) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit468

_ZN7testing7MessageD2Ev.exit468:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467, %bb.bv, %bb.bs
  %.pn273.pn = phi { ptr, i32 } [ %i.ju, %bb.bs ], [ %.pn273, %bb.bv ], [ %.pn273, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i467 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574.thread

.critedge320:                                     ; preds = %bb.bj
  %i.kb = load ptr, ptr %i.fr, align 8, !tbaa !107 ; 4 uses
  %.not.i.i469 = icmp eq ptr %i.kb, null
  br i1 %.not.i.i469, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.critedge320
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !18 ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.ke = icmp eq ptr %i.kc, %i.kd
  br i1 %i.ke, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i470

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i470: ; preds = %bb.bw
  %i.kf = load i64, ptr %i.kd, align 8, !tbaa !17
  %i.kg = add i64 %i.kf, 1
  call void @_ZdlPvm(ptr noundef %i.kc, i64 noundef %i.kg) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i470
  call void @_ZdlPvm(ptr noundef nonnull %i.kb, i64 noundef 32) #23
  br label %bb.bx

bb.bx:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i471, %.critedge320
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.kh = add nuw i64 %.02491027, 1               ; 2 uses
  %exitcond1072.not = icmp eq i64 %i.kh, %1
  br i1 %exitcond1072.not, label %.critedge322, label %.lr.ph1029, !llvm.loop !463

_ZNSt6vectorIfSaIfEED2Ev.exit574.thread:          ; preds = %bb.bl, %_ZN7testing7MessageD2Ev.exit468
  %.pn273.pn.pn = phi { ptr, i32 } [ %.pn273.pn, %_ZN7testing7MessageD2Ev.exit468 ], [ %i.jg, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.du

.critedge322:                                     ; preds = %bb.bx, %bb.au
  %i.ki = add i64 %.02531032, 2                   ; 2 uses
  %.not281 = icmp ult i64 %i.ki, %0
  br i1 %.not281, label %.preheader987, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474, !llvm.loop !464

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474: ; preds = %.critedge322, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit419
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474
  %i.kj = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.kk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #24
          to label %.noexc482 unwind label %bb.by ; 4 uses

.noexc482:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.kk, i8 0, i64 %i.kj, i1 false), !tbaa !74
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.kk, i64 %1 ; 2 uses
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kj) #24
          to label %.noexc492 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc492:                                        ; preds = %.noexc482
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.km, i8 0, i64 %i.kj, i1 false), !tbaa !74
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %i.km, i64 %1
  %i.ko = ptrtoint ptr %i.kn to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493:         ; preds = %.noexc492, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474
  %.sroa.12601.0807 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.kl, %.noexc492 ] ; 3 uses
  %.sroa.0595.0803 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.kk, %.noexc492 ] ; 9 uses
  %.sroa.0587.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.km, %.noexc492 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474 ], [ %i.ko, %.noexc492 ] ; 2 uses
  %i.kp = urem i64 %0, 3
  %i.kq = sub nuw i64 %0, %i.kp
  %.not1045 = icmp ult i64 %0, 3
  br i1 %.not1045, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit493
  %i.kr = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.ks = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.kt = fdiv x86_fp80 %i.kr, %i.ks
  %i.ku = fptoui x86_fp80 %i.kt to i64            ; 2 uses
  %i.kv = add i64 %i.ku, 23
  %i.kw = udiv i64 %i.kv, %i.ku
  %spec.select.i.i.i.i494 = call i64 @llvm.umax.i64(i64 %i.kw, i64 1) ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 3 uses
  %min.iters.check1203 = icmp ult i64 %1, 4
  %n.vec1205 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1212 = icmp eq i64 %1, %n.vec1205
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge330
  %.02351041 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.qi, %.critedge330 ] ; 4 uses
  %.sroa.0682.31040 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.ms, %.critedge330 ]
  br i1 %.not.i.i.i.i, label %select.unfold.i.i.i.i496.preheader, label %.lr.ph1034.preheader

select.unfold.i.i.i.i496.preheader:               ; preds = %.lr.ph1034, %middle.block1211, %.preheader
  br label %select.unfold.i.i.i.i496

.lr.ph1034.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1203, label %.lr.ph1034.preheader1214, label %vector.body1206

vector.body1206:                                  ; preds = %.lr.ph1034.preheader, %vector.body1206
  %index1207 = phi i64 [ %index.next1209, %vector.body1206 ], [ 0, %.lr.ph1034.preheader ] ; 4 uses
  %vec.ind1208 = phi <4 x i64> [ %vec.ind.next1210, %vector.body1206 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1034.preheader ] ; 2 uses
  %i.kz = add nuw <4 x i64> %vec.ind1208, splat (i64 1) ; 2 uses
  %i.la = mul <4 x i64> %i.kz, %i.kz
  %i.lb = uitofp <4 x i64> %i.la to <4 x float>   ; 3 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0625.0, i64 %index1207
  store <4 x float> %i.lb, ptr %i.lc, align 4, !tbaa !74
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0595.0803, i64 %index1207
  store <4 x float> %i.lb, ptr %i.ld, align 4, !tbaa !74
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0587.0, i64 %index1207
  store <4 x float> %i.lb, ptr %i.le, align 4, !tbaa !74
  %index.next1209 = add nuw i64 %index1207, 4     ; 2 uses
  %vec.ind.next1210 = add nuw <4 x i64> %vec.ind1208, splat (i64 4)
  %i.lf = icmp eq i64 %index.next1209, %n.vec1205
  br i1 %i.lf, label %middle.block1211, label %vector.body1206, !llvm.loop !465

middle.block1211:                                 ; preds = %vector.body1206
  br i1 %cmp.n1212, label %select.unfold.i.i.i.i496.preheader, label %.lr.ph1034.preheader1214

.lr.ph1034.preheader1214:                         ; preds = %.lr.ph1034.preheader, %middle.block1211
  %.02341033.ph = phi i64 [ 0, %.lr.ph1034.preheader ], [ %n.vec1205, %middle.block1211 ]
  br label %.lr.ph1034

bb.by:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i474.thread
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit574

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc482
  %i.lh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.bz:                                            ; preds = %select.unfold.i.i.i.i496
  %i.li = fdiv float %i.lp, %i.ls                 ; 2 uses
  %i.lj = fcmp ult float %i.li, 1.000000e+00
  br i1 %i.lj, label %bb.cb, label %bb.ca, !prof !78

select.unfold.i.i.i.i496:                         ; preds = %select.unfold.i.i.i.i496.preheader, %select.unfold.i.i.i.i496
  %.023.i.i.i.i497 = phi i64 [ %i.lt, %select.unfold.i.i.i.i496 ], [ %spec.select.i.i.i.i494, %select.unfold.i.i.i.i496.preheader ]
  %.01422.i.i.i.i498 = phi float [ %i.ls, %select.unfold.i.i.i.i496 ], [ 1.000000e+00, %select.unfold.i.i.i.i496.preheader ] ; 2 uses
  %.01521.i.i.i.i499 = phi float [ %i.lp, %select.unfold.i.i.i.i496 ], [ 0.000000e+00, %select.unfold.i.i.i.i496.preheader ]
  %i.lk = phi i64 [ %i.lm, %select.unfold.i.i.i.i496 ], [ %.sroa.0682.31040, %select.unfold.i.i.i.i496.preheader ]
  %i.ll = mul nuw nsw i64 %i.lk, 16807
  %i.lm = urem i64 %i.ll, 2147483647              ; 3 uses
  %i.ln = add nsw i64 %i.lm, -1
  %i.lo = uitofp i64 %i.ln to float
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %.01422.i.i.i.i498, float %.01521.i.i.i.i499) ; 2 uses
  %i.lq = fpext float %.01422.i.i.i.i498 to x86_fp80
  %i.lr = fmul x86_fp80 %i.lq, f0x401DFFFFFFFC00000000
  %i.ls = fptrunc x86_fp80 %i.lr to float         ; 2 uses
  %i.lt = add i64 %.023.i.i.i.i497, -1            ; 2 uses
  %.not.i.i.i.i500 = icmp eq i64 %i.lt, 0
  br i1 %.not.i.i.i.i500, label %bb.bz, label %select.unfold.i.i.i.i496, !llvm.loop !112

bb.ca:                                            ; preds = %bb.bz
  br label %bb.cb

.lr.ph1034:                                       ; preds = %.lr.ph1034.preheader1214, %.lr.ph1034
  %.02341033 = phi i64 [ %i.lu, %.lr.ph1034 ], [ %.02341033.ph, %.lr.ph1034.preheader1214 ] ; 4 uses
  %i.lu = add nuw i64 %.02341033, 1               ; 4 uses
  %i.lv = mul i64 %i.lu, %i.lu
  %i.lw = uitofp i64 %i.lv to float               ; 3 uses
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0625.0, i64 %.02341033
  store float %i.lw, ptr %i.lx, align 4, !tbaa !74
  %i.ly = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0595.0803, i64 %.02341033
  store float %i.lw, ptr %i.ly, align 4, !tbaa !74
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0587.0, i64 %.02341033
  store float %i.lw, ptr %i.lz, align 4, !tbaa !74
  %exitcond1073.not = icmp eq i64 %i.lu, %1
  br i1 %exitcond1073.not, label %select.unfold.i.i.i.i496.preheader, label %.lr.ph1034, !llvm.loop !466

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.016.i.i.i.i501 = phi float [ f0x3F7FFFFF, %bb.ca ], [ %i.li, %bb.bz ]
  br label %select.unfold.i.i.i.i505

bb.cc:                                            ; preds = %select.unfold.i.i.i.i505
  %i.ma = fadd float %.016.i.i.i.i501, 0.000000e+00 ; 3 uses
  %i.mb = fdiv float %i.mi, %i.ml                 ; 2 uses
  %i.mc = fcmp ult float %i.mb, 1.000000e+00
  br i1 %i.mc, label %bb.ce, label %bb.cd, !prof !78

select.unfold.i.i.i.i505:                         ; preds = %select.unfold.i.i.i.i505, %bb.cb
  %.023.i.i.i.i506 = phi i64 [ %spec.select.i.i.i.i494, %bb.cb ], [ %i.mm, %select.unfold.i.i.i.i505 ]
  %.01422.i.i.i.i507 = phi float [ 1.000000e+00, %bb.cb ], [ %i.ml, %select.unfold.i.i.i.i505 ] ; 2 uses
  %.01521.i.i.i.i508 = phi float [ 0.000000e+00, %bb.cb ], [ %i.mi, %select.unfold.i.i.i.i505 ]
  %i.md = phi i64 [ %i.lm, %bb.cb ], [ %i.mf, %select.unfold.i.i.i.i505 ]
  %i.me = mul nuw nsw i64 %i.md, 16807
  %i.mf = urem i64 %i.me, 2147483647              ; 3 uses
  %i.mg = add nsw i64 %i.mf, -1
  %i.mh = uitofp i64 %i.mg to float
  %i.mi = call float @llvm.fmuladd.f32(float %i.mh, float %.01422.i.i.i.i507, float %.01521.i.i.i.i508) ; 2 uses
  %i.mj = fpext float %.01422.i.i.i.i507 to x86_fp80
  %i.mk = fmul x86_fp80 %i.mj, f0x401DFFFFFFFC00000000
  %i.ml = fptrunc x86_fp80 %i.mk to float         ; 2 uses
  %i.mm = add i64 %.023.i.i.i.i506, -1            ; 2 uses
  %.not.i.i.i.i509 = icmp eq i64 %i.mm, 0
  br i1 %.not.i.i.i.i509, label %bb.cc, label %select.unfold.i.i.i.i505, !llvm.loop !112

bb.cd:                                            ; preds = %bb.cc
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.016.i.i.i.i510 = phi float [ f0x3F7FFFFF, %bb.cd ], [ %i.mb, %bb.cc ]
  br label %select.unfold.i.i.i.i514

bb.cf:                                            ; preds = %select.unfold.i.i.i.i514
  %i.mn = fadd float %.016.i.i.i.i510, 0.000000e+00 ; 3 uses
  %i.mo = fdiv float %i.mv, %i.my                 ; 2 uses
  %i.mp = fcmp ult float %i.mo, 1.000000e+00
  br i1 %i.mp, label %bb.ch, label %bb.cg, !prof !78

select.unfold.i.i.i.i514:                         ; preds = %select.unfold.i.i.i.i514, %bb.ce
  %.023.i.i.i.i515 = phi i64 [ %spec.select.i.i.i.i494, %bb.ce ], [ %i.mz, %select.unfold.i.i.i.i514 ]
  %.01422.i.i.i.i516 = phi float [ 1.000000e+00, %bb.ce ], [ %i.my, %select.unfold.i.i.i.i514 ] ; 2 uses
  %.01521.i.i.i.i517 = phi float [ 0.000000e+00, %bb.ce ], [ %i.mv, %select.unfold.i.i.i.i514 ]
  %i.mq = phi i64 [ %i.mf, %bb.ce ], [ %i.ms, %select.unfold.i.i.i.i514 ]
  %i.mr = mul nuw nsw i64 %i.mq, 16807
  %i.ms = urem i64 %i.mr, 2147483647              ; 3 uses
  %i.mt = add nsw i64 %i.ms, -1
  %i.mu = uitofp i64 %i.mt to float
  %i.mv = call float @llvm.fmuladd.f32(float %i.mu, float %.01422.i.i.i.i516, float %.01521.i.i.i.i517) ; 2 uses
  %i.mw = fpext float %.01422.i.i.i.i516 to x86_fp80
  %i.mx = fmul x86_fp80 %i.mw, f0x401DFFFFFFFC00000000
  %i.my = fptrunc x86_fp80 %i.mx to float         ; 2 uses
  %i.mz = add i64 %.023.i.i.i.i515, -1            ; 2 uses
  %.not.i.i.i.i518 = icmp eq i64 %i.mz, 0
  br i1 %.not.i.i.i.i518, label %bb.cf, label %select.unfold.i.i.i.i514, !llvm.loop !112

bb.cg:                                            ; preds = %bb.cf
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.016.i.i.i.i519 = phi float [ f0x3F7FFFFF, %bb.cg ], [ %i.mo, %bb.cf ]
  %i.na = fadd float %.016.i.i.i.i519, 0.000000e+00 ; 3 uses
  %i.nb = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nc = mul i64 %.02351041, %i.h                ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nc
  %i.ne = add nuw i64 %.02351041, 1
  %i.nf = mul i64 %i.ne, %i.h                     ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.nf
  %i.nh = add i64 %.02351041, 2
  %i.ni = mul i64 %i.nh, %i.h                     ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.ni
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5accumEPKfPKhfS4_S6_fS4_S6_fPf(ptr noundef %i.d, ptr noundef %i.nd, float noundef %i.ma, ptr noundef %i.d, ptr noundef %i.ng, float noundef %i.mn, ptr noundef %i.d, ptr noundef %i.nj, float noundef %i.na, ptr noundef %.sroa.0595.0803)
  %i.nk = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nc
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.nf
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.ni
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5accumEPKfPKhfS6_fS6_fPf(ptr noundef %i.d, ptr noundef %i.nl, float noundef %i.ma, ptr noundef %i.nm, float noundef %i.mn, ptr noundef %i.nn, float noundef %i.na, ptr noundef %.sroa.0587.0)
  %i.no = load ptr, ptr %3, align 8, !tbaa !36
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 %i.nc
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5accumEPKfPKhfPf(ptr noundef %i.d, ptr noundef %i.np, float noundef %i.ma, ptr noundef %.sroa.0625.0)
  %i.nq = load ptr, ptr %3, align 8, !tbaa !36
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.nf
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5accumEPKfPKhfPf(ptr noundef %i.d, ptr noundef %i.nr, float noundef %i.mn, ptr noundef %.sroa.0625.0)
  %i.ns = load ptr, ptr %3, align 8, !tbaa !36
  %i.nt = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ni
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl160ELl8ELl8EE5accumEPKfPKhfPf(ptr noundef %i.d, ptr noundef %i.nt, float noundef %i.na, ptr noundef %.sroa.0625.0)
  br i1 %.not.i.i.i.i, label %.critedge330, label %.lr.ph1039

.lr.ph1039:                                       ; preds = %bb.ch, %bb.dk
  %.01037 = phi i64 [ %i.qh, %bb.dk ], [ 0, %bb.ch ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  %i.nu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0625.0, i64 %.01037 ; 2 uses
  %i.nv = load float, ptr %i.nu, align 4, !tbaa !74
  %i.nw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0595.0803, i64 %.01037
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !74
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.18, float noundef %i.nv, float noundef %i.nx)
          to label %bb.ci unwind label %bb.cj

end_hunk_24
begin_hunk_25_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a

bb.cp:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i519, %.critedge352
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.yk = load float, ptr %i.xb, align 4, !tbaa !74
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0683.0, i64 %.02681159
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !74
  %i.yn = insertelement <2 x float> poison, float %i.yk, i64 0
  %i.yo = insertelement <2 x float> %i.yn, float %i.ym, i64 1
  %i.yp = fadd <2 x float> %i.wz, %i.yo           ; 2 uses
  %i.yq = extractelement <2 x float> %i.yp, i64 0
  %i.yr = extractelement <2 x float> %i.yp, i64 1
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.96, float noundef %i.yq, float noundef %i.yr)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.ys = load i8, ptr %17, align 8, !tbaa !96, !range !105, !noundef !106
  %i.yt = trunc nuw i8 %i.ys to i1
  br i1 %i.yt, label %.critedge354, label %bb.ct

bb.cr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit516, %bb.cd
  %.pn295.pn.pn = phi { ptr, i32 } [ %.pn295.pn, %_ZN7testing7MessageD2Ev.exit516 ], [ %i.xj, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648

bb.cs:                                            ; preds = %bb.cp
  %i.yu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648.thread

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.yv = load ptr, ptr %i.mm, align 8, !tbaa !107 ; 2 uses
  %.not.i.i522 = icmp eq ptr %i.yv, null
  br i1 %.not.i.i522, label %_ZNK7testing15AssertionResult15failure_messageEv.exit523, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit523

_ZNK7testing15AssertionResult15failure_messageEv.exit523: ; preds = %bb.cv, %bb.cu
  %i.yx = phi ptr [ %i.yw, %bb.cv ], [ @.str.20, %bb.cu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 460, ptr noundef %i.yx)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit523
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.yy = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i524 = icmp eq ptr %i.yy, null
  br i1 %.not.i.i524, label %_ZN7testing7MessageD2Ev.exit526, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525: ; preds = %bb.cx
  %i.yz = load ptr, ptr %i.yy, align 8, !tbaa !24
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 8
  %i.zb = load ptr, ptr %i.za, align 8
  call void %i.zb(ptr noundef nonnull align 8 dereferenceable(128) %i.yy) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit526

_ZN7testing7MessageD2Ev.exit526:                  ; preds = %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.zc = load ptr, ptr %i.mm, align 8, !tbaa !107 ; 4 uses
  %.not.i.i527 = icmp eq ptr %i.zc, null
  br i1 %.not.i.i527, label %_ZNSt6vectorIfSaIfEED2Ev.exit632.thread, label %bb.cy

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit526
  %i.zd = load ptr, ptr %i.zc, align 8, !tbaa !18 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 16 ; 2 uses
  %i.zf = icmp eq ptr %i.zd, %i.ze
  br i1 %i.zf, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i528: ; preds = %bb.cy
  %i.zg = load i64, ptr %i.ze, align 8, !tbaa !17
  %i.zh = add i64 %i.zg, 1
  call void @_ZdlPvm(ptr noundef %i.zd, i64 noundef %i.zh) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i528
  call void @_ZdlPvm(ptr noundef nonnull %i.zc, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit632.thread

_ZNSt6vectorIfSaIfEED2Ev.exit632.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529, %_ZN7testing7MessageD2Ev.exit526
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ez

bb.cz:                                            ; preds = %bb.ct
  %i.zi = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit534

bb.da:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit523
  %i.zj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  %i.zk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn299 = phi { ptr, i32 } [ %i.zk, %bb.db ], [ %i.zj, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.zl = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i532 = icmp eq ptr %i.zl, null
  br i1 %.not.i.i532, label %_ZN7testing7MessageD2Ev.exit534, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i533

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i533: ; preds = %bb.dc
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !24
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zo = load ptr, ptr %i.zn, align 8
  call void %i.zo(ptr noundef nonnull align 8 dereferenceable(128) %i.zl) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit534

_ZN7testing7MessageD2Ev.exit534:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i533, %bb.dc, %bb.cz
  %.pn299.pn = phi { ptr, i32 } [ %i.zi, %bb.cz ], [ %.pn299, %bb.dc ], [ %.pn299, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i533 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648.thread

.critedge354:                                     ; preds = %bb.cq
  %i.zp = load ptr, ptr %i.mm, align 8, !tbaa !107 ; 4 uses
  %.not.i.i535 = icmp eq ptr %i.zp, null
  br i1 %.not.i.i535, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.critedge354
  %i.zq = load ptr, ptr %i.zp, align 8, !tbaa !18 ; 2 uses
  %i.zr = getelementptr inbounds nuw i8, ptr %i.zp, i64 16 ; 2 uses
  %i.zs = icmp eq ptr %i.zq, %i.zr
  br i1 %i.zs, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i537, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i536

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i536: ; preds = %bb.dd
  %i.zt = load i64, ptr %i.zr, align 8, !tbaa !17
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zq, i64 noundef %i.zu) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i537

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i537: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i536
  call void @_ZdlPvm(ptr noundef nonnull %i.zp, i64 noundef 32) #23
  br label %bb.de

bb.de:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i537, %.critedge354
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.zv = add nuw i64 %.02681159, 1               ; 2 uses
  %exitcond1205.not = icmp eq i64 %i.zv, %1
  br i1 %exitcond1205.not, label %.critedge356, label %.lr.ph1161, !llvm.loop !544

_ZNSt6vectorIfSaIfEED2Ev.exit648.thread:          ; preds = %bb.cs, %_ZN7testing7MessageD2Ev.exit534
  %.pn299.pn.pn = phi { ptr, i32 } [ %.pn299.pn, %_ZN7testing7MessageD2Ev.exit534 ], [ %i.yu, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.fm

.critedge356:                                     ; preds = %bb.de, %bb.cb
  %i.zw = add i64 %.02721164, 2                   ; 2 uses
  %.not307 = icmp ult i64 %i.zw, %0
  br i1 %.not307, label %.preheader1114, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540, !llvm.loop !545

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540: ; preds = %.critedge356, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit478
  br i1 %.not.i.i.i.i379, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540
  %i.zx = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.zy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zx) #24
          to label %.noexc548 unwind label %bb.df ; 4 uses

.noexc548:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.zy, i8 0, i64 %i.zx, i1 false), !tbaa !74
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %i.zy, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !74
  %i.aaa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zx) #24
          to label %.noexc558 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !74
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit559

.noexc558:                                        ; preds = %.noexc548
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aaa, i8 0, i64 %i.zx, i1 false), !tbaa !74
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.aaa, i64 %1
  %i.aac = ptrtoint ptr %i.aab to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit559

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit559:         ; preds = %.noexc558, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556
  %.sroa.12675.0934 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556 ], [ %i.zz, %.noexc558 ] ; 2 uses
  %.sroa.0669.0930 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556 ], [ %i.zy, %.noexc558 ] ; 9 uses
  %.sroa.0661.0 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556 ], [ %i.aaa, %.noexc558 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i556 ], [ %i.aac, %.noexc558 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.aad = urem i64 %0, 3
  %i.aae = sub nuw i64 %0, %i.aad
  %.not1177 = icmp ult i64 %0, 3
  br i1 %.not1177, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit559
  %i.aaf = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.aag = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.aah = fdiv x86_fp80 %i.aaf, %i.aag
  %i.aai = fptoui x86_fp80 %i.aah to i64          ; 2 uses
  %i.aaj = add i64 %i.aai, 23
  %i.aak = udiv i64 %i.aaj, %i.aai
  %spec.select.i.i.i.i560 = call i64 @llvm.umax.i64(i64 %i.aak, i64 1) ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.aam = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %min.iters.check1370 = icmp ult i64 %1, 4
  %n.vec1372 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1379 = icmp eq i64 %1, %n.vec1372
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge364
  %.02661173 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.akw, %.critedge364 ] ; 4 uses
  %.sroa.0770.31172 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.acg, %.critedge364 ]
  br i1 %.not.i.i.i.i379, label %._crit_edge1167, label %.lr.ph1166.preheader

.lr.ph1166.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1370, label %.lr.ph1166.preheader1381, label %vector.body1373

vector.body1373:                                  ; preds = %.lr.ph1166.preheader, %vector.body1373
  %index1374 = phi i64 [ %index.next1376, %vector.body1373 ], [ 0, %.lr.ph1166.preheader ] ; 4 uses
  %vec.ind1375 = phi <4 x i64> [ %vec.ind.next1377, %vector.body1373 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1166.preheader ] ; 2 uses
  %i.aan = add nuw <4 x i64> %vec.ind1375, splat (i64 1) ; 2 uses
  %i.aao = mul <4 x i64> %i.aan, %i.aan
  %i.aap = uitofp <4 x i64> %i.aao to <4 x float> ; 3 uses
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %index1374
  store <4 x float> %i.aap, ptr %i.aaq, align 4, !tbaa !74
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0669.0930, i64 %index1374
  store <4 x float> %i.aap, ptr %i.aar, align 4, !tbaa !74
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0661.0, i64 %index1374
  store <4 x float> %i.aap, ptr %i.aas, align 4, !tbaa !74
  %index.next1376 = add nuw i64 %index1374, 4     ; 2 uses
  %vec.ind.next1377 = add nuw <4 x i64> %vec.ind1375, splat (i64 4)
  %i.aat = icmp eq i64 %index.next1376, %n.vec1372
  br i1 %i.aat, label %middle.block1378, label %vector.body1373, !llvm.loop !546

middle.block1378:                                 ; preds = %vector.body1373
  br i1 %cmp.n1379, label %._crit_edge1167, label %.lr.ph1166.preheader1381

.lr.ph1166.preheader1381:                         ; preds = %.lr.ph1166.preheader, %middle.block1378
  %.02651165.ph = phi i64 [ 0, %.lr.ph1166.preheader ], [ %n.vec1372, %middle.block1378 ]
  br label %.lr.ph1166

bb.df:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i540.thread
  %i.aau = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit648

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc548
  %i.aav = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.fl

._crit_edge1167:                                  ; preds = %.lr.ph1166, %middle.block1378, %.preheader
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !74
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !74
  br label %select.unfold.i.i.i.i562

bb.dg:                                            ; preds = %select.unfold.i.i.i.i562
  %i.aaw = fdiv float %i.abd, %i.abg              ; 2 uses
  %i.aax = fcmp ult float %i.aaw, 1.000000e+00
  br i1 %i.aax, label %bb.di, label %bb.dh, !prof !78

select.unfold.i.i.i.i562:                         ; preds = %select.unfold.i.i.i.i562, %._crit_edge1167
  %.023.i.i.i.i563 = phi i64 [ %spec.select.i.i.i.i560, %._crit_edge1167 ], [ %i.abh, %select.unfold.i.i.i.i562 ]
  %.01422.i.i.i.i564 = phi float [ 1.000000e+00, %._crit_edge1167 ], [ %i.abg, %select.unfold.i.i.i.i562 ] ; 2 uses
  %.01521.i.i.i.i565 = phi float [ 0.000000e+00, %._crit_edge1167 ], [ %i.abd, %select.unfold.i.i.i.i562 ]
  %i.aay = phi i64 [ %.sroa.0770.31172, %._crit_edge1167 ], [ %i.aba, %select.unfold.i.i.i.i562 ]
  %i.aaz = mul nuw nsw i64 %i.aay, 16807
  %i.aba = urem i64 %i.aaz, 2147483647            ; 3 uses
  %i.abb = add nsw i64 %i.aba, -1
  %i.abc = uitofp i64 %i.abb to float
  %i.abd = call float @llvm.fmuladd.f32(float %i.abc, float %.01422.i.i.i.i564, float %.01521.i.i.i.i565) ; 2 uses
  %i.abe = fpext float %.01422.i.i.i.i564 to x86_fp80
  %i.abf = fmul x86_fp80 %i.abe, f0x401DFFFFFFFC00000000
  %i.abg = fptrunc x86_fp80 %i.abf to float       ; 2 uses
  %i.abh = add i64 %.023.i.i.i.i563, -1           ; 2 uses
  %.not.i.i.i.i566 = icmp eq i64 %i.abh, 0
  br i1 %.not.i.i.i.i566, label %bb.dg, label %select.unfold.i.i.i.i562, !llvm.loop !112

bb.dh:                                            ; preds = %bb.dg
  br label %bb.di

.lr.ph1166:                                       ; preds = %.lr.ph1166.preheader1381, %.lr.ph1166
  %.02651165 = phi i64 [ %i.abi, %.lr.ph1166 ], [ %.02651165.ph, %.lr.ph1166.preheader1381 ] ; 4 uses
  %i.abi = add nuw i64 %.02651165, 1              ; 4 uses
  %i.abj = mul i64 %i.abi, %i.abi
  %i.abk = uitofp i64 %i.abj to float             ; 3 uses
  %i.abl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02651165
  store float %i.abk, ptr %i.abl, align 4, !tbaa !74
  %i.abm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0669.0930, i64 %.02651165
  store float %i.abk, ptr %i.abm, align 4, !tbaa !74
  %i.abn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0661.0, i64 %.02651165
  store float %i.abk, ptr %i.abn, align 4, !tbaa !74
  %exitcond1206.not = icmp eq i64 %i.abi, %1
  br i1 %exitcond1206.not, label %._crit_edge1167, label %.lr.ph1166, !llvm.loop !547

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.016.i.i.i.i567 = phi float [ f0x3F7FFFFF, %bb.dh ], [ %i.aaw, %bb.dg ]
  br label %select.unfold.i.i.i.i571

bb.dj:                                            ; preds = %select.unfold.i.i.i.i571
  %i.abo = fadd float %.016.i.i.i.i567, 0.000000e+00 ; 4 uses
  %i.abp = fdiv float %i.abw, %i.abz              ; 2 uses
  %i.abq = fcmp ult float %i.abp, 1.000000e+00
  br i1 %i.abq, label %bb.dl, label %bb.dk, !prof !78

select.unfold.i.i.i.i571:                         ; preds = %select.unfold.i.i.i.i571, %bb.di
  %.023.i.i.i.i572 = phi i64 [ %spec.select.i.i.i.i560, %bb.di ], [ %i.aca, %select.unfold.i.i.i.i571 ]
  %.01422.i.i.i.i573 = phi float [ 1.000000e+00, %bb.di ], [ %i.abz, %select.unfold.i.i.i.i571 ] ; 2 uses
  %.01521.i.i.i.i574 = phi float [ 0.000000e+00, %bb.di ], [ %i.abw, %select.unfold.i.i.i.i571 ]
  %i.abr = phi i64 [ %i.aba, %bb.di ], [ %i.abt, %select.unfold.i.i.i.i571 ]
  %i.abs = mul nuw nsw i64 %i.abr, 16807
  %i.abt = urem i64 %i.abs, 2147483647            ; 3 uses
  %i.abu = add nsw i64 %i.abt, -1
  %i.abv = uitofp i64 %i.abu to float
  %i.abw = call float @llvm.fmuladd.f32(float %i.abv, float %.01422.i.i.i.i573, float %.01521.i.i.i.i574) ; 2 uses
  %i.abx = fpext float %.01422.i.i.i.i573 to x86_fp80
  %i.aby = fmul x86_fp80 %i.abx, f0x401DFFFFFFFC00000000
  %i.abz = fptrunc x86_fp80 %i.aby to float       ; 2 uses
  %i.aca = add i64 %.023.i.i.i.i572, -1           ; 2 uses
  %.not.i.i.i.i575 = icmp eq i64 %i.aca, 0
  br i1 %.not.i.i.i.i575, label %bb.dj, label %select.unfold.i.i.i.i571, !llvm.loop !112

bb.dk:                                            ; preds = %bb.dj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.016.i.i.i.i576 = phi float [ f0x3F7FFFFF, %bb.dk ], [ %i.abp, %bb.dj ]
  br label %select.unfold.i.i.i.i580

bb.dm:                                            ; preds = %select.unfold.i.i.i.i580
  %i.acb = fadd float %.016.i.i.i.i576, 0.000000e+00 ; 4 uses
  %i.acc = fdiv float %i.acj, %i.acm              ; 2 uses
  %i.acd = fcmp ult float %i.acc, 1.000000e+00
  br i1 %i.acd, label %bb.do, label %bb.dn, !prof !78

select.unfold.i.i.i.i580:                         ; preds = %select.unfold.i.i.i.i580, %bb.dl
  %.023.i.i.i.i581 = phi i64 [ %spec.select.i.i.i.i560, %bb.dl ], [ %i.acn, %select.unfold.i.i.i.i580 ]
  %.01422.i.i.i.i582 = phi float [ 1.000000e+00, %bb.dl ], [ %i.acm, %select.unfold.i.i.i.i580 ] ; 2 uses
  %.01521.i.i.i.i583 = phi float [ 0.000000e+00, %bb.dl ], [ %i.acj, %select.unfold.i.i.i.i580 ]
  %i.ace = phi i64 [ %i.abt, %bb.dl ], [ %i.acg, %select.unfold.i.i.i.i580 ]
  %i.acf = mul nuw nsw i64 %i.ace, 16807
  %i.acg = urem i64 %i.acf, 2147483647            ; 3 uses
  %i.ach = add nsw i64 %i.acg, -1
  %i.aci = uitofp i64 %i.ach to float
  %i.acj = call float @llvm.fmuladd.f32(float %i.aci, float %.01422.i.i.i.i582, float %.01521.i.i.i.i583) ; 2 uses
  %i.ack = fpext float %.01422.i.i.i.i582 to x86_fp80
  %i.acl = fmul x86_fp80 %i.ack, f0x401DFFFFFFFC00000000
  %i.acm = fptrunc x86_fp80 %i.acl to float       ; 2 uses
  %i.acn = add i64 %.023.i.i.i.i581, -1           ; 2 uses
  %.not.i.i.i.i584 = icmp eq i64 %i.acn, 0
  br i1 %.not.i.i.i.i584, label %bb.dm, label %select.unfold.i.i.i.i580, !llvm.loop !112

bb.dn:                                            ; preds = %bb.dm
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.016.i.i.i.i585 = phi float [ f0x3F7FFFFF, %bb.dn ], [ %i.acc, %bb.dm ]
  %i.aco = fadd float %.016.i.i.i.i585, 0.000000e+00 ; 4 uses
  %i.acp = load ptr, ptr %3, align 8, !tbaa !36   ; 3 uses
  %i.acq = mul i64 %.02661173, %i.bx              ; 3 uses
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acq
  %i.acs = add nuw i64 %.02661173, 1
  %i.act = mul i64 %i.acs, %i.bx                  ; 3 uses
  %i.acu = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.act
  %i.acv = add i64 %.02661173, 2
  %i.acw = mul i64 %i.acv, %i.bx                  ; 3 uses
  %i.acx = getelementptr inbounds nuw i8, ptr %i.acp, i64 %i.acw
  invoke void @_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5accumEPKfS6_PKhfS6_S6_S8_fS6_S6_S8_fPfRf(ptr noundef %.1807, ptr noundef %.1, ptr noundef %i.acr, float noundef %i.abo, ptr noundef %.1807, ptr noundef %.1, ptr noundef %i.acu, float noundef %i.acb, ptr noundef %.1807, ptr noundef %.1, ptr noundef %i.acx, float noundef %i.aco, ptr noundef %.sroa.0669.0930, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.dp unwind label %bb.dr

bb.dp:                                            ; preds = %bb.do
  %i.acy = load ptr, ptr %3, align 8, !tbaa !36   ; 3 uses
  %i.acz = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acq
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.act
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acy, i64 %i.acw
  invoke void @_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEE5accumEPKfS6_PKhfS8_fS8_fPfRf(ptr noundef %.1807, ptr noundef %.1, ptr noundef %i.acz, float noundef %i.abo, ptr noundef %i.ada, float noundef %i.acb, ptr noundef %i.adb, float noundef %i.aco, ptr noundef %.sroa.0661.0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  %i.adc = load ptr, ptr %3, align 8, !tbaa !36
  %i.add = getelementptr inbounds nuw i8, ptr %i.adc, i64 %i.acq ; 3 uses
  %i.ade = load i16, ptr %i.add, align 2, !tbaa !426, !alias.scope !548, !noalias !551 ; 2 uses
  %i.adf = zext i16 %i.ade to i32
  %i.adg = shl nuw nsw i32 %i.adf, 13             ; 3 uses
  %i.adh = and i32 %i.adg, 268427264              ; 2 uses
  %i.adi = and i32 %i.adg, 260046848              ; 2 uses
  %i.adj = add nuw nsw i32 %i.adh, 939524096
  %i.adk = or i32 %i.adg, 1879048192
  %i.adl = add nuw nsw i32 %i.adh, 947912704
  %i.adm = bitcast i32 %i.adl to float
  %i.adn = fadd float %i.adm, f0xB8800000
end_hunk_25
begin_hunk_26_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a

bb.ch:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i530, %.critedge365
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.xs = load float, ptr %i.wj, align 4, !tbaa !74
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0692.0, i64 %.02811135
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !74
  %i.xv = insertelement <2 x float> poison, float %i.xs, i64 0
  %i.xw = insertelement <2 x float> %i.xv, float %i.xu, i64 1
  %i.xx = fadd <2 x float> %i.wh, %i.xw           ; 2 uses
  %i.xy = extractelement <2 x float> %i.xx, i64 0
  %i.xz = extractelement <2 x float> %i.xx, i64 1
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.96, float noundef %i.xy, float noundef %i.xz)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.ya = load i8, ptr %17, align 8, !tbaa !96, !range !105, !noundef !106
  %i.yb = trunc nuw i8 %i.ya to i1
  br i1 %i.yb, label %.critedge367, label %bb.cl

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit527, %bb.bv
  %.pn309.pn.pn = phi { ptr, i32 } [ %.pn309.pn, %_ZN7testing7MessageD2Ev.exit527 ], [ %i.wr, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit659

bb.ck:                                            ; preds = %bb.ch
  %i.yc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit659.thread

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.yd = load ptr, ptr %i.lu, align 8, !tbaa !107 ; 2 uses
  %.not.i.i533 = icmp eq ptr %i.yd, null
  br i1 %.not.i.i533, label %_ZNK7testing15AssertionResult15failure_messageEv.exit534, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit534

_ZNK7testing15AssertionResult15failure_messageEv.exit534: ; preds = %bb.cn, %bb.cm
  %i.yf = phi ptr [ %i.ye, %bb.cn ], [ @.str.20, %bb.cm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 887, ptr noundef %i.yf)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit534
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.yg = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i535 = icmp eq ptr %i.yg, null
  br i1 %.not.i.i535, label %_ZN7testing7MessageD2Ev.exit537, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i536

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i536: ; preds = %bb.cp
  %i.yh = load ptr, ptr %i.yg, align 8, !tbaa !24
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 8
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(128) %i.yg) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit537

_ZN7testing7MessageD2Ev.exit537:                  ; preds = %bb.cp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i536
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.yk = load ptr, ptr %i.lu, align 8, !tbaa !107 ; 4 uses
  %.not.i.i538 = icmp eq ptr %i.yk, null
  br i1 %.not.i.i538, label %_ZNSt6vectorIfSaIfEED2Ev.exit643.thread, label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit537
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !18 ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yk, i64 16 ; 2 uses
  %i.yn = icmp eq ptr %i.yl, %i.ym
  br i1 %i.yn, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i539

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i539: ; preds = %bb.cq
  %i.yo = load i64, ptr %i.ym, align 8, !tbaa !17
  %i.yp = add i64 %i.yo, 1
  call void @_ZdlPvm(ptr noundef %i.yl, i64 noundef %i.yp) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i539
  call void @_ZdlPvm(ptr noundef nonnull %i.yk, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit643.thread

_ZNSt6vectorIfSaIfEED2Ev.exit643.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i540, %_ZN7testing7MessageD2Ev.exit537
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.er

bb.cr:                                            ; preds = %bb.cl
  %i.yq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit545

bb.cs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit534
  %i.yr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.co
  %i.ys = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn313 = phi { ptr, i32 } [ %i.ys, %bb.ct ], [ %i.yr, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.yt = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i543 = icmp eq ptr %i.yt, null
  br i1 %.not.i.i543, label %_ZN7testing7MessageD2Ev.exit545, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i544

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i544: ; preds = %bb.cu
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !24
  %i.yv = getelementptr inbounds nuw i8, ptr %i.yu, i64 8
  %i.yw = load ptr, ptr %i.yv, align 8
  call void %i.yw(ptr noundef nonnull align 8 dereferenceable(128) %i.yt) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit545

_ZN7testing7MessageD2Ev.exit545:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i544, %bb.cu, %bb.cr
  %.pn313.pn = phi { ptr, i32 } [ %i.yq, %bb.cr ], [ %.pn313, %bb.cu ], [ %.pn313, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i544 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit659.thread

.critedge367:                                     ; preds = %bb.ci
  %i.yx = load ptr, ptr %i.lu, align 8, !tbaa !107 ; 4 uses
  %.not.i.i546 = icmp eq ptr %i.yx, null
  br i1 %.not.i.i546, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.critedge367
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !18 ; 2 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yx, i64 16 ; 2 uses
  %i.za = icmp eq ptr %i.yy, %i.yz
  br i1 %i.za, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i548, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i547

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i547: ; preds = %bb.cv
  %i.zb = load i64, ptr %i.yz, align 8, !tbaa !17
  %i.zc = add i64 %i.zb, 1
  call void @_ZdlPvm(ptr noundef %i.yy, i64 noundef %i.zc) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i548

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i548: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i547
  call void @_ZdlPvm(ptr noundef nonnull %i.yx, i64 noundef 32) #23
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i548, %.critedge367
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.zd = add nuw i64 %.02811135, 1               ; 2 uses
  %exitcond1181.not = icmp eq i64 %i.zd, %1
  br i1 %exitcond1181.not, label %.critedge369, label %.lr.ph1137, !llvm.loop !653

_ZNSt6vectorIfSaIfEED2Ev.exit659.thread:          ; preds = %bb.ck, %_ZN7testing7MessageD2Ev.exit545
  %.pn313.pn.pn = phi { ptr, i32 } [ %.pn313.pn, %_ZN7testing7MessageD2Ev.exit545 ], [ %i.yc, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.fe

.critedge369:                                     ; preds = %bb.cw, %bb.bt
  %i.ze = add i64 %.02851140, 2                   ; 2 uses
  %.not321 = icmp ult i64 %i.ze, %0
  br i1 %.not321, label %.preheader1090, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551, !llvm.loop !654

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551: ; preds = %.critedge369, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit488
  br i1 %.not.i.i.i.i389, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551
  %i.zf = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.zg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zf) #24
          to label %.noexc559 unwind label %bb.cx ; 4 uses

.noexc559:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.zg, i8 0, i64 %i.zf, i1 false), !tbaa !74
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.zg, i64 %1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !74
  %i.zi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zf) #24
          to label %.noexc569 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !74
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit570

.noexc569:                                        ; preds = %.noexc559
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.zi, i8 0, i64 %i.zf, i1 false), !tbaa !74
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.zi, i64 %1
  %i.zk = ptrtoint ptr %i.zj to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit570

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit570:         ; preds = %.noexc569, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567
  %.sroa.12686.0910 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567 ], [ %i.zh, %.noexc569 ] ; 2 uses
  %.sroa.0680.0906 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567 ], [ %i.zg, %.noexc569 ] ; 9 uses
  %.sroa.0672.0 = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567 ], [ %i.zi, %.noexc569 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i567 ], [ %i.zk, %.noexc569 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  %i.zl = urem i64 %0, 3
  %i.zm = sub nuw i64 %0, %i.zl
  %.not1153 = icmp ult i64 %0, 3
  br i1 %.not1153, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit570
  %i.zn = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.zo = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.zp = fdiv x86_fp80 %i.zn, %i.zo
  %i.zq = fptoui x86_fp80 %i.zp to i64            ; 2 uses
  %i.zr = add i64 %i.zq, 23
  %i.zs = udiv i64 %i.zr, %i.zq
  %spec.select.i.i.i.i571 = call i64 @llvm.umax.i64(i64 %i.zs, i64 1) ; 3 uses
  %i.zt = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %min.iters.check1338 = icmp ult i64 %1, 4
  %n.vec1340 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1347 = icmp eq i64 %1, %n.vec1340
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge377
  %.02791149 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.ake, %.critedge377 ] ; 4 uses
  %.sroa.0781.31148 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.abo, %.critedge377 ]
  br i1 %.not.i.i.i.i389, label %._crit_edge1143, label %.lr.ph1142.preheader

.lr.ph1142.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1338, label %.lr.ph1142.preheader1349, label %vector.body1341

vector.body1341:                                  ; preds = %.lr.ph1142.preheader, %vector.body1341
  %index1342 = phi i64 [ %index.next1344, %vector.body1341 ], [ 0, %.lr.ph1142.preheader ] ; 4 uses
  %vec.ind1343 = phi <4 x i64> [ %vec.ind.next1345, %vector.body1341 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1142.preheader ] ; 2 uses
  %i.zv = add nuw <4 x i64> %vec.ind1343, splat (i64 1) ; 2 uses
  %i.zw = mul <4 x i64> %i.zv, %i.zv
  %i.zx = uitofp <4 x i64> %i.zw to <4 x float>   ; 3 uses
  %i.zy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %index1342
  store <4 x float> %i.zx, ptr %i.zy, align 4, !tbaa !74
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0680.0906, i64 %index1342
  store <4 x float> %i.zx, ptr %i.zz, align 4, !tbaa !74
  %i.aaa = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0672.0, i64 %index1342
  store <4 x float> %i.zx, ptr %i.aaa, align 4, !tbaa !74
  %index.next1344 = add nuw i64 %index1342, 4     ; 2 uses
  %vec.ind.next1345 = add nuw <4 x i64> %vec.ind1343, splat (i64 4)
  %i.aab = icmp eq i64 %index.next1344, %n.vec1340
  br i1 %i.aab, label %middle.block1346, label %vector.body1341, !llvm.loop !655

middle.block1346:                                 ; preds = %vector.body1341
  br i1 %cmp.n1347, label %._crit_edge1143, label %.lr.ph1142.preheader1349

.lr.ph1142.preheader1349:                         ; preds = %.lr.ph1142.preheader, %middle.block1346
  %.02781141.ph = phi i64 [ 0, %.lr.ph1142.preheader ], [ %n.vec1340, %middle.block1346 ]
  br label %.lr.ph1142

bb.cx:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i551.thread
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit659

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc559
  %i.aad = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  br label %bb.fd

._crit_edge1143:                                  ; preds = %.lr.ph1142, %middle.block1346, %.preheader
  store float 0.000000e+00, ptr %i.c, align 4, !tbaa !74
  store float 0.000000e+00, ptr %i.d, align 4, !tbaa !74
  br label %select.unfold.i.i.i.i573

bb.cy:                                            ; preds = %select.unfold.i.i.i.i573
  %i.aae = fdiv float %i.aal, %i.aao              ; 2 uses
  %i.aaf = fcmp ult float %i.aae, 1.000000e+00
  br i1 %i.aaf, label %bb.da, label %bb.cz, !prof !78

select.unfold.i.i.i.i573:                         ; preds = %select.unfold.i.i.i.i573, %._crit_edge1143
  %.023.i.i.i.i574 = phi i64 [ %spec.select.i.i.i.i571, %._crit_edge1143 ], [ %i.aap, %select.unfold.i.i.i.i573 ]
  %.01422.i.i.i.i575 = phi float [ 1.000000e+00, %._crit_edge1143 ], [ %i.aao, %select.unfold.i.i.i.i573 ] ; 2 uses
  %.01521.i.i.i.i576 = phi float [ 0.000000e+00, %._crit_edge1143 ], [ %i.aal, %select.unfold.i.i.i.i573 ]
  %i.aag = phi i64 [ %.sroa.0781.31148, %._crit_edge1143 ], [ %i.aai, %select.unfold.i.i.i.i573 ]
  %i.aah = mul nuw nsw i64 %i.aag, 16807
  %i.aai = urem i64 %i.aah, 2147483647            ; 3 uses
  %i.aaj = add nsw i64 %i.aai, -1
  %i.aak = uitofp i64 %i.aaj to float
  %i.aal = call float @llvm.fmuladd.f32(float %i.aak, float %.01422.i.i.i.i575, float %.01521.i.i.i.i576) ; 2 uses
  %i.aam = fpext float %.01422.i.i.i.i575 to x86_fp80
  %i.aan = fmul x86_fp80 %i.aam, f0x401DFFFFFFFC00000000
  %i.aao = fptrunc x86_fp80 %i.aan to float       ; 2 uses
  %i.aap = add i64 %.023.i.i.i.i574, -1           ; 2 uses
  %.not.i.i.i.i577 = icmp eq i64 %i.aap, 0
  br i1 %.not.i.i.i.i577, label %bb.cy, label %select.unfold.i.i.i.i573, !llvm.loop !112

bb.cz:                                            ; preds = %bb.cy
  br label %bb.da

.lr.ph1142:                                       ; preds = %.lr.ph1142.preheader1349, %.lr.ph1142
  %.02781141 = phi i64 [ %i.aaq, %.lr.ph1142 ], [ %.02781141.ph, %.lr.ph1142.preheader1349 ] ; 4 uses
  %i.aaq = add nuw i64 %.02781141, 1              ; 4 uses
  %i.aar = mul i64 %i.aaq, %i.aaq
  %i.aas = uitofp i64 %i.aar to float             ; 3 uses
  %i.aat = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0725.0, i64 %.02781141
  store float %i.aas, ptr %i.aat, align 4, !tbaa !74
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0680.0906, i64 %.02781141
  store float %i.aas, ptr %i.aau, align 4, !tbaa !74
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0672.0, i64 %.02781141
  store float %i.aas, ptr %i.aav, align 4, !tbaa !74
  %exitcond1182.not = icmp eq i64 %i.aaq, %1
  br i1 %exitcond1182.not, label %._crit_edge1143, label %.lr.ph1142, !llvm.loop !656

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.016.i.i.i.i578 = phi float [ f0x3F7FFFFF, %bb.cz ], [ %i.aae, %bb.cy ]
  br label %select.unfold.i.i.i.i582

bb.db:                                            ; preds = %select.unfold.i.i.i.i582
  %i.aaw = fadd float %.016.i.i.i.i578, 0.000000e+00 ; 4 uses
  %i.aax = fdiv float %i.abe, %i.abh              ; 2 uses
  %i.aay = fcmp ult float %i.aax, 1.000000e+00
  br i1 %i.aay, label %bb.dd, label %bb.dc, !prof !78

select.unfold.i.i.i.i582:                         ; preds = %select.unfold.i.i.i.i582, %bb.da
  %.023.i.i.i.i583 = phi i64 [ %spec.select.i.i.i.i571, %bb.da ], [ %i.abi, %select.unfold.i.i.i.i582 ]
  %.01422.i.i.i.i584 = phi float [ 1.000000e+00, %bb.da ], [ %i.abh, %select.unfold.i.i.i.i582 ] ; 2 uses
  %.01521.i.i.i.i585 = phi float [ 0.000000e+00, %bb.da ], [ %i.abe, %select.unfold.i.i.i.i582 ]
  %i.aaz = phi i64 [ %i.aai, %bb.da ], [ %i.abb, %select.unfold.i.i.i.i582 ]
  %i.aba = mul nuw nsw i64 %i.aaz, 16807
  %i.abb = urem i64 %i.aba, 2147483647            ; 3 uses
  %i.abc = add nsw i64 %i.abb, -1
  %i.abd = uitofp i64 %i.abc to float
  %i.abe = call float @llvm.fmuladd.f32(float %i.abd, float %.01422.i.i.i.i584, float %.01521.i.i.i.i585) ; 2 uses
  %i.abf = fpext float %.01422.i.i.i.i584 to x86_fp80
  %i.abg = fmul x86_fp80 %i.abf, f0x401DFFFFFFFC00000000
  %i.abh = fptrunc x86_fp80 %i.abg to float       ; 2 uses
  %i.abi = add i64 %.023.i.i.i.i583, -1           ; 2 uses
  %.not.i.i.i.i586 = icmp eq i64 %i.abi, 0
  br i1 %.not.i.i.i.i586, label %bb.db, label %select.unfold.i.i.i.i582, !llvm.loop !112

bb.dc:                                            ; preds = %bb.db
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.016.i.i.i.i587 = phi float [ f0x3F7FFFFF, %bb.dc ], [ %i.aax, %bb.db ]
  br label %select.unfold.i.i.i.i591

bb.de:                                            ; preds = %select.unfold.i.i.i.i591
  %i.abj = fadd float %.016.i.i.i.i587, 0.000000e+00 ; 4 uses
  %i.abk = fdiv float %i.abr, %i.abu              ; 2 uses
  %i.abl = fcmp ult float %i.abk, 1.000000e+00
  br i1 %i.abl, label %bb.dg, label %bb.df, !prof !78

select.unfold.i.i.i.i591:                         ; preds = %select.unfold.i.i.i.i591, %bb.dd
  %.023.i.i.i.i592 = phi i64 [ %spec.select.i.i.i.i571, %bb.dd ], [ %i.abv, %select.unfold.i.i.i.i591 ]
  %.01422.i.i.i.i593 = phi float [ 1.000000e+00, %bb.dd ], [ %i.abu, %select.unfold.i.i.i.i591 ] ; 2 uses
  %.01521.i.i.i.i594 = phi float [ 0.000000e+00, %bb.dd ], [ %i.abr, %select.unfold.i.i.i.i591 ]
  %i.abm = phi i64 [ %i.abb, %bb.dd ], [ %i.abo, %select.unfold.i.i.i.i591 ]
  %i.abn = mul nuw nsw i64 %i.abm, 16807
  %i.abo = urem i64 %i.abn, 2147483647            ; 3 uses
  %i.abp = add nsw i64 %i.abo, -1
  %i.abq = uitofp i64 %i.abp to float
  %i.abr = call float @llvm.fmuladd.f32(float %i.abq, float %.01422.i.i.i.i593, float %.01521.i.i.i.i594) ; 2 uses
  %i.abs = fpext float %.01422.i.i.i.i593 to x86_fp80
  %i.abt = fmul x86_fp80 %i.abs, f0x401DFFFFFFFC00000000
  %i.abu = fptrunc x86_fp80 %i.abt to float       ; 2 uses
  %i.abv = add i64 %.023.i.i.i.i592, -1           ; 2 uses
  %.not.i.i.i.i595 = icmp eq i64 %i.abv, 0
  br i1 %.not.i.i.i.i595, label %bb.de, label %select.unfold.i.i.i.i591, !llvm.loop !112

bb.df:                                            ; preds = %bb.de
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.016.i.i.i.i596 = phi float [ f0x3F7FFFFF, %bb.df ], [ %i.abk, %bb.de ]
  %i.abw = fadd float %.016.i.i.i.i596, 0.000000e+00 ; 4 uses
  %i.abx = load ptr, ptr %3, align 8, !tbaa !36   ; 3 uses
  %i.aby = mul i64 %.02791149, %i.bf              ; 3 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.abx, i64 %i.aby
  %i.aca = add nuw i64 %.02791149, 1
  %i.acb = mul i64 %i.aca, %i.bf                  ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.abx, i64 %i.acb
  %i.acd = add i64 %.02791149, 2
  %i.ace = mul i64 %i.acd, %i.bf                  ; 3 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.abx, i64 %i.ace
  invoke void @_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5accumEPKfPKhfS6_S8_fS6_S8_fPfRf(ptr noundef %i.ba, ptr noundef %i.abz, float noundef %i.aaw, ptr noundef %i.ba, ptr noundef %i.acc, float noundef %i.abj, ptr noundef %i.ba, ptr noundef %i.acf, float noundef %i.abw, ptr noundef %.sroa.0680.0906, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.dh unwind label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %i.acg = load ptr, ptr %3, align 8, !tbaa !36   ; 3 uses
  %i.ach = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.aby
  %i.aci = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.acb
  %i.acj = getelementptr inbounds nuw i8, ptr %i.acg, i64 %i.ace
  invoke void @_ZN5faiss10cppcontrib22IndexMinMaxFP16DecoderINS0_14IndexPQDecoderILl256ELl16ELl8EEEE5accumEPKfPKhfS8_fS8_fPfRf(ptr noundef %i.ba, ptr noundef %i.ach, float noundef %i.aaw, ptr noundef %i.aci, float noundef %i.abj, ptr noundef %i.acj, float noundef %i.abw, ptr noundef %.sroa.0672.0, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
          to label %bb.di unwind label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ack = load ptr, ptr %3, align 8, !tbaa !36
  %i.acl = getelementptr inbounds nuw i8, ptr %i.ack, i64 %i.aby ; 3 uses
  %i.acm = load i16, ptr %i.acl, align 2, !tbaa !426, !alias.scope !657, !noalias !660 ; 2 uses
  %i.acn = zext i16 %i.acm to i32
  %i.aco = shl nuw nsw i32 %i.acn, 13             ; 3 uses
  %i.acp = and i32 %i.aco, 268427264              ; 2 uses
  %i.acq = and i32 %i.aco, 260046848              ; 2 uses
  %i.acr = add nuw nsw i32 %i.acp, 939524096
  %i.acs = or i32 %i.aco, 1879048192
  %i.act = add nuw nsw i32 %i.acp, 947912704
  %i.acu = bitcast i32 %i.act to float
  %i.acv = fadd float %i.acu, f0xB8800000
end_hunk_26
begin_hunk_27_@_Z30verifyMinMaxIndex2LevelDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  br i1 %i.pi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510: ; preds = %bb.co
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !17
  %i.pk = add i64 %i.pj, 1
  call void @_ZdlPvm(ptr noundef %i.pg, i64 noundef %i.pk) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i510
  call void @_ZdlPvm(ptr noundef nonnull %i.pf, i64 noundef 32) #23
  br label %bb.cp

bb.cp:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i511, %.critedge352
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.pl = load float, ptr %i.oc, align 4, !tbaa !74
  %i.pm = fadd float %i.ob, %i.pl
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0673.0, i64 %.02681145
  %i.po = load float, ptr %i.pn, align 4, !tbaa !74
  %i.pp = fadd float %i.nj, %i.po
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.96, float noundef %i.pm, float noundef %i.pp)
          to label %bb.cq unwind label %bb.cs

bb.cq:                                            ; preds = %bb.cp
  %i.pq = load i8, ptr %17, align 8, !tbaa !96, !range !105, !noundef !106
  %i.pr = trunc nuw i8 %i.pq to i1
  br i1 %i.pr, label %.critedge354, label %bb.ct

bb.cr:                                            ; preds = %_ZN7testing7MessageD2Ev.exit508, %bb.cd
  %.pn295.pn.pn = phi { ptr, i32 } [ %.pn295.pn, %_ZN7testing7MessageD2Ev.exit508 ], [ %i.ok, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit634

bb.cs:                                            ; preds = %bb.cp
  %i.ps = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit634.thread

bb.ct:                                            ; preds = %bb.cq
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cu unwind label %bb.cz

bb.cu:                                            ; preds = %bb.ct
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.pt = load ptr, ptr %i.kj, align 8, !tbaa !107 ; 2 uses
  %.not.i.i514 = icmp eq ptr %i.pt, null
  br i1 %.not.i.i514, label %_ZNK7testing15AssertionResult15failure_messageEv.exit515, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit515

_ZNK7testing15AssertionResult15failure_messageEv.exit515: ; preds = %bb.cv, %bb.cu
  %i.pv = phi ptr [ %i.pu, %bb.cv ], [ @.str.20, %bb.cu ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 460, ptr noundef %i.pv)
          to label %bb.cw unwind label %bb.da

bb.cw:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit515
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cx unwind label %bb.db

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.pw = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i516 = icmp eq ptr %i.pw, null
  br i1 %.not.i.i516, label %_ZN7testing7MessageD2Ev.exit518, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i517

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i517: ; preds = %bb.cx
  %i.px = load ptr, ptr %i.pw, align 8, !tbaa !24
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  %i.pz = load ptr, ptr %i.py, align 8
  call void %i.pz(ptr noundef nonnull align 8 dereferenceable(128) %i.pw) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit518

_ZN7testing7MessageD2Ev.exit518:                  ; preds = %bb.cx, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i517
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.qa = load ptr, ptr %i.kj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i519 = icmp eq ptr %i.qa, null
  br i1 %.not.i.i519, label %_ZNSt6vectorIfSaIfEED2Ev.exit618.thread, label %bb.cy

bb.cy:                                            ; preds = %_ZN7testing7MessageD2Ev.exit518
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !18 ; 2 uses
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %i.qd = icmp eq ptr %i.qb, %i.qc
  br i1 %i.qd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i520: ; preds = %bb.cy
  %i.qe = load i64, ptr %i.qc, align 8, !tbaa !17
  %i.qf = add i64 %i.qe, 1
  call void @_ZdlPvm(ptr noundef %i.qb, i64 noundef %i.qf) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i520
  call void @_ZdlPvm(ptr noundef nonnull %i.qa, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit618.thread

_ZNSt6vectorIfSaIfEED2Ev.exit618.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521, %_ZN7testing7MessageD2Ev.exit518
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ev

bb.cz:                                            ; preds = %bb.ct
  %i.qg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit526

bb.da:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit515
  %i.qh = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

bb.db:                                            ; preds = %bb.cw
  %i.qi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %.pn299 = phi { ptr, i32 } [ %i.qi, %bb.db ], [ %i.qh, %bb.da ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.qj = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i524 = icmp eq ptr %i.qj, null
  br i1 %.not.i.i524, label %_ZN7testing7MessageD2Ev.exit526, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525: ; preds = %bb.dc
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !24
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qk, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8
  call void %i.qm(ptr noundef nonnull align 8 dereferenceable(128) %i.qj) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit526

_ZN7testing7MessageD2Ev.exit526:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525, %bb.dc, %bb.cz
  %.pn299.pn = phi { ptr, i32 } [ %i.qg, %bb.cz ], [ %.pn299, %bb.dc ], [ %.pn299, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i525 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit634.thread

.critedge354:                                     ; preds = %bb.cq
  %i.qn = load ptr, ptr %i.kj, align 8, !tbaa !107 ; 4 uses
  %.not.i.i527 = icmp eq ptr %i.qn, null
  br i1 %.not.i.i527, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.critedge354
  %i.qo = load ptr, ptr %i.qn, align 8, !tbaa !18 ; 2 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qn, i64 16 ; 2 uses
  %i.qq = icmp eq ptr %i.qo, %i.qp
  br i1 %i.qq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i528: ; preds = %bb.dd
  %i.qr = load i64, ptr %i.qp, align 8, !tbaa !17
  %i.qs = add i64 %i.qr, 1
  call void @_ZdlPvm(ptr noundef %i.qo, i64 noundef %i.qs) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529: ; preds = %bb.dd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i528
  call void @_ZdlPvm(ptr noundef nonnull %i.qn, i64 noundef 32) #23
  br label %bb.de

bb.de:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i529, %.critedge354
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.qt = add nuw i64 %.02681145, 1               ; 2 uses
  %exitcond1191.not = icmp eq i64 %i.qt, %1
  br i1 %exitcond1191.not, label %.critedge356, label %.lr.ph1147, !llvm.loop !743

_ZNSt6vectorIfSaIfEED2Ev.exit634.thread:          ; preds = %bb.cs, %_ZN7testing7MessageD2Ev.exit526
  %.pn299.pn.pn = phi { ptr, i32 } [ %.pn299.pn, %_ZN7testing7MessageD2Ev.exit526 ], [ %i.ps, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.fh

.critedge356:                                     ; preds = %bb.de, %bb.cb
  %i.qu = add i64 %.02721150, 2                   ; 2 uses
  %.not307 = icmp ult i64 %i.qu, %0
  br i1 %.not307, label %.preheader1100, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532, !llvm.loop !744

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532: ; preds = %.critedge356, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit477
  br i1 %.not.i.i.i.i379, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit551, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532
  %i.qv = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.qw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qv) #24
          to label %.noexc540 unwind label %bb.df ; 4 uses

.noexc540:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qw, i8 0, i64 %i.qv, i1 false), !tbaa !74
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qw, i64 %1 ; 2 uses
  %i.qy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qv) #24
          to label %.noexc550 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc550:                                        ; preds = %.noexc540
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qy, i8 0, i64 %i.qv, i1 false), !tbaa !74
  %i.qz = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %1
  %i.ra = ptrtoint ptr %i.qz to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit551

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit551:         ; preds = %.noexc550, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532
  %.sroa.12665.0920 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532 ], [ %i.qx, %.noexc550 ] ; 3 uses
  %.sroa.0659.0916 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532 ], [ %i.qw, %.noexc550 ] ; 9 uses
  %.sroa.0649.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532 ], [ %i.qy, %.noexc550 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532 ], [ %i.ra, %.noexc550 ] ; 2 uses
  %i.rb = urem i64 %0, 3
  %i.rc = sub nuw i64 %0, %i.rb
  %.not1163 = icmp ult i64 %0, 3
  br i1 %.not1163, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit551
  %i.rd = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.re = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.rf = fdiv x86_fp80 %i.rd, %i.re
  %i.rg = fptoui x86_fp80 %i.rf to i64            ; 2 uses
  %i.rh = add i64 %i.rg, 23
  %i.ri = udiv i64 %i.rh, %i.rg
  %spec.select.i.i.i.i552 = call i64 @llvm.umax.i64(i64 %i.ri, i64 1) ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %min.iters.check1356 = icmp ult i64 %1, 4
  %n.vec1358 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1365 = icmp eq i64 %1, %n.vec1358
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge364
  %.02661159 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.zj, %.critedge364 ] ; 4 uses
  %.sroa.0760.31158 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.te, %.critedge364 ]
  br i1 %.not.i.i.i.i379, label %select.unfold.i.i.i.i554.preheader, label %.lr.ph1152.preheader

select.unfold.i.i.i.i554.preheader:               ; preds = %.lr.ph1152, %middle.block1364, %.preheader
  br label %select.unfold.i.i.i.i554

.lr.ph1152.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1356, label %.lr.ph1152.preheader1367, label %vector.body1359

vector.body1359:                                  ; preds = %.lr.ph1152.preheader, %vector.body1359
  %index1360 = phi i64 [ %index.next1362, %vector.body1359 ], [ 0, %.lr.ph1152.preheader ] ; 4 uses
  %vec.ind1361 = phi <4 x i64> [ %vec.ind.next1363, %vector.body1359 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1152.preheader ] ; 2 uses
  %i.rl = add nuw <4 x i64> %vec.ind1361, splat (i64 1) ; 2 uses
  %i.rm = mul <4 x i64> %i.rl, %i.rl
  %i.rn = uitofp <4 x i64> %i.rm to <4 x float>   ; 3 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %index1360
  store <4 x float> %i.rn, ptr %i.ro, align 4, !tbaa !74
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0659.0916, i64 %index1360
  store <4 x float> %i.rn, ptr %i.rp, align 4, !tbaa !74
  %i.rq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0649.0, i64 %index1360
  store <4 x float> %i.rn, ptr %i.rq, align 4, !tbaa !74
  %index.next1362 = add nuw i64 %index1360, 4     ; 2 uses
  %vec.ind.next1363 = add nuw <4 x i64> %vec.ind1361, splat (i64 4)
  %i.rr = icmp eq i64 %index.next1362, %n.vec1358
  br i1 %i.rr, label %middle.block1364, label %vector.body1359, !llvm.loop !745

middle.block1364:                                 ; preds = %vector.body1359
  br i1 %cmp.n1365, label %select.unfold.i.i.i.i554.preheader, label %.lr.ph1152.preheader1367

.lr.ph1152.preheader1367:                         ; preds = %.lr.ph1152.preheader, %middle.block1364
  %.02651151.ph = phi i64 [ 0, %.lr.ph1152.preheader ], [ %n.vec1358, %middle.block1364 ]
  br label %.lr.ph1152

bb.df:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i532.thread
  %i.rs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit634

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc540
  %i.rt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.dg:                                            ; preds = %select.unfold.i.i.i.i554
  %i.ru = fdiv float %i.sb, %i.se                 ; 2 uses
  %i.rv = fcmp ult float %i.ru, 1.000000e+00
  br i1 %i.rv, label %bb.di, label %bb.dh, !prof !78

select.unfold.i.i.i.i554:                         ; preds = %select.unfold.i.i.i.i554.preheader, %select.unfold.i.i.i.i554
  %.023.i.i.i.i555 = phi i64 [ %i.sf, %select.unfold.i.i.i.i554 ], [ %spec.select.i.i.i.i552, %select.unfold.i.i.i.i554.preheader ]
  %.01422.i.i.i.i556 = phi float [ %i.se, %select.unfold.i.i.i.i554 ], [ 1.000000e+00, %select.unfold.i.i.i.i554.preheader ] ; 2 uses
  %.01521.i.i.i.i557 = phi float [ %i.sb, %select.unfold.i.i.i.i554 ], [ 0.000000e+00, %select.unfold.i.i.i.i554.preheader ]
  %i.rw = phi i64 [ %i.ry, %select.unfold.i.i.i.i554 ], [ %.sroa.0760.31158, %select.unfold.i.i.i.i554.preheader ]
  %i.rx = mul nuw nsw i64 %i.rw, 16807
  %i.ry = urem i64 %i.rx, 2147483647              ; 3 uses
  %i.rz = add nsw i64 %i.ry, -1
  %i.sa = uitofp i64 %i.rz to float
  %i.sb = call float @llvm.fmuladd.f32(float %i.sa, float %.01422.i.i.i.i556, float %.01521.i.i.i.i557) ; 2 uses
  %i.sc = fpext float %.01422.i.i.i.i556 to x86_fp80
  %i.sd = fmul x86_fp80 %i.sc, f0x401DFFFFFFFC00000000
  %i.se = fptrunc x86_fp80 %i.sd to float         ; 2 uses
  %i.sf = add i64 %.023.i.i.i.i555, -1            ; 2 uses
  %.not.i.i.i.i558 = icmp eq i64 %i.sf, 0
  br i1 %.not.i.i.i.i558, label %bb.dg, label %select.unfold.i.i.i.i554, !llvm.loop !112

bb.dh:                                            ; preds = %bb.dg
  br label %bb.di

.lr.ph1152:                                       ; preds = %.lr.ph1152.preheader1367, %.lr.ph1152
  %.02651151 = phi i64 [ %i.sg, %.lr.ph1152 ], [ %.02651151.ph, %.lr.ph1152.preheader1367 ] ; 4 uses
  %i.sg = add nuw i64 %.02651151, 1               ; 4 uses
  %i.sh = mul i64 %i.sg, %i.sg
  %i.si = uitofp i64 %i.sh to float               ; 3 uses
  %i.sj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0704.0, i64 %.02651151
  store float %i.si, ptr %i.sj, align 4, !tbaa !74
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0659.0916, i64 %.02651151
  store float %i.si, ptr %i.sk, align 4, !tbaa !74
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0649.0, i64 %.02651151
  store float %i.si, ptr %i.sl, align 4, !tbaa !74
  %exitcond1192.not = icmp eq i64 %i.sg, %1
  br i1 %exitcond1192.not, label %select.unfold.i.i.i.i554.preheader, label %.lr.ph1152, !llvm.loop !746

bb.di:                                            ; preds = %bb.dh, %bb.dg
  %.016.i.i.i.i559 = phi float [ f0x3F7FFFFF, %bb.dh ], [ %i.ru, %bb.dg ]
  br label %select.unfold.i.i.i.i563

bb.dj:                                            ; preds = %select.unfold.i.i.i.i563
  %i.sm = fadd float %.016.i.i.i.i559, 0.000000e+00 ; 6 uses
  %i.sn = fdiv float %i.su, %i.sx                 ; 2 uses
  %i.so = fcmp ult float %i.sn, 1.000000e+00
  br i1 %i.so, label %bb.dl, label %bb.dk, !prof !78

select.unfold.i.i.i.i563:                         ; preds = %select.unfold.i.i.i.i563, %bb.di
  %.023.i.i.i.i564 = phi i64 [ %spec.select.i.i.i.i552, %bb.di ], [ %i.sy, %select.unfold.i.i.i.i563 ]
  %.01422.i.i.i.i565 = phi float [ 1.000000e+00, %bb.di ], [ %i.sx, %select.unfold.i.i.i.i563 ] ; 2 uses
  %.01521.i.i.i.i566 = phi float [ 0.000000e+00, %bb.di ], [ %i.su, %select.unfold.i.i.i.i563 ]
  %i.sp = phi i64 [ %i.ry, %bb.di ], [ %i.sr, %select.unfold.i.i.i.i563 ]
  %i.sq = mul nuw nsw i64 %i.sp, 16807
  %i.sr = urem i64 %i.sq, 2147483647              ; 3 uses
  %i.ss = add nsw i64 %i.sr, -1
  %i.st = uitofp i64 %i.ss to float
  %i.su = call float @llvm.fmuladd.f32(float %i.st, float %.01422.i.i.i.i565, float %.01521.i.i.i.i566) ; 2 uses
  %i.sv = fpext float %.01422.i.i.i.i565 to x86_fp80
  %i.sw = fmul x86_fp80 %i.sv, f0x401DFFFFFFFC00000000
  %i.sx = fptrunc x86_fp80 %i.sw to float         ; 2 uses
  %i.sy = add i64 %.023.i.i.i.i564, -1            ; 2 uses
  %.not.i.i.i.i567 = icmp eq i64 %i.sy, 0
  br i1 %.not.i.i.i.i567, label %bb.dj, label %select.unfold.i.i.i.i563, !llvm.loop !112

bb.dk:                                            ; preds = %bb.dj
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.016.i.i.i.i568 = phi float [ f0x3F7FFFFF, %bb.dk ], [ %i.sn, %bb.dj ]
  br label %select.unfold.i.i.i.i572

bb.dm:                                            ; preds = %select.unfold.i.i.i.i572
  %i.sz = fadd float %.016.i.i.i.i568, 0.000000e+00 ; 6 uses
  %i.ta = fdiv float %i.th, %i.tk                 ; 2 uses
  %i.tb = fcmp ult float %i.ta, 1.000000e+00
  br i1 %i.tb, label %bb.do, label %bb.dn, !prof !78

select.unfold.i.i.i.i572:                         ; preds = %select.unfold.i.i.i.i572, %bb.dl
  %.023.i.i.i.i573 = phi i64 [ %spec.select.i.i.i.i552, %bb.dl ], [ %i.tl, %select.unfold.i.i.i.i572 ]
  %.01422.i.i.i.i574 = phi float [ 1.000000e+00, %bb.dl ], [ %i.tk, %select.unfold.i.i.i.i572 ] ; 2 uses
  %.01521.i.i.i.i575 = phi float [ 0.000000e+00, %bb.dl ], [ %i.th, %select.unfold.i.i.i.i572 ]
  %i.tc = phi i64 [ %i.sr, %bb.dl ], [ %i.te, %select.unfold.i.i.i.i572 ]
  %i.td = mul nuw nsw i64 %i.tc, 16807
  %i.te = urem i64 %i.td, 2147483647              ; 3 uses
  %i.tf = add nsw i64 %i.te, -1
  %i.tg = uitofp i64 %i.tf to float
  %i.th = call float @llvm.fmuladd.f32(float %i.tg, float %.01422.i.i.i.i574, float %.01521.i.i.i.i575) ; 2 uses
  %i.ti = fpext float %.01422.i.i.i.i574 to x86_fp80
  %i.tj = fmul x86_fp80 %i.ti, f0x401DFFFFFFFC00000000
  %i.tk = fptrunc x86_fp80 %i.tj to float         ; 2 uses
  %i.tl = add i64 %.023.i.i.i.i573, -1            ; 2 uses
  %.not.i.i.i.i576 = icmp eq i64 %i.tl, 0
  br i1 %.not.i.i.i.i576, label %bb.dm, label %select.unfold.i.i.i.i572, !llvm.loop !112

bb.dn:                                            ; preds = %bb.dm
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.016.i.i.i.i577 = phi float [ f0x3F7FFFFF, %bb.dn ], [ %i.ta, %bb.dm ]
  %i.tm = fadd float %.016.i.i.i.i577, 0.000000e+00 ; 6 uses
  %i.tn = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.to = mul i64 %.02661159, %i.bv               ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.to ; 3 uses
  %i.tq = add nuw i64 %.02661159, 1
  %i.tr = mul i64 %i.tq, %i.bv                    ; 3 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tr ; 3 uses
  %i.tt = add i64 %.02661159, 2
  %i.tu = mul i64 %i.tt, %i.bv                    ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.tu ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  call void @llvm.experimental.noalias.scope.decl(metadata !750)
  call void @llvm.experimental.noalias.scope.decl(metadata !752)
  %i.tw = load float, ptr %i.tp, align 4, !tbaa !74, !alias.scope !747, !noalias !754
  %i.tx = fmul float %i.sm, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !74, !alias.scope !747, !noalias !754
  %i.ua = fmul float %i.sm, %i.tz
  %i.ub = load float, ptr %i.ts, align 4, !tbaa !74, !alias.scope !750, !noalias !762
  %i.uc = fmul float %i.sz, %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ts, i64 4
  %i.ue = load float, ptr %i.ud, align 4, !tbaa !74, !alias.scope !750, !noalias !762
  %i.uf = fmul float %i.sz, %i.ue
  %i.ug = load float, ptr %i.tv, align 4, !tbaa !74, !alias.scope !752, !noalias !763
  %i.uh = fmul float %i.tm, %i.ug
  %i.ui = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  %i.uj = load float, ptr %i.ui, align 4, !tbaa !74, !alias.scope !752, !noalias !763
  %i.uk = fmul float %i.tm, %i.uj
  %i.ul = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  %i.um = getelementptr inbounds nuw i8, ptr %i.ts, i64 8
  %i.un = getelementptr inbounds nuw i8, ptr %i.tv, i64 8
  call void @_ZN5faiss10cppcontrib18Index2LevelDecoderILl256ELl256ELl16ELl8ELl8EE5accumEPKfS4_PKhfS4_S4_S6_fS4_S4_S6_fPf(ptr noundef %.1797, ptr noundef %.1, ptr noundef nonnull %i.ul, float noundef %i.tx, ptr noundef %.1797, ptr noundef %.1, ptr noundef nonnull %i.um, float noundef %i.uc, ptr noundef %.1797, ptr noundef %.1, ptr noundef nonnull %i.un, float noundef %i.uh, ptr noundef %.sroa.0659.0916)
  %i.uo = fadd float %i.ua, %i.uf
  %i.up = fadd float %i.uo, %i.uk
  %i.uq = fadd float %i.up, 0.000000e+00
  %i.ur = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.to ; 3 uses
end_hunk_27
begin_hunk_28_@_Z26verifyMinMaxIndexPQDecoderIN5faiss10cppcontrib18IndexMinMaxDecoderINS1_14IndexPQDecoderILl256ELl16ELl8EEEEEEvmmRKSt10shared_ptrINS0_5IndexEERKSt6vectorIhSaIhEE:bb.a
  br i1 %i.oq, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i520

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i520: ; preds = %bb.cg
  %i.or = load i64, ptr %i.op, align 8, !tbaa !17
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.oo, i64 noundef %i.os) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521: ; preds = %bb.cg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i520
  call void @_ZdlPvm(ptr noundef nonnull %i.on, i64 noundef 32) #23
  br label %bb.ch

bb.ch:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i521, %.critedge365
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.ot = load float, ptr %i.nk, align 4, !tbaa !74
  %i.ou = fadd float %i.nj, %i.ot
  %i.ov = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0681.0, i64 %.02811120
  %i.ow = load float, ptr %i.ov, align 4, !tbaa !74
  %i.ox = fadd float %i.mr, %i.ow
  invoke void @_ZN7testing8internal24CmpHelperFloatingPointEQIfEENS_15AssertionResultEPKcS4_T_S5_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %17, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.96, float noundef %i.ou, float noundef %i.ox)
          to label %bb.ci unwind label %bb.ck

bb.ci:                                            ; preds = %bb.ch
  %i.oy = load i8, ptr %17, align 8, !tbaa !96, !range !105, !noundef !106
  %i.oz = trunc nuw i8 %i.oy to i1
  br i1 %i.oz, label %.critedge367, label %bb.cl

bb.cj:                                            ; preds = %_ZN7testing7MessageD2Ev.exit518, %bb.bv
  %.pn309.pn.pn = phi { ptr, i32 } [ %.pn309.pn, %_ZN7testing7MessageD2Ev.exit518 ], [ %i.ns, %bb.bv ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit644

bb.ck:                                            ; preds = %bb.ch
  %i.pa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread

bb.cl:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cm unwind label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #22
  %i.pb = load ptr, ptr %i.jr, align 8, !tbaa !107 ; 2 uses
  %.not.i.i524 = icmp eq ptr %i.pb, null
  br i1 %.not.i.i524, label %_ZNK7testing15AssertionResult15failure_messageEv.exit525, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !18
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit525

_ZNK7testing15AssertionResult15failure_messageEv.exit525: ; preds = %bb.cn, %bb.cm
  %i.pd = phi ptr [ %i.pc, %bb.cn ], [ @.str.20, %bb.cm ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef 887, ptr noundef %i.pd)
          to label %bb.co unwind label %bb.cs

bb.co:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit525
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.cp unwind label %bb.ct

bb.cp:                                            ; preds = %bb.co
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.pe = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i526 = icmp eq ptr %i.pe, null
  br i1 %.not.i.i526, label %_ZN7testing7MessageD2Ev.exit528, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i527

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i527: ; preds = %bb.cp
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !24
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pf, i64 8
  %i.ph = load ptr, ptr %i.pg, align 8
  call void %i.ph(ptr noundef nonnull align 8 dereferenceable(128) %i.pe) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit528

_ZN7testing7MessageD2Ev.exit528:                  ; preds = %bb.cp, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i527
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  %i.pi = load ptr, ptr %i.jr, align 8, !tbaa !107 ; 4 uses
  %.not.i.i529 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i529, label %_ZNSt6vectorIfSaIfEED2Ev.exit628.thread, label %bb.cq

bb.cq:                                            ; preds = %_ZN7testing7MessageD2Ev.exit528
  %i.pj = load ptr, ptr %i.pi, align 8, !tbaa !18 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pi, i64 16 ; 2 uses
  %i.pl = icmp eq ptr %i.pj, %i.pk
  br i1 %i.pl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i531, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i530

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i530: ; preds = %bb.cq
  %i.pm = load i64, ptr %i.pk, align 8, !tbaa !17
  %i.pn = add i64 %i.pm, 1
  call void @_ZdlPvm(ptr noundef %i.pj, i64 noundef %i.pn) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i531

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i531: ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i530
  call void @_ZdlPvm(ptr noundef nonnull %i.pi, i64 noundef 32) #23
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit628.thread

_ZNSt6vectorIfSaIfEED2Ev.exit628.thread:          ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i531, %_ZN7testing7MessageD2Ev.exit528
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.en

bb.cr:                                            ; preds = %bb.cl
  %i.po = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit536

bb.cs:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit525
  %i.pp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %bb.co
  %i.pq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %19) #22
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs
  %.pn313 = phi { ptr, i32 } [ %i.pq, %bb.ct ], [ %i.pp, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.pr = load ptr, ptr %18, align 8, !tbaa !108  ; 3 uses
  %.not.i.i534 = icmp eq ptr %i.pr, null
  br i1 %.not.i.i534, label %_ZN7testing7MessageD2Ev.exit536, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i535

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i535: ; preds = %bb.cu
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !24
  %i.pt = getelementptr inbounds nuw i8, ptr %i.ps, i64 8
  %i.pu = load ptr, ptr %i.pt, align 8
  call void %i.pu(ptr noundef nonnull align 8 dereferenceable(128) %i.pr) #22, !inline_history !110
  br label %_ZN7testing7MessageD2Ev.exit536

_ZN7testing7MessageD2Ev.exit536:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i535, %bb.cu, %bb.cr
  %.pn313.pn = phi { ptr, i32 } [ %i.po, %bb.cr ], [ %.pn313, %bb.cu ], [ %.pn313, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i535 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %17) #22
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit644.thread

.critedge367:                                     ; preds = %bb.ci
  %i.pv = load ptr, ptr %i.jr, align 8, !tbaa !107 ; 4 uses
  %.not.i.i537 = icmp eq ptr %i.pv, null
  br i1 %.not.i.i537, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %.critedge367
  %i.pw = load ptr, ptr %i.pv, align 8, !tbaa !18 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pv, i64 16 ; 2 uses
  %i.py = icmp eq ptr %i.pw, %i.px
  br i1 %i.py, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i538

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i538: ; preds = %bb.cv
  %i.pz = load i64, ptr %i.px, align 8, !tbaa !17
  %i.qa = add i64 %i.pz, 1
  call void @_ZdlPvm(ptr noundef %i.pw, i64 noundef %i.qa) #23
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539: ; preds = %bb.cv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i538
  call void @_ZdlPvm(ptr noundef nonnull %i.pv, i64 noundef 32) #23
  br label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i539, %.critedge367
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  %i.qb = add nuw i64 %.02811120, 1               ; 2 uses
  %exitcond1166.not = icmp eq i64 %i.qb, %1
  br i1 %exitcond1166.not, label %.critedge369, label %.lr.ph1122, !llvm.loop !859

_ZNSt6vectorIfSaIfEED2Ev.exit644.thread:          ; preds = %bb.ck, %_ZN7testing7MessageD2Ev.exit536
  %.pn313.pn.pn = phi { ptr, i32 } [ %.pn313.pn, %_ZN7testing7MessageD2Ev.exit536 ], [ %i.pa, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22
  br label %bb.ez

.critedge369:                                     ; preds = %bb.cw, %bb.bt
  %i.qc = add i64 %.02851125, 2                   ; 2 uses
  %.not321 = icmp ult i64 %i.qc, %0
  br i1 %.not321, label %.preheader1075, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542, !llvm.loop !860

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542: ; preds = %.critedge369, %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit487
  br i1 %.not.i.i.i.i389, label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit561, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542.thread

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542.thread: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542
  %i.qd = shl nuw nsw i64 %1, 2                   ; 4 uses
  %i.qe = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qd) #24
          to label %.noexc550 unwind label %bb.cx ; 4 uses

.noexc550:                                        ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542.thread
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qe, i8 0, i64 %i.qd, i1 false), !tbaa !74
  %i.qf = getelementptr inbounds nuw [4 x i8], ptr %i.qe, i64 %1 ; 2 uses
  %i.qg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qd) #24
          to label %.noexc560 unwind label %_ZNSt6vectorIfSaIfEED2Ev.exit.thread ; 3 uses

.noexc560:                                        ; preds = %.noexc550
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.qg, i8 0, i64 %i.qd, i1 false), !tbaa !74
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.qg, i64 %1
  %i.qi = ptrtoint ptr %i.qh to i64
  br label %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit561

_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit561:         ; preds = %.noexc560, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542
  %.sroa.12675.0895 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542 ], [ %i.qf, %.noexc560 ] ; 3 uses
  %.sroa.0669.0891 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542 ], [ %i.qe, %.noexc560 ] ; 9 uses
  %.sroa.0659.0 = phi ptr [ null, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542 ], [ %i.qg, %.noexc560 ] ; 10 uses
  %.sroa.12.0 = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542 ], [ %i.qi, %.noexc560 ] ; 2 uses
  %i.qj = urem i64 %0, 3
  %i.qk = sub nuw i64 %0, %i.qj
  %.not1138 = icmp ult i64 %0, 3
  br i1 %.not1138, label %.loopexit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZNSt6vectorIfSaIfEEC2EmRKfRKS0_.exit561
  %i.ql = call x86_fp80 @llvm.log.f80(x86_fp80 f0x401DFFFFFFFC00000000)
  %i.qm = call x86_fp80 @llvm.log.f80(x86_fp80 2.000000e+00)
  %i.qn = fdiv x86_fp80 %i.ql, %i.qm
  %i.qo = fptoui x86_fp80 %i.qn to i64            ; 2 uses
  %i.qp = add i64 %i.qo, 23
  %i.qq = udiv i64 %i.qp, %i.qo
  %spec.select.i.i.i.i562 = call i64 @llvm.umax.i64(i64 %i.qq, i64 1) ; 3 uses
  %i.qr = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  %min.iters.check1323 = icmp ult i64 %1, 4
  %n.vec1325 = and i64 %1, 2305843009213693948    ; 3 uses
  %cmp.n1332 = icmp eq i64 %1, %n.vec1325
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %.critedge377
  %.02791134 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.yr, %.critedge377 ] ; 4 uses
  %.sroa.0770.31133 = phi i64 [ 123, %.preheader.lr.ph ], [ %i.sm, %.critedge377 ]
  br i1 %.not.i.i.i.i389, label %select.unfold.i.i.i.i564.preheader, label %.lr.ph1127.preheader

select.unfold.i.i.i.i564.preheader:               ; preds = %.lr.ph1127, %middle.block1331, %.preheader
  br label %select.unfold.i.i.i.i564

.lr.ph1127.preheader:                             ; preds = %.preheader
  br i1 %min.iters.check1323, label %.lr.ph1127.preheader1334, label %vector.body1326

vector.body1326:                                  ; preds = %.lr.ph1127.preheader, %vector.body1326
  %index1327 = phi i64 [ %index.next1329, %vector.body1326 ], [ 0, %.lr.ph1127.preheader ] ; 4 uses
  %vec.ind1328 = phi <4 x i64> [ %vec.ind.next1330, %vector.body1326 ], [ <i64 0, i64 1, i64 2, i64 3>, %.lr.ph1127.preheader ] ; 2 uses
  %i.qt = add nuw <4 x i64> %vec.ind1328, splat (i64 1) ; 2 uses
  %i.qu = mul <4 x i64> %i.qt, %i.qt
  %i.qv = uitofp <4 x i64> %i.qu to <4 x float>   ; 3 uses
  %i.qw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %index1327
  store <4 x float> %i.qv, ptr %i.qw, align 4, !tbaa !74
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0669.0891, i64 %index1327
  store <4 x float> %i.qv, ptr %i.qx, align 4, !tbaa !74
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0659.0, i64 %index1327
  store <4 x float> %i.qv, ptr %i.qy, align 4, !tbaa !74
  %index.next1329 = add nuw i64 %index1327, 4     ; 2 uses
  %vec.ind.next1330 = add nuw <4 x i64> %vec.ind1328, splat (i64 4)
  %i.qz = icmp eq i64 %index.next1329, %n.vec1325
  br i1 %i.qz, label %middle.block1331, label %vector.body1326, !llvm.loop !861

middle.block1331:                                 ; preds = %vector.body1326
  br i1 %cmp.n1332, label %select.unfold.i.i.i.i564.preheader, label %.lr.ph1127.preheader1334

.lr.ph1127.preheader1334:                         ; preds = %.lr.ph1127.preheader, %middle.block1331
  %.02781126.ph = phi i64 [ 0, %.lr.ph1127.preheader ], [ %n.vec1325, %middle.block1331 ]
  br label %.lr.ph1127

bb.cx:                                            ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i542.thread
  %i.ra = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit644

_ZNSt6vectorIfSaIfEED2Ev.exit.thread:             ; preds = %.noexc550
  %i.rb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

bb.cy:                                            ; preds = %select.unfold.i.i.i.i564
  %i.rc = fdiv float %i.rj, %i.rm                 ; 2 uses
  %i.rd = fcmp ult float %i.rc, 1.000000e+00
  br i1 %i.rd, label %bb.da, label %bb.cz, !prof !78

select.unfold.i.i.i.i564:                         ; preds = %select.unfold.i.i.i.i564.preheader, %select.unfold.i.i.i.i564
  %.023.i.i.i.i565 = phi i64 [ %i.rn, %select.unfold.i.i.i.i564 ], [ %spec.select.i.i.i.i562, %select.unfold.i.i.i.i564.preheader ]
  %.01422.i.i.i.i566 = phi float [ %i.rm, %select.unfold.i.i.i.i564 ], [ 1.000000e+00, %select.unfold.i.i.i.i564.preheader ] ; 2 uses
  %.01521.i.i.i.i567 = phi float [ %i.rj, %select.unfold.i.i.i.i564 ], [ 0.000000e+00, %select.unfold.i.i.i.i564.preheader ]
  %i.re = phi i64 [ %i.rg, %select.unfold.i.i.i.i564 ], [ %.sroa.0770.31133, %select.unfold.i.i.i.i564.preheader ]
  %i.rf = mul nuw nsw i64 %i.re, 16807
  %i.rg = urem i64 %i.rf, 2147483647              ; 3 uses
  %i.rh = add nsw i64 %i.rg, -1
  %i.ri = uitofp i64 %i.rh to float
  %i.rj = call float @llvm.fmuladd.f32(float %i.ri, float %.01422.i.i.i.i566, float %.01521.i.i.i.i567) ; 2 uses
  %i.rk = fpext float %.01422.i.i.i.i566 to x86_fp80
  %i.rl = fmul x86_fp80 %i.rk, f0x401DFFFFFFFC00000000
  %i.rm = fptrunc x86_fp80 %i.rl to float         ; 2 uses
  %i.rn = add i64 %.023.i.i.i.i565, -1            ; 2 uses
  %.not.i.i.i.i568 = icmp eq i64 %i.rn, 0
  br i1 %.not.i.i.i.i568, label %bb.cy, label %select.unfold.i.i.i.i564, !llvm.loop !112

bb.cz:                                            ; preds = %bb.cy
  br label %bb.da

.lr.ph1127:                                       ; preds = %.lr.ph1127.preheader1334, %.lr.ph1127
  %.02781126 = phi i64 [ %i.ro, %.lr.ph1127 ], [ %.02781126.ph, %.lr.ph1127.preheader1334 ] ; 4 uses
  %i.ro = add nuw i64 %.02781126, 1               ; 4 uses
  %i.rp = mul i64 %i.ro, %i.ro
  %i.rq = uitofp i64 %i.rp to float               ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0714.0, i64 %.02781126
  store float %i.rq, ptr %i.rr, align 4, !tbaa !74
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0669.0891, i64 %.02781126
  store float %i.rq, ptr %i.rs, align 4, !tbaa !74
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0659.0, i64 %.02781126
  store float %i.rq, ptr %i.rt, align 4, !tbaa !74
  %exitcond1167.not = icmp eq i64 %i.ro, %1
  br i1 %exitcond1167.not, label %select.unfold.i.i.i.i564.preheader, label %.lr.ph1127, !llvm.loop !862

bb.da:                                            ; preds = %bb.cz, %bb.cy
  %.016.i.i.i.i569 = phi float [ f0x3F7FFFFF, %bb.cz ], [ %i.rc, %bb.cy ]
  br label %select.unfold.i.i.i.i573

bb.db:                                            ; preds = %select.unfold.i.i.i.i573
  %i.ru = fadd float %.016.i.i.i.i569, 0.000000e+00 ; 6 uses
  %i.rv = fdiv float %i.sc, %i.sf                 ; 2 uses
  %i.rw = fcmp ult float %i.rv, 1.000000e+00
  br i1 %i.rw, label %bb.dd, label %bb.dc, !prof !78

select.unfold.i.i.i.i573:                         ; preds = %select.unfold.i.i.i.i573, %bb.da
  %.023.i.i.i.i574 = phi i64 [ %spec.select.i.i.i.i562, %bb.da ], [ %i.sg, %select.unfold.i.i.i.i573 ]
  %.01422.i.i.i.i575 = phi float [ 1.000000e+00, %bb.da ], [ %i.sf, %select.unfold.i.i.i.i573 ] ; 2 uses
  %.01521.i.i.i.i576 = phi float [ 0.000000e+00, %bb.da ], [ %i.sc, %select.unfold.i.i.i.i573 ]
  %i.rx = phi i64 [ %i.rg, %bb.da ], [ %i.rz, %select.unfold.i.i.i.i573 ]
  %i.ry = mul nuw nsw i64 %i.rx, 16807
  %i.rz = urem i64 %i.ry, 2147483647              ; 3 uses
  %i.sa = add nsw i64 %i.rz, -1
  %i.sb = uitofp i64 %i.sa to float
  %i.sc = call float @llvm.fmuladd.f32(float %i.sb, float %.01422.i.i.i.i575, float %.01521.i.i.i.i576) ; 2 uses
  %i.sd = fpext float %.01422.i.i.i.i575 to x86_fp80
  %i.se = fmul x86_fp80 %i.sd, f0x401DFFFFFFFC00000000
  %i.sf = fptrunc x86_fp80 %i.se to float         ; 2 uses
  %i.sg = add i64 %.023.i.i.i.i574, -1            ; 2 uses
  %.not.i.i.i.i577 = icmp eq i64 %i.sg, 0
  br i1 %.not.i.i.i.i577, label %bb.db, label %select.unfold.i.i.i.i573, !llvm.loop !112

bb.dc:                                            ; preds = %bb.db
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.db
  %.016.i.i.i.i578 = phi float [ f0x3F7FFFFF, %bb.dc ], [ %i.rv, %bb.db ]
  br label %select.unfold.i.i.i.i582

bb.de:                                            ; preds = %select.unfold.i.i.i.i582
  %i.sh = fadd float %.016.i.i.i.i578, 0.000000e+00 ; 6 uses
  %i.si = fdiv float %i.sp, %i.ss                 ; 2 uses
  %i.sj = fcmp ult float %i.si, 1.000000e+00
  br i1 %i.sj, label %bb.dg, label %bb.df, !prof !78

select.unfold.i.i.i.i582:                         ; preds = %select.unfold.i.i.i.i582, %bb.dd
  %.023.i.i.i.i583 = phi i64 [ %spec.select.i.i.i.i562, %bb.dd ], [ %i.st, %select.unfold.i.i.i.i582 ]
  %.01422.i.i.i.i584 = phi float [ 1.000000e+00, %bb.dd ], [ %i.ss, %select.unfold.i.i.i.i582 ] ; 2 uses
  %.01521.i.i.i.i585 = phi float [ 0.000000e+00, %bb.dd ], [ %i.sp, %select.unfold.i.i.i.i582 ]
  %i.sk = phi i64 [ %i.rz, %bb.dd ], [ %i.sm, %select.unfold.i.i.i.i582 ]
  %i.sl = mul nuw nsw i64 %i.sk, 16807
  %i.sm = urem i64 %i.sl, 2147483647              ; 3 uses
  %i.sn = add nsw i64 %i.sm, -1
  %i.so = uitofp i64 %i.sn to float
  %i.sp = call float @llvm.fmuladd.f32(float %i.so, float %.01422.i.i.i.i584, float %.01521.i.i.i.i585) ; 2 uses
  %i.sq = fpext float %.01422.i.i.i.i584 to x86_fp80
  %i.sr = fmul x86_fp80 %i.sq, f0x401DFFFFFFFC00000000
  %i.ss = fptrunc x86_fp80 %i.sr to float         ; 2 uses
  %i.st = add i64 %.023.i.i.i.i583, -1            ; 2 uses
  %.not.i.i.i.i586 = icmp eq i64 %i.st, 0
  br i1 %.not.i.i.i.i586, label %bb.de, label %select.unfold.i.i.i.i582, !llvm.loop !112

bb.df:                                            ; preds = %bb.de
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %.016.i.i.i.i587 = phi float [ f0x3F7FFFFF, %bb.df ], [ %i.si, %bb.de ]
  %i.su = fadd float %.016.i.i.i.i587, 0.000000e+00 ; 6 uses
  %i.sv = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.sw = mul i64 %.02791134, %i.bd               ; 3 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sw ; 3 uses
  %i.sy = add nuw i64 %.02791134, 1
  %i.sz = mul i64 %i.sy, %i.bd                    ; 3 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.sz ; 3 uses
  %i.tb = add i64 %.02791134, 2
  %i.tc = mul i64 %i.tb, %i.bd                    ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.sv, i64 %i.tc ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !863)
  call void @llvm.experimental.noalias.scope.decl(metadata !866)
  call void @llvm.experimental.noalias.scope.decl(metadata !868)
  %i.te = load float, ptr %i.sx, align 4, !tbaa !74, !alias.scope !863, !noalias !870
  %i.tf = fmul float %i.ru, %i.te
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sx, i64 4
  %i.th = load float, ptr %i.tg, align 4, !tbaa !74, !alias.scope !863, !noalias !870
  %i.ti = fmul float %i.ru, %i.th
  %i.tj = load float, ptr %i.ta, align 4, !tbaa !74, !alias.scope !866, !noalias !875
  %i.tk = fmul float %i.sh, %i.tj
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !74, !alias.scope !866, !noalias !875
  %i.tn = fmul float %i.sh, %i.tm
  %i.to = load float, ptr %i.td, align 4, !tbaa !74, !alias.scope !868, !noalias !876
  %i.tp = fmul float %i.su, %i.to
  %i.tq = getelementptr inbounds nuw i8, ptr %i.td, i64 4
  %i.tr = load float, ptr %i.tq, align 4, !tbaa !74, !alias.scope !868, !noalias !876
  %i.ts = fmul float %i.su, %i.tr
  %i.tt = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.td, i64 8
  call void @_ZN5faiss10cppcontrib14IndexPQDecoderILl256ELl16ELl8EE5accumEPKfPKhfS4_S6_fS4_S6_fPf(ptr noundef %i.ay, ptr noundef nonnull %i.tt, float noundef %i.tf, ptr noundef %i.ay, ptr noundef nonnull %i.tu, float noundef %i.tk, ptr noundef %i.ay, ptr noundef nonnull %i.tv, float noundef %i.tp, ptr noundef %.sroa.0669.0891)
  %i.tw = fadd float %i.ti, %i.tn
  %i.tx = fadd float %i.tw, %i.ts
  %i.ty = fadd float %i.tx, 0.000000e+00
  %i.tz = load ptr, ptr %3, align 8, !tbaa !36    ; 3 uses
  %i.ua = getelementptr inbounds nuw i8, ptr %i.tz, i64 %i.sw ; 3 uses
end_hunk_28
