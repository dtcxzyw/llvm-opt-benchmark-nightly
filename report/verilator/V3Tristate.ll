Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3Tristate?download=true
inline.NumInlined: 6058
inline.NumDeleted: 1349
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN15TristateVisitor21insertTristatesSignalEP13AstNodeModuleP6AstVarPSt6vectorINS_11RefStrengthESaIS5_EEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESG_P10AstModport:bb.a

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit614: ; preds = %bb.cp
  %i.rq = load ptr, ptr %33, align 8, !tbaa !27   ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.rs = icmp eq ptr %i.rq, %i.rr
  br i1 %i.rs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit614
  %i.rt = load i64, ptr %i.rr, align 8, !tbaa !29
  %i.ru = add i64 %i.rt, 1
  call void @_ZdlPvm(ptr noundef %i.rq, i64 noundef %i.ru) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit614, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i615
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit

bb.cq:                                            ; preds = %bb.co
  %i.rv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620

bb.cr:                                            ; preds = %bb.cp
  %i.rw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rx = load ptr, ptr %33, align 8, !tbaa !27   ; 2 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 2 uses
  %i.rz = icmp eq ptr %i.rx, %i.ry
  br i1 %i.rz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618: ; preds = %bb.cr
  %i.sa = load i64, ptr %i.ry, align 8, !tbaa !29
  %i.sb = add i64 %i.sa, 1
  call void @_ZdlPvm(ptr noundef %i.rx, i64 noundef %i.sb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620: ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618, %bb.cq
  %.pn337 = phi { ptr, i32 } [ %i.rv, %bb.cq ], [ %i.rw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i618 ], [ %i.rw, %bb.cr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #24
  br label %bb.cs

bb.cs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610, %bb.cj
  %.pn337.pn = phi { ptr, i32 } [ %.pn337, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit620 ], [ %i.qx, %bb.cj ], [ %.pn334, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit613 ], [ %.pn332, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit610 ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %29) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #24
  br label %bb.sj

bb.ct:                                            ; preds = %.thread1273.thread, %.thread1273
  %.ph12762369 = phi i1 [ %i.cb, %.thread1273.thread ], [ false, %.thread1273 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.bw, i64 112
  %i.sd = load i32, ptr %i.sc, align 8, !tbaa !178
  %i.se = load i32, ptr @_ZN12VNUser1InUse12s_userCntGblE, align 4, !tbaa !31
  %i.sf = icmp ne i32 %i.sd, %i.se
  %i.sg = getelementptr inbounds nuw i8, ptr %i.bw, i64 104
  %i.sh = load i64, ptr %i.sg, align 8            ; 2 uses
  %i.si = inttoptr i64 %i.sh to ptr               ; 3 uses
  %.not3141324 = icmp eq i64 %i.sh, 0
  %.not314 = select i1 %i.sf, i1 true, i1 %.not3141324
  br i1 %.not314, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 64 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i16, ptr %i.sj, align 8, !tbaa !137
  %.not6.i = icmp eq i16 %.sroa.0.0.copyload.i.i.i, 68
  br i1 %.not6.i, label %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit, label %bb.cv, !prof !249

bb.cv:                                            ; preds = %bb.cu
  %i.sk = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 1063) ; 0 uses
  %i.sl = call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.sm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.sl, ptr noundef nonnull @.str.21)
  %.sroa.0.0.copyload.i.i5.i = load i16, ptr %i.sj, align 8, !tbaa !137
  %i.sn = zext i16 %.sroa.0.0.copyload.i.i5.i to i64
  %i.so = getelementptr inbounds nuw [8 x i8], ptr @_ZZNK6VNType5asciiEvE5names, i64 %i.sn
  %i.sp = load ptr, ptr %i.so, align 8, !tbaa !165
  %i.sq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.sm, ptr noundef %i.sp)
  %i.sr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.sq, ptr noundef nonnull @.str.22)
  call void @_ZNK7AstNode15v3errorEndFatalERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152) %i.si, ptr noundef nonnull align 8 dereferenceable(112) %i.sr) #27
  unreachable

