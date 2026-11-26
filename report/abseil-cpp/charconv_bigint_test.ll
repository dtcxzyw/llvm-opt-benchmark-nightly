Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/charconv_bigint_test?download=true
inline.NumInlined: 798
inline.NumDeleted: 266
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN4absl12lts_2026052616strings_internal26BigUnsigned_ShiftLeft_Test8TestBodyEv:.lr.ph.i.i.i
  %i.eh = load ptr, ptr %19, align 8, !tbaa !54   ; 3 uses
  %.not.i.i226 = icmp eq ptr %i.eh, null
  br i1 %.not.i.i226, label %_ZN7testing7MessageD2Ev.exit228, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227: ; preds = %bb.av
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(128) %i.eh) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit228

_ZN7testing7MessageD2Ev.exit228:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227, %bb.av, %bb.as
  %.pn78.pn = phi { ptr, i32 } [ %i.ee, %bb.as ], [ %.pn78, %bb.av ], [ %.pn78, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i227 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #15
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  br label %bb.bo

bb.aw:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit, %_ZN7testing7MessageD2Ev.exit225
  %i.el = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !48 ; 4 uses
  %.not.i.i229 = icmp eq ptr %i.em, null
  br i1 %.not.i.i229, label %_ZN7testing15AssertionResultD2Ev.exit233, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !52 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 16 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230: ; preds = %bb.ax
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !55
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.er) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i230
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit233

_ZN7testing15AssertionResultD2Ev.exit233:         ; preds = %bb.aw, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.es = load i32, ptr %15, align 4, !tbaa !57, !noalias !127 ; 2 uses
  %i.et = load i32, ptr %17, align 4, !tbaa !57, !noalias !127 ; 2 uses
  %.sroa.speculated.i.i.i234 = call i32 @llvm.smax.i32(i32 %i.es, i32 %i.et) ; 2 uses
  %.not1219.i.i.i235 = icmp slt i32 %.sroa.speculated.i.i.i234, 1
  br i1 %.not1219.i.i.i235, label %.loopexit.i248, label %.lr.ph.i.i.i236

.lr.ph.i.i.i236:                                  ; preds = %_ZN7testing15AssertionResultD2Ev.exit233
  %i.eu = sext i32 %i.et to i64
  %i.ev = sext i32 %i.es to i64
  %wide.trip.count.i.i.i237 = zext nneg i32 %.sroa.speculated.i.i.i234 to i64
  br label %bb.az

bb.ay:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i243
  %indvars.iv.next.i.i.i246 = add nuw nsw i64 %indvars.iv.i.i.i238, 1 ; 2 uses
  %exitcond.not.i.i.i247 = icmp eq i64 %indvars.iv.next.i.i.i246, %wide.trip.count.i.i.i237
  br i1 %exitcond.not.i.i.i247, label %.loopexit.i248, label %bb.az, !llvm.loop !2

bb.az:                                            ; preds = %bb.ay, %.lr.ph.i.i.i236
  %indvars.iv.i.i.i238 = phi i64 [ 0, %.lr.ph.i.i.i236 ], [ %indvars.iv.next.i.i.i246, %bb.ay ] ; 5 uses
  %.not.i.i.i.i239 = icmp slt i64 %indvars.iv.i.i.i238, %i.ev
  br i1 %.not.i.i.i.i239, label %bb.ba, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i240

bb.ba:                                            ; preds = %bb.az
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i.i238
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !34, !noalias !127
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i240

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i240: ; preds = %bb.ba, %bb.az
  %.0.i.i.i.i241 = phi i32 [ %i.ex, %bb.ba ], [ 0, %bb.az ]
  %.not.i13.i.i.i242 = icmp slt i64 %indvars.iv.i.i.i238, %i.eu
  br i1 %.not.i13.i.i.i242, label %bb.bb, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i243

bb.bb:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i240
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i.i.i238
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !34, !noalias !127
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i243

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i243: ; preds = %bb.bb, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i240
  %.0.i14.i.i.i244 = phi i32 [ %i.ez, %bb.bb ], [ 0, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i240 ]
  %.not.i.not.i.i245 = icmp eq i32 %.0.i.i.i.i241, %.0.i14.i.i.i244
  br i1 %.not.i.not.i.i245, label %bb.ay, label %_ZN4absl12lts_2026052616strings_internalneILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i

_ZN4absl12lts_2026052616strings_internalneILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i243
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21)
  br label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit

.loopexit.i248:                                   ; preds = %bb.ay, %_ZN7testing15AssertionResultD2Ev.exit233
  call void @_ZN7testing8internal18CmpHelperOpFailureIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_S9_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %21, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(340) %15, ptr noundef nonnull align 4 dereferenceable(340) %17, ptr noundef nonnull @.str.53)
  br label %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit

_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit: ; preds = %_ZN4absl12lts_2026052616strings_internalneILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i, %.loopexit.i248
  %i.fa = load i8, ptr %21, align 8, !tbaa !45, !range !46, !noundef !47
  %i.fb = trunc nuw i8 %i.fa to i1
  br i1 %i.fb, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bd unwind label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  %i.fc = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !48 ; 2 uses
  %.not.i.i249 = icmp eq ptr %i.fd, null
  br i1 %.not.i.i249, label %_ZNK7testing15AssertionResult15failure_messageEv.exit250, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit250

_ZNK7testing15AssertionResult15failure_messageEv.exit250: ; preds = %bb.be, %bb.bd
  %i.ff = phi ptr [ %i.fe, %bb.be ], [ @.str.44, %bb.bd ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %23, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 56, ptr noundef %i.ff)
          to label %bb.bf unwind label %bb.bi

bb.bf:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit250
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %bb.bg unwind label %bb.bj

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.fg = load ptr, ptr %22, align 8, !tbaa !54   ; 3 uses
  %.not.i.i251 = icmp eq ptr %i.fg, null
  br i1 %.not.i.i251, label %_ZN7testing7MessageD2Ev.exit253, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252: ; preds = %bb.bg
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !20
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8
  call void %i.fj(ptr noundef nonnull align 8 dereferenceable(128) %i.fg) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit253

_ZN7testing7MessageD2Ev.exit253:                  ; preds = %bb.bg, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i252
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bc
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit256

bb.bi:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit250
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bf
  %i.fm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %23) #15
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.pn81 = phi { ptr, i32 } [ %i.fm, %bb.bj ], [ %i.fl, %bb.bi ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #15
  %i.fn = load ptr, ptr %22, align 8, !tbaa !54   ; 3 uses
  %.not.i.i254 = icmp eq ptr %i.fn, null
  br i1 %.not.i.i254, label %_ZN7testing7MessageD2Ev.exit256, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255: ; preds = %bb.bk
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8
  call void %i.fq(ptr noundef nonnull align 8 dereferenceable(128) %i.fn) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit256

_ZN7testing7MessageD2Ev.exit256:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255, %bb.bk, %bb.bh
  %.pn81.pn = phi { ptr, i32 } [ %i.fk, %bb.bh ], [ %.pn81, %bb.bk ], [ %.pn81, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i255 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #15
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  br label %bb.bo

bb.bl:                                            ; preds = %_ZN7testing8internal11CmpHelperNEIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_.exit, %_ZN7testing7MessageD2Ev.exit253
  %i.fr = getelementptr inbounds nuw i8, ptr %21, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !48 ; 4 uses
  %.not.i.i257 = icmp eq ptr %i.fs, null
  br i1 %.not.i.i257, label %_ZN7testing15AssertionResultD2Ev.exit261, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !52 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258: ; preds = %bb.bm
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !55
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259: ; preds = %bb.bm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i258
  call void @_ZdlPvm(ptr noundef nonnull %i.fs, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit261

_ZN7testing15AssertionResultD2Ev.exit261:         ; preds = %bb.bl, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i259
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.fy = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 6 uses
  store ptr %i.fy, ptr %24, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 40, ptr %i.a, align 8, !tbaa !59
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.bp    ; 3 uses

.noexc:                                           ; preds = %_ZN7testing15AssertionResultD2Ev.exit261
  store ptr %i.fz, ptr %24, align 8, !tbaa !52
  %i.ga = load i64, ptr %i.a, align 8, !tbaa !59  ; 3 uses
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.fz, ptr noundef nonnull align 1 dereferenceable(40) @.str.9, i64 40, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 3 uses
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !60
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  store i8 0, ptr %i.gc, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #15
  %i.gd = load ptr, ptr %24, align 8, !tbaa !52
  %i.ge = load i64, ptr %i.gb, align 8, !tbaa !60
  invoke void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 4 dereferenceable(340) %25, i64 %i.ge, ptr %i.gd)
          to label %.preheader unwind label %bb.ci

.preheader:                                       ; preds = %.noexc
  %i.gf = getelementptr inbounds nuw i8, ptr %25, i64 4 ; 9 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %26, i64 4 ; 11 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  br label %bb.bq

bb.bn:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit327
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %31, i8 0, i64 340, i1 false)
  %i.gi = load i32, ptr %25, align 4, !tbaa !57, !noalias !128 ; 2 uses
  %.not1219.i.i.i263 = icmp slt i32 %i.gi, 1
  br i1 %.not1219.i.i.i263, label %.loopexit.i.i277, label %.lr.ph.i.i.i264

.lr.ph.i.i.i264:                                  ; preds = %bb.bn
  %wide.trip.count.i.i.i265 = zext nneg i32 %i.gi to i64
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271.thread: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271
  %indvars.iv.next.i.i.i275 = add nuw nsw i64 %indvars.iv.i.i.i266, 1 ; 2 uses
  %exitcond.not.i.i.i276 = icmp eq i64 %indvars.iv.next.i.i.i275, %wide.trip.count.i.i.i265
  br i1 %exitcond.not.i.i.i276, label %.loopexit.i.i277, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271, !llvm.loop !2

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271.thread, %.lr.ph.i.i.i264
  %indvars.iv.i.i.i266 = phi i64 [ 0, %.lr.ph.i.i.i264 ], [ %indvars.iv.next.i.i.i275, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271.thread ] ; 2 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i266
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !34, !noalias !128
  %.not.i.i.i273 = icmp eq i32 %i.gk, 0
  br i1 %.not.i.i.i273, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271.thread, label %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i274

.loopexit.i.i277:                                 ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271.thread, %bb.bn
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit280 unwind label %bb.cy

_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i274: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i271
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %30, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, ptr noundef nonnull align 4 dereferenceable(340) %25, ptr noundef nonnull align 4 dereferenceable(340) %31)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit280 unwind label %bb.cy

