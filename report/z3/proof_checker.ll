Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/proof_checker?download=true
inline.NumInlined: 1640
inline.NumDeleted: 572
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN13proof_checker12check1_basicEP3appR10ref_vectorI4expr11ast_managerE:bb.a
_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763: ; preds = %bb.ld
  %i.aun = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aun) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.lh

bb.le:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit759
  %i.auo = landingpad { ptr, i32 }
          cleanup
  br label %bb.lg

bb.lf:                                            ; preds = %bb.ld, %_ZN5mk_ppC2EP3astR11ast_managerjjPKc.exit761
  %i.aup = landingpad { ptr, i32 }
          cleanup
  %i.auq = getelementptr inbounds nuw i8, ptr %19, i64 16
  call void @_ZN10params_refD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.auq) #25
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %.pn443 = phi { ptr, i32 } [ %i.aup, %bb.lf ], [ %i.auo, %bb.le ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.li

bb.lh:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit757, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763, %bb.kq
  %.18370 = phi i1 [ true, %bb.kq ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit763 ], [ false, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit757 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  br label %.critedge501

bb.li:                                            ; preds = %bb.lg, %bb.la, %bb.kr
  %.pn447 = phi { ptr, i32 } [ %i.atw, %bb.kr ], [ %.pn445, %bb.la ], [ %.pn443, %bb.lg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  br label %bb.yr

bb.lj:                                            ; preds = %_ZNK13proof_checker11match_proofEPK3appR10ref_vectorIS0_11ast_managerE.exit.thread
  %i.aur = load i32, ptr %i.ah, align 4
  %i.aus = and i32 %i.aur, 65535
  %i.aut = icmp eq i32 %i.aus, 0
  br i1 %i.aut, label %_ZNK11ast_manager8is_proofEPK4expr.exit.i764, label %_ZNK13proof_checker11match_proofEPK3app.exit768.thread

_ZNK11ast_manager8is_proofEPK4expr.exit.i764:     ; preds = %bb.lj
  %i.auu = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158
  %i.auv = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.auw = getelementptr inbounds nuw i8, ptr %i.auv, i64 40
  %i.aux = load ptr, ptr %i.auw, align 8, !tbaa !183
  %i.auy = getelementptr inbounds nuw i8, ptr %i.auu, i64 824 ; 2 uses
  %i.auz = load ptr, ptr %i.auy, align 8, !tbaa !184
  %i.ava = icmp eq ptr %i.aux, %i.auz
  br i1 %i.ava, label %bb.lk, label %_ZNK13proof_checker11match_proofEPK3app.exit768.thread

bb.lk:                                            ; preds = %_ZNK11ast_manager8is_proofEPK4expr.exit.i764
  %i.avb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.avc = load i32, ptr %i.avb, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i765 = icmp eq i32 %i.avc, 0
  br i1 %.not.i.i.i765, label %_ZNK13proof_checker11match_proofEPK3app.exit768, label %bb.ll

bb.ll:                                            ; preds = %bb.lk
  %i.avd = add i32 %i.avc, -1
  %i.ave = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.avf = zext i32 %i.avd to i64
  %i.avg = getelementptr inbounds nuw [8 x i8], ptr %i.ave, i64 %i.avf
  %i.avh = load ptr, ptr %i.avg, align 8, !tbaa !160
  %i.avi = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.avh)
          to label %.noexc767 unwind label %.loopexit.split-lp1290

.noexc767:                                        ; preds = %bb.ll
  %i.avj = load ptr, ptr %i.auy, align 8, !tbaa !184
  %i.avk = icmp ne ptr %i.avi, %i.avj
  %i.avl = sext i1 %i.avk to i32
  br label %_ZNK13proof_checker11match_proofEPK3app.exit768

_ZNK13proof_checker11match_proofEPK3app.exit768:  ; preds = %bb.lk, %.noexc767
  %i.avm = phi i32 [ 0, %bb.lk ], [ %i.avl, %.noexc767 ]
  %i.avn = sub i32 0, %i.avc
  %i.avo = icmp eq i32 %i.avm, %i.avn
  br i1 %i.avo, label %bb.lm, label %_ZNK13proof_checker11match_proofEPK3app.exit768.thread

bb.lm:                                            ; preds = %_ZNK13proof_checker11match_proofEPK3app.exit768
  %i.avp = invoke noundef zeroext i1 @_ZNK13proof_checker10match_factEPK3appRP4expr(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ln unwind label %.loopexit.split-lp1290

bb.ln:                                            ; preds = %bb.lm
  br i1 %i.avp, label %.critedge501, label %_ZNK13proof_checker11match_proofEPK3app.exit768.thread

_ZNK13proof_checker11match_proofEPK3app.exit768.thread: ; preds = %bb.lj, %_ZNK11ast_manager8is_proofEPK4expr.exit.i764, %bb.ln, %_ZNK13proof_checker11match_proofEPK3app.exit768
  br label %.critedge501

bb.lo:                                            ; preds = %_ZNK13proof_checker11match_proofEPK3appR10ref_vectorIS0_11ast_managerE.exit.thread
  %i.avq = load i32, ptr %i.ah, align 4
  %i.avr = and i32 %i.avq, 65535
  %i.avs = icmp eq i32 %i.avr, 0
  br i1 %i.avs, label %_ZNK11ast_manager8is_proofEPK4expr.exit.i770, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

_ZNK11ast_manager8is_proofEPK4expr.exit.i770:     ; preds = %bb.lo
  %i.avt = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158
  %i.avu = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.avv = getelementptr inbounds nuw i8, ptr %i.avu, i64 40
  %i.avw = load ptr, ptr %i.avv, align 8, !tbaa !183
  %i.avx = getelementptr inbounds nuw i8, ptr %i.avt, i64 824 ; 2 uses
  %i.avy = load ptr, ptr %i.avx, align 8, !tbaa !184
  %i.avz = icmp eq ptr %i.avw, %i.avy
  br i1 %i.avz, label %bb.lp, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.lp:                                            ; preds = %_ZNK11ast_manager8is_proofEPK4expr.exit.i770
  %i.awa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.awb = load i32, ptr %i.awa, align 8, !tbaa !185 ; 3 uses
  %.not.i.i.i771 = icmp eq i32 %i.awb, 0
  br i1 %.not.i.i.i771, label %_ZNK11ast_manager15get_num_parentsEPK3app.exit.i772, label %bb.lq

bb.lq:                                            ; preds = %bb.lp
  %i.awc = add i32 %i.awb, -1
  %i.awd = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.awe = zext i32 %i.awc to i64
  %i.awf = getelementptr inbounds nuw [8 x i8], ptr %i.awd, i64 %i.awe
  %i.awg = load ptr, ptr %i.awf, align 8, !tbaa !160
  %i.awh = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.awg)
          to label %.noexc773 unwind label %.loopexit.split-lp1290

.noexc773:                                        ; preds = %bb.lq
  %i.awi = load ptr, ptr %i.avx, align 8, !tbaa !184
  %i.awj = icmp ne ptr %i.awh, %i.awi
  %i.awk = sext i1 %i.awj to i32
  br label %_ZNK11ast_manager15get_num_parentsEPK3app.exit.i772

_ZNK11ast_manager15get_num_parentsEPK3app.exit.i772: ; preds = %.noexc773, %bb.lp
  %i.awl = phi i32 [ 0, %bb.lp ], [ %i.awk, %.noexc773 ]
  %i.awm = add i32 %i.awl, %i.awb
  %i.awn = icmp eq i32 %i.awm, 1
  br i1 %i.awn, label %bb.lr, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.lr:                                            ; preds = %_ZNK11ast_manager15get_num_parentsEPK3app.exit.i772
  %i.awo = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.awp = load ptr, ptr %i.awo, align 8, !tbaa !160 ; 3 uses
  store ptr %i.awp, ptr %i.n, align 8, !tbaa !163
  %i.awq = invoke noundef zeroext i1 @_ZNK13proof_checker10match_factEPK3appRP4expr(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.ls unwind label %.loopexit.split-lp1290

bb.ls:                                            ; preds = %bb.lr
  br i1 %i.awq, label %bb.lt, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.lt:                                            ; preds = %bb.ls
  %i.awr = invoke noundef zeroext i1 @_ZNK13proof_checker10match_factEPK3appRP4expr(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %i.awp, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.lu unwind label %.loopexit.split-lp1290

bb.lu:                                            ; preds = %bb.lt
  br i1 %i.awr, label %bb.lv, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.lv:                                            ; preds = %bb.lu
  %i.aws = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158 ; 2 uses
  %i.awt = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.awu = getelementptr inbounds nuw i8, ptr %i.aws, i64 840
  %i.awv = load ptr, ptr %i.awu, align 8, !tbaa !207
  %i.aww = icmp eq ptr %i.awt, %i.awv
  br i1 %i.aww, label %bb.lw, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.lw:                                            ; preds = %bb.lv
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  %i.awx = ptrtoint ptr %i.aws to i64             ; 2 uses
  store i64 %i.awx, ptr %20, align 8, !tbaa !116
  %i.awy = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 3 uses
  store ptr null, ptr %i.awy, align 8, !tbaa !122
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  store i64 %i.awx, ptr %21, align 8, !tbaa !116
  %i.awz = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store ptr null, ptr %i.awz, align 8, !tbaa !122
  invoke void @_ZN13proof_checker14get_hypothesesEP3appR10ref_vectorI4expr11ast_managerE(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %i.awp, ptr noundef nonnull align 8 dereferenceable(16) %20)
          to label %bb.lx unwind label %bb.lz

bb.lx:                                            ; preds = %bb.lw
  %i.axa = load ptr, ptr %i.awy, align 8, !tbaa !122 ; 3 uses
  %i.axb = icmp eq ptr %i.axa, null
  br i1 %i.axb, label %._ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread_crit_edge, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

._ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread_crit_edge: ; preds = %bb.lx
  %.pre1519 = load ptr, ptr %i.i, align 8, !tbaa !160
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.lx
  %i.axc = getelementptr inbounds i8, ptr %i.axa, i64 -4
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !45
  %i.axe = icmp eq i32 %i.axd, 1
  %.pre1520 = load ptr, ptr %i.i, align 8, !tbaa !160 ; 3 uses
  br i1 %i.axe, label %bb.ly, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

bb.ly:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.axf = load ptr, ptr %i.axa, align 8, !tbaa !160
  %i.axg = call noundef zeroext i1 @_ZNK13proof_checker13match_negatedEPK4exprPS0_(ptr nonnull align 8 poison, ptr noundef %i.axf, ptr noundef %.pre1520)
  br i1 %i.axg, label %.critedge508, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread

bb.lz:                                            ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread, %bb.lw
  %i.axh = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread: ; preds = %._ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread_crit_edge, %bb.ly, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.axi = phi ptr [ %.pre1519, %._ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread_crit_edge ], [ %.pre1520, %bb.ly ], [ %.pre1520, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit ]
  invoke void @_ZN13proof_checker7get_orsEP4exprR10ref_vectorIS0_11ast_managerE(ptr nonnull align 8 poison, ptr noundef %i.axi, ptr noundef nonnull align 8 dereferenceable(16) %21)
          to label %.preheader1284 unwind label %bb.lz

.preheader1284:                                   ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit.thread
  %i.axj = load ptr, ptr %i.awy, align 8, !tbaa !122 ; 3 uses
  %i.axk = icmp eq ptr %i.axj, null
  %i.axl = getelementptr inbounds i8, ptr %i.axj, i64 -4
  %i.axm = load ptr, ptr %i.awz, align 8          ; 3 uses
  %i.axn = icmp eq ptr %i.axm, null
  %i.axo = getelementptr inbounds i8, ptr %i.axm, i64 -4
  br i1 %i.axk, label %.critedge508, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.preheader

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.preheader: ; preds = %.preheader1284
  %i.axp = load i32, ptr %i.axl, align 4, !tbaa !45
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.a

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.a: ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.preheader, %.critedge509
  %.02611783 = phi i32 [ %i.azk, %.critedge509 ], [ 0, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.preheader ] ; 3 uses
  %47 = icmp ult i32 %.02611783, %i.axp
  br i1 %47, label %.preheader1283.a, label %.critedge508

.preheader1283.a:                                 ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.a
  %48 = zext i32 %.02611783 to i64
  %49 = getelementptr inbounds nuw [8 x i8], ptr %i.axj, i64 %48
  br i1 %i.axn, label %.critedge.split, label %.preheader1283.split

.preheader1283.split:                             ; preds = %.preheader1283.a
  %i.axq = load i32, ptr %i.axo, align 4, !tbaa !45 ; 2 uses
  %wide.trip.count = zext i32 %i.axq to i64
  %exitcond.not1780 = icmp eq i32 %i.axq, 0
  br i1 %exitcond.not1780, label %.critedge.split, label %.lr.ph1782.preheader

.lr.ph1782.preheader:                             ; preds = %.preheader1283.split
  %i.axr = load ptr, ptr %49, align 8, !tbaa !160 ; 5 uses
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axr, i64 4
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axr, i64 16
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axr, i64 24
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axr, i64 32
  br label %.lr.ph1782

_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit779: ; preds = %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit
  %indvars.iv.next1502 = add nuw nsw i64 %indvars.iv15011781, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1502, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.split, label %.lr.ph1782, !llvm.loop !261

.lr.ph1782:                                       ; preds = %.lr.ph1782.preheader, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit779
  %indvars.iv15011781 = phi i64 [ %indvars.iv.next1502, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit779 ], [ 0, %.lr.ph1782.preheader ] ; 2 uses
  %i.axw = getelementptr inbounds nuw [8 x i8], ptr %i.axm, i64 %indvars.iv15011781
  %i.axx = load ptr, ptr %i.axw, align 8, !tbaa !160 ; 5 uses
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axx, i64 4
  %i.axz = load i32, ptr %i.axy, align 4
  %i.aya = and i32 %i.axz, 65535
  %i.ayb = icmp eq i32 %i.aya, 0
  br i1 %i.ayb, label %bb.ma, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i

bb.ma:                                            ; preds = %.lr.ph1782
  %i.ayc = getelementptr inbounds nuw i8, ptr %i.axx, i64 16
  %i.ayd = load ptr, ptr %i.ayc, align 8, !tbaa !169
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayd, i64 24
  %i.ayf = load ptr, ptr %i.aye, align 8, !tbaa !172 ; 3 uses
  %i.ayg = icmp eq ptr %i.ayf, null
  br i1 %i.ayg, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i, label %_ZNK3app13get_family_idEv.exit.i.i.i

_ZNK3app13get_family_idEv.exit.i.i.i:             ; preds = %bb.ma
  %i.ayh = load i32, ptr %i.ayf, align 8, !tbaa !43
  %i.ayi = icmp eq i32 %i.ayh, 0
  br i1 %i.ayi, label %_ZNK3app13get_decl_kindEv.exit.i.i.i, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i

_ZNK3app13get_decl_kindEv.exit.i.i.i:             ; preds = %_ZNK3app13get_family_idEv.exit.i.i.i
  %i.ayj = getelementptr inbounds nuw i8, ptr %i.ayf, i64 4
  %i.ayk = load i32, ptr %i.ayj, align 4, !tbaa !177
  %i.ayl = icmp eq i32 %i.ayk, 8
  br i1 %i.ayl, label %bb.mb, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i

bb.mb:                                            ; preds = %_ZNK3app13get_decl_kindEv.exit.i.i.i
  %i.aym = getelementptr inbounds nuw i8, ptr %i.axx, i64 24
  %i.ayn = load i32, ptr %i.aym, align 8, !tbaa !185
  %i.ayo = icmp eq i32 %i.ayn, 1
  br i1 %i.ayo, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.i, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i

_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.i: ; preds = %bb.mb
  %i.ayp = getelementptr inbounds nuw i8, ptr %i.axx, i64 32
  %i.ayq = load ptr, ptr %i.ayp, align 8, !tbaa !160 ; 2 uses
  %i.ayr = icmp eq ptr %i.ayq, %i.axr
  br i1 %i.ayr, label %.critedge509, label %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i

_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i: ; preds = %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.i, %bb.mb, %_ZNK3app13get_decl_kindEv.exit.i.i.i, %_ZNK3app13get_family_idEv.exit.i.i.i, %bb.ma, %.lr.ph1782
  %.014.i = phi ptr [ %i.ayq, %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.i ], [ null, %bb.mb ], [ null, %_ZNK3app13get_decl_kindEv.exit.i.i.i ], [ null, %_ZNK3app13get_family_idEv.exit.i.i.i ], [ null, %.lr.ph1782 ], [ null, %bb.ma ] ; 5 uses
  %i.ays = load i32, ptr %i.axs, align 4
  %i.ayt = and i32 %i.ays, 65535
  %i.ayu = icmp eq i32 %i.ayt, 0
  br i1 %i.ayu, label %bb.mc, label %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit

bb.mc:                                            ; preds = %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i
  %i.ayv = load ptr, ptr %i.axt, align 8, !tbaa !169
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayv, i64 24
  %i.ayx = load ptr, ptr %i.ayw, align 8, !tbaa !172 ; 3 uses
  %i.ayy = icmp eq ptr %i.ayx, null
  br i1 %i.ayy, label %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit, label %_ZNK3app13get_family_idEv.exit.i.i7.i

_ZNK3app13get_family_idEv.exit.i.i7.i:            ; preds = %bb.mc
  %i.ayz = load i32, ptr %i.ayx, align 8, !tbaa !43
  %i.aza = icmp eq i32 %i.ayz, 0
  br i1 %i.aza, label %_ZNK3app13get_decl_kindEv.exit.i.i8.i, label %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit

_ZNK3app13get_decl_kindEv.exit.i.i8.i:            ; preds = %_ZNK3app13get_family_idEv.exit.i.i7.i
  %i.azb = getelementptr inbounds nuw i8, ptr %i.ayx, i64 4
  %i.azc = load i32, ptr %i.azb, align 4, !tbaa !177
  %i.azd = icmp eq i32 %i.azc, 8
  br i1 %i.azd, label %bb.md, label %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit

bb.md:                                            ; preds = %_ZNK3app13get_decl_kindEv.exit.i.i8.i
  %i.aze = load i32, ptr %i.axu, align 8, !tbaa !185
  %i.azf = icmp eq i32 %i.aze, 1
  br i1 %i.azf, label %bb.me, label %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit

bb.me:                                            ; preds = %bb.md
  %i.azg = load ptr, ptr %i.axv, align 8, !tbaa !160
  br label %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit

_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit: ; preds = %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i, %bb.mc, %_ZNK3app13get_family_idEv.exit.i.i7.i, %_ZNK3app13get_decl_kindEv.exit.i.i8.i, %bb.md, %bb.me
  %.1.i = phi ptr [ %.014.i, %bb.mc ], [ %i.azg, %bb.me ], [ %.014.i, %bb.md ], [ %.014.i, %_ZNK3app13get_decl_kindEv.exit.i.i8.i ], [ %.014.i, %_ZNK3app13get_family_idEv.exit.i.i7.i ], [ %.014.i, %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i ]
  %.0.i.i6.i = phi i1 [ false, %bb.mc ], [ true, %bb.me ], [ false, %bb.md ], [ false, %_ZNK3app13get_decl_kindEv.exit.i.i8.i ], [ false, %_ZNK3app13get_family_idEv.exit.i.i7.i ], [ false, %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.thread.i ]
  %i.azh = icmp eq ptr %.1.i, %i.axx
  %i.azi = select i1 %.0.i.i6.i, i1 %i.azh, i1 false
  br i1 %i.azi, label %.critedge509, label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit779, !llvm.loop !261

bb.mf:                                            ; preds = %bb.mg, %.critedge.split
  %i.azj = landingpad { ptr, i32 }
          cleanup
  br label %bb.mh

.critedge.split:                                  ; preds = %.preheader1283.a, %.preheader1283.split, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit779
  invoke void @_Z26notify_assertion_violationPKciS0_(ptr noundef nonnull @.str.4, i32 noundef 538, ptr noundef nonnull @.str.5)
          to label %bb.mg unwind label %bb.mf

bb.mg:                                            ; preds = %.critedge.split
  invoke void @_Z18invoke_exit_actionj(i32 noundef 114)
          to label %.critedge508 unwind label %bb.mf

.critedge509:                                     ; preds = %_ZNK13proof_checker9match_notEPK4exprRPS0_.exit.i, %_ZNK13proof_checker13match_negatedEPK4exprPS0_.exit
  %i.azk = add i32 %.02611783, 1
  br label %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.a, !llvm.loop !262

.critedge508:                                     ; preds = %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.a, %bb.mg, %.preheader1284, %bb.ly
  %.22374 = phi i1 [ true, %bb.ly ], [ false, %bb.mg ], [ true, %.preheader1284 ], [ true, %_ZNK15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit777.a ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %.critedge501

bb.mh:                                            ; preds = %bb.mf, %bb.lz
  %.pn436.pn.pn = phi { ptr, i32 } [ %i.axh, %bb.lz ], [ %i.azj, %bb.mf ]
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  call void @_ZN15ref_vector_coreI4expr19ref_manager_wrapperIS0_11ast_managerEED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  br label %bb.yr

bb.mi:                                            ; preds = %_ZNK13proof_checker11match_proofEPK3appR10ref_vectorIS0_11ast_managerE.exit.thread
  %i.azl = load i32, ptr %i.ah, align 4
  %i.azm = and i32 %i.azl, 65535
  %i.azn = icmp eq i32 %i.azm, 0
  br i1 %i.azn, label %_ZNK11ast_manager8is_proofEPK4expr.exit.i783, label %.critedge23

_ZNK11ast_manager8is_proofEPK4expr.exit.i783:     ; preds = %bb.mi
  %i.azo = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158
  %i.azp = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.azq = getelementptr inbounds nuw i8, ptr %i.azp, i64 40
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !183
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azo, i64 824 ; 2 uses
  %i.azt = load ptr, ptr %i.azs, align 8, !tbaa !184
  %i.azu = icmp eq ptr %i.azr, %i.azt
  br i1 %i.azu, label %bb.mj, label %.critedge23

bb.mj:                                            ; preds = %_ZNK11ast_manager8is_proofEPK4expr.exit.i783
  %i.azv = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.azw = load i32, ptr %i.azv, align 8, !tbaa !185 ; 2 uses
  %.not.i.i784 = icmp eq i32 %i.azw, 0
  br i1 %.not.i.i784, label %.critedge23, label %_ZNK11ast_manager8has_factEPK3app.exit.i785

_ZNK11ast_manager8has_factEPK3app.exit.i785:      ; preds = %bb.mj
  %i.azx = add i32 %i.azw, -1
  %i.azy = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.azz = zext i32 %i.azx to i64
  %i.baa = getelementptr inbounds nuw [8 x i8], ptr %i.azy, i64 %i.azz
  %i.bab = load ptr, ptr %i.baa, align 8, !tbaa !160
  %i.bac = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bab)
          to label %.noexc787 unwind label %.loopexit.split-lp1290

.noexc787:                                        ; preds = %_ZNK11ast_manager8has_factEPK3app.exit.i785
  %i.bad = load ptr, ptr %i.azs, align 8, !tbaa !184
  %.not.i786 = icmp eq ptr %i.bac, %i.bad
  br i1 %.not.i786, label %.critedge23, label %bb.mk

bb.mk:                                            ; preds = %.noexc787
  %i.bae = load i32, ptr %i.azv, align 8, !tbaa !185
  %i.baf = add i32 %i.bae, -1
  %i.bag = zext i32 %i.baf to i64
  %i.bah = getelementptr inbounds nuw [8 x i8], ptr %i.azy, i64 %i.bag
  %i.bai = load ptr, ptr %i.bah, align 8, !tbaa !160
  %i.baj = load ptr, ptr %i.ae, align 8, !tbaa !119 ; 3 uses
  %i.bak = icmp eq ptr %i.baj, null
  br i1 %i.bak, label %.critedge23, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit: ; preds = %bb.mk
  %i.bal = getelementptr inbounds i8, ptr %i.baj, i64 -4
  %i.bam = load i32, ptr %i.bal, align 4, !tbaa !45
  %i.ban = icmp eq i32 %i.bam, 2
  br i1 %i.ban, label %bb.ml, label %.critedge23

bb.ml:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit
  %i.bao = load ptr, ptr %i.baj, align 8, !tbaa !163
  %i.bap = invoke noundef zeroext i1 @_ZNK13proof_checker10match_factEPK3appRP4expr(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %i.bao, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.mm unwind label %bb.ms

bb.mm:                                            ; preds = %bb.ml
  br i1 %i.bap, label %bb.mn, label %.critedge23

bb.mn:                                            ; preds = %bb.mm
  %i.baq = load ptr, ptr %i.ae, align 8, !tbaa !119
  %i.bar = getelementptr inbounds nuw i8, ptr %i.baq, i64 8
  %i.bas = load ptr, ptr %i.bar, align 8, !tbaa !163
  %i.bat = invoke noundef zeroext i1 @_ZNK13proof_checker10match_factEPK3appRP4expr(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %i.bas, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.mo unwind label %bb.mt

bb.mo:                                            ; preds = %bb.mn
  br i1 %i.bat, label %bb.mp, label %.critedge23

bb.mp:                                            ; preds = %bb.mo
  %i.bau = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158
  %i.bav = load ptr, ptr %i.b, align 8, !tbaa !160
  %i.baw = load ptr, ptr %i.c, align 8, !tbaa !160
  %i.bax = invoke noundef zeroext i1 @_ZNK11ast_manager13is_complementEPK4exprS2_(ptr noundef nonnull align 8 dereferenceable(952) %i.bau, ptr noundef %i.bav, ptr noundef %i.baw)
          to label %bb.mq unwind label %bb.mt

bb.mq:                                            ; preds = %bb.mp
  br i1 %i.bax, label %bb.mr, label %.critedge23

bb.mr:                                            ; preds = %bb.mq
  %i.bay = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158
  %i.baz = getelementptr inbounds nuw i8, ptr %i.bay, i64 840
  %i.bba = load ptr, ptr %i.baz, align 8, !tbaa !207
  %i.bbb = icmp eq ptr %i.bai, %i.bba
  br i1 %i.bbb, label %.critedge501, label %.critedge23

bb.ms:                                            ; preds = %bb.ml
  %i.bbc = landingpad { ptr, i32 }
          cleanup
  br label %bb.yr

bb.mt:                                            ; preds = %bb.mp, %bb.mn
  %i.bbd = landingpad { ptr, i32 }
          cleanup
  br label %bb.yr

.critedge23:                                      ; preds = %bb.mk, %bb.mj, %bb.mi, %_ZNK11ast_manager8is_proofEPK4expr.exit.i783, %.noexc787, %bb.mq, %bb.mo, %bb.mm, %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit, %bb.mr
  %i.bbe = load i32, ptr %i.ah, align 4
  %i.bbf = and i32 %i.bbe, 65535
  %i.bbg = icmp eq i32 %i.bbf, 0
  br i1 %i.bbg, label %_ZNK11ast_manager8is_proofEPK4expr.exit.i795, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

_ZNK11ast_manager8is_proofEPK4expr.exit.i795:     ; preds = %.critedge23
  %i.bbh = load ptr, ptr %0, align 8, !tbaa !165, !nonnull !157, !align !158
  %i.bbi = load ptr, ptr %i.u, align 8, !tbaa !169
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 40
  %i.bbk = load ptr, ptr %i.bbj, align 8, !tbaa !183
  %i.bbl = getelementptr inbounds nuw i8, ptr %i.bbh, i64 824 ; 2 uses
  %i.bbm = load ptr, ptr %i.bbl, align 8, !tbaa !184
  %i.bbn = icmp eq ptr %i.bbk, %i.bbm
  br i1 %i.bbn, label %bb.mu, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.mu:                                            ; preds = %_ZNK11ast_manager8is_proofEPK4expr.exit.i795
  %i.bbo = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.bbp = load i32, ptr %i.bbo, align 8, !tbaa !185 ; 2 uses
  %.not.i.i796 = icmp eq i32 %i.bbp, 0
  br i1 %.not.i.i796, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke, label %_ZNK11ast_manager8has_factEPK3app.exit.i797

_ZNK11ast_manager8has_factEPK3app.exit.i797:      ; preds = %bb.mu
  %i.bbq = add i32 %i.bbp, -1
  %i.bbr = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bbs = zext i32 %i.bbq to i64
  %i.bbt = getelementptr inbounds nuw [8 x i8], ptr %i.bbr, i64 %i.bbs
  %i.bbu = load ptr, ptr %i.bbt, align 8, !tbaa !160
  %i.bbv = invoke noundef ptr @_ZNK4expr8get_sortEv(ptr noundef nonnull align 4 dereferenceable(16) %i.bbu)
          to label %.noexc799 unwind label %.loopexit.split-lp1290

.noexc799:                                        ; preds = %_ZNK11ast_manager8has_factEPK3app.exit.i797
  %i.bbw = load ptr, ptr %i.bbl, align 8, !tbaa !184
  %.not.i798 = icmp eq ptr %i.bbv, %i.bbw
  br i1 %.not.i798, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke, label %bb.mv

bb.mv:                                            ; preds = %.noexc799
  %i.bbx = load i32, ptr %i.bbo, align 8, !tbaa !185
  %i.bby = add i32 %i.bbx, -1
  %i.bbz = zext i32 %i.bby to i64
  %i.bca = getelementptr inbounds nuw [8 x i8], ptr %i.bbr, i64 %i.bbz
  %i.bcb = load ptr, ptr %i.bca, align 8, !tbaa !160
  store ptr %i.bcb, ptr %i.i, align 8, !tbaa !160
  %i.bcc = load ptr, ptr %i.ae, align 8, !tbaa !119 ; 3 uses
  %i.bcd = icmp eq ptr %i.bcc, null
  br i1 %i.bcd, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit802

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit802: ; preds = %bb.mv
  %i.bce = getelementptr inbounds i8, ptr %i.bcc, i64 -4
  %i.bcf = load i32, ptr %i.bce, align 4, !tbaa !45
  %i.bcg = icmp ugt i32 %i.bcf, 1
  br i1 %i.bcg, label %bb.mw, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.mw:                                            ; preds = %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit802
  %i.bch = load ptr, ptr %i.bcc, align 8, !tbaa !163
  %i.bci = invoke noundef zeroext i1 @_ZNK13proof_checker10match_factEPK3appRP4expr(ptr noundef nonnull align 8 dereferenceable(156) %0, ptr noundef %i.bch, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.mx unwind label %.loopexit.split-lp1290

bb.mx:                                            ; preds = %bb.mw
  br i1 %i.bci, label %bb.my, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

bb.my:                                            ; preds = %bb.mx
  %i.bcj = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.bck = invoke noundef zeroext i1 @_ZNK13proof_checker8match_orEPK4exprR10ptr_vectorIS0_E(ptr nonnull align 8 poison, ptr noundef %i.bcj, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.mz unwind label %.loopexit.split-lp1290

bb.mz:                                            ; preds = %bb.my
  br i1 %i.bck, label %.preheader1287, label %_ZNK13proof_checker10match_factEPK3appRP4expr.exit.thread.invoke

.preheader1287:                                   ; preds = %bb.mz
  %.promoted = load ptr, ptr %i.c, align 8        ; 2 uses
  %i.bcl = load ptr, ptr %i.ae, align 8, !tbaa !119 ; 3 uses
  %i.bcm = icmp eq ptr %i.bcl, null
  br i1 %i.bcm, label %.critedge514, label %_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit804.preheader

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit804.preheader: ; preds = %.preheader1287
  %i.bcn = getelementptr inbounds i8, ptr %i.bcl, i64 -4
  %i.bco = load i32, ptr %i.bcn, align 4, !tbaa !45
  %i.bcp = icmp ugt i32 %i.bco, 1
  br i1 %i.bcp, label %.lr.ph1778, label %.critedge514

_ZNK15ref_vector_coreI3app19ref_manager_wrapperIS0_11ast_managerEE4sizeEv.exit804: ; preds = %.critedge512
  %indvars.iv.next1499 = add nuw nsw i64 %indvars.iv14981777, 1 ; 2 uses
  %i.bcq = getelementptr inbounds i8, ptr %i.bgm, i64 -4
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !45
  %i.bcs = zext i32 %i.bcr to i64
  %i.bct = icmp samesign ult i64 %indvars.iv.next1499, %i.bcs
  br i1 %i.bct, label %.lr.ph1778, label %.critedge514, !llvm.loop !263

end_hunk_0
