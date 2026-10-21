Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/entt/original/hashed_string?download=true
inline.NumInlined: 1417
inline.NumDeleted: 349
begin_hunk_0_@_ZN29HashedString_Correctness_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt19basic_hashed_stringIcEEjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing15AssertionResultD2Ev.exit170:         ; preds = %_ZN7testing7MessageD2Ev.exit165, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.cv

bb.ay:                                            ; preds = %bb.as
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit173

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit162
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn60 = phi { ptr, i32 } [ %i.ee, %bb.ba ], [ %i.ed, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.ef = load ptr, ptr %14, align 8, !tbaa !47   ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bb
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172, %bb.bb, %bb.ay
  %.pn60.pn = phi { ptr, i32 } [ %i.ec, %bb.ay ], [ %.pn60, %bb.bb ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.cw

.critedge83:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit160
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !42 ; 4 uses
  %.not.i.i174 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i174, label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179, label %bb.bc

bb.bc:                                            ; preds = %.critedge83
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !45 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.bc
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !48
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 32) #17
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, %.critedge83
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  %i.eq = load i8, ptr %16, align 8, !tbaa !40, !range !41, !noundef !49
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.critedge85, label %bb.bd

bb.bd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit181, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit181

_ZNK7testing15AssertionResult15failure_messageEv.exit181: ; preds = %bb.bf, %bb.be
  %i.ev = phi ptr [ %i.eu, %bb.bf ], [ @.str.114, %bb.be ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 81, ptr noundef %i.ev)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.ew = load ptr, ptr %17, align 8, !tbaa !47   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.bh
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !42 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i185, label %_ZN7testing15AssertionResultD2Ev.exit189, label %bb.bi

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !45 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.bi
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !48
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit189

_ZN7testing15AssertionResultD2Ev.exit189:         ; preds = %_ZN7testing7MessageD2Ev.exit184, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.cv

bb.bj:                                            ; preds = %bb.bd
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn63 = phi { ptr, i32 } [ %i.fi, %bb.bl ], [ %i.fh, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.fj = load ptr, ptr %17, align 8, !tbaa !47   ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.bm
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %bb.bm, %bb.bj
  %.pn63.pn = phi { ptr, i32 } [ %i.fg, %bb.bj ], [ %.pn63, %bb.bm ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.cw

.critedge85:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42 ; 4 uses
  %.not.i.i193 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i193, label %_ZN4entt19basic_hashed_stringIcEC2ENS1_13const_wrapperE.exit201, label %bb.bn

bb.bn:                                            ; preds = %.critedge85
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !45 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194: ; preds = %bb.bn
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !48
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 32) #17
  br label %_ZN4entt19basic_hashed_stringIcEC2ENS1_13const_wrapperE.exit201

_ZN4entt19basic_hashed_stringIcEC2ENS1_13const_wrapperE.exit201: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, %.critedge85
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
  %i.fu = load i8, ptr %19, align 8, !tbaa !40, !range !41
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.critedge87, label %bb.bo

bb.bo:                                            ; preds = %_ZN4entt19basic_hashed_stringIcEC2ENS1_13const_wrapperE.exit201
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i202 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i202, label %_ZNK7testing15AssertionResult15failure_messageEv.exit203, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit203

_ZNK7testing15AssertionResult15failure_messageEv.exit203: ; preds = %bb.bq, %bb.bp
  %i.fz = phi ptr [ %i.fy, %bb.bq ], [ @.str.114, %bb.bp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef %i.fz)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit203
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.ga = load ptr, ptr %20, align 8, !tbaa !47   ; 3 uses
  %.not.i.i204 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i204, label %_ZN7testing7MessageD2Ev.exit206, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205: ; preds = %bb.bs
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit206

_ZN7testing7MessageD2Ev.exit206:                  ; preds = %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i205
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  %i.ge = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 4 uses
  %.not.i.i207 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i207, label %_ZN7testing15AssertionResultD2Ev.exit211, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit206
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !45 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208: ; preds = %bb.bt
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !48
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i208
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 32) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit211

_ZN7testing15AssertionResultD2Ev.exit211:         ; preds = %_ZN7testing7MessageD2Ev.exit206, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i209
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.cv

bb.bu:                                            ; preds = %bb.bo
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit214

bb.bv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit203
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.br
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn66 = phi { ptr, i32 } [ %i.gm, %bb.bw ], [ %i.gl, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.gn = load ptr, ptr %20, align 8, !tbaa !47   ; 3 uses
  %.not.i.i212 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i212, label %_ZN7testing7MessageD2Ev.exit214, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213: ; preds = %bb.bx
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit214

_ZN7testing7MessageD2Ev.exit214:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213, %bb.bx, %bb.bu
  %.pn66.pn = phi { ptr, i32 } [ %i.gk, %bb.bu ], [ %.pn66, %bb.bx ], [ %.pn66, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i213 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.cw

.critedge87:                                      ; preds = %_ZN4entt19basic_hashed_stringIcEC2ENS1_13const_wrapperE.exit201
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !42 ; 4 uses
  %.not.i.i215 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i215, label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit225, label %bb.by

bb.by:                                            ; preds = %.critedge87
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !45 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i216

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i216: ; preds = %bb.by
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !48
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i216
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 32) #17
  br label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit225

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit225: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i217, %.critedge87
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %i.gy = load i8, ptr %22, align 8, !tbaa !40, !range !41, !noundef !49
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %.critedge89, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit225
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.ha = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i226 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i226, label %_ZNK7testing15AssertionResult15failure_messageEv.exit227, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit227

_ZNK7testing15AssertionResult15failure_messageEv.exit227: ; preds = %bb.cb, %bb.ca
  %i.hd = phi ptr [ %i.hc, %bb.cb ], [ @.str.114, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 84, ptr noundef %i.hd)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit227
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.he = load ptr, ptr %23, align 8, !tbaa !47   ; 3 uses
  %.not.i.i228 = icmp eq ptr %i.he, null
  br i1 %.not.i.i228, label %_ZN7testing7MessageD2Ev.exit230, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229: ; preds = %bb.cd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit230

_ZN7testing7MessageD2Ev.exit230:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i229
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.hi = load ptr, ptr %i.ha, align 8, !tbaa !42 ; 4 uses
  %.not.i.i231 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i231, label %_ZN7testing15AssertionResultD2Ev.exit235, label %bb.ce

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit230
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !45 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232: ; preds = %bb.ce
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !48
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i232
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 32) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit235

_ZN7testing15AssertionResultD2Ev.exit235:         ; preds = %_ZN7testing7MessageD2Ev.exit230, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i233
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %bb.cv

end_hunk_0
begin_hunk_1_@_ZN30HashedWString_Correctness_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIN4entt19basic_hashed_stringIwEEjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSF_RKS7_RKS8_.exit

_ZN7testing15AssertionResultD2Ev.exit170:         ; preds = %_ZN7testing7MessageD2Ev.exit165, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i168
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.cv

bb.ay:                                            ; preds = %bb.as
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit173

bb.az:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit162
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.ba:                                            ; preds = %bb.av
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.pn60 = phi { ptr, i32 } [ %i.ee, %bb.ba ], [ %i.ed, %bb.az ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #16
  %i.ef = load ptr, ptr %14, align 8, !tbaa !47   ; 3 uses
  %.not.i.i171 = icmp eq ptr %i.ef, null
  br i1 %.not.i.i171, label %_ZN7testing7MessageD2Ev.exit173, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172: ; preds = %bb.bb
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(128) %i.ef) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit173

_ZN7testing7MessageD2Ev.exit173:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172, %bb.bb, %bb.ay
  %.pn60.pn = phi { ptr, i32 } [ %i.ec, %bb.ay ], [ %.pn60, %bb.bb ], [ %.pn60, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i172 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  br label %bb.cw

.critedge83:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit160
  %i.ej = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !42 ; 4 uses
  %.not.i.i174 = icmp eq ptr %i.ek, null
  br i1 %.not.i.i174, label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179, label %bb.bc

bb.bc:                                            ; preds = %.critedge83
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !45 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 16 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175: ; preds = %bb.bc
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !48
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176: ; preds = %bb.bc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i175
  call void @_ZdlPvm(ptr noundef nonnull %i.ek, i64 noundef 32) #17
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i176, %.critedge83
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #16
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %16)
  %i.eq = load i8, ptr %16, align 8, !tbaa !40, !range !41, !noundef !49
  %i.er = trunc nuw i8 %i.eq to i1
  br i1 %i.er, label %.critedge85, label %bb.bd

bb.bd:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.be unwind label %bb.bj

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #16
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i180 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i180, label %_ZNK7testing15AssertionResult15failure_messageEv.exit181, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit181

_ZNK7testing15AssertionResult15failure_messageEv.exit181: ; preds = %bb.bf, %bb.be
  %i.ev = phi ptr [ %i.eu, %bb.bf ], [ @.str.114, %bb.be ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 180, ptr noundef %i.ev)
          to label %bb.bg unwind label %bb.bk

bb.bg:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.ew = load ptr, ptr %17, align 8, !tbaa !47   ; 3 uses
  %.not.i.i182 = icmp eq ptr %i.ew, null
  br i1 %.not.i.i182, label %_ZN7testing7MessageD2Ev.exit184, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183: ; preds = %bb.bh
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !16
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  %i.ez = load ptr, ptr %i.ey, align 8
  call void %i.ez(ptr noundef nonnull align 8 dereferenceable(128) %i.ew) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit184

_ZN7testing7MessageD2Ev.exit184:                  ; preds = %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i183
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  %i.fa = load ptr, ptr %i.es, align 8, !tbaa !42 ; 4 uses
  %.not.i.i185 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i185, label %_ZN7testing15AssertionResultD2Ev.exit189, label %bb.bi

bb.bi:                                            ; preds = %_ZN7testing7MessageD2Ev.exit184
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !45 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186: ; preds = %bb.bi
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !48
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i186
  call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef 32) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit189