bb.bo:                                            ; preds = %_ZN7testing7MessageD2Ev.exit256, %_ZN7testing7MessageD2Ev.exit228
  %.pn81.pn.pn = phi { ptr, i32 } [ %.pn81.pn, %_ZN7testing7MessageD2Ev.exit256 ], [ %.pn78.pn, %_ZN7testing7MessageD2Ev.exit228 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  br label %bb.js

bb.bp:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit261
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit343

bb.bq:                                            ; preds = %.preheader, %_ZN7testing15AssertionResultD2Ev.exit327
  %.068615 = phi i32 [ 1, %.preheader ], [ %i.km, %_ZN7testing15AssertionResultD2Ev.exit327 ] ; 5 uses
  %i.gm = load i32, ptr %25, align 4, !tbaa !57   ; 5 uses
  %.sroa.speculated28.i281 = call i32 @llvm.smin.i32(i32 %i.gm, i32 84) ; 3 uses
  store i32 %.sroa.speculated28.i281, ptr %25, align 4, !tbaa !57
  %i.gn = icmp sgt i32 %i.gm, 0
  br i1 %i.gn, label %.lr.ph.i, label %._crit_edge.i.thread

._crit_edge.i.thread:                             ; preds = %bb.bq
  %i.go = load i32, ptr %i.gf, align 4, !tbaa !34
  %i.gp = shl i32 %i.go, 1
  store i32 %i.gp, ptr %i.gf, align 4, !tbaa !34
  br label %bb.br

.lr.ph.i:                                         ; preds = %bb.bq
  %i.gq = call i32 @llvm.umin.i32(i32 %i.gm, i32 83)
  %i.gr = zext nneg i32 %i.gq to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.gm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph781

vector.ph781:                                     ; preds = %.lr.ph.i
  %n.vec = and i64 %i.gr, 120                     ; 2 uses
  %i.gs = and i64 %i.gr, 7
  br label %vector.body782

vector.body782:                                   ; preds = %vector.body782, %vector.ph781
  %index783 = phi i64 [ 0, %vector.ph781 ], [ %index.next793, %vector.body782 ] ; 2 uses
  %i.gt = sub i64 %i.gr, %index783
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %i.gt ; 4 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 -12 ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr %i.gu, i64 -28 ; 2 uses
  %wide.load784 = load <4 x i32>, ptr %i.gv, align 4, !tbaa !34
  %wide.load785 = load <4 x i32>, ptr %i.gw, align 4, !tbaa !34
  %i.gx = getelementptr i8, ptr %i.gu, i64 -16
  %i.gy = getelementptr i8, ptr %i.gu, i64 -32
  %wide.load787 = load <4 x i32>, ptr %i.gx, align 4, !tbaa !34
  %wide.load788 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !34
  %i.gz = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load784, <4 x i32> %wide.load787, <4 x i32> splat (i32 1))
  %i.ha = call <4 x i32> @llvm.fshl.v4i32(<4 x i32> %wide.load785, <4 x i32> %wide.load788, <4 x i32> splat (i32 1))
  store <4 x i32> %i.gz, ptr %i.gv, align 4, !tbaa !34
  store <4 x i32> %i.ha, ptr %i.gw, align 4, !tbaa !34
  %index.next793 = add nuw i64 %index783, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next793, %n.vec
  br i1 %i.hb, label %middle.block794, label %vector.body782, !llvm.loop !91

middle.block794:                                  ; preds = %vector.body782
  %cmp.n = icmp eq i64 %n.vec, %i.gr
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block794
  %indvars.iv.i.ph = phi i64 [ %i.gr, %.lr.ph.i ], [ %i.gs, %middle.block794 ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block794
  %i.hc = load i32, ptr %i.gf, align 4, !tbaa !34
  %i.hd = shl i32 %i.hc, 1
  store i32 %i.hd, ptr %i.gf, align 4, !tbaa !34
  %i.he = icmp samesign ult i32 %i.gm, 84
  br i1 %i.he, label %bb.br, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit284

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gf, i64 %indvars.iv.i ; 3 uses
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !34
  %i.hh = getelementptr i8, ptr %i.hf, i64 -4
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !34
  %i.hj = call i32 @llvm.fshl.i32(i32 %i.hg, i32 %i.hi, i32 1)
  store i32 %i.hj, ptr %i.hf, align 4, !tbaa !34
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %.not614 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not614, label %._crit_edge.i, label %scalar.ph, !llvm.loop !92

bb.br:                                            ; preds = %._crit_edge.i.thread, %._crit_edge.i
  %i.hk = sext i32 %.sroa.speculated28.i281 to i64
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.gf, i64 %i.hk
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !34
  %.not.i283 = icmp eq i32 %i.hm, 0
  br i1 %.not.i283, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit284, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hn = add nsw i32 %.sroa.speculated28.i281, 1
  store i32 %i.hn, ptr %25, align 4, !tbaa !57
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit284

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit284: ; preds = %bb.bs, %bb.br, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #15
  %i.ho = load ptr, ptr %24, align 8, !tbaa !52
  %i.hp = load i64, ptr %i.gb, align 8, !tbaa !60
  invoke void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 4 dereferenceable(340) %26, i64 %i.hp, ptr %i.ho)
          to label %bb.bt unwind label %bb.cj

bb.bt:                                            ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit284
  %i.hq = lshr i32 %.068615, 5                    ; 7 uses
  %i.hr = icmp eq i32 %.068615, 2688
  %i.hs = load i32, ptr %26, align 4, !tbaa !57   ; 3 uses
  br i1 %i.hr, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.ht = icmp slt i32 %i.hs, 1
  br i1 %i.ht, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %bb.bu
  %i.hu = zext nneg i32 %i.hs to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.hu, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gg, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !34
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %bb.bu
  store i32 0, ptr %26, align 4, !tbaa !57
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9ShiftLeftEi.exit295

bb.bv:                                            ; preds = %bb.bt
  %i.hv = add nsw i32 %i.hs, %i.hq                ; 3 uses
  %.sroa.speculated28.i287 = call i32 @llvm.smin.i32(i32 %i.hv, i32 84) ; 4 uses
  store i32 %.sroa.speculated28.i287, ptr %26, align 4, !tbaa !57
  %i.hw = and i32 %.068615, 31                    ; 2 uses
  %i.hx = icmp eq i32 %i.hw, 0
  br i1 %i.hx, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv
  %i.hy = sext i32 %.sroa.speculated28.i287 to i64 ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.gg, i64 %i.hy ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052616strings_internal38BigUnsigned_MultiplyByBigUnsigned_Test8TestBodyEv:bb.a
._crit_edge.i54:                                  ; preds = %._crit_edge.i54.unr-lcssa, %.epil.preheader656
  %.lcssa651 = phi i64 [ %i.cb, %._crit_edge.i54.unr-lcssa ], [ %i.bl, %.epil.preheader656 ] ; 2 uses
  %.not.i55 = icmp ne i64 %.lcssa651, 0
  %i.bm = icmp samesign ult i32 %i.w, 84
  %or.cond17.i56 = and i1 %i.bm, %.not.i55
  br i1 %or.cond17.i56, label %bb.l, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit57

bb.k:                                             ; preds = %bb.k, %.lr.ph.i48.new
  %indvars.iv.i50 = phi i64 [ 0, %.lr.ph.i48.new ], [ %indvars.iv.next.i52.1, %bb.k ] ; 3 uses
  %.01418.i51 = phi i64 [ 0, %.lr.ph.i48.new ], [ %i.cb, %bb.k ]
  %niter662 = phi i64 [ 0, %.lr.ph.i48.new ], [ %niter662.next.1, %bb.k ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i50 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %i.bp = zext i32 %i.bo to i64
  %i.bq = mul nuw nsw i64 %i.bc, %i.bp
  %i.br = add nuw nsw i64 %i.bq, %.01418.i51      ; 2 uses
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !34
  %i.bt = lshr i64 %i.br, 32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i50
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 4 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !34
  %i.bx = zext i32 %i.bw to i64
  %i.by = mul nuw nsw i64 %i.bc, %i.bx
  %i.bz = add nuw nsw i64 %i.by, %i.bt            ; 2 uses
  %i.ca = trunc i64 %i.bz to i32
  store i32 %i.ca, ptr %i.bv, align 4, !tbaa !34
  %i.cb = lshr i64 %i.bz, 32                      ; 3 uses
  %indvars.iv.next.i52.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %niter662.next.1 = add i64 %niter662, 2         ; 2 uses
  %niter662.ncmp.1 = icmp eq i64 %niter662.next.1, %unroll_iter661
  br i1 %niter662.ncmp.1, label %._crit_edge.i54.unr-lcssa, label %bb.k, !llvm.loop !4

bb.l:                                             ; preds = %._crit_edge.i54
  %i.cc = trunc nuw i64 %.lcssa651 to i32
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %wide.trip.count.i49
  store i32 %i.cc, ptr %i.cd, align 4, !tbaa !34
  %i.ce = add nuw nsw i32 %i.w, 1                 ; 3 uses
  store i32 %i.ce, ptr %6, align 4, !tbaa !57
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit57

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit57: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit, %bb.j, %._crit_edge.i54, %bb.l
  %i.cf = phi i32 [ %i.u, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit ], [ %i.u, %bb.j ], [ %i.u, %._crit_edge.i54 ], [ %i.ce, %bb.l ] ; 4 uses
  %i.cg = phi i32 [ 0, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit ], [ %i.w, %bb.j ], [ %i.w, %._crit_edge.i54 ], [ %i.ce, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2
  %i.ch = icmp samesign ult i64 %indvars.iv, 198
  br i1 %i.ch, label %bb.g, label %bb.b, !llvm.loop !147

bb.m:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.n unwind label %bb.r

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.ci = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !48 ; 2 uses
  %.not.i.i58 = icmp eq ptr %i.cj, null
  br i1 %.not.i.i58, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.o, %bb.n
  %i.cl = phi ptr [ %i.ck, %bb.o ], [ @.str.44, %bb.n ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 159, ptr noundef %i.cl)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.cm = load ptr, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not.i.i59 = icmp eq ptr %i.cm, null
  br i1 %.not.i.i59, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.q
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !20
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(128) %i.cm) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  br label %bb.v

bb.r:                                             ; preds = %bb.m
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit62

bb.s:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.cr = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #15
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pn = phi { ptr, i32 } [ %i.cs, %bb.t ], [ %i.cr, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  %i.ct = load ptr, ptr %9, align 8, !tbaa !54    ; 3 uses
  %.not.i.i60 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i60, label %_ZN7testing7MessageD2Ev.exit62, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61: ; preds = %bb.u
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !20
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(128) %i.ct) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit62

_ZN7testing7MessageD2Ev.exit62:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61, %bb.u, %bb.r
  %.pn.pn = phi { ptr, i32 } [ %i.cq, %bb.r ], [ %.pn, %bb.u ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i61 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.ei

bb.v:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.cx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !48 ; 4 uses
  %.not.i.i63 = icmp eq ptr %i.cy, null
  br i1 %.not.i.i63, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !52 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 16 ; 2 uses
  %i.db = icmp eq ptr %i.cz, %i.da
  br i1 %i.db, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.w
  %i.dc = load i64, ptr %i.da, align 8, !tbaa !55
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dd) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cy, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.v, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i32 0, ptr %i.a, align 4, !tbaa !34
  %i.de = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 5 uses
  %i.df = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 26 uses
  %i.dm = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052616strings_internal10kFiveToNthE, i64 52), align 4
  %.fr30.i = freeze i32 %i.dm                     ; 3 uses
  %i.dn = icmp eq i32 %.fr30.i, 1                 ; 2 uses
  %i.do = zext i32 %.fr30.i to i64                ; 6 uses
  %i.dp = icmp eq i32 %.fr30.i, 0                 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 7 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %20, i64 8 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 4 ; 26 uses
  %i.du = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  call void @_ZN7testing11ScopedTraceC2IiEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %11, ptr noundef nonnull @.str.2, i32 noundef 164, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.dy = load i32, ptr %i.a, align 4, !tbaa !34
  %i.dz = sext i32 %i.dy to i64
  store ptr %i.de, ptr %14, align 8, !tbaa !58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef %i.dz, i8 noundef signext 48)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.ac

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.y
  %i.ea = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.26, i64 noundef 1)
          to label %.noexc unwind label %bb.ad    ; 6 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  store ptr %i.df, ptr %13, align 8, !tbaa !58, !alias.scope !168
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 5 uses
  %i.ed = icmp eq ptr %i.eb, %i.ec
  br i1 %i.ed, label %bb.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.z:                                             ; preds = %.noexc
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !60 ; 3 uses
  %i.eg = icmp ult i64 %i.ef, 16
  call void @llvm.assume(i1 %i.eg)
  %i.eh = add nuw nsw i64 %i.ef, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.df, ptr noundef nonnull align 8 dereferenceable(1) %i.ec, i64 %i.eh, i1 false)
  br label %bb.aa

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.eb, ptr %13, align 8, !tbaa !52, !alias.scope !168
  %i.ei = load i64, ptr %i.ec, align 8, !tbaa !55
  store i64 %i.ei, ptr %i.df, align 8, !tbaa !55, !alias.scope !168
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %bb.aa

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.z
  %i.ej = phi i64 [ %i.ef, %bb.z ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store i64 %i.ej, ptr %i.dg, align 8, !tbaa !60, !alias.scope !168
  store ptr %i.ec, ptr %i.ea, align 8, !tbaa !52
  store i64 0, ptr %i.ek, align 8, !tbaa !60
  store i8 0, ptr %i.ec, align 8, !tbaa !55
  %i.el = load ptr, ptr %13, align 8, !tbaa !52
  %i.em = load i64, ptr %i.dg, align 8, !tbaa !60
  invoke void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 4 dereferenceable(340) %12, i64 %i.em, ptr %i.el)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.en = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.eo = icmp eq ptr %i.en, %i.df
  br i1 %i.eo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.ab
  %i.ep = load i64, ptr %i.df, align 8, !tbaa !55
  %i.eq = add i64 %i.ep, 1
  call void @_ZdlPvm(ptr noundef %i.en, i64 noundef %i.eq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  %i.er = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.de
  br i1 %i.es, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.et = load i64, ptr %i.de, align 8, !tbaa !55
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i65
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  %i.ev = load i32, ptr %i.a, align 4, !tbaa !34
  %i.ew = icmp slt i32 %i.ev, 700
  br i1 %i.ew, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  %i.ex = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.ey = add nsw i32 %i.ex, 25
  store i32 %i.ey, ptr %i.a, align 4, !tbaa !34
  %i.ez = icmp slt i32 %i.ex, 675
  br i1 %i.ez, label %bb.y, label %bb.x, !llvm.loop !150

bb.ac:                                            ; preds = %bb.y
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.ad:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

bb.ae:                                            ; preds = %bb.aa
  %i.fc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fd = load ptr, ptr %13, align 8, !tbaa !52   ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.df
  br i1 %i.fe, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.ae
  %i.ff = load i64, ptr %i.df, align 8, !tbaa !55
  %i.fg = add i64 %i.ff, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fg) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %bb.ad
  %.pn28 = phi { ptr, i32 } [ %i.fb, %bb.ad ], [ %i.fc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.fc, %bb.ae ] ; 2 uses
  %i.fh = load ptr, ptr %14, align 8, !tbaa !52   ; 2 uses
  %i.fi = icmp eq ptr %i.fh, %i.de
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70
  %i.fj = load i64, ptr %i.de, align 8, !tbaa !55
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fk) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %bb.ac
  %.pn28.pn = phi { ptr, i32 } [ %i.fa, %bb.ac ], [ %.pn28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %.pn28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  br label %bb.eh

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %_ZN7testing15AssertionResultD2Ev.exit182
  %indvars.iv465 = phi i64 [ %indvars.iv.next466, %_ZN7testing15AssertionResultD2Ev.exit182 ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc75 unwind label %bb.dl

.noexc75:                                         ; preds = %.lr.ph
  %i.fl = load ptr, ptr %4, align 8, !tbaa !54
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = trunc nuw nsw i64 %indvars.iv465 to i32 ; 2 uses
  %i.fo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.fm, i32 noundef %i.fn)
          to label %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i unwind label %bb.ah ; 0 uses

_ZN7testing7MessagelsIiEERS0_RKT_.exit.i:         ; preds = %.noexc75
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull @.str.2, i32 noundef 167, ptr noundef nonnull align 8 %3)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.fp = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.dh
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ag
  %i.fr = load i64, ptr %i.dh, align 8, !tbaa !55
  %i.fs = add i64 %i.fr, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.fs) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ft = load ptr, ptr %4, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i74 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i.i74, label %bb.aj, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !20
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #15, !inline_history !151
  br label %bb.aj