_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit:           ; preds = %bb.cu, %bb.r, %bb.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617, %_ZN20AstUserAllocatorBaseI6AstVarN15TristateVisitor9AuxAstVarELi3EEclIJEEERS2_PS0_DpOT_.exit595, %bb.ct
  %i.ss = phi i1 [ %.ph12762369, %bb.ct ], [ %.ph1277, %_ZN20AstUserAllocatorBaseI6AstVarN15TristateVisitor9AuxAstVarELi3EEclIJEEERS2_PS0_DpOT_.exit595 ], [ %.ph1277, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %.ph1277, %bb.cc ], [ false, %bb.r ], [ %.ph12762369, %bb.cu ]
  %.0299 = phi ptr [ %i.bw, %bb.ct ], [ %i.ci, %_ZN20AstUserAllocatorBaseI6AstVarN15TristateVisitor9AuxAstVarELi3EEclIJEEERS2_PS0_DpOT_.exit595 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %i.ci, %bb.cc ], [ %i.bw, %bb.r ], [ %i.bw, %bb.cu ] ; 7 uses
  %.0298 = phi ptr [ null, %bb.ct ], [ %i.ci, %_ZN20AstUserAllocatorBaseI6AstVarN15TristateVisitor9AuxAstVarELi3EEclIJEEERS2_PS0_DpOT_.exit595 ], [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %i.ci, %bb.cc ], [ null, %bb.r ], [ null, %bb.cu ] ; 4 uses
  %.0294 = phi ptr [ null, %bb.ct ], [ %i.ez, %_ZN20AstUserAllocatorBaseI6AstVarN15TristateVisitor9AuxAstVarELi3EEclIJEEERS2_PS0_DpOT_.exit595 ], [ %i.ez, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit617 ], [ %i.ez, %bb.cc ], [ null, %bb.r ], [ %i.si, %bb.cu ] ; 8 uses
  %i.st = load ptr, ptr %3, align 8, !tbaa !384   ; 4 uses
  %i.su = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.sv = load ptr, ptr %i.su, align 8, !tbaa !384 ; 4 uses
  %.not.i.i623 = icmp eq ptr %i.st, %i.sv
  br i1 %.not.i.i623, label %._crit_edge, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEEZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_P10AstModportEUlS3_S3_E_EvT_SP_T0_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEEZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_P10AstModportEUlS3_S3_E_EvT_SP_T0_.exit: ; preds = %_ZN7AstNode2asI6AstVarS_EEPT_PT0_.exit
  %i.sw = ptrtoint ptr %i.sv to i64
  %i.sx = ptrtoint ptr %i.st to i64
  %i.sy = sub i64 %i.sw, %i.sx
  %i.sz = ashr exact i64 %i.sy, 4
  %i.ta = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.sz, i1 true)
  %i.tb = shl nuw nsw i64 %i.ta, 1
  %i.tc = xor i64 %i.tb, 126
  call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_T1_(ptr %i.st, ptr %i.sv, i64 noundef %i.tc)
  call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESN_P10AstModportEUlS3_S3_E_EEEvT_SS_T0_(ptr %i.st, ptr %i.sv)
  %.pre1988 = load ptr, ptr %3, align 8, !tbaa !384 ; 2 uses
  %.pre1989 = load ptr, ptr %i.su, align 8, !tbaa !384 ; 2 uses
  %.not13251902 = icmp eq ptr %.pre1988, %.pre1989
  br i1 %.not13251902, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN15TristateVisitor11RefStrengthESt6vectorIS3_SaIS3_EEEEZNS2_21insertTristatesSignalEP13AstNodeModuleP6AstVarPS7_bRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESL_P10AstModportEUlS3_S3_E_EvT_SP_T0_.exit
  %i.td = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 6 uses
  %i.te = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 4 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.tg = getelementptr inbounds nuw i8, ptr %.0299, i64 152
  %i.th = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 7 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.0299, i64 160
  %i.tj = getelementptr inbounds nuw i8, ptr %38, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %37, i64 16 ; 7 uses
  %i.tl = getelementptr inbounds nuw i8, ptr %37, i64 8 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 7 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %36, i64 8 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %35, i64 16 ; 7 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %35, i64 8 ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.tr = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.tt = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %41, i64 16 ; 4 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %43, i64 8
  %i.tw = getelementptr inbounds nuw i8, ptr %43, i64 16 ; 4 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 7 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %44, i64 8 ; 3 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %46, i64 8
  %i.ua = getelementptr inbounds nuw i8, ptr %46, i64 16 ; 4 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %48, i64 8
  %i.uc = getelementptr inbounds nuw i8, ptr %48, i64 16 ; 2 uses
  %i.ud = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 4 uses
  %i.ue = getelementptr inbounds nuw i8, ptr %49, i64 8
  %i.uf = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 4 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756
  %i.ug = phi ptr [ %.pre1989, %.preheader.lr.ph ], [ %i.ajc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ]
  %.03001905 = phi ptr [ null, %.preheader.lr.ph ], [ %i.aij, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ] ; 3 uses
  %.03021904 = phi ptr [ null, %.preheader.lr.ph ], [ %i.ait, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ] ; 4 uses
  %.sroa.01267.01903 = phi ptr [ %.pre1988, %.preheader.lr.ph ], [ %.sroa.01263.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit756 ] ; 4 uses
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.01267.01903, i64 8 ; 2 uses
  br label %bb.cw