_ZN7testing15AssertionResultD2Ev.exit189:         ; preds = %_ZN7testing7MessageD2Ev.exit184, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i187
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.cv

bb.bj:                                            ; preds = %bb.bd
  %i.fg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit192

bb.bk:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit181
  %i.fh = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bg
  %i.fi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %18) #16
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn63 = phi { ptr, i32 } [ %i.fi, %bb.bl ], [ %i.fh, %bb.bk ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #16
  %i.fj = load ptr, ptr %17, align 8, !tbaa !47   ; 3 uses
  %.not.i.i190 = icmp eq ptr %i.fj, null
  br i1 %.not.i.i190, label %_ZN7testing7MessageD2Ev.exit192, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191: ; preds = %bb.bm
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !16
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8
  call void %i.fm(ptr noundef nonnull align 8 dereferenceable(128) %i.fj) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit192

_ZN7testing7MessageD2Ev.exit192:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191, %bb.bm, %bb.bj
  %.pn63.pn = phi { ptr, i32 } [ %i.fg, %bb.bj ], [ %.pn63, %bb.bm ], [ %.pn63, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i191 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %16) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  br label %bb.cw

.critedge85:                                      ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit179
  %i.fn = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !42 ; 4 uses
  %.not.i.i193 = icmp eq ptr %i.fo, null
  br i1 %.not.i.i193, label %_ZN4entt19basic_hashed_stringIwEC2ENS1_13const_wrapperE.exit202, label %bb.bn

bb.bn:                                            ; preds = %.critedge85
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !45 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fo, i64 16 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194: ; preds = %bb.bn
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !48
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i194
  call void @_ZdlPvm(ptr noundef nonnull %i.fo, i64 noundef 32) #17
  br label %_ZN4entt19basic_hashed_stringIwEC2ENS1_13const_wrapperE.exit202

_ZN4entt19basic_hashed_stringIwEC2ENS1_13const_wrapperE.exit202: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i195, %.critedge85
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #16
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %19)
  %i.fu = load i8, ptr %19, align 8, !tbaa !40, !range !41
  %i.fv = trunc nuw i8 %i.fu to i1
  br i1 %i.fv, label %.critedge87, label %bb.bo