bb.ah:                                            ; preds = %_ZN7testing7MessagelsIiEERS0_RKT_.exit.i, %.noexc75
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

bb.ai:                                            ; preds = %bb.af
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %3, align 8, !tbaa !52    ; 2 uses
  %i.ga = icmp eq ptr %i.fz, %i.dh
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.ai
  %i.gb = load i64, ptr %i.dh, align 8, !tbaa !55
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gc) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %bb.ah
  %.pn.i = phi { ptr, i32 } [ %i.fx, %bb.ah ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.fy, %bb.ai ]
  %i.gd = load ptr, ptr %4, align 8, !tbaa !54    ; 3 uses
  %.not.i.i10.i = icmp eq ptr %i.gd, null
  br i1 %.not.i.i10.i, label %_ZN7testing7MessageD2Ev.exit12.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  call void %i.gg(ptr noundef nonnull align 8 dereferenceable(128) %i.gd) #15, !inline_history !151
  br label %_ZN7testing7MessageD2Ev.exit12.i

_ZN7testing7MessageD2Ev.exit12.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.body

bb.aj:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #15
  store ptr %i.di, ptr %18, align 8, !tbaa !58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef %indvars.iv465, i8 noundef signext 48)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit77 unwind label %bb.dm

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit77: ; preds = %bb.aj
  %i.gh = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.27, i64 noundef 1)
          to label %.noexc81 unwind label %bb.dn  ; 6 uses

.noexc81:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit77
  store ptr %i.dj, ptr %17, align 8, !tbaa !58, !alias.scope !169
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !52 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 5 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.ak, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

bb.ak:                                            ; preds = %.noexc81
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !60 ; 3 uses
  %i.gn = icmp ult i64 %i.gm, 16
  call void @llvm.assume(i1 %i.gn)
  %i.go = add nuw nsw i64 %i.gm, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dj, ptr noundef nonnull align 8 dereferenceable(1) %i.gj, i64 %i.go, i1 false)
  br label %bb.al

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %.noexc81
  store ptr %i.gi, ptr %17, align 8, !tbaa !52, !alias.scope !169
  %i.gp = load i64, ptr %i.gj, align 8, !tbaa !55
  store i64 %i.gp, ptr %i.dj, align 8, !tbaa !55, !alias.scope !169
  %.phi.trans.insert.i79 = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %.pre.i80 = load i64, ptr %.phi.trans.insert.i79, align 8, !tbaa !60
  br label %bb.al

bb.al:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.ak
  %i.gq = phi i64 [ %i.gm, %bb.ak ], [ %.pre.i80, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ]
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  store i64 %i.gq, ptr %i.dk, align 8, !tbaa !60, !alias.scope !169
  store ptr %i.gj, ptr %i.gh, align 8, !tbaa !52
  store i64 0, ptr %i.gr, align 8, !tbaa !60
  store i8 0, ptr %i.gj, align 8, !tbaa !55
  %i.gs = load ptr, ptr %17, align 8, !tbaa !52   ; 5 uses
  %i.gt = load i64, ptr %i.dk, align 8, !tbaa !60 ; 5 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.gt ; 3 uses
  %i.gv = ptrtoint ptr %i.gu to i64
  %i.gw = ashr i64 %i.gt, 2                       ; 2 uses
  %i.gx = icmp sgt i64 %i.gw, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %16, i8 0, i64 340, i1 false)
  br i1 %i.gx, label %.lr.ph.i.i.i.preheader.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.al
  %i.gy = and i64 %i.gt, -4
  %scevgep.i = getelementptr i8, ptr %i.gs, i64 %i.gy
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.ap, %.lr.ph.i.i.i.preheader.i
  %.047.i.i.i.i = phi i64 [ %i.hp, %bb.ap ], [ %i.gw, %.lr.ph.i.i.i.preheader.i ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.ho, %bb.ap ], [ %i.gs, %.lr.ph.i.i.i.preheader.i ] ; 9 uses
  %i.gz = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !55
  %i.ha = add i8 %i.gz, -48
  %i.hb = icmp ult i8 %i.ha, 10
  br i1 %i.hb, label %bb.am, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

bb.am:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !55
  %i.he = add i8 %i.hd, -48
  %i.hf = icmp ult i8 %i.he, 10
  br i1 %i.hf, label %bb.an, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit

bb.an:                                            ; preds = %bb.am
  %i.hg = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !55
  %i.hi = add i8 %i.hh, -48
  %i.hj = icmp ult i8 %i.hi, 10
  br i1 %i.hj, label %bb.ao, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit588

bb.ao:                                            ; preds = %bb.an
  %i.hk = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !55
  %i.hm = add i8 %i.hl, -48
  %i.hn = icmp ult i8 %i.hm, 10
  br i1 %i.hn, label %bb.ap, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit590

bb.ap:                                            ; preds = %bb.ao
  %i.ho = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.hp = add nsw i64 %.047.i.i.i.i, -1
  %i.hq = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.hq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !154

._crit_edge.i.i.i.i:                              ; preds = %bb.ap, %bb.al
  %.029.lcssa.i.i.i.i = phi ptr [ %i.gs, %bb.al ], [ %scevgep.i, %bb.ap ] ; 6 uses
  %.pre-phi.i.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i.i to i64
  %i.hr = sub i64 %i.gv, %.pre-phi.i.i.i.i
  switch i64 %i.hr, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i [
    i64 3, label %bb.aq
    i64 2, label %bb.as
    i64 1, label %bb.au
  ]

bb.aq:                                            ; preds = %._crit_edge.i.i.i.i
  %i.hs = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !55
  %i.ht = add i8 %i.hs, -48
  %i.hu = icmp ult i8 %i.ht, 10
  br i1 %i.hu, label %bb.ar, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.hv = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.hv, %bb.ar ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.hw = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !55
  %i.hx = add i8 %i.hw, -48
  %i.hy = icmp ult i8 %i.hx, 10
  br i1 %i.hy, label %bb.at, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

bb.at:                                            ; preds = %bb.as
  %i.hz = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.hz, %bb.at ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ia = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !55
  %i.ib = add i8 %i.ia, -48
  %i.ic = icmp ult i8 %i.ib, 10
  br i1 %i.ic, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.am
  %i.id = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit588: ; preds = %bb.an
  %i.ie = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit590: ; preds = %bb.ao
  %i.if = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i:    ; preds = %.lr.ph.i.i.i.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit588, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit590, %bb.au, %bb.as, %bb.aq
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %bb.as ], [ %.029.lcssa.i.i.i.i, %bb.aq ], [ %.2.i.i.i.i, %bb.au ], [ %i.if, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit590 ], [ %i.id, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit ], [ %i.ie, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i.loopexit.split.loop.exit588 ], [ %.02946.i.i.i.i, %.lr.ph.i.i.i.i ]
  %.not.i85 = icmp ne ptr %.028.i.i.i.i, %i.gu
  %i.ig = icmp eq i64 %i.gt, 0
  %or.cond.i86 = or i1 %i.ig, %.not.i85
  br i1 %or.cond.i86, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.av

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i: ; preds = %bb.au, %._crit_edge.i.i.i.i
  %.old.i = icmp eq i64 %i.gt, 0
  br i1 %.old.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.av

