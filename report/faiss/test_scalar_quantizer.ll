Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/test_scalar_quantizer?download=true
inline.NumInlined: 3053
inline.NumDeleted: 724
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN36ScalarQuantizer_MinimalTraining_Test8TestBodyEv:bb.a
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bq
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %10) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn88 = phi { ptr, i32 } [ %i.fs, %bb.bu ], [ %i.fr, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  %i.ft = load ptr, ptr %9, align 8, !tbaa !42    ; 3 uses
  %.not.i.i128 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i128, label %_ZN7testing7MessageD2Ev.exit130, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129: ; preds = %bb.bv
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !35
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8
  call void %i.fw(ptr noundef nonnull align 8 dereferenceable(128) %i.ft) #25, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit130

_ZN7testing7MessageD2Ev.exit130:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129, %bb.bv, %bb.bs
  %.pn88.pn = phi { ptr, i32 } [ %i.fq, %bb.bs ], [ %.pn88, %bb.bv ], [ %.pn88, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %bb.bz

bb.bw:                                            ; preds = %bb.at, %_ZN7testing7MessageD2Ev.exit127
  %i.fx = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.fy = icmp eq ptr %i.fx, %i.i
  br i1 %i.fy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131: ; preds = %bb.bw
  %i.fz = load i64, ptr %i.i, align 8, !tbaa !38
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fx, i64 noundef %i.ga) #26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i132

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i132: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  store ptr %i.l, ptr %11, align 8, !tbaa !30
  store i64 0, ptr %i.m, align 8, !tbaa !33
  %i.gb = invoke noundef zeroext i1 @_ZN7testing8internal10AlwaysTrueEv()
          to label %bb.bx unwind label %bb.ca

bb.bx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i132
  br i1 %i.gb, label %bb.by, label %bb.dl

bb.by:                                            ; preds = %bb.bx
  invoke void @_ZN5faiss20IndexScalarQuantizer5trainElPKf(ptr noundef nonnull align 8 dereferenceable(288) %2, i64 noundef 1, ptr noundef nonnull %i.c)
          to label %bb.dl unwind label %bb.ca

bb.bz:                                            ; preds = %bb.bh, %bb.bn, %bb.bg, %bb.bm, %bb.bl, %_ZN7testing7MessageD2Ev.exit130
  %.pn88.pn.pn = phi { ptr, i32 } [ %.pn88.pn, %_ZN7testing7MessageD2Ev.exit130 ], [ %i.fb, %bb.bh ], [ %i.fk, %bb.bn ], [ %i.fa, %bb.bg ], [ %i.fj, %bb.bl ], [ %.pn82, %bb.bm ]
  %i.gc = load ptr, ptr %7, align 8, !tbaa !37    ; 2 uses
  %i.gd = icmp eq ptr %i.gc, %i.i
  br i1 %i.gd, label %_ZN7testing8internal14TrueWithStringD2Ev.exit136, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134: ; preds = %bb.bz
  %i.ge = load i64, ptr %i.i, align 8, !tbaa !38
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gf) #26
  br label %_ZN7testing8internal14TrueWithStringD2Ev.exit136

_ZN7testing8internal14TrueWithStringD2Ev.exit136: ; preds = %bb.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i134
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.dx

bb.ca:                                            ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i132
  %i.gg = landingpad { ptr, i32 }
          catch ptr @_ZTISt9exception
          catch ptr null                          ; 2 uses
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  %i.gi = extractvalue { ptr, i32 } %i.gg, 1
  %i.gj = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #25
  %i.gk = icmp eq i32 %i.gi, %i.gj
  %i.gl = call ptr @__cxa_begin_catch(ptr %i.gh) #25 ; 3 uses
  br i1 %i.gk, label %bb.cb, label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.gm = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.11)
          to label %bb.cc unwind label %bb.cm     ; 0 uses

bb.cc:                                            ; preds = %bb.cb
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  %i.gn = load ptr, ptr %i.gl, align 8, !tbaa !35
  %i.go = getelementptr inbounds i8, ptr %i.gn, i64 -8
  %i.gp = load ptr, ptr %i.go, align 8
  invoke void @_ZN7testing8internal11GetTypeNameB5cxx11ERKSt9type_info(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %i.gp)
          to label %bb.cd unwind label %bb.cn