bb.cw:                                            ; preds = %.preheader, %bb.cx
  %.sroa.01267.0.pn = phi ptr [ %.sroa.01263.0, %bb.cx ], [ %.sroa.01267.01903, %.preheader ] ; 2 uses
  %.sroa.01263.0 = getelementptr inbounds nuw i8, ptr %.sroa.01267.0.pn, i64 16 ; 5 uses
  %.not1327 = icmp eq ptr %.sroa.01263.0, %i.ug
  br i1 %.not1327, label %.critedge, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ui = getelementptr inbounds nuw i8, ptr %.sroa.01267.0.pn, i64 24
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !133
  %i.uk = load i8, ptr %i.uh, align 1, !tbaa !133
  %i.ul = icmp eq i8 %i.uj, %i.uk
  br i1 %i.ul, label %bb.cw, label %.critedge, !llvm.loop !726

.critedge:                                        ; preds = %bb.cw, %bb.cx
  %i.um = load ptr, ptr %.sroa.01267.01903, align 8, !tbaa !387
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 88
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !175 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #24
  store ptr %i.td, ptr %34, align 8, !tbaa !30
  store i64 0, ptr %i.te, align 8, !tbaa !28
  store i8 0, ptr %i.td, align 8, !tbaa !29
  br i1 %4, label %bb.cy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit

bb.cy:                                            ; preds = %.critedge
  %i.up = load i64, ptr %i.tf, align 8, !tbaa !28
  %i.uq = icmp eq i64 %i.up, 0
  br i1 %i.uq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc.exit, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %34, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %.loopexit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.cz
  %i.ur = load ptr, ptr %34, align 8, !tbaa !27   ; 44 uses
  %i.us = load i64, ptr %i.te, align 8, !tbaa !28 ; 9 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %i.ur, i64 %i.us
  %.not6.i624 = icmp samesign eq i64 %i.us, 0
  br i1 %.not6.i624, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, label %iter.check