bb.av:                                            ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i
  %i.ih = invoke noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10ReadDigitsEPKcS5_i(ptr noundef nonnull align 4 dereferenceable(340) %16, ptr noundef %i.gs, ptr noundef %i.gu, i32 noundef 810)
          to label %.noexc87 unwind label %bb.do  ; 14 uses

.noexc87:                                         ; preds = %bb.av
  %i.ii = icmp sgt i32 %i.ih, 0
  br i1 %i.ii, label %bb.aw, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.aw:                                            ; preds = %.noexc87
  %i.ij = icmp samesign ugt i32 %i.ih, 9
  br i1 %i.ij, label %bb.ax, label %bb.bo

bb.ax:                                            ; preds = %bb.aw
  %i.ik = icmp samesign ugt i32 %i.ih, 12
  br i1 %i.ik, label %.lr.ph.i227, label %.._crit_edge.i225.thread_crit_edge

.._crit_edge.i225.thread_crit_edge:               ; preds = %bb.ax
  %.pre471 = load i32, ptr %16, align 4, !tbaa !57
  br label %._crit_edge.i225.thread

.lr.ph.i227:                                      ; preds = %bb.ax
  br i1 %i.dn, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us.preheader.i, label %.lr.ph.split.i

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us.preheader.i: ; preds = %.lr.ph.i227
  %i.il = call i32 @llvm.usub.sat.i32(i32 %i.ih, i32 25) ; 2 uses
  %i.im = add nuw nsw i32 %i.il, 12
  %i.in = urem i32 %i.im, 13
  %i.io = sub nsw i32 %i.ih, %i.il
  %i.ip = add nsw i32 %i.io, -25
  %i.iq = add nsw i32 %i.ip, %i.in
  %.pre472.pre = load i32, ptr %16, align 4, !tbaa !57
  br label %._crit_edge.i225

.lr.ph.split.i:                                   ; preds = %.lr.ph.i227
  %.promoted.i = load i32, ptr %16, align 4, !tbaa !57 ; 3 uses
  br i1 %i.dp, label %.lr.ph.split.split.us.i.preheader, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i.preheader:                ; preds = %.lr.ph.split.i
  %i.ir = icmp slt i32 %.promoted.i, 1
  br i1 %i.ir, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i.peel, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i.us.i.peel

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i.us.i.peel: ; preds = %.lr.ph.split.split.us.i.preheader
  %i.is = zext nneg i32 %.promoted.i to i64
  %.idx.i.i.i.i.us.i.peel = shl nuw nsw i64 %i.is, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %.idx.i.i.i.i.us.i.peel, i1 false), !tbaa !34
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i.peel

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i.peel: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i.us.i.peel, %.lr.ph.split.split.us.i.preheader
  %i.it = add nsw i32 %i.ih, -13                  ; 2 uses
  %i.iu = icmp samesign ugt i32 %i.ih, 25
  br i1 %i.iu, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i, label %._crit_edge.i225

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i.peel, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i
  %.020.us24.i = phi i32 [ %i.iv, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i ], [ %i.it, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i.peel ] ; 2 uses
  %i.iv = add nsw i32 %.020.us24.i, -13           ; 2 uses
  %i.iw = icmp samesign ugt i32 %.020.us24.i, 25
  br i1 %i.iw, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i, label %._crit_edge.i225, !llvm.loop !155

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052616strings_internal38BigUnsigned_MultiplyByBigUnsigned_Test8TestBodyEv:bb.a
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i

bb.bk:                                            ; preds = %bb.bf
  %.sroa.speculated.i.i = call i32 @llvm.smin.i32(i32 %i.lt, i32 83) ; 2 uses
  %i.mi = icmp sgt i32 %.sroa.speculated.i.i, %i.lp
  br i1 %i.mi, label %.lr.ph.i.i, label %.._crit_edge_crit_edge.i.i

.._crit_edge_crit_edge.i.i:                       ; preds = %bb.bk
  %.pre.i.i = zext nneg i32 %i.lp to i64
  br label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.bk
  %i.mj = zext nneg i32 %.sroa.speculated.i.i to i64
  %i.mk = zext nneg i32 %i.lp to i64              ; 3 uses
  br label %bb.bl

._crit_edge.i.i:                                  ; preds = %bb.bl, %.._crit_edge_crit_edge.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.._crit_edge_crit_edge.i.i ], [ %i.mk, %bb.bl ]
  %i.ml = load i32, ptr %i.dl, align 4, !tbaa !34
  %i.mm = shl i32 %i.ml, %i.lu
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %.pre-phi.i.i
  store i32 %i.mm, ptr %i.mn, align 4, !tbaa !34
  %i.mo = icmp slt i32 %i.lt, 84
  br i1 %i.mo, label %bb.bm, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i

bb.bl:                                            ; preds = %bb.bl, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.mj, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bl ] ; 3 uses
  %i.mp = sub nuw nsw i64 %indvars.iv.i.i, %i.mk
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %i.mp ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !34
  %i.ms = getelementptr i8, ptr %i.mq, i64 -4
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !34
  %i.mu = call i32 @llvm.fshl.i32(i32 %i.mr, i32 %i.mt, i32 %i.ih)
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.i
  store i32 %i.mu, ptr %i.mv, align 4, !tbaa !34
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1 ; 2 uses
  %i.mw = icmp samesign ugt i64 %indvars.iv.next.i.i, %i.mk
  br i1 %i.mw, label %bb.bl, label %._crit_edge.i.i, !llvm.loop !3

bb.bm:                                            ; preds = %._crit_edge.i.i
  %i.mx = sext i32 %.sroa.speculated28.i.i to i64
  %i.my = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %i.mx
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !34
  %.not.i.i183 = icmp eq i32 %i.mz, 0
  br i1 %.not.i.i183, label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.na = add nsw i32 %.sroa.speculated28.i.i, 1
  store i32 %i.na, ptr %16, align 4, !tbaa !57
  br label %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i

_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i:   ; preds = %bb.bn, %bb.bm, %._crit_edge.i.i, %bb.bj, %bb.bi, %bb.bh
  %i.nb = icmp eq i32 %i.lp, 0
  br i1 %i.nb, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i: ; preds = %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i
  %i.nc = shl nuw nsw i32 %i.lp, 2
  %.idx.i.i.i.i = zext nneg i32 %i.nc to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %.idx.i.i.i.i, i1 false), !tbaa !34
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.bo:                                            ; preds = %bb.aw
  %i.nd = zext nneg i32 %i.ih to i64
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr @_ZN4absl12lts_2026052616strings_internal9kTenToNthE, i64 %i.nd
  %i.nf = load i32, ptr %i.ne, align 4, !tbaa !34 ; 3 uses
  %i.ng = load i32, ptr %16, align 4, !tbaa !57   ; 9 uses
  %i.nh = icmp eq i32 %i.ng, 0
  %i.ni = icmp eq i32 %i.nf, 1
  %or.cond.i.i = or i1 %i.ni, %i.nh
  br i1 %or.cond.i.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.nj = icmp eq i32 %i.nf, 0
  br i1 %i.nj, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.nk = icmp slt i32 %i.ng, 1
  br i1 %i.nk, label %._crit_edge.thread.sink.split.i.i, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i: ; preds = %bb.bq
  %i.nl = zext nneg i32 %i.ng to i64
  %.idx.i.i.i.i11.i = shl nuw nsw i64 %i.nl, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dl, i8 0, i64 %.idx.i.i.i.i11.i, i1 false), !tbaa !34
  br label %._crit_edge.thread.sink.split.i.i

bb.br:                                            ; preds = %bb.bp
  %i.nm = zext i32 %i.nf to i64                   ; 3 uses
  %i.nn = icmp sgt i32 %i.ng, 0
  br i1 %i.nn, label %.lr.ph.i5.i, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

.lr.ph.i5.i:                                      ; preds = %bb.br
  %wide.trip.count.i.i = zext nneg i32 %i.ng to i64 ; 3 uses
  %xtraiter664 = and i64 %wide.trip.count.i.i, 1
  %i.no = icmp eq i32 %i.ng, 1
  br i1 %i.no, label %.epil.preheader663, label %.lr.ph.i5.i.new

.lr.ph.i5.i.new:                                  ; preds = %.lr.ph.i5.i
  %unroll_iter668 = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.bs

._crit_edge.i8.i.unr-lcssa:                       ; preds = %bb.bs
  %lcmp.mod665.not = icmp eq i64 %xtraiter664, 0
  br i1 %lcmp.mod665.not, label %._crit_edge.i8.i, label %.epil.preheader663

.epil.preheader663:                               ; preds = %._crit_edge.i8.i.unr-lcssa, %.lr.ph.i5.i
  %indvars.iv.i6.i.epil.init = phi i64 [ 0, %.lr.ph.i5.i ], [ %indvars.iv.next.i7.i.1, %._crit_edge.i8.i.unr-lcssa ]
  %.01418.i.i.epil.init = phi i64 [ 0, %.lr.ph.i5.i ], [ %i.ol, %._crit_edge.i8.i.unr-lcssa ]
  %lcmp.mod667 = trunc i32 %i.ng to i1
  call void @llvm.assume(i1 %lcmp.mod667)
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i6.i.epil.init ; 2 uses
  %i.nq = load i32, ptr %i.np, align 4, !tbaa !34
  %i.nr = zext i32 %i.nq to i64
  %i.ns = mul nuw i64 %i.nr, %i.nm
  %i.nt = add nuw i64 %i.ns, %.01418.i.i.epil.init ; 2 uses
  %i.nu = trunc i64 %i.nt to i32
  store i32 %i.nu, ptr %i.np, align 4, !tbaa !34
  %i.nv = lshr i64 %i.nt, 32
  br label %._crit_edge.i8.i

._crit_edge.i8.i:                                 ; preds = %._crit_edge.i8.i.unr-lcssa, %.epil.preheader663
  %.lcssa = phi i64 [ %i.ol, %._crit_edge.i8.i.unr-lcssa ], [ %i.nv, %.epil.preheader663 ] ; 2 uses
  %.not.i9.i = icmp ne i64 %.lcssa, 0
  %i.nw = icmp samesign ult i32 %i.ng, 84
  %or.cond17.i.i = and i1 %i.nw, %.not.i9.i
  br i1 %or.cond17.i.i, label %bb.bt, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.bs:                                            ; preds = %bb.bs, %.lr.ph.i5.i.new
  %indvars.iv.i6.i = phi i64 [ 0, %.lr.ph.i5.i.new ], [ %indvars.iv.next.i7.i.1, %bb.bs ] ; 3 uses
  %.01418.i.i = phi i64 [ 0, %.lr.ph.i5.i.new ], [ %i.ol, %bb.bs ]
  %niter669 = phi i64 [ 0, %.lr.ph.i5.i.new ], [ %niter669.next.1, %bb.bs ]
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i6.i ; 2 uses
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !34
  %i.nz = zext i32 %i.ny to i64
  %i.oa = mul nuw i64 %i.nz, %i.nm
  %i.ob = add nuw i64 %i.oa, %.01418.i.i          ; 2 uses
  %i.oc = trunc i64 %i.ob to i32
  store i32 %i.oc, ptr %i.nx, align 4, !tbaa !34
  %i.od = lshr i64 %i.ob, 32
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i6.i
  %i.of = getelementptr inbounds nuw i8, ptr %i.oe, i64 4 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !34
  %i.oh = zext i32 %i.og to i64
  %i.oi = mul nuw i64 %i.oh, %i.nm
  %i.oj = add nuw i64 %i.oi, %i.od                ; 2 uses
  %i.ok = trunc i64 %i.oj to i32
  store i32 %i.ok, ptr %i.of, align 4, !tbaa !34
  %i.ol = lshr i64 %i.oj, 32                      ; 3 uses
  %indvars.iv.next.i7.i.1 = add nuw nsw i64 %indvars.iv.i6.i, 2 ; 2 uses
  %niter669.next.1 = add i64 %niter669, 2         ; 2 uses
  %niter669.ncmp.1 = icmp eq i64 %niter669.next.1, %unroll_iter668
  br i1 %niter669.ncmp.1, label %._crit_edge.i8.i.unr-lcssa, label %bb.bs, !llvm.loop !4