bb.cd:                                            ; preds = %bb.cc
  %i.gq = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.ce unwind label %bb.co     ; 0 uses

bb.ce:                                            ; preds = %bb.cd
  %i.gr = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.gs = icmp eq ptr %i.gr, %i.n
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.ce
  %i.gt = load i64, ptr %i.n, align 8, !tbaa !38
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gr, i64 noundef %i.gu) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.gv = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.12)
          to label %bb.cf unwind label %bb.cm     ; 0 uses

bb.cf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.gw = load ptr, ptr %i.gl, align 8, !tbaa !35
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8
  %i.gz = call noundef ptr %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gl) #25
  %i.ha = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %i.gz)
          to label %bb.cg unwind label %bb.cm     ; 0 uses

bb.cg:                                            ; preds = %bb.cf
  %i.hb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.13)
          to label %bb.ch unwind label %bb.cm     ; 0 uses

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_end_catch()
          to label %bb.cr unwind label %bb.cp

bb.ci:                                            ; preds = %bb.ca
  %i.hc = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.10)
          to label %bb.cj unwind label %bb.ck     ; 0 uses

bb.cj:                                            ; preds = %bb.ci
  invoke void @__cxa_end_catch()
          to label %bb.cr unwind label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  %i.hd = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.dw unwind label %bb.dz

bb.cl:                                            ; preds = %bb.cj
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cm:                                            ; preds = %bb.cg, %bb.cf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.cb
  %i.hf = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

bb.cn:                                            ; preds = %bb.cc
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

bb.co:                                            ; preds = %bb.cd
  %i.hh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.hi = load ptr, ptr %12, align 8, !tbaa !37   ; 2 uses
  %i.hj = icmp eq ptr %i.hi, %i.n
  br i1 %i.hj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140: ; preds = %bb.co
  %i.hk = load i64, ptr %i.n, align 8, !tbaa !38
  %i.hl = add i64 %i.hk, 1
  call void @_ZdlPvm(ptr noundef %i.hi, i64 noundef %i.hl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142: ; preds = %bb.co, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140, %bb.cn
  %.pn92 = phi { ptr, i32 } [ %i.hg, %bb.cn ], [ %i.hh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i140 ], [ %i.hh, %bb.co ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.cq

bb.cp:                                            ; preds = %bb.ch
  %i.hm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.cq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142, %bb.cm
  %.pn94 = phi { ptr, i32 } [ %i.hf, %bb.cm ], [ %.pn92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit142 ]
  invoke void @__cxa_end_catch()
          to label %bb.dw unwind label %bb.dz

bb.cr:                                            ; preds = %bb.ch, %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248 unwind label %bb.dh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248: ; preds = %bb.cr
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  %i.hn = load ptr, ptr %11, align 8, !tbaa !37, !noalias !98 ; 5 uses
  %i.ho = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !98 ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  store ptr %i.o, ptr %15, align 8, !tbaa !30, !alias.scope !101
  store i64 0, ptr %i.p, align 8, !tbaa !33, !alias.scope !101
  store i8 0, ptr %i.o, align 8, !tbaa !38, !alias.scope !101
  %i.hp = add i64 %i.ho, 73                       ; 8 uses
  %.not.i249 = icmp ult i64 %i.hp, 16             ; 2 uses
  br i1 %.not.i249, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i231, label %bb.cs

bb.cs:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248
  %i.hq = icmp slt i64 %i.hp, 0
  br i1 %i.hq, label %.invoke.i.invoke, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %.0.i251 = call i64 @llvm.umax.i64(i64 %i.hp, i64 30) ; 4 uses
  %i.hr = add nuw i64 %.0.i251, 1                 ; 2 uses
  %i.hs = icmp slt i64 %i.hr, 0
  br i1 %i.hs, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i252, !prof !104

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i252: ; preds = %bb.ct
  %i.ht = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hr) #27
          to label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i unwind label %.loopexit ; 5 uses

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i252
  store i8 0, ptr %i.ht, align 1, !tbaa !38
  store ptr %i.ht, ptr %15, align 8, !tbaa !37
  store i64 %.0.i251, ptr %i.o, align 8, !tbaa !38
  %.not.i.i.i184279 = icmp ugt i64 %i.ho, -74
  br i1 %.not.i.i.i184279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i229, label %bb.cu

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.ht, ptr noundef nonnull align 1 dereferenceable(73) @.str.38, i64 73, i1 false)
  br label %bb.cv

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i229: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.hu = shl nuw nsw i64 %.0.i251, 1
  %spec.select538 = call i64 @llvm.umax.i64(i64 %i.hu, i64 73)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i231: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i229, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248
  %i.hv = phi ptr [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248 ], [ %i.ht, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i229 ] ; 2 uses
  %.0.i230 = phi i64 [ 73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i248 ], [ %spec.select538, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i229 ] ; 3 uses
  %i.hw = add nuw nsw i64 %.0.i230, 1
  %i.hx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hw) #27
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232 unwind label %.loopexit ; 3 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i231
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.hx, ptr noundef nonnull align 1 dereferenceable(73) @.str.38, i64 73, i1 false)
  br i1 %.not.i249, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit246, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i238

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i238: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232
  %i.hy = load i64, ptr %i.o, align 8, !tbaa !38
  %i.hz = add i64 %i.hy, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.hv, i64 noundef %i.hz) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit246

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit246: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i232, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i28.i238
  store ptr %i.hx, ptr %15, align 8, !tbaa !37
  store i64 %.0.i230, ptr %i.o, align 8, !tbaa !38
  br label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit246, %bb.cu
  %i.ia = phi i64 [ %.0.i230, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit246 ], [ %.0.i251, %bb.cu ] ; 3 uses
  %i.ib = phi ptr [ %i.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit246 ], [ %i.ht, %bb.cu ] ; 7 uses
  store i64 73, ptr %i.p, align 8, !tbaa !33, !alias.scope !101
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 73 ; 3 uses
  store i8 0, ptr %i.ic, align 1, !tbaa !38
  %i.id = icmp ugt i64 %i.ho, 9223372036854775734
  br i1 %i.id, label %.invoke.i.invoke, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread

.invoke.i.invoke:                                 ; preds = %bb.cv, %bb.cs
  %i.ie = phi ptr [ @.str.4, %bb.cs ], [ @.str.21, %bb.cv ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.ie) #29
          to label %.invoke.i.cont unwind label %.loopexit.split-lp

.invoke.i.cont:                                   ; preds = %.invoke.i.invoke
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread: ; preds = %bb.cv
  %.not.i.i13.i281 = icmp ugt i64 %i.hp, %i.ia
  br i1 %.not.i.i13.i281, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread
  switch i64 %i.ho, label %bb.cy [
    i64 0, label %bb.de
    i64 1, label %bb.cx
  ]

bb.cx:                                            ; preds = %bb.cw
  %i.if = load i8, ptr %i.hn, align 1, !tbaa !38, !noalias !101
  store i8 %i.if, ptr %i.ic, align 1, !tbaa !38
  br label %bb.de

bb.cy:                                            ; preds = %bb.cw
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ic, ptr align 1 %i.hn, i64 %i.ho, i1 false)
  br label %bb.de

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i12.i.thread
  %i.ig = shl nuw i64 %i.ia, 1                    ; 2 uses
  %i.ih = icmp ult i64 %i.hp, %i.ig
  %spec.store.select.i.i222 = call i64 @llvm.umin.i64(i64 %i.ig, i64 9223372036854775807)
  %.0.i212 = select i1 %i.ih, i64 %spec.store.select.i.i222, i64 %i.hp ; 2 uses
  %i.ii = add nuw i64 %.0.i212, 1                 ; 2 uses
  %i.ij = icmp slt i64 %i.ii, 0
  br i1 %i.ij, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i213, !prof !104

.invoke:                                          ; preds = %bb.cz, %bb.ct
  invoke void @_ZSt17__throw_bad_allocv() #29
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i213: ; preds = %bb.cz
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #27
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i unwind label %.loopexit ; 4 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(73) %i.ik, ptr noundef nonnull align 1 dereferenceable(73) %i.ib, i64 73, i1 false)
  %.not539 = icmp eq ptr %i.hn, null
  br i1 %.not539, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit227, label %bb.da

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 73 ; 2 uses
  %cond.i221 = icmp eq i64 %i.ho, 1
  br i1 %cond.i221, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.im = load i8, ptr %i.hn, align 1, !tbaa !38
  store i8 %i.im, ptr %i.il, align 1, !tbaa !38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit227