iter.check:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %min.iters.check = icmp ult i64 %i.us, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2523 = icmp ult i64 %i.us, 32
  br i1 %min.iters.check2523, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.uu = and i64 %i.us, 24
  %n.vec = and i64 %i.us, -32                     ; 4 uses
  %i.uv = getelementptr i8, ptr %i.ur, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue2617, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue2617 ] ; 33 uses
  %next.gep = getelementptr i8, ptr %i.ur, i64 %index ; 3 uses
  %i.uw = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2524 = getelementptr i8, ptr %i.uw, i64 1
  %i.ux = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2525 = getelementptr i8, ptr %i.ux, i64 2
  %i.uy = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2526 = getelementptr i8, ptr %i.uy, i64 3
  %i.uz = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2527 = getelementptr i8, ptr %i.uz, i64 4
  %i.va = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2528 = getelementptr i8, ptr %i.va, i64 5
  %i.vb = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2529 = getelementptr i8, ptr %i.vb, i64 6
  %i.vc = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2530 = getelementptr i8, ptr %i.vc, i64 7
  %i.vd = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2531 = getelementptr i8, ptr %i.vd, i64 8
  %i.ve = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2532 = getelementptr i8, ptr %i.ve, i64 9
  %i.vf = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2533 = getelementptr i8, ptr %i.vf, i64 10
  %i.vg = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2534 = getelementptr i8, ptr %i.vg, i64 11
  %i.vh = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2535 = getelementptr i8, ptr %i.vh, i64 12
  %i.vi = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2536 = getelementptr i8, ptr %i.vi, i64 13
  %i.vj = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2537 = getelementptr i8, ptr %i.vj, i64 14
  %i.vk = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2538 = getelementptr i8, ptr %i.vk, i64 15
  %i.vl = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2539 = getelementptr i8, ptr %i.vl, i64 16
  %i.vm = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2540 = getelementptr i8, ptr %i.vm, i64 17
  %i.vn = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2541 = getelementptr i8, ptr %i.vn, i64 18
  %i.vo = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2542 = getelementptr i8, ptr %i.vo, i64 19
  %i.vp = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2543 = getelementptr i8, ptr %i.vp, i64 20
  %i.vq = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2544 = getelementptr i8, ptr %i.vq, i64 21
  %i.vr = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2545 = getelementptr i8, ptr %i.vr, i64 22
  %i.vs = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2546 = getelementptr i8, ptr %i.vs, i64 23
  %i.vt = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2547 = getelementptr i8, ptr %i.vt, i64 24
  %i.vu = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2548 = getelementptr i8, ptr %i.vu, i64 25
  %i.vv = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2549 = getelementptr i8, ptr %i.vv, i64 26
  %i.vw = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2550 = getelementptr i8, ptr %i.vw, i64 27
  %i.vx = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2551 = getelementptr i8, ptr %i.vx, i64 28
  %i.vy = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2552 = getelementptr i8, ptr %i.vy, i64 29
  %i.vz = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2553 = getelementptr i8, ptr %i.vz, i64 30
  %i.wa = getelementptr i8, ptr %i.ur, i64 %index
  %next.gep2554 = getelementptr i8, ptr %i.wa, i64 31
  %i.wb = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !29
  %wide.load2555 = load <16 x i8>, ptr %i.wb, align 1, !tbaa !29
  %i.wc = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.wd = icmp eq <16 x i8> %wide.load2555, splat (i8 46) ; 16 uses
  %i.we = extractelement <16 x i1> %i.wc, i64 0
  br i1 %i.we, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %next.gep, align 1, !tbaa !29
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.wf = extractelement <16 x i1> %i.wc, i64 1
  br i1 %i.wf, label %pred.store.if2556, label %pred.store.continue2557

pred.store.if2556:                                ; preds = %pred.store.continue
  store i8 95, ptr %next.gep2524, align 1, !tbaa !29
  br label %pred.store.continue2557

pred.store.continue2557:                          ; preds = %pred.store.if2556, %pred.store.continue
  %i.wg = extractelement <16 x i1> %i.wc, i64 2
  br i1 %i.wg, label %pred.store.if2558, label %pred.store.continue2559

pred.store.if2558:                                ; preds = %pred.store.continue2557
  store i8 95, ptr %next.gep2525, align 1, !tbaa !29
  br label %pred.store.continue2559

pred.store.continue2559:                          ; preds = %pred.store.if2558, %pred.store.continue2557
  %i.wh = extractelement <16 x i1> %i.wc, i64 3
  br i1 %i.wh, label %pred.store.if2560, label %pred.store.continue2561

pred.store.if2560:                                ; preds = %pred.store.continue2559
  store i8 95, ptr %next.gep2526, align 1, !tbaa !29
  br label %pred.store.continue2561

pred.store.continue2561:                          ; preds = %pred.store.if2560, %pred.store.continue2559
  %i.wi = extractelement <16 x i1> %i.wc, i64 4
  br i1 %i.wi, label %pred.store.if2562, label %pred.store.continue2563

pred.store.if2562:                                ; preds = %pred.store.continue2561
  store i8 95, ptr %next.gep2527, align 1, !tbaa !29
  br label %pred.store.continue2563

pred.store.continue2563:                          ; preds = %pred.store.if2562, %pred.store.continue2561
  %i.wj = extractelement <16 x i1> %i.wc, i64 5
  br i1 %i.wj, label %pred.store.if2564, label %pred.store.continue2565

pred.store.if2564:                                ; preds = %pred.store.continue2563
  store i8 95, ptr %next.gep2528, align 1, !tbaa !29
  br label %pred.store.continue2565

pred.store.continue2565:                          ; preds = %pred.store.if2564, %pred.store.continue2563
  %i.wk = extractelement <16 x i1> %i.wc, i64 6
  br i1 %i.wk, label %pred.store.if2566, label %pred.store.continue2567