bb.bt:                                            ; preds = %._crit_edge.i8.i
  %i.om = trunc nuw i64 %.lcssa to i32
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %wide.trip.count.i.i
  store i32 %i.om, ptr %i.on, align 4, !tbaa !34
  %i.oo = add nuw nsw i32 %i.ng, 1
  br label %._crit_edge.thread.sink.split.i.i

._crit_edge.thread.sink.split.i.i:                ; preds = %bb.bt, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i, %bb.bq
  %.sink.i.i = phi i32 [ %i.oo, %bb.bt ], [ 0, %bb.bq ], [ 0, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i ]
  store i32 %.sink.i.i, ptr %16, align 4, !tbaa !57
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %.noexc87, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i, %._crit_edge.thread.sink.split.i.i, %._crit_edge.i8.i, %bb.br, %bb.bo, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i.i
  %i.op = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.oq = icmp eq ptr %i.op, %i.dj
  br i1 %i.oq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.or = load i64, ptr %i.dj, align 8, !tbaa !55
  %i.os = add i64 %i.or, 1
  call void @_ZdlPvm(ptr noundef %i.op, i64 noundef %i.os) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89
  %i.ot = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.ou = icmp eq ptr %i.ot, %i.di
  br i1 %i.ou, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91
  %i.ov = load i64, ptr %i.di, align 8, !tbaa !55
  %i.ow = add i64 %i.ov, 1
  call void @_ZdlPvm(ptr noundef %i.ot, i64 noundef %i.ow) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #15
  %i.ox = load i32, ptr %i.a, align 4, !tbaa !34
  %i.oy = add nsw i32 %i.ox, %i.fn
  %i.oz = sext i32 %i.oy to i64
  store ptr %i.dq, ptr %21, align 8, !tbaa !58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %i.oz, i8 noundef signext 48)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit96 unwind label %bb.dp

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit96: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.pa = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 1)
          to label %.noexc100 unwind label %bb.dq ; 6 uses

.noexc100:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit96
  store ptr %i.dr, ptr %20, align 8, !tbaa !58, !alias.scope !170
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !52 ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pa, i64 16 ; 5 uses
  %i.pd = icmp eq ptr %i.pb, %i.pc
  br i1 %i.pd, label %bb.bu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97

bb.bu:                                            ; preds = %.noexc100
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %i.pf = load i64, ptr %i.pe, align 8, !tbaa !60 ; 3 uses
  %i.pg = icmp ult i64 %i.pf, 16
  call void @llvm.assume(i1 %i.pg)
  %i.ph = add nuw nsw i64 %i.pf, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dr, ptr noundef nonnull align 8 dereferenceable(1) %i.pc, i64 %i.ph, i1 false)
  br label %bb.bv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97: ; preds = %.noexc100
  store ptr %i.pb, ptr %20, align 8, !tbaa !52, !alias.scope !170
  %i.pi = load i64, ptr %i.pc, align 8, !tbaa !55
  store i64 %i.pi, ptr %i.dr, align 8, !tbaa !55, !alias.scope !170
  %.phi.trans.insert.i98 = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  %.pre.i99 = load i64, ptr %.phi.trans.insert.i98, align 8, !tbaa !60
  br label %bb.bv

bb.bv:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97, %bb.bu
  %i.pj = phi i64 [ %i.pf, %bb.bu ], [ %.pre.i99, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i97 ]
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pa, i64 8
  store i64 %i.pj, ptr %i.ds, align 8, !tbaa !60, !alias.scope !170
  store ptr %i.pc, ptr %i.pa, align 8, !tbaa !52
  store i64 0, ptr %i.pk, align 8, !tbaa !60
  store i8 0, ptr %i.pc, align 8, !tbaa !55
  %i.pl = load ptr, ptr %20, align 8, !tbaa !52   ; 5 uses
  %i.pm = load i64, ptr %i.ds, align 8, !tbaa !60 ; 5 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pm ; 3 uses
  %i.po = ptrtoint ptr %i.pn to i64
  %i.pp = ashr i64 %i.pm, 2                       ; 2 uses
  %i.pq = icmp sgt i64 %i.pp, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(340) %19, i8 0, i64 340, i1 false)
  br i1 %i.pq, label %.lr.ph.i.i.i.preheader.i115, label %._crit_edge.i.i.i.i104

.lr.ph.i.i.i.preheader.i115:                      ; preds = %bb.bv
  %i.pr = and i64 %i.pm, -4
  %scevgep.i116 = getelementptr i8, ptr %i.pl, i64 %i.pr
  br label %.lr.ph.i.i.i.i117

.lr.ph.i.i.i.i117:                                ; preds = %bb.bz, %.lr.ph.i.i.i.preheader.i115
  %.047.i.i.i.i118 = phi i64 [ %i.qi, %bb.bz ], [ %i.pp, %.lr.ph.i.i.i.preheader.i115 ] ; 2 uses
  %.02946.i.i.i.i119 = phi ptr [ %i.qh, %bb.bz ], [ %i.pl, %.lr.ph.i.i.i.preheader.i115 ] ; 9 uses
  %i.ps = load i8, ptr %.02946.i.i.i.i119, align 1, !tbaa !55
  %i.pt = add i8 %i.ps, -48
  %i.pu = icmp ult i8 %i.pt, 10
  br i1 %i.pu, label %bb.bw, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

bb.bw:                                            ; preds = %.lr.ph.i.i.i.i117
  %i.pv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !tbaa !55
  %i.px = add i8 %i.pw, -48
  %i.py = icmp ult i8 %i.px, 10
  br i1 %i.py, label %bb.bx, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit

bb.bx:                                            ; preds = %bb.bw
  %i.pz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 2
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !55
  %i.qb = add i8 %i.qa, -48
  %i.qc = icmp ult i8 %i.qb, 10
  br i1 %i.qc, label %bb.by, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit596

bb.by:                                            ; preds = %bb.bx
  %i.qd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 3
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !55
  %i.qf = add i8 %i.qe, -48
  %i.qg = icmp ult i8 %i.qf, 10
  br i1 %i.qg, label %bb.bz, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit598

bb.bz:                                            ; preds = %bb.by
  %i.qh = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 4
  %i.qi = add nsw i64 %.047.i.i.i.i118, -1
  %i.qj = icmp sgt i64 %.047.i.i.i.i118, 1
  br i1 %i.qj, label %.lr.ph.i.i.i.i117, label %._crit_edge.i.i.i.i104, !llvm.loop !154

._crit_edge.i.i.i.i104:                           ; preds = %bb.bz, %bb.bv
  %.029.lcssa.i.i.i.i105 = phi ptr [ %i.pl, %bb.bv ], [ %scevgep.i116, %bb.bz ] ; 6 uses
  %.pre-phi.i.i.i.i106 = ptrtoint ptr %.029.lcssa.i.i.i.i105 to i64
  %i.qk = sub i64 %i.po, %.pre-phi.i.i.i.i106
  switch i64 %i.qk, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i112 [
    i64 3, label %bb.ca
    i64 2, label %bb.cc
    i64 1, label %bb.ce
  ]

bb.ca:                                            ; preds = %._crit_edge.i.i.i.i104
  %i.ql = load i8, ptr %.029.lcssa.i.i.i.i105, align 1, !tbaa !55
  %i.qm = add i8 %i.ql, -48
  %i.qn = icmp ult i8 %i.qm, 10
  br i1 %i.qn, label %bb.cb, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

bb.cb:                                            ; preds = %bb.ca
  %i.qo = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i105, i64 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %._crit_edge.i.i.i.i104
  %.1.i.i.i.i114 = phi ptr [ %i.qo, %bb.cb ], [ %.029.lcssa.i.i.i.i105, %._crit_edge.i.i.i.i104 ] ; 3 uses
  %i.qp = load i8, ptr %.1.i.i.i.i114, align 1, !tbaa !55
  %i.qq = add i8 %i.qp, -48
  %i.qr = icmp ult i8 %i.qq, 10
  br i1 %i.qr, label %bb.cd, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

bb.cd:                                            ; preds = %bb.cc
  %i.qs = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i114, i64 1
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %._crit_edge.i.i.i.i104
  %.2.i.i.i.i107 = phi ptr [ %i.qs, %bb.cd ], [ %.029.lcssa.i.i.i.i105, %._crit_edge.i.i.i.i104 ] ; 2 uses
  %i.qt = load i8, ptr %.2.i.i.i.i107, align 1, !tbaa !55
  %i.qu = add i8 %i.qt, -48
  %i.qv = icmp ult i8 %i.qu, 10
  br i1 %i.qv, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i112, label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit: ; preds = %bb.bw
  %i.qw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 1
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit596: ; preds = %bb.bx
  %i.qx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 2
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit598: ; preds = %bb.by
  %i.qy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i119, i64 3
  br label %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108: ; preds = %.lr.ph.i.i.i.i117, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit596, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit598, %bb.ce, %bb.cc, %bb.ca
  %.028.i.i.i.i109 = phi ptr [ %.1.i.i.i.i114, %bb.cc ], [ %.029.lcssa.i.i.i.i105, %bb.ca ], [ %.2.i.i.i.i107, %bb.ce ], [ %i.qy, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit598 ], [ %i.qw, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit ], [ %i.qx, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108.loopexit.split.loop.exit596 ], [ %.02946.i.i.i.i119, %.lr.ph.i.i.i.i117 ]
  %.not.i110 = icmp ne ptr %.028.i.i.i.i109, %i.pn
  %i.qz = icmp eq i64 %i.pm, 0
  %or.cond.i111 = or i1 %i.qz, %.not.i110
  br i1 %or.cond.i111, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125, label %bb.cf

_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i112: ; preds = %bb.ce, %._crit_edge.i.i.i.i104
  %.old.i113 = icmp eq i64 %i.pm, 0
  br i1 %.old.i113, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125, label %bb.cf

bb.cf:                                            ; preds = %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i112, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108
  %i.ra = invoke noundef i32 @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10ReadDigitsEPKcS5_i(ptr noundef nonnull align 4 dereferenceable(340) %19, ptr noundef %i.pl, ptr noundef %i.pn, i32 noundef 810)
          to label %.noexc123 unwind label %bb.dr ; 14 uses

.noexc123:                                        ; preds = %bb.cf
  %i.rb = icmp sgt i32 %i.ra, 0
  br i1 %i.rb, label %bb.cg, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125