bb.dc:                                            ; preds = %bb.da
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.il, ptr nonnull align 1 %i.hn, i64 %i.ho, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit227

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit227: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.db, %bb.dc
  %i.in = add nuw nsw i64 %i.ia, 1
  call void @_ZdlPvm(ptr noundef nonnull %i.ib, i64 noundef %i.in) #26
  store ptr %i.ik, ptr %15, align 8, !tbaa !37
  store i64 %.0.i212, ptr %i.o, align 8, !tbaa !38
  br label %bb.de

.loopexit:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i213, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i231, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i252
  %i.io = phi ptr [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i213 ], [ %i.hv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i231 ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i252 ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit.split-lp:                               ; preds = %.invoke, %.invoke.i.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  %.pre468 = load ptr, ptr %15, align 8, !tbaa !37, !alias.scope !101
  br label %bb.dd

bb.dd:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %i.ip = phi ptr [ %i.io, %.loopexit ], [ %.pre468, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.iq = icmp eq ptr %i.ip, %i.o
  br i1 %i.iq, label %.body, label %.body.sink.split

bb.de:                                            ; preds = %bb.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit227, %bb.cx, %bb.cy
  %i.ir = phi ptr [ %i.ik, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm.exit227 ], [ %i.ib, %bb.cw ], [ %i.ib, %bb.cx ], [ %i.ib, %bb.cy ]
  store i64 %i.hp, ptr %i.p, align 8, !tbaa !33, !alias.scope !101
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.hp
  store i8 0, ptr %i.is, align 1, !tbaa !38
  %i.it = load ptr, ptr %15, align 8, !tbaa !37
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %14, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 412, ptr noundef %i.it)
          to label %bb.df unwind label %bb.di

bb.df:                                            ; preds = %bb.de
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %bb.dg unwind label %bb.dj

bb.dg:                                            ; preds = %bb.df
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  %i.iu = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.o
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143: ; preds = %bb.dg
  %i.iw = load i64, ptr %i.o, align 8, !tbaa !38
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145: ; preds = %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i143
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.iy = load ptr, ptr %13, align 8, !tbaa !42   ; 3 uses
  %.not.i.i146 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i146, label %_ZN7testing7MessageD2Ev.exit148, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !35
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  %i.jb = load ptr, ptr %i.ja, align 8
  call void %i.jb(ptr noundef nonnull align 8 dereferenceable(128) %i.iy) #25, !inline_history !44
  br label %_ZN7testing7MessageD2Ev.exit148

_ZN7testing7MessageD2Ev.exit148:                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %bb.dl

bb.dh:                                            ; preds = %bb.cr
  %i.jc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit154

bb.di:                                            ; preds = %bb.de
  %i.jd = landingpad { ptr, i32 }
          cleanup
  br label %bb.dk

bb.dj:                                            ; preds = %bb.df
  %i.je = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %14) #25
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.di
  %.pn98 = phi { ptr, i32 } [ %i.je, %bb.dj ], [ %i.jd, %bb.di ] ; 2 uses
  %i.jf = load ptr, ptr %15, align 8, !tbaa !37   ; 2 uses
  %i.jg = icmp eq ptr %i.jf, %i.o
  br i1 %i.jg, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.dk, %bb.dd
  %.sink = phi ptr [ %i.ip, %bb.dd ], [ %i.jf, %bb.dk ]
  %.pn98.pn.ph = phi { ptr, i32 } [ %lpad.phi, %bb.dd ], [ %.pn98, %bb.dk ]
  %i.jh = load i64, ptr %i.o, align 8, !tbaa !38
  %i.ji = add i64 %i.jh, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ji) #26
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.dk, %bb.dd
  %.pn98.pn = phi { ptr, i32 } [ %lpad.phi, %bb.dd ], [ %.pn98, %bb.dk ], [ %.pn98.pn.ph, %.body.sink.split ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.jj = load ptr, ptr %13, align 8, !tbaa !42   ; 3 uses
  %.not.i.i152 = icmp eq ptr %i.jj, null
  br i1 %.not.i.i152, label %_ZN7testing7MessageD2Ev.exit154, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i153

end_hunk_0