pred.store.if2566:                                ; preds = %pred.store.continue2565
  store i8 95, ptr %next.gep2529, align 1, !tbaa !29
  br label %pred.store.continue2567

pred.store.continue2567:                          ; preds = %pred.store.if2566, %pred.store.continue2565
  %i.wl = extractelement <16 x i1> %i.wc, i64 7
  br i1 %i.wl, label %pred.store.if2568, label %pred.store.continue2569

pred.store.if2568:                                ; preds = %pred.store.continue2567
  store i8 95, ptr %next.gep2530, align 1, !tbaa !29
  br label %pred.store.continue2569

pred.store.continue2569:                          ; preds = %pred.store.if2568, %pred.store.continue2567
  %i.wm = extractelement <16 x i1> %i.wc, i64 8
  br i1 %i.wm, label %pred.store.if2570, label %pred.store.continue2571

pred.store.if2570:                                ; preds = %pred.store.continue2569
  store i8 95, ptr %next.gep2531, align 1, !tbaa !29
  br label %pred.store.continue2571

pred.store.continue2571:                          ; preds = %pred.store.if2570, %pred.store.continue2569
  %i.wn = extractelement <16 x i1> %i.wc, i64 9
  br i1 %i.wn, label %pred.store.if2572, label %pred.store.continue2573

pred.store.if2572:                                ; preds = %pred.store.continue2571
  store i8 95, ptr %next.gep2532, align 1, !tbaa !29
  br label %pred.store.continue2573

pred.store.continue2573:                          ; preds = %pred.store.if2572, %pred.store.continue2571
  %i.wo = extractelement <16 x i1> %i.wc, i64 10
  br i1 %i.wo, label %pred.store.if2574, label %pred.store.continue2575

pred.store.if2574:                                ; preds = %pred.store.continue2573
  store i8 95, ptr %next.gep2533, align 1, !tbaa !29
  br label %pred.store.continue2575

pred.store.continue2575:                          ; preds = %pred.store.if2574, %pred.store.continue2573
  %i.wp = extractelement <16 x i1> %i.wc, i64 11
  br i1 %i.wp, label %pred.store.if2576, label %pred.store.continue2577

pred.store.if2576:                                ; preds = %pred.store.continue2575
  store i8 95, ptr %next.gep2534, align 1, !tbaa !29
  br label %pred.store.continue2577

pred.store.continue2577:                          ; preds = %pred.store.if2576, %pred.store.continue2575
  %i.wq = extractelement <16 x i1> %i.wc, i64 12
  br i1 %i.wq, label %pred.store.if2578, label %pred.store.continue2579

pred.store.if2578:                                ; preds = %pred.store.continue2577
  store i8 95, ptr %next.gep2535, align 1, !tbaa !29
  br label %pred.store.continue2579

pred.store.continue2579:                          ; preds = %pred.store.if2578, %pred.store.continue2577
  %i.wr = extractelement <16 x i1> %i.wc, i64 13
  br i1 %i.wr, label %pred.store.if2580, label %pred.store.continue2581

pred.store.if2580:                                ; preds = %pred.store.continue2579
  store i8 95, ptr %next.gep2536, align 1, !tbaa !29
  br label %pred.store.continue2581

pred.store.continue2581:                          ; preds = %pred.store.if2580, %pred.store.continue2579
  %i.ws = extractelement <16 x i1> %i.wc, i64 14
  br i1 %i.ws, label %pred.store.if2582, label %pred.store.continue2583

pred.store.if2582:                                ; preds = %pred.store.continue2581
  store i8 95, ptr %next.gep2537, align 1, !tbaa !29
  br label %pred.store.continue2583

pred.store.continue2583:                          ; preds = %pred.store.if2582, %pred.store.continue2581
  %i.wt = extractelement <16 x i1> %i.wc, i64 15
  br i1 %i.wt, label %pred.store.if2584, label %pred.store.continue2585

pred.store.if2584:                                ; preds = %pred.store.continue2583
  store i8 95, ptr %next.gep2538, align 1, !tbaa !29
  br label %pred.store.continue2585

pred.store.continue2585:                          ; preds = %pred.store.if2584, %pred.store.continue2583
  %i.wu = extractelement <16 x i1> %i.wd, i64 0
  br i1 %i.wu, label %pred.store.if2586, label %pred.store.continue2587

end_hunk_0