bb.cg:                                            ; preds = %.noexc123
  %i.rc = icmp samesign ugt i32 %i.ra, 9
  br i1 %i.rc, label %bb.ch, label %bb.cy

bb.ch:                                            ; preds = %bb.cg
  %i.rd = icmp samesign ugt i32 %i.ra, 12
  br i1 %i.rd, label %.lr.ph.i254, label %.._crit_edge.i238.thread_crit_edge

.._crit_edge.i238.thread_crit_edge:               ; preds = %bb.ch
  %.pre473 = load i32, ptr %19, align 4, !tbaa !57
  br label %._crit_edge.i238.thread

.lr.ph.i254:                                      ; preds = %bb.ch
  br i1 %i.dn, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us.preheader.i280, label %.lr.ph.split.i256

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us.preheader.i280: ; preds = %.lr.ph.i254
  %i.re = call i32 @llvm.usub.sat.i32(i32 %i.ra, i32 25) ; 2 uses
  %i.rf = add nuw nsw i32 %i.re, 12
  %i.rg = urem i32 %i.rf, 13
  %i.rh = sub nsw i32 %i.ra, %i.re
  %i.ri = add nsw i32 %i.rh, -25
  %i.rj = add nsw i32 %i.ri, %i.rg
  %.pre474.pre = load i32, ptr %19, align 4, !tbaa !57
  br label %._crit_edge.i238

.lr.ph.split.i256:                                ; preds = %.lr.ph.i254
  %.promoted.i257 = load i32, ptr %19, align 4, !tbaa !57 ; 3 uses
  br i1 %i.dp, label %.lr.ph.split.split.us.i273.preheader, label %.lr.ph.split.split.i258

.lr.ph.split.split.us.i273.preheader:             ; preds = %.lr.ph.split.i256
  %i.rk = icmp slt i32 %.promoted.i257, 1
  br i1 %i.rk, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279.peel, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i.us.i276.peel

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i.us.i276.peel: ; preds = %.lr.ph.split.split.us.i273.preheader
  %i.rl = zext nneg i32 %.promoted.i257 to i64
  %.idx.i.i.i.i.us.i277.peel = shl nuw nsw i64 %i.rl, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dt, i8 0, i64 %.idx.i.i.i.i.us.i277.peel, i1 false), !tbaa !34
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279.peel

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279.peel: ; preds = %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i.us.i276.peel, %.lr.ph.split.split.us.i273.preheader
  %i.rm = add nsw i32 %i.ra, -13                  ; 2 uses
  %i.rn = icmp samesign ugt i32 %i.ra, 25
  br i1 %i.rn, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279, label %._crit_edge.i238

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279.peel, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279
  %.020.us24.i275 = phi i32 [ %i.ro, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279 ], [ %i.rm, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279.peel ] ; 2 uses
  %i.ro = add nsw i32 %.020.us24.i275, -13        ; 2 uses
  %i.rp = icmp samesign ugt i32 %.020.us24.i275, 25
  br i1 %i.rp, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit.us25.i279, label %._crit_edge.i238, !llvm.loop !159

end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052616strings_internal38BigUnsigned_MultiplyByBigUnsigned_Test8TestBodyEv:bb.a
  %i.vz = load i32, ptr %19, align 4, !tbaa !57   ; 9 uses
  %i.wa = icmp eq i32 %i.vz, 0
  %i.wb = icmp eq i32 %i.vy, 1
  %or.cond.i.i185 = or i1 %i.wb, %i.wa
  br i1 %or.cond.i.i185, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.wc = icmp eq i32 %i.vy, 0
  br i1 %i.wc, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.wd = icmp slt i32 %i.vz, 1
  br i1 %i.wd, label %._crit_edge.thread.sink.split.i.i195, label %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i197

_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i197: ; preds = %bb.da
  %i.we = zext nneg i32 %i.vz to i64
  %.idx.i.i.i.i11.i198 = shl nuw nsw i64 %i.we, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dt, i8 0, i64 %.idx.i.i.i.i11.i198, i1 false), !tbaa !34
  br label %._crit_edge.thread.sink.split.i.i195

bb.db:                                            ; preds = %bb.cz
  %i.wf = zext i32 %i.vy to i64                   ; 3 uses
  %i.wg = icmp sgt i32 %i.vz, 0
  br i1 %i.wg, label %.lr.ph.i5.i186, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125

.lr.ph.i5.i186:                                   ; preds = %bb.db
  %wide.trip.count.i.i187 = zext nneg i32 %i.vz to i64 ; 3 uses
  %xtraiter685 = and i64 %wide.trip.count.i.i187, 1
  %i.wh = icmp eq i32 %i.vz, 1
  br i1 %i.wh, label %.epil.preheader684, label %.lr.ph.i5.i186.new

.lr.ph.i5.i186.new:                               ; preds = %.lr.ph.i5.i186
  %unroll_iter689 = and i64 %wide.trip.count.i.i187, 2147483646
  br label %bb.dc

._crit_edge.i8.i192.unr-lcssa:                    ; preds = %bb.dc
  %lcmp.mod686.not = icmp eq i64 %xtraiter685, 0
  br i1 %lcmp.mod686.not, label %._crit_edge.i8.i192, label %.epil.preheader684

.epil.preheader684:                               ; preds = %._crit_edge.i8.i192.unr-lcssa, %.lr.ph.i5.i186
  %indvars.iv.i6.i188.epil.init = phi i64 [ 0, %.lr.ph.i5.i186 ], [ %indvars.iv.next.i7.i190.1, %._crit_edge.i8.i192.unr-lcssa ]
  %.01418.i.i189.epil.init = phi i64 [ 0, %.lr.ph.i5.i186 ], [ %i.xe, %._crit_edge.i8.i192.unr-lcssa ]
  %lcmp.mod688 = trunc i32 %i.vz to i1
  call void @llvm.assume(i1 %lcmp.mod688)
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i6.i188.epil.init ; 2 uses
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !34
  %i.wk = zext i32 %i.wj to i64
  %i.wl = mul nuw i64 %i.wk, %i.wf
  %i.wm = add nuw i64 %i.wl, %.01418.i.i189.epil.init ; 2 uses
  %i.wn = trunc i64 %i.wm to i32
  store i32 %i.wn, ptr %i.wi, align 4, !tbaa !34
  %i.wo = lshr i64 %i.wm, 32
  br label %._crit_edge.i8.i192

._crit_edge.i8.i192:                              ; preds = %._crit_edge.i8.i192.unr-lcssa, %.epil.preheader684
  %.lcssa645 = phi i64 [ %i.xe, %._crit_edge.i8.i192.unr-lcssa ], [ %i.wo, %.epil.preheader684 ] ; 2 uses
  %.not.i9.i193 = icmp ne i64 %.lcssa645, 0
  %i.wp = icmp samesign ult i32 %i.vz, 84
  %or.cond17.i.i194 = and i1 %i.wp, %.not.i9.i193
  br i1 %or.cond17.i.i194, label %bb.dd, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125

bb.dc:                                            ; preds = %bb.dc, %.lr.ph.i5.i186.new
  %indvars.iv.i6.i188 = phi i64 [ 0, %.lr.ph.i5.i186.new ], [ %indvars.iv.next.i7.i190.1, %bb.dc ] ; 3 uses
  %.01418.i.i189 = phi i64 [ 0, %.lr.ph.i5.i186.new ], [ %i.xe, %bb.dc ]
  %niter690 = phi i64 [ 0, %.lr.ph.i5.i186.new ], [ %niter690.next.1, %bb.dc ]
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i6.i188 ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !34
  %i.ws = zext i32 %i.wr to i64
  %i.wt = mul nuw i64 %i.ws, %i.wf
  %i.wu = add nuw i64 %i.wt, %.01418.i.i189       ; 2 uses
  %i.wv = trunc i64 %i.wu to i32
  store i32 %i.wv, ptr %i.wq, align 4, !tbaa !34
  %i.ww = lshr i64 %i.wu, 32
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i6.i188
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 4 ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !34
  %i.xa = zext i32 %i.wz to i64
  %i.xb = mul nuw i64 %i.xa, %i.wf
  %i.xc = add nuw i64 %i.xb, %i.ww                ; 2 uses
  %i.xd = trunc i64 %i.xc to i32
  store i32 %i.xd, ptr %i.wy, align 4, !tbaa !34
  %i.xe = lshr i64 %i.xc, 32                      ; 3 uses
  %indvars.iv.next.i7.i190.1 = add nuw nsw i64 %indvars.iv.i6.i188, 2 ; 2 uses
  %niter690.next.1 = add i64 %niter690, 2         ; 2 uses
  %niter690.ncmp.1 = icmp eq i64 %niter690.next.1, %unroll_iter689
  br i1 %niter690.ncmp.1, label %._crit_edge.i8.i192.unr-lcssa, label %bb.dc, !llvm.loop !4

bb.dd:                                            ; preds = %._crit_edge.i8.i192
  %i.xf = trunc nuw i64 %.lcssa645 to i32
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %wide.trip.count.i.i187
  store i32 %i.xf, ptr %i.xg, align 4, !tbaa !34
  %i.xh = add nuw nsw i32 %i.vz, 1
  br label %._crit_edge.thread.sink.split.i.i195

._crit_edge.thread.sink.split.i.i195:             ; preds = %bb.dd, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i197, %bb.da
  %.sink.i.i196 = phi i32 [ %i.xh, %bb.dd ], [ 0, %bb.da ], [ 0, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i10.i197 ]
  store i32 %.sink.i.i196, ptr %19, align 4, !tbaa !57
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125: ; preds = %.noexc123, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.thread.i112, %_ZSt11find_if_notIPKcPFbhEET_S4_S4_T0_.exit.i108, %._crit_edge.thread.sink.split.i.i195, %._crit_edge.i8.i192, %bb.db, %bb.cy, %_ZSt6fill_nIPjijET_S1_T0_RKT1_.exit.loopexit.i.i206, %_ZSt13copy_backwardIPjS0_ET0_T_S2_S1_.exit.i.i205, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE9SetToZeroEv.exit.i.i215
  %i.xi = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.dr
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125
  %i.xk = load i64, ptr %i.dr, align 8, !tbaa !55
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE.exit125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i126
  %i.xm = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.dq
  br i1 %i.xn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128
  %i.xo = load i64, ptr %i.dq, align 8, !tbaa !55
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %i.xm, i64 noundef %i.xp) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i129
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  %i.xq = load i32, ptr %12, align 4, !tbaa !57   ; 2 uses
  %i.xr = load i32, ptr %16, align 4, !tbaa !57   ; 3 uses
  %i.xs = add nsw i32 %i.xr, %i.xq                ; 2 uses
  %i.xt = icmp sgt i32 %i.xs, 1
  br i1 %i.xt, label %select.unfold.preheader.i.i132, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138

select.unfold.preheader.i.i132:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.xu = call i32 @llvm.umin.i32(i32 %i.xs, i32 85)
  %spec.select.i.i133 = add nsw i32 %i.xu, -2
  br label %select.unfold.i.i134

select.unfold.i.i134:                             ; preds = %.noexc137, %select.unfold.preheader.i.i132
  %.012.i.i135 = phi i32 [ %i.xv, %.noexc137 ], [ %spec.select.i.i133, %select.unfold.preheader.i.i132 ] ; 3 uses
  invoke void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE12MultiplyStepEiPKjii(ptr noundef nonnull align 4 dereferenceable(340) %16, i32 noundef %i.xr, ptr noundef nonnull %i.du, i32 noundef %i.xq, i32 noundef %.012.i.i135)
          to label %.noexc137 unwind label %bb.ds