bb.bo:                                            ; preds = %_ZN4entt19basic_hashed_stringIwEC2ENS1_13const_wrapperE.exit202
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bp unwind label %bb.bu

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #16
  %i.fw = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i203 = icmp eq ptr %i.fx, null
  br i1 %.not.i.i.i203, label %_ZNK7testing15AssertionResult15failure_messageEv.exit204, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit204

_ZNK7testing15AssertionResult15failure_messageEv.exit204: ; preds = %bb.bq, %bb.bp
  %i.fz = phi ptr [ %i.fy, %bb.bq ], [ @.str.114, %bb.bp ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %21, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 182, ptr noundef %i.fz)
          to label %bb.br unwind label %bb.bv

bb.br:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit204
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %bb.bs unwind label %bb.bw

bb.bs:                                            ; preds = %bb.br
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.ga = load ptr, ptr %20, align 8, !tbaa !47   ; 3 uses
  %.not.i.i205 = icmp eq ptr %i.ga, null
  br i1 %.not.i.i205, label %_ZN7testing7MessageD2Ev.exit207, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206: ; preds = %bb.bs
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8
  call void %i.gd(ptr noundef nonnull align 8 dereferenceable(128) %i.ga) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit207

_ZN7testing7MessageD2Ev.exit207:                  ; preds = %bb.bs, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i206
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  %i.ge = load ptr, ptr %i.fw, align 8, !tbaa !42 ; 4 uses
  %.not.i.i208 = icmp eq ptr %i.ge, null
  br i1 %.not.i.i208, label %_ZN7testing15AssertionResultD2Ev.exit212, label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing7MessageD2Ev.exit207
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !45 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 16 ; 2 uses
  %i.gh = icmp eq ptr %i.gf, %i.gg
  br i1 %i.gh, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209: ; preds = %bb.bt
  %i.gi = load i64, ptr %i.gg, align 8, !tbaa !48
  %i.gj = add i64 %i.gi, 1
  call void @_ZdlPvm(ptr noundef %i.gf, i64 noundef %i.gj) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210: ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i209
  call void @_ZdlPvm(ptr noundef nonnull %i.ge, i64 noundef 32) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit212