.noexc137:                                        ; preds = %select.unfold.i.i134
  %i.xv = add nsw i32 %.012.i.i135, -1
  %.not.i.i136 = icmp eq i32 %.012.i.i135, 0
  br i1 %.not.i.i136, label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138.loopexit, label %select.unfold.i.i134, !llvm.loop !142

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138.loopexit: ; preds = %.noexc137
  %.pre470 = load i32, ptr %16, align 4, !tbaa !57, !noalias !171
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138: ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131
  %i.xw = phi i32 [ %.pre470, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138.loopexit ], [ %i.xr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #15
  %i.xx = load i32, ptr %19, align 4, !tbaa !57, !noalias !171 ; 2 uses
  %.sroa.speculated.i.i.i139 = call i32 @llvm.smax.i32(i32 %i.xw, i32 %i.xx) ; 2 uses
  %.not1219.i.i.i140 = icmp slt i32 %.sroa.speculated.i.i.i139, 1
  br i1 %.not1219.i.i.i140, label %.loopexit.i.i154, label %.lr.ph.i.i.i141

.lr.ph.i.i.i141:                                  ; preds = %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138
  %i.xy = sext i32 %i.xx to i64
  %i.xz = sext i32 %i.xw to i64
  %wide.trip.count.i.i.i142 = zext nneg i32 %.sroa.speculated.i.i.i139 to i64
  br label %bb.df

bb.de:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i148
  %indvars.iv.next.i.i.i152 = add nuw nsw i64 %indvars.iv.i.i.i143, 1 ; 2 uses
  %exitcond.not.i.i.i153 = icmp eq i64 %indvars.iv.next.i.i.i152, %wide.trip.count.i.i.i142
  br i1 %exitcond.not.i.i.i153, label %.loopexit.i.i154, label %bb.df, !llvm.loop !2

bb.df:                                            ; preds = %bb.de, %.lr.ph.i.i.i141
  %indvars.iv.i.i.i143 = phi i64 [ 0, %.lr.ph.i.i.i141 ], [ %indvars.iv.next.i.i.i152, %bb.de ] ; 5 uses
  %.not.i.i.i.i144 = icmp slt i64 %indvars.iv.i.i.i143, %i.xz
  br i1 %.not.i.i.i.i144, label %bb.dg, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i145

bb.dg:                                            ; preds = %bb.df
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv.i.i.i143
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !34, !noalias !171
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i145

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i145: ; preds = %bb.dg, %bb.df
  %.0.i.i.i.i146 = phi i32 [ %i.yb, %bb.dg ], [ 0, %bb.df ]
  %.not.i13.i.i.i147 = icmp slt i64 %indvars.iv.i.i.i143, %i.xy
  br i1 %.not.i13.i.i.i147, label %bb.dh, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i148

bb.dh:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i145
  %i.yc = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i.i.i143
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !34, !noalias !171
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i148

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i148: ; preds = %bb.dh, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i145
  %.0.i14.i.i.i149 = phi i32 [ %i.yd, %bb.dh ], [ 0, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i145 ]
  %.not.i.i.i150 = icmp eq i32 %.0.i.i.i.i146, %.0.i14.i.i.i149
  br i1 %.not.i.i.i150, label %bb.de, label %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i151

.loopexit.i.i154:                                 ; preds = %bb.de, %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByILi84EEEvRKNS2_IXT_EEE.exit138
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit157 unwind label %bb.dt

_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i151: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i148
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15, !noalias !172
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 4 dereferenceable(340) %16)
          to label %.noexc222 unwind label %bb.dt

.noexc222:                                        ; preds = %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i151
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !172
  invoke void @_ZN7testing13PrintToStringIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 4 dereferenceable(340) %19)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i unwind label %bb.dj, !noalias !172

_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i: ; preds = %.noexc222
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.di unwind label %bb.dk

bb.di:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.ye = load ptr, ptr %2, align 8, !tbaa !52, !noalias !172 ; 2 uses
  %i.yf = icmp eq ptr %i.ye, %i.dv
  br i1 %i.yf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219: ; preds = %bb.di
  %i.yg = load i64, ptr %i.dv, align 8, !tbaa !55, !noalias !172
  %i.yh = add i64 %i.yg, 1
  call void @_ZdlPvm(ptr noundef %i.ye, i64 noundef %i.yh) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i219
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !172
  %i.yi = load ptr, ptr %1, align 8, !tbaa !52, !noalias !172 ; 2 uses
  %i.yj = icmp eq ptr %i.yi, %i.dw
  br i1 %i.yj, label %.noexc156, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220
  %i.yk = load i64, ptr %i.dw, align 8, !tbaa !55, !noalias !172
  %i.yl = add i64 %i.yk, 1
  call void @_ZdlPvm(ptr noundef %i.yi, i64 noundef %i.yl) #16
  br label %.noexc156

bb.dj:                                            ; preds = %.noexc222
  %i.ym = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

bb.dk:                                            ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_.exit.i
  %i.yn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.yo = load ptr, ptr %2, align 8, !tbaa !52, !noalias !172 ; 2 uses
  %i.yp = icmp eq ptr %i.yo, %i.dv
  br i1 %i.yp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i: ; preds = %bb.dk
  %i.yq = load i64, ptr %i.dv, align 8, !tbaa !55, !noalias !172
  %i.yr = add i64 %i.yq, 1
  call void @_ZdlPvm(ptr noundef %i.yo, i64 noundef %i.yr) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i: ; preds = %bb.dk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i, %bb.dj
  %.pn.i218 = phi { ptr, i32 } [ %i.ym, %bb.dj ], [ %i.yn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12.i ], [ %i.yn, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !172
  %i.ys = load ptr, ptr %1, align 8, !tbaa !52, !noalias !172 ; 2 uses
  %i.yt = icmp eq ptr %i.ys, %i.dw
  br i1 %i.yt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i
  %i.yu = load i64, ptr %i.dw, align 8, !tbaa !55, !noalias !172
  %i.yv = add i64 %i.yu, 1
  call void @_ZdlPvm(ptr noundef %i.ys, i64 noundef %i.yv) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15, !noalias !172
  br label %.body223

.noexc156:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15, !noalias !172
  br label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit157

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit157: ; preds = %.noexc156, %.loopexit.i.i154
  %i.yw = load i8, ptr %22, align 8, !tbaa !45, !range !46, !noundef !47
  %i.yx = trunc nuw i8 %i.yw to i1
  br i1 %i.yx, label %bb.ed, label %bb.du

bb.dl:                                            ; preds = %.lr.ph
  %i.yy = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dm:                                            ; preds = %bb.aj
  %i.yz = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.dn:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit77
  %i.za = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

bb.do:                                            ; preds = %bb.av
  %i.zb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zc = load ptr, ptr %17, align 8, !tbaa !52   ; 2 uses
  %i.zd = icmp eq ptr %i.zc, %i.dj
  br i1 %i.zd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158: ; preds = %bb.do
  %i.ze = load i64, ptr %i.dj, align 8, !tbaa !55
  %i.zf = add i64 %i.ze, 1
  call void @_ZdlPvm(ptr noundef %i.zc, i64 noundef %i.zf) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160: ; preds = %bb.do, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158, %bb.dn
  %.pn32 = phi { ptr, i32 } [ %i.za, %bb.dn ], [ %i.zb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i158 ], [ %i.zb, %bb.do ] ; 2 uses
  %i.zg = load ptr, ptr %18, align 8, !tbaa !52   ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.di
  br i1 %i.zh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160
  %i.zi = load i64, ptr %i.di, align 8, !tbaa !55
  %i.zj = add i64 %i.zi, 1
  call void @_ZdlPvm(ptr noundef %i.zg, i64 noundef %i.zj) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161, %bb.dm
  %.pn32.pn = phi { ptr, i32 } [ %i.yz, %bb.dm ], [ %.pn32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161 ], [ %.pn32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit160 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #15
  br label %bb.eg

bb.dp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.zk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.dq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit96
  %i.zl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.dr:                                            ; preds = %bb.cf
  %i.zm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.zn = load ptr, ptr %20, align 8, !tbaa !52   ; 2 uses
  %i.zo = icmp eq ptr %i.zn, %i.dr
  br i1 %i.zo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.dr
  %i.zp = load i64, ptr %i.dr, align 8, !tbaa !55
  %i.zq = add i64 %i.zp, 1
  call void @_ZdlPvm(ptr noundef %i.zn, i64 noundef %i.zq) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.dr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.dq
  %.pn35 = phi { ptr, i32 } [ %i.zl, %bb.dq ], [ %i.zm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.zm, %bb.dr ] ; 2 uses
  %i.zr = load ptr, ptr %21, align 8, !tbaa !52   ; 2 uses
  %i.zs = icmp eq ptr %i.zr, %i.dq
  br i1 %i.zs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  %i.zt = load i64, ptr %i.dq, align 8, !tbaa !55
  %i.zu = add i64 %i.zt, 1
  call void @_ZdlPvm(ptr noundef %i.zr, i64 noundef %i.zu) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167, %bb.dp
  %.pn35.pn = phi { ptr, i32 } [ %i.zk, %bb.dp ], [ %.pn35, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167 ], [ %.pn35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #15
  br label %bb.ef

bb.ds:                                            ; preds = %select.unfold.i.i134
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.dt:                                            ; preds = %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i151, %.loopexit.i.i154
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %.body223

bb.du:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dv unwind label %bb.dz

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #15
  %i.zx = load ptr, ptr %i.dx, align 8, !tbaa !48 ; 2 uses
  %.not.i.i170 = icmp eq ptr %i.zx, null
  br i1 %.not.i.i170, label %_ZNK7testing15AssertionResult15failure_messageEv.exit171, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit171

_ZNK7testing15AssertionResult15failure_messageEv.exit171: ; preds = %bb.dw, %bb.dv
  %i.zz = phi ptr [ %i.zy, %bb.dw ], [ @.str.44, %bb.dv ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 171, ptr noundef %i.zz)
          to label %bb.dx unwind label %bb.ea

bb.dx:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit171
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.dy unwind label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #15
end_hunk_3
begin_hunk_4_@_ZN4absl12lts_2026052616strings_internal28BigUnsigned_TenToTheNth_Test8TestBodyEv:bb.a
  %i.am = zext i32 %i.al to i64
  %i.an = mul nuw nsw i64 %i.am, 10
  %i.ao = add nuw nsw i64 %i.an, %.01418.i        ; 2 uses
  %i.ap = trunc i64 %i.ao to i32
  store i32 %i.ap, ptr %i.ak, align 4, !tbaa !34
  %i.aq = lshr i64 %i.ao, 32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34
  %i.au = zext i32 %i.at to i64
  %i.av = mul nuw nsw i64 %i.au, 10
  %i.aw = add nuw nsw i64 %i.av, %i.aq            ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  store i32 %i.ax, ptr %i.as, align 4, !tbaa !34
  %i.ay = lshr i64 %i.aw, 32                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.h, !llvm.loop !4

bb.i:                                             ; preds = %._crit_edge.i
  %i.az = trunc nuw nsw i64 %.lcssa to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %wide.trip.count.i
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !34
  %i.bb = add nuw nsw i32 %i.z, 1                 ; 2 uses
  store i32 %i.bb, ptr %3, align 4, !tbaa !57
  br label %_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit

_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE10MultiplyByEj.exit: ; preds = %bb.i, %._crit_edge.i, %.lr.ph
  %i.bc = phi i32 [ %i.bb, %bb.i ], [ %i.z, %._crit_edge.i ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.bd = add nuw nsw i32 %.0398, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bd, %i.p
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !202

bb.j:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit: ; preds = %.loopexit.i.i, %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i
  %i.bf = load i8, ptr %4, align 8, !tbaa !45, !range !46, !noundef !47
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.u, label %bb.l

bb.k:                                             ; preds = %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i, %.loopexit.i.i
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.l:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !48  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bi, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.n, %bb.m
  %i.bk = phi ptr [ %i.bj, %bb.n ], [ @.str.44, %bb.m ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 242, ptr noundef %i.bk)
          to label %bb.o unwind label %bb.r

bb.o:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bl = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %.not.i.i33 = icmp eq ptr %i.bl, null
  br i1 %.not.i.i33, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.p
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull align 8 dereferenceable(128) %i.bl) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.p, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.u

bb.q:                                             ; preds = %bb.l
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.r:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.t

bb.s:                                             ; preds = %bb.o
  %i.br = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.pn25 = phi { ptr, i32 } [ %i.br, %bb.s ], [ %i.bq, %bb.r ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.bs = load ptr, ptr %5, align 8, !tbaa !54    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.t
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !20
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(128) %i.bs) #15, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %bb.t, %bb.q
  %.pn25.pn = phi { ptr, i32 } [ %i.bp, %bb.q ], [ %.pn25, %bb.t ], [ %.pn25, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #15
  br label %bb.w

bb.u:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.bw = load ptr, ptr %i.g, align 8, !tbaa !48  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !52 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16 ; 2 uses
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.v
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !55
  %i.cb = add i64 %i.ca, 1
  call void @_ZdlPvm(ptr noundef %i.bx, i64 noundef %i.cb) #16
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 32) #16
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.u, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.cc = load i32, ptr %i.a, align 4, !tbaa !34  ; 2 uses
  %i.cd = add nsw i32 %i.cc, 1
  store i32 %i.cd, ptr %i.a, align 4, !tbaa !34
  %i.ce = icmp slt i32 %i.cc, 799
  br i1 %i.ce, label %bb.c, label %bb.b, !llvm.loop !203

bb.w:                                             ; preds = %_ZN7testing7MessageD2Ev.exit36, %bb.k
  %.pn25.pn.pn = phi { ptr, i32 } [ %.pn25.pn, %_ZN7testing7MessageD2Ev.exit36 ], [ %i.bh, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  %.pn29 = phi { ptr, i32 } [ %i.be, %bb.j ], [ %.pn25.pn.pn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.bb

bb.y:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit81
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void

bb.z:                                             ; preds = %bb.b, %_ZN7testing15AssertionResultD2Ev.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @_ZN7testing11ScopedTraceC2IiEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull @.str.2, i32 noundef 248, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store i32 1, ptr %8, align 4, !tbaa !57
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(328) %i.i, i8 0, i64 328, i1 false)
  store i64 135, ptr %i.h, align 4
  %i.cf = load i32, ptr %i.b, align 4, !tbaa !34
  invoke void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EE21MultiplyByTenToTheNthEi(ptr noundef nonnull align 4 dereferenceable(340) %8, i32 noundef %i.cf)
          to label %bb.aa unwind label %bb.ai

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %i.cg = load i32, ptr %i.b, align 4, !tbaa !34
  %i.ch = sext i32 %i.cg to i64
  store ptr %i.j, ptr %11, align 8, !tbaa !58
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef %i.ch, i8 noundef signext 48)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.aj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.aa
  %i.ci = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %11, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.43, i64 noundef 3)
          to label %.noexc39 unwind label %bb.ak  ; 6 uses

.noexc39:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  store ptr %i.k, ptr %10, align 8, !tbaa !58, !alias.scope !212
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !52 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 5 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %bb.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.ab:                                            ; preds = %.noexc39
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !60 ; 3 uses
  %i.co = icmp ult i64 %i.cn, 16
  call void @llvm.assume(i1 %i.co)
  %i.cp = add nuw nsw i64 %i.cn, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.k, ptr noundef nonnull align 8 dereferenceable(1) %i.ck, i64 %i.cp, i1 false)
  br label %bb.ac

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc39
  store ptr %i.cj, ptr %10, align 8, !tbaa !52, !alias.scope !212
  %i.cq = load i64, ptr %i.ck, align 8, !tbaa !55
  store i64 %i.cq, ptr %i.k, align 8, !tbaa !55, !alias.scope !212
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !60
  br label %bb.ac

bb.ac:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.ab
  %i.cr = phi i64 [ %i.cn, %bb.ab ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %i.cr, ptr %i.l, align 8, !tbaa !60, !alias.scope !212
  store ptr %i.ck, ptr %i.ci, align 8, !tbaa !52
  store i64 0, ptr %i.cs, align 8, !tbaa !60
  store i8 0, ptr %i.ck, align 8, !tbaa !55
  %i.ct = load ptr, ptr %10, align 8, !tbaa !52
  %i.cu = load i64, ptr %i.l, align 8, !tbaa !60
  invoke void @_ZN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEC2ESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 4 dereferenceable(340) %9, i64 %i.cu, ptr %i.ct)
          to label %bb.ad unwind label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.cv = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.k
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.ad
  %i.cx = load i64, ptr %i.k, align 8, !tbaa !55
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40
  %i.cz = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.j
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.db = load i64, ptr %i.j, align 8, !tbaa !55
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cz, i64 noundef %i.dc) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %i.dd = load i32, ptr %8, align 4, !tbaa !57, !noalias !213 ; 2 uses
  %i.de = load i32, ptr %9, align 4, !tbaa !57, !noalias !213 ; 2 uses
  %.sroa.speculated.i.i.i44 = call i32 @llvm.smax.i32(i32 %i.dd, i32 %i.de) ; 2 uses
  %.not1219.i.i.i45 = icmp slt i32 %.sroa.speculated.i.i.i44, 1
  br i1 %.not1219.i.i.i45, label %.loopexit.i.i59, label %.lr.ph.i.i.i46

.lr.ph.i.i.i46:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  %i.df = sext i32 %i.de to i64
  %i.dg = sext i32 %i.dd to i64
  %wide.trip.count.i.i.i47 = zext nneg i32 %.sroa.speculated.i.i.i44 to i64
  br label %bb.af

bb.ae:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i53
  %indvars.iv.next.i.i.i57 = add nuw nsw i64 %indvars.iv.i.i.i48, 1 ; 2 uses
  %exitcond.not.i.i.i58 = icmp eq i64 %indvars.iv.next.i.i.i57, %wide.trip.count.i.i.i47
  br i1 %exitcond.not.i.i.i58, label %.loopexit.i.i59, label %bb.af, !llvm.loop !2

bb.af:                                            ; preds = %bb.ae, %.lr.ph.i.i.i46
  %indvars.iv.i.i.i48 = phi i64 [ 0, %.lr.ph.i.i.i46 ], [ %indvars.iv.next.i.i.i57, %bb.ae ] ; 5 uses
  %.not.i.i.i.i49 = icmp slt i64 %indvars.iv.i.i.i48, %i.dg
  br i1 %.not.i.i.i.i49, label %bb.ag, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i50

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.i48
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !34, !noalias !213
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i50

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i50: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i51 = phi i32 [ %i.di, %bb.ag ], [ 0, %bb.af ]
  %.not.i13.i.i.i52 = icmp slt i64 %indvars.iv.i.i.i48, %i.df
  br i1 %.not.i13.i.i.i52, label %bb.ah, label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i53

bb.ah:                                            ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i50
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i.i.i48
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !34, !noalias !213
  br label %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i53

_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i53: ; preds = %bb.ah, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i50
  %.0.i14.i.i.i54 = phi i32 [ %i.dk, %bb.ah ], [ 0, %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit.i.i.i50 ]
  %.not.i.i.i55 = icmp eq i32 %.0.i.i.i.i51, %.0.i14.i.i.i54
  br i1 %.not.i.i.i55, label %bb.ae, label %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i56

.loopexit.i.i59:                                  ; preds = %bb.ae, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit43
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit62 unwind label %bb.am

_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i56: ; preds = %_ZNK4absl12lts_2026052616strings_internal11BigUnsignedILi84EE7GetWordEi.exit15.i.i.i53
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES6_EENS_15AssertionResultEPKcS9_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %12, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef nonnull align 4 dereferenceable(340) %8, ptr noundef nonnull align 4 dereferenceable(340) %9)
          to label %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit62 unwind label %bb.am

_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit62: ; preds = %.loopexit.i.i59, %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i56
  %i.dl = load i8, ptr %12, align 8, !tbaa !45, !range !46, !noundef !47
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.aw, label %bb.an

bb.ai:                                            ; preds = %bb.z
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.aj:                                            ; preds = %bb.aa
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.dp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

bb.al:                                            ; preds = %bb.ac
  %i.dq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dr = load ptr, ptr %10, align 8, !tbaa !52   ; 2 uses
  %i.ds = icmp eq ptr %i.dr, %i.k
  br i1 %i.ds, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.al
  %i.dt = load i64, ptr %i.k, align 8, !tbaa !55
  %i.du = add i64 %i.dt, 1
  call void @_ZdlPvm(ptr noundef %i.dr, i64 noundef %i.du) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.al, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63, %bb.ak
  %.pn = phi { ptr, i32 } [ %i.dp, %bb.ak ], [ %i.dq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63 ], [ %i.dq, %bb.al ] ; 2 uses
  %i.dv = load ptr, ptr %11, align 8, !tbaa !52   ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.j
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.dx = load i64, ptr %i.j, align 8, !tbaa !55
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit68: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66, %bb.aj
  %.pn.pn = phi { ptr, i32 } [ %i.do, %bb.aj ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i66 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  br label %bb.az

bb.am:                                            ; preds = %_ZN4absl12lts_2026052616strings_internaleqILi84ELi84EEEbRKNS1_11BigUnsignedIXT_EEERKNS3_IXT0_EEE.exit.i.i56, %.loopexit.i.i59
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.an:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIN4absl12lts_2026052616strings_internal11BigUnsignedILi84EEES7_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSH_RKS9_RKSA_.exit62
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ao unwind label %bb.as

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %i.ea = load ptr, ptr %i.n, align 8, !tbaa !48  ; 2 uses
  %.not.i.i69 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i69, label %_ZNK7testing15AssertionResult15failure_messageEv.exit70, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !52
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit70

_ZNK7testing15AssertionResult15failure_messageEv.exit70: ; preds = %bb.ap, %bb.ao
  %i.ec = phi ptr [ %i.eb, %bb.ap ], [ @.str.44, %bb.ao ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 252, ptr noundef %i.ec)
          to label %bb.aq unwind label %bb.at

bb.aq:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit70
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.ar unwind label %bb.au

bb.ar:                                            ; preds = %bb.aq
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  %i.ed = load ptr, ptr %13, align 8, !tbaa !54   ; 3 uses
  %.not.i.i71 = icmp eq ptr %i.ed, null
  br i1 %.not.i.i71, label %_ZN7testing7MessageD2Ev.exit73, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i72

end_hunk_4