_ZN7testing15AssertionResultD2Ev.exit212:         ; preds = %_ZN7testing7MessageD2Ev.exit207, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i210
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.cv

bb.bu:                                            ; preds = %bb.bo
  %i.gk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit215

bb.bv:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit204
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bx

bb.bw:                                            ; preds = %bb.br
  %i.gm = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %21) #16
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.pn66 = phi { ptr, i32 } [ %i.gm, %bb.bw ], [ %i.gl, %bb.bv ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #16
  %i.gn = load ptr, ptr %20, align 8, !tbaa !47   ; 3 uses
  %.not.i.i213 = icmp eq ptr %i.gn, null
  br i1 %.not.i.i213, label %_ZN7testing7MessageD2Ev.exit215, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214: ; preds = %bb.bx
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = load ptr, ptr %i.gp, align 8
  call void %i.gq(ptr noundef nonnull align 8 dereferenceable(128) %i.gn) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit215

_ZN7testing7MessageD2Ev.exit215:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214, %bb.bx, %bb.bu
  %.pn66.pn = phi { ptr, i32 } [ %i.gk, %bb.bu ], [ %.pn66, %bb.bx ], [ %.pn66, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i214 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #16
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %19) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  br label %bb.cw

.critedge87:                                      ; preds = %_ZN4entt19basic_hashed_stringIwEC2ENS1_13const_wrapperE.exit202
  %i.gr = getelementptr inbounds nuw i8, ptr %19, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !42 ; 4 uses
  %.not.i.i216 = icmp eq ptr %i.gs, null
  br i1 %.not.i.i216, label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227, label %bb.by

bb.by:                                            ; preds = %.critedge87
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !45 ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gs, i64 16 ; 2 uses
  %i.gv = icmp eq ptr %i.gt, %i.gu
  br i1 %i.gv, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217: ; preds = %bb.by
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !48
  %i.gx = add i64 %i.gw, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gx) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i217
  call void @_ZdlPvm(ptr noundef nonnull %i.gs, i64 noundef 32) #17
  br label %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227

_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227: ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i218, %.critedge87
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #16
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %22)
  %i.gy = load i8, ptr %22, align 8, !tbaa !40, !range !41, !noundef !49
  %i.gz = trunc nuw i8 %i.gy to i1
  br i1 %i.gz, label %.critedge89, label %bb.bz

bb.bz:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit227
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #16
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.ca unwind label %bb.cf

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #16
  %i.ha = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.i228 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i228, label %_ZNK7testing15AssertionResult15failure_messageEv.exit229, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !45
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit229

_ZNK7testing15AssertionResult15failure_messageEv.exit229: ; preds = %bb.cb, %bb.ca
  %i.hd = phi ptr [ %i.hc, %bb.cb ], [ @.str.114, %bb.ca ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 183, ptr noundef %i.hd)
          to label %bb.cc unwind label %bb.cg

bb.cc:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit229
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.cd unwind label %bb.ch

bb.cd:                                            ; preds = %bb.cc
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #16
  %i.he = load ptr, ptr %23, align 8, !tbaa !47   ; 3 uses
  %.not.i.i230 = icmp eq ptr %i.he, null
  br i1 %.not.i.i230, label %_ZN7testing7MessageD2Ev.exit232, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231: ; preds = %bb.cd
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8
  %i.hh = load ptr, ptr %i.hg, align 8
  call void %i.hh(ptr noundef nonnull align 8 dereferenceable(128) %i.he) #16, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit232

_ZN7testing7MessageD2Ev.exit232:                  ; preds = %bb.cd, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i231
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #16
  %i.hi = load ptr, ptr %i.ha, align 8, !tbaa !42 ; 4 uses
  %.not.i.i233 = icmp eq ptr %i.hi, null
  br i1 %.not.i.i233, label %_ZN7testing15AssertionResultD2Ev.exit237, label %bb.ce

bb.ce:                                            ; preds = %_ZN7testing7MessageD2Ev.exit232
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !45 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 16 ; 2 uses
  %i.hl = icmp eq ptr %i.hj, %i.hk
  br i1 %i.hl, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234: ; preds = %bb.ce
  %i.hm = load i64, ptr %i.hk, align 8, !tbaa !48
  %i.hn = add i64 %i.hm, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hn) #17
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i234
  call void @_ZdlPvm(ptr noundef nonnull %i.hi, i64 noundef 32) #17
  br label %_ZN7testing15AssertionResultD2Ev.exit237

_ZN7testing15AssertionResultD2Ev.exit237:         ; preds = %_ZN7testing7MessageD2Ev.exit232, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i235
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #16
  br label %bb.cv

end_hunk_1
